Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15E30C624C6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 08:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6d3blpdcVFAHfQY4jGyKmpAPa9mgwsuv2xwygoe62c=; b=ATTx8HU8JOyAL/
	whNUKunH+6pDBDprHY1xNo/T+l/ZgLYIj8jA0wxwaUZm9jvpsX/WtjVqSDq59BNy792Rr9XPZa46t
	a5WyLoRTbjajAIVKj/XVhLkwHyk0UY0Xu8QM1J4pedLeF/1lHkm7d7lwfkDToMVv3LUn82vbNClP0
	kiX7jJzmn9ve/2TpJn9mY2+7DMACPx6uhKLkXEHWWJ0pR2uv+OjIaWJgQt2vrdyFuuDcVZfYmpyft
	7jnxcs5P0tLCoyFU4yTksA7B8R+wsWvuSYymFLpB3+C412d18RWuj25gmO9AOKve7x+Ia5yn/sNeX
	lGFWhpKVFeFXrS+hnfwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1JvP-0000000BIIV-2XMf;
	Tue, 01 Sep 2026 08:32:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1JvO-0000000BIHJ-0jzA
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 08:32:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8D19B402F2;
	Tue,  1 Sep 2026 08:32:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 709CA1F0155A;
	Tue,  1 Sep 2026 08:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788251577;
	bh=tVqAdRiwsscVg9/5BdwHOi7+Rnmf/8eb7NqTymDseoE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=G/lXPJppa0wK33NEpx1p4XsCwCAXAbZGZSfEk23nBBZU/KU/Bn//gPsf/4gvZhsdH
	 goqo6HAk8HKuzmk1ulmZuHDaDzg43YEtuJcRE71rvuLBU6DjMtQGKWYUZ7OH8pBbon
	 cvukd1/RZC9ZmyXKEbDXlSgxKKVU+y0Z3nPYhVlAGagQ2stCwg4iWy2NnoN1kdNFsY
	 xtF9PNBIWNRJyyNd0nsFFJ0wPYLF5GjPMBLDfH20Coz5K9eqCCnOwudhfCZddNQgmT
	 F0hNjW0lvuCfOeKxu84kzZplHI8yd72pXbDVSKQF7XCfl9Qfn466H12KGQh+x3En12
	 sL8QNWzB9tc1A==
Date: Tue, 1 Sep 2026 10:32:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Maili PCIe PHY compatibles
Message-ID: <20260901-auspicious-shaggy-crocodile-ae1eda@quoll>
References: <20260831-vdev_phy_next-20260828-v2-1-08fe5dcd4b86@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260831-vdev_phy_next-20260828-v2-1-08fe5dcd4b86@oss.qualcomm.com>
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

On Mon, Aug 31, 2026 at 11:55:01AM +0530, Vivek Pernamitta wrote:
> Add qcom,maili-qmp-gen3x2-pcie-phy and qcom,maili-qmp-gen4x1-pcie-phy
> compatible strings for the Maili SoC PCIe QMP PHY.
> 
> The Maili SoC is a derivative of Hawi and shares the same PCIe QMP PHY
> architecture, allowing reuse of the existing Hawi PCIe PHY DT bindings.

What exactly did you reuse? I don't see a fallback.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
