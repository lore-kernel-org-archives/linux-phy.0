Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8903CEE352
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 21:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhkkMvkd+CQaTr628E7GDfJAE6HHMPf1qlbB85/ygVk=; b=GZxIKFvuRC1omh
	gR3bfw0JXrnADGOmwpmMGj5YOgoC2MNJ0SwJNbIBlynHW5xf2jjhlN9+RH3yVeo2m1m+avoJS1SYD
	Dt39jEwp0g1aQHNbzJFxqSUWXeKD8rKHQLVNFjgDr5RgTrX26z0B9rY1HgXNhlM3IaHOloV3pfApT
	Rp/EXdl8F8lioSj5sBr1hjdNNM3j+XMiihCNieJNyV0rCScxz8/ctYVFl0DB5Pu2+Q4AL0ZvlUmEP
	VdKmJNuqeheth0j8aMgpD6DObOX6hESgBZfu1GZpk85RpBXDzAllIAAomJn3ZSjaxVl+xOZrU7Iu9
	mgNZToNK+jnJUgyMX35Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syeHB-0000000AnCs-1eyN;
	Wed, 09 Oct 2024 21:31:21 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syeH8-0000000AnCI-3PLW
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 21:31:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5319AA44576;
	Wed,  9 Oct 2024 21:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66189C4CECE;
	Wed,  9 Oct 2024 21:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728509477;
	bh=CDmpHt4cVnqH2CMq/UZ5gellTMhqUaoAikzncUK3EyI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fKX0jZfwvEI6+/cfTuvHWPCQAu78JEr7r5kIJ4yyqhLTQ7LaaFd9jUJXNkNrHOA4k
	 SyGb7YOqnaNCSY+RLxmLt8aCxiRLPfqIQOg96gZgw3zfTRhiS+Docl21mdJ5i/+vHN
	 j5sMy+WJlODGqoaQnrHmjzkLbTgMGUCiDraZ2L56wm+Rbu9HMALs1iC2PXVIJRwP8Z
	 dXFOnBwVrUgiQbalOfaurxuGZeM2ms7C5ZbKolb7JMj4+Wc13YBKUw48Ts7pNBZPKD
	 8ttlmj52TAKy9EERvJ7K8AKpWAZoUSeH+L6NIiDbxmzdFRP/vz5GSMhxixpJHA+/tu
	 6B4r5v11Tf70w==
Date: Wed, 9 Oct 2024 16:31:16 -0500
From: Rob Herring <robh@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mantas Pucka <mantas@8devices.com>,
	Abel Vesa <abel.vesa@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, quic_ppratap@quicinc.com,
	quic_jackp@quicinc.com
Subject: Re: [PATCH 1/4] dt-bindings: usb: qcom,dwc3: Add QCS8300 to USB DWC3
 bindings
Message-ID: <20241009213116.GA740340-robh@kernel.org>
References: <20241009195348.2649368-1-quic_kriskura@quicinc.com>
 <20241009195348.2649368-2-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241009195348.2649368-2-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_143118_941127_09D6DD05 
X-CRM114-Status: UNSURE (   8.73  )
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

On Thu, Oct 10, 2024 at 01:23:45AM +0530, Krishna Kurapati wrote:
> Update dt-bindings to add QCS8300 to USB DWC3 controller list.
> The second controller of QCS8300 is High speed only capable and
> doesn't have ss_phy_irq.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Acked-by: Rob Herring (Arm) <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
