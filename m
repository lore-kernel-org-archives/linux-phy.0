Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07836CEE343
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 20:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cj7i1KSbtLWdfmNScI12OmBadvl86K8ilzKwk83U7X8=; b=pab2aOo2sEG6PD
	93QQHIwMCNRER/LgAB65P3QWjNShxoC89m4PCT94q34f7EfkkOkKwg56VjK3wbVwAcNs9a1gGsNku
	sJroqtla+8QI6bH82f5W31B9KESen5RjFeP38PtzvHqcWe+DqHnVH3mme0KHs/I47CN1evDrDA3pk
	y+7HnBG9c3g6OHS6EhlF4nJiPfIihDwC1x+jQd0KOI8Xd8D18hrDpG45Sqlsg9aXFT4sF03KWp+GW
	7O8sm0O4bZn2vf1lDSZ9k4yN0PQclnNveLuZMYjBI/VU5/KJEmoDvKb5+8UWSxRHLwwAz/dBM0KwF
	dphlO+PW7vf7xdYs2bLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sydFQ-0000000AdB3-36hS;
	Wed, 09 Oct 2024 20:25:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sydFO-0000000AdAQ-134r
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 20:25:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D5A535C5A10;
	Wed,  9 Oct 2024 20:25:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDDA4C4CEC3;
	Wed,  9 Oct 2024 20:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728505523;
	bh=9DcWRqzRXQ7bjuDcrr4wCjK/5kicZsX5VMPHI05/h6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jUx+NO/NCskAYhlHNu0yu/+6op5AwZFKFcNiDh0IHtwF5IcU9CGgua7scNlOXbkcS
	 aHEHby+MK4Xr1CrN4gDMBE0DmaymLdLumYwkhe81Sh5zjLJ8QtJHcMOpLImQebl2MS
	 jIrzgL45AciurmR+cSj9GNKrLHzEXvNdRb7q7Y6QBhRNLqFLOPn0DasqlTIqkYq/Uz
	 pJLWG5cpqITuHNFLDpqJs/JdCEHmMwzGcIZtwIOEAgia9+eNrwZtCI40MCqUDUQ7aa
	 2IzdXQuipvfXbLXZ7PXpqOkIj+J407heML2kja2gXD4ZkfyqWgn0vbiTjNTvUywS3i
	 8DCiyt+udTxpw==
Date: Wed, 9 Oct 2024 15:25:22 -0500
From: Rob Herring <robh@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v5 3/7] dt-bindings: PCI: qcom,pcie-x1e80100: Add
 'global' interrupt
Message-ID: <20241009202522.GA611063-robh@kernel.org>
References: <20241009091540.1446-1-quic_qianyu@quicinc.com>
 <20241009091540.1446-4-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241009091540.1446-4-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_132526_360953_12868DB7 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Oct 09, 2024 at 02:15:36AM -0700, Qiang Yu wrote:
> Document 'global' SPI interrupt along with the existing MSI interrupts so
> that QCOM PCIe RC driver can make use of it to get events such as PCIe
> link specific events, safety events, etc.

Is it required for some reason vs. being optional? It's fine to break 
the ABI because...?

Answer those questions with your commit msg.

> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie-x1e80100.yaml    | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
