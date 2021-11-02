Return-Path: <SRS0=Fgqk=PV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72DE0C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 16:40:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3771660E90
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 16:40:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3771660E90
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBx2ddxO8iyajzqiAKhmIu79/ICbwcRzcva84F9L1uA=; b=jsaLFXTVwHqJ6l
	wPL/nM663uVjoRdHaY1iNGPdM8zcY+knpMefzuCGZvTMu4lFKc67v5mVDGXtOe13SrVVMw1U5J1cg
	GDEH9Qd4zKQX8kG+nmJnUmLVr5pUufi+kkhICkoZErCNZ16oO25NCCNzyyE3cyV4gxgS7Vh+kr/Nc
	s1b544P9nWbnoOUMQBbpnWjxyUeTG2BynDKZA+5pxHef+YnpJV+LLdURRwdQVl+700urthp0WwOFA
	mX6X9ZJ5a4mHBaX/t2oAMIvrEL5GYLOHBABLJPW+xBwhynDWO1nYd7SSkVyA0bZ5yaMc5vHRmwSeK
	vgubCK3oKwiNNEra5RlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhwq8-002Jwb-Ny; Tue, 02 Nov 2021 16:40:48 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhwq5-002JvF-D8; Tue, 02 Nov 2021 16:40:47 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 v2-20020a05683018c200b0054e3acddd91so30797604ote.8; 
 Tue, 02 Nov 2021 09:40:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=e5GlJ8JHBJ/9O+bLCp/KS0OxnO+d96GJAcEfTy+w1v8=;
 b=N04qv7Qlo7oTq3zVwrUFph8wd1rMbG6NC6CizisexC+wWhJ2Gjc2sa0fKuHBi3SJzH
 jSc3ny6rhP1VEs83Vy3fipkntKMFy12LHbyXJq6Rbq6W1S2Ga1BjABYJX0KmqasxcpiE
 zyNChyMGU1Z4dccKzNZ1rrrK9EQZ6CbZNkrFSm+MZ1sIPsKlGkaSv+mfA8WyWlqUyl+c
 ccxoRznUMusv7cZuhdxY9lJxMmvdGLd7Ni125kGAxvcRnlvZGWmmS2nB1Yb3PO3v29GM
 MqMlluNw2aIuKla3kunuRT24t92gDkeMZ92WeriA5E/m/Cud4YTI3rKG+ZwT3BEbK5Ik
 UEyQ==
X-Gm-Message-State: AOAM530meYmkuaWGxbANhq0PH3h5kreDojtQm+OTf0HmSEkkA98+/dTt
 EjlSeSqjIlHMqzRPtUnwIQ==
X-Google-Smtp-Source: ABdhPJzE0adcVTqLogDw/8gNDG3NR3Ik4X8ekV4rjvUQCgy7mvTK9W/vxhu/1hcxpHE33/f8ncxwrQ==
X-Received: by 2002:a9d:847:: with SMTP id 65mr23693262oty.326.1635871244046; 
 Tue, 02 Nov 2021 09:40:44 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bo35sm3941838oib.40.2021.11.02.09.40.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Nov 2021 09:40:43 -0700 (PDT)
Received: (nullmailer pid 3033197 invoked by uid 1000);
 Tue, 02 Nov 2021 16:40:42 -0000
Date: Tue, 2 Nov 2021 11:40:42 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, marcel.ziswiler@toradex.com, tharvey@gateworks.com,
 kishon@ti.com, vkoul@kernel.org, galak@kernel.crashing.org,
 shawnguo@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
Message-ID: <YYFqCptm9m7Onbrv@robh.at.kernel.org>
References: <1635820355-27009-1-git-send-email-hongxing.zhu@nxp.com>
 <1635820355-27009-3-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1635820355-27009-3-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_094045_474776_FCC20BFC 
X-CRM114-Status: GOOD (  20.37  )
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

On Tue, Nov 02, 2021 at 10:32:29AM +0800, Richard Zhu wrote:
> Add dt-binding for the standalone i.MX8 PCIe PHY driver.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Reviewed-by: Tim Harvey <tharvey@gateworks.com>
> Tested-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  .../bindings/phy/fsl,imx8-pcie-phy.yaml       | 95 +++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> new file mode 100644
> index 000000000000..b9f89e343b0b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,imx8-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8 SoC series PCIe PHY Device Tree Bindings
> +
> +maintainers:
> +  - Richard Zhu <hongxing.zhu@nxp.com>
> +
> +properties:
> +  "#phy-cells":
> +    const: 0
> +
> +  compatible:
> +    enum:
> +      - fsl,imx8mm-pcie-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: PHY module clock

The description doesn't really add much. Just 'maxItems: 1'.

> +
> +  clock-names:
> +    items:
> +      - const: ref
> +
> +  resets:
> +    items:
> +      - description: Phandles to PCIe-related reset lines exposed by SRC
> +          IP block.

More than 1 phandle? The schema says only 1. Again, for only 1, you can 
use just 'maxItems: 1'.

> +
> +  reset-names:
> +    items:
> +      - const: pciephy
> +
> +  fsl,refclk-pad-mode:
> +    description: |
> +      Specifies the mode of the refclk pad used. It can be UNUSED(PHY
> +      refclock is derived from SoC internal source), INPUT(PHY refclock
> +      is provided externally via the refclk pad) or OUTPUT(PHY refclock
> +      is derived from SoC internal source and provided on the refclk pad).
> +      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants
> +      to be used.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [ 0, 1, 2 ]
> +
> +  fsl,tx-deemph-gen1:
> +    description: Gen1 De-emphasis value (optional required).

Optional or required?

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0
> +
> +  fsl,tx-deemph-gen2:
> +    description: Gen2 De-emphasis value (optional required).
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0
> +
> +  fsl,clkreq-unsupported:
> +    type: boolean
> +    description: A boolean property indicating the CLKREQ# signal is
> +      not supported in the board design (optional)
> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - fsl,refclk-pad-mode
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +    #include <dt-bindings/phy/phy-imx8-pcie.h>
> +    #include <dt-bindings/reset/imx8mq-reset.h>
> +
> +    pcie_phy: pcie-phy@32f00000 {
> +            compatible = "fsl,imx8mm-pcie-phy";
> +            reg = <0x32f00000 0x10000>;
> +            clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> +            clock-names = "ref";
> +            assigned-clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> +            assigned-clock-rates = <100000000>;
> +            assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_100M>;
> +            resets = <&src IMX8MQ_RESET_PCIEPHY>;
> +            reset-names = "pciephy";
> +            fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
> +            #phy-cells = <0>;
> +    };
> +...
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
