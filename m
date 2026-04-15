Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A60F7FA0C3C
	for <linux-phy@archiver.kernel.org>; Wed, 15 Apr 2026 07:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBzho2UGa9O0D/sJQ9gwGkdwTFWC4lchxcDNYDN3aNE=; b=OEJehxBhFWTIX/
	VXsg3Ucs97UO/39FVflbj6QTQLra/azG2JY7TZObql3LZAE4BuSnVXl6EqJiB8UipnHIQFWu+mHjN
	TFKz3QK7YwU7zznpYhI7BrJPUtE8muu8f2Poqw6OW0MkmyPWjBsKHHoq0+V9dpH7fwR4EuFi1w16D
	bG0b1N9UEmNXr35/6csocJglMZpGjF0Dv5lI63FIfIRkqAnSsx1Aai/EI7ZuQ2MIX3U/bdptttpEb
	requVrokmhM6eY03wzMOnv92jdBeX5lUpgiFxZGf0DOyB7xDKtjdHemHf57svxxUNq8fA0/Gc8urT
	XQ3A4AdZQ9cJ2EXDYYig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCv18-00000000krR-109e;
	Wed, 15 Apr 2026 07:50:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCv16-00000000kr9-2dQo
	for linux-phy@lists.infradead.org;
	Wed, 15 Apr 2026 07:50:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BB6F4600AD;
	Wed, 15 Apr 2026 07:50:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4B69C19424;
	Wed, 15 Apr 2026 07:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776239431;
	bh=b6dM+g3zcR4Nm5rqv1+/vz817x/xjh8qmOtbTgMGBqY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RdKeyfnW726LC/PuCaknDfnfOTqsswVZYIGhBAlyzC1I4nfG3L+PR57C07q3CqrdJ
	 9Srr5qQw7sEOGiECYDaZ9VV5mkbAgN1OKOylA1f7jjNqOdRLVLCrvGP9DVjF48U4Sj
	 FTKSUsJy7KoCvgPuIG+QZ74S3ZtQDk5b7aKaiwJdCzCrAS+GmtWVvB6BOIdh3mnNC5
	 gp4Vb1awnbnTapwbaEMIPhRZ7mG2Khr1njBM8djZgkSA59+8rYowIYnfKh0jc93qu+
	 j7ySb7VeCoUIUpKDFCM4+vDCDUNrd/+RG2ZAR81cPu6b2SqZ+4gEnmEXOKFeX1Te0O
	 j3cRUcH3UNAUQ==
Date: Wed, 15 Apr 2026 09:50:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
Message-ID: <20260415-wooden-prawn-of-lightning-dc1ddc@quoll>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-1-affcebc16b8b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260412-glymur_gen5x8_phy_0413-v3-1-affcebc16b8b@oss.qualcomm.com>
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

On Sun, Apr 12, 2026 at 11:25:56PM -0700, Qiang Yu wrote:
> The Glymur SoC has pcie3a and pcie3b PHYs that can operate in two modes:
> 
> 1. Independent 4-lane mode: Each PHY operates as a separate PCIe Gen5
>    4-lane interface, compatible with qcom,glymur-qmp-gen5x4-pcie-phy
> 2. Bifurcation mode (8-lane): pcie3a phy acts as leader and pcie3b phy as
>    follower to form a single 8-lane PCIe Gen5 interface
> 
> In bifurcation mode, the hardware design requires controlling additional
> resources beyond the standard pcie3a PHY configuration:
> 
> - pcie3b's aux_clk (phy_b_aux)
> - pcie3b's phy_gdsc power domain
> - pcie3b's bcr/nocsr reset
> 
> Add qcom,glymur-qmp-gen5x8-pcie-phy compatible string to document this
> 8-lane bifurcation configuration.

Do you describe PCI3A or PCI3B or something combined PCI3?

> 
> The phy_b_aux clock is used as the 6th clock instead of pipediv2,
> requiring the clock-names enum to be extended to support both
> [phy_b_aux, pipediv2] options at index 5. This follows the existing
> pattern used for [rchng, refgen] clocks at index 3.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 53 ++++++++++++++++++----
>  1 file changed, 45 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..14eba5d705b1956c1bb00cc8c95171ed6488299b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -18,6 +18,7 @@ properties:
>      enum:
>        - qcom,glymur-qmp-gen4x2-pcie-phy
>        - qcom,glymur-qmp-gen5x4-pcie-phy
> +      - qcom,glymur-qmp-gen5x8-pcie-phy

That's the same device as 5x4, no? One device, one compatible and this
suggests you will have three PCI phys in the DT - two 5x4 and one 5x8?


>        - qcom,kaanapali-qmp-gen3x2-pcie-phy
>        - qcom,qcs615-qmp-gen3x1-pcie-phy
>        - qcom,qcs8300-qmp-gen4x2-pcie-phy
> @@ -68,20 +69,27 @@ properties:
>        - const: ref
>        - enum: [rchng, refgen]
>        - const: pipe
> -      - const: pipediv2
> +      - enum: [phy_b_aux, pipediv2]
>  
>    power-domains:
> -    maxItems: 1
> +    minItems: 1
> +    items:
> +      - description: PCIe PHY power domain. For PHYs supporting
> +          bifurcation mode, this is the leader PHY power domain.
> +      - description: Additional PCIe PHY power domain for PHYs supporting
> +          bifurcation mode, used by the follower PHY.
>  
>    resets:
>      minItems: 1
> -    maxItems: 2
> +    maxItems: 4
>  
>    reset-names:
>      minItems: 1
>      items:
>        - const: phy
>        - const: phy_nocsr
> +      - const: phy_b
> +      - const: phy_b_nocsr

And now I doubt that all the changes here are for duplicated node.

Maybe just the commit msg is confusing and instead of describing some
node which combines two other phys just say what device is here being
described.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
