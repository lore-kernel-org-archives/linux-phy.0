Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E472CCD1A5
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 07:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBUcjwYPXvv3FN36UJXitBC3w5ysW3dxAOIftPVWKcE=; b=ws3JvUDlraiJ3e
	AOTHGQQJwbhJFenAS2xsveLS0dQaUY7oSPaorBX0UC2fuZ1UD1uonqaJMY3pSBFGZUKzP/r79Dain
	sEhyAFLS1jLS3hfm8p+F8LS2V8Unb6eBvB6ITCz8v4wLXVPav368AFQVG/Ne48XlCPNs7P3WEKUjF
	I0Tr4dDhWqTob7DJhWKo5z170Mw1fWc9FmMD01atsDLdZKptDt/4rP9ycJD+I+25sO1+uTmYh++rw
	Elvp+1UZi9MVX6sN87iQthEVNatkjMxtrjaF6E2aapdlSquRJtz9sFl4FrpILrQ/1M3KC3NlIhCfa
	+we5MiWEvuMhgcTmFhWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6R7-0000000G15p-0ayV;
	Tue, 21 Oct 2025 07:05:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6R5-0000000G14j-0Ybo
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 07:05:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7B57F622A6;
	Tue, 21 Oct 2025 07:05:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 868F7C4CEF7;
	Tue, 21 Oct 2025 07:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761030320;
	bh=/SmmG5lFug4AKfl0j2cTAo27RJY+Yd7FMSlalftjCE4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V6z3hShTYlcszavAnkPjZr9663cSQdYwpE2r9C2JW0Z6Q+b7UPtohsKHMBK+js2OK
	 H7QrpytRoiBaxjrnxyd8rf14Buo8qjdiVAl0r4XLuoz5ejIBpTRKYcVKQkksaEqpEb
	 SPpDA7YH0Tyhh2o6bdXH5rClDjH7B7fvs57b/+0C2kDFw6YBk2LxMQmUFrFBt4hA7c
	 z6lsQXGCrqTd1RNJw/xw9W1GOGpzIiEl6j1qeOS7Fs3OOCVZNZcVb97aT5XSB9AA8R
	 ObFvaA/bFdHzPSEt4TQc2GkdMMoHIAGgJ6lI2tWMWg4H5OQl9iTmJX7D1jTp5tVIEy
	 sPKrC6i2g8SzA==
Date: Tue, 21 Oct 2025 09:05:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: sc8280xp-qmp-pcie: Document Glymur
 PCIe Gen4 2-lanes PHY
Message-ID: <20251021-swinging-copper-harrier-95fcdd@kuoka>
References: <20251015-phy-qcom-pcie-add-glymur-v1-0-1af8fd14f033@linaro.org>
 <20251015-phy-qcom-pcie-add-glymur-v1-1-1af8fd14f033@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251015-phy-qcom-pcie-add-glymur-v1-1-1af8fd14f033@linaro.org>
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

On Wed, Oct 15, 2025 at 04:42:54PM +0300, Abel Vesa wrote:
> The fourth and sixth PCIe instances on Glymur are both Gen4 2-lane PHY.
> So document the compatible.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
