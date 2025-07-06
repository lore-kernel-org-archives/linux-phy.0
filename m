Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B34EC83F05
	for <linux-phy@archiver.kernel.org>; Sun,  6 Jul 2025 09:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nBJ3L0AUIPcU2wYPSHoiNQzKyf7NFVf/j0U5tFnkGY=; b=N3uG38BrCbSAxM
	I1JSWtp4PmMP826DEBOB7qcG+NZdzrpq61IN/YpDV4XL6x8arYcNY7IEdu9jz2TSoC0neDG9oDJPD
	DLJ3F3RpNtSLqVuxhoPBe9pKiyQmTPORb7D1GTwHIk606NLIzsRhl30lwvm3/YRMaHaRuSmLgPijf
	yvnVPrVRuAAxNUMWHiAlSH8BcZLaLG/wiAbux9ewNmDJJG3fErQ2jbNkxQsm/b4AKjiN91JetqWXY
	Q70KjQwiFKGeWHKtoVQZ5rnE5eJcJEKi4OXUfsZRq3YTHm+HuC6cudMNNPuscqxlOkNgRqWI2Dd9v
	FjDM1/z6tP1c3CzZC+MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYLtn-000000004EF-3tSJ;
	Sun, 06 Jul 2025 09:43:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYLrU-0000000040v-20H3;
	Sun, 06 Jul 2025 09:40:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DC00A60007;
	Sun,  6 Jul 2025 09:40:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F068C4CEED;
	Sun,  6 Jul 2025 09:40:39 +0000 (UTC)
Date: Sun, 6 Jul 2025 11:40:37 +0200
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	andre.draszik@linaro.org, peter.griffin@linaro.org, neil.armstrong@linaro.org, 
	kauschluss@disroot.org, ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com, 
	s.nawrocki@samsung.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com, dev.tailor@samsung.com, 
	faraz.ata@samsung.com, muhammed.ali@samsung.com, selvarasu.g@samsung.com
Subject: Re: [PATCH v4 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Message-ID: <20250706-fresh-meaty-cougar-5af170@krzk-bin>
References: <20250701120706.2219355-1-pritam.sutar@samsung.com>
 <CGME20250701115955epcas5p320cfe73ca33522cd2f9f7970cfde1c63@epcas5p3.samsung.com>
 <20250701120706.2219355-2-pritam.sutar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250701120706.2219355-2-pritam.sutar@samsung.com>
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

On Tue, Jul 01, 2025 at 05:37:01PM +0530, Pritam Manohar Sutar wrote:
> Add a dedicated compatible string for USB HS phy found in this SoC.
> The SoC requires two clocks, named "phy" and "ref" (same as clocks
> required by Exynos850).
> 
> It also requires various power supplies (regulators) for the internal
> circuitry to work. The required voltages are:
> * avdd075_usb - 0.75v
> * avdd18_usb20 - 1.8v
> * avdd33_usb20 - 3.3v
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

No, really. Look:

> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> ---
>  .../bindings/phy/samsung,usb3-drd-phy.yaml    | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> index e906403208c0..2e29ff749bba 100644
> --- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
> @@ -34,6 +34,7 @@ properties:
>        - samsung,exynos7870-usbdrd-phy
>        - samsung,exynos850-usbdrd-phy
>        - samsung,exynos990-usbdrd-phy
> +      - samsung,exynosautov920-usbdrd-phy
>  
>    clocks:
>      minItems: 1
> @@ -110,6 +111,15 @@ properties:
>    vddh-usbdp-supply:
>      description: VDDh power supply for the USB DP phy.
>  
> +  avdd075_usb-supply:
> +    description: 0.75V power supply for USB phy
> +
> +  avdd18_usb20-supply:
> +    description: 1.8V power supply for USB phy
> +
> +  avdd33_usb20-supply:
> +    description: 3.3V power supply for USB phy
> +

None of these were here. Follow DTS coding style... but why are you
adding completely new supplies?


>  required:
>    - compatible
>    - clocks
> @@ -235,6 +245,33 @@ allOf:
>  
>          reg-names:
>            maxItems: 1
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - samsung,exynosautov920-usbdrd-phy
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +
> +        clock-names:
> +          items:
> +            - const: phy
> +            - const: ref
> +
> +        reg:
> +          maxItems: 1
> +
> +        reg-names:
> +          maxItems: 1
> +
> +      required:
> +        - avdd075_usb-supply
> +        - avdd18_usb20-supply
> +        - avdd33_usb20-supply

Neither was this entire diff hunk here.

This was part of other block for a reason.

NAK

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
