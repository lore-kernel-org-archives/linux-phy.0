Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DD22C5CFDB
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 08:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCc9CMcMOgjE2nq1gFTOGePUbBicWbteepM4XIdxST8=; b=TIi0d5HVQjH4sH
	UY72YJFkDGFRSb0XCh6YE2uy0u0tjg+IP0YM0TtJ/ms2zCGyXa/PkSTXzE76QnKfj7WQPVnt6D6e1
	7n0+Lf2Z3PHQvWTUDqcIt/TIqfPK2v2U16Z7kLscZ3z0vsn+IwgAEatfAFw1TDVnJsa5d023JlUFs
	+wiPH6jORe0MEK7lryVvum9g7DcmMZ+spnTBvfprcveKDNc7CLwFcYsZwk1GPrzmtH8lomeyEanQO
	oHZJbhNN7JBiu7Z8UUMLJznOaSy6q80ElG6sKbzk+sgECY2El+pqDgWbbl7yO9hTg6sZA2UfTUl7R
	J3WQ1IuaOf22p1Fxn5Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQsd-000000009Ab-04oa;
	Thu, 13 Aug 2026 08:33:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQsc-000000009AN-21fa
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 08:33:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 02414416EA;
	Thu, 13 Aug 2026 08:33:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F2DB1F000E9;
	Thu, 13 Aug 2026 08:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786610017;
	bh=3pi032W6HNnsB6a/BIb5totDN4yPYUsdDVDiwq7RYlc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NhUlY0Ig8/hSWLibzaLr+JJCEQmXS0sfO0JL8kclxf0T+91n6ZZDd0+nKJXWLhxpZ
	 09tVkQB678PqQsFbOeg9pYw7crzGzTI0i4auYZJQJ7wBFrZ5YGMtm5lPRBfEbcaaRd
	 LQWFtjCQENHSRxD40YvXz+EozeG7P7KKLWLlWahNMxjbP6iyaxnIsHDfXg2F7BkWo5
	 aX6XDi1qBQL4VszD/EuJvWTiR6NN6CLh/J02onIhgFGuOclWCZmSjB73kLU5wKa2tQ
	 P+UkSWqwJ/ZVacf9NFECFVloDb8hpssGVaqQAmQYjsVk+kdYOk/z8jbUsR7xfapWRv
	 dT4pOOuNzDYQA==
Date: Thu, 13 Aug 2026 10:33:31 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add documentation for Airoha
 AN7583 USB PHY
Message-ID: <20260813-xanthic-sawfly-of-greatness-47e9bc@quoll>
References: <20260811124724.702467-1-ansuelsmth@gmail.com>
 <20260811124724.702467-2-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260811124724.702467-2-ansuelsmth@gmail.com>
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

On Tue, Aug 11, 2026 at 02:47:22PM +0200, Christian Marangi wrote:
> Add documentation for Airoha AN7583 USB PHY that describe the USB PHY
> for the USB controller.
> 
> Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> always supported. The USB 3.0 mode is optional and depends on the Serdes
> mode currently configured on the system for the relevant USB port.
> 
> To correctly calibrate, the USB 2.0 port require correct value in
> "airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
> selecting one of the 4 monitor clock for calibration (internal clock not
> exposed to the system) but each port have only one of the 4 actually
> connected in HW hence the correct value needs to be specified in DT
> based on board and the physical port. Normally it's monitor clock 1 for
> USB1 and monitor clock 2 for USB2.
> 
> To correctly setup the Serdes mode attached to the USB 3.0 mode, a phys
> property is required with the phandle pointing to the correct Serdes port
> provided by the SCU node. Providing the phys property is optional if USB
> 3.0 is not used.
> 
> The second USB PHY on Airoha AN7583 SoC is used for PCIe Gen2 usage and
> similar to USB 3.0 require a phys property to configure the serdes.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  .../bindings/phy/airoha,an7583-usb-phy.yaml   | 205 ++++++++++++++----
>  1 file changed, 168 insertions(+), 37 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> index a6e2c0b1acc4..46b311040e02 100644
> --- a/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> @@ -26,64 +26,195 @@ description: >
>  
>  properties:
>    compatible:
> -    const: airoha,an7583-usb-phy
> +    enum:
> +      - airoha,an7583-usb-phy
> +      - airoha,an7583-pcie-phy

Keep the list sorted.

>  
>    reg:
> -    items:
> -      - description: phy register
> -      - description: ana register
> -      - description: pma register
> -      - description: dig register
> +    minItems: 3
> +    maxItems: 4
>  
>    reg-names:
> -    itmes:
> -      const: phy
> -      const: ana
> -      const: pma
> -      const: dif
> +    minItems: 3
> +    maxItems: 4
>  
> -  usb2-phy:
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0

I don't understand this diff. Why do you add cells if you do not have
chidlren with addressing for new device (pcie)?

> +
> +  usb3-phy:
>      type: object
>  
>      properties:
> -      reg: [0, 0x1000]
> +      phys:
> +        items:
> +          - description: phandle to Serdes PHY
>  
> -    airoha,usb2-monitor-clk-sel:
> -      description: Describe what oscillator across the available 4
> -        should be selected for USB 2.0 Slew Rate calibration.
> -      $ref: /schemas/types.yaml#/definitions/uint32
> -      enum: [0, 1, 2, 3]
> +      '#phy-cells':
> +        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
> +          as defined in dt-bindings/phy/phy.h.
> +        const: 1
>  
> -    '#phy-cells':
> -      description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
> -        as defined in dt-bindings/phy/phy.h.
> -      const: 1
> +    required:
> +      - phys
> +      - '#phy-cells'
>  
> -  usb3-phy:
> +    additionalProperties: false
> +
> +  pcie-phy:
> +    type: object
> +
> +    properties:
> +      phys:
> +        items:
> +          - description: phandle to Serdes PHY
> +
> +      '#phy-cells':
> +        description: The cell contains the mode, PHY_TYPE_PCIE or PHY_TYPE_USB3,
> +          as defined in dt-bindings/phy/phy.h.
> +        const: 1
> +
> +    required:
> +      - phys
> +      - '#phy-cells'
> +
> +    additionalProperties: false
>  
> -  phys:
> -    items:
> -      - description: phandle to Serdes PHY. Optional if USB 3.0 is not used.
> +patternProperties:
> +  '^usb2-phy@[0-9-a-f]+$':
> +    type: object
> +
> +    properties:
> +      reg:
> +        enum: [0x0, 0x1000]
>  
> +      airoha,usb2-monitor-clk-sel:
> +        description: Describe what oscillator across the available 4
> +          should be selected for USB 2.0 Slew Rate calibration.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        enum: [0, 1, 2, 3]
> +
> +      '#phy-cells':
> +        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
> +          as defined in dt-bindings/phy/phy.h.
> +        const: 1
> +
> +    required:
> +      - reg
> +      - airoha,usb2-monitor-clk-sel
> +      - '#phy-cells'
> +
> +    additionalProperties: false

Looking at the amount of changes this should not be the same binding.
Also, things would be simpler if children were called 'phy', but OTOH
why do you need children in the first place? Your pcie-phy child has no
resources, except phy which can go to the parent device.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
