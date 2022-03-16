Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB1BBC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 16 Mar 2022 13:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLcmUvh7gS/eoniMtU/HPmEwDGI+H1RCQ+aVe/S6NNA=; b=ka+bML/pOF2ZYW
	4336Sqy9K3omdvzJ63qw8aGuOJUJAdxWXQ2kS8d+d9IOsu0sLZX/uvoJfJCp580F7cKfxAWJrH+bC
	yK+0Pi+8d6v+U1chZDC8do6K2Nvu6pN05folJG6+POGBDSQrybCgUSPS3YmWDHf3HPdX8pGJi/fiW
	BilUMAFbjvTe3EKoyFQNN6I2bDTxpPfzpvsI+xkkAJNEK5NQa2d/yfVwNBuFWzrWuu1FA1pm1odO+
	CEDD5Q5clo57+WYROzOygLDI0ODXUHSbRuFvo+rpzWPsCWMG9EsCPQZA7sglQSbz4v46BitkMYaw+
	Tp7nV6CIaF8hOwZrq7lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUThI-00D1rk-Ok; Wed, 16 Mar 2022 13:28:16 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUTfo-00D1KQ-9x; Wed, 16 Mar 2022 13:26:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647437204; x=1678973204;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vnRswGehRJLFAaBCzvBCJdjOnc3qj7r4WnbNFLMazzs=;
 b=fHIzjIGZMBLpEp/nLYVPt/gypKHNC6wQFXPpRxiOJWlwbDJdmTihSXi/
 cCfWEZTw8ok/O3VuTXy0avr8OeVYpf1yeKDqtt1hPVGn0e9Dk2Iiuw3tG
 4S0njzjAgIpnNKa3t7VOirRwZHdduQ+cy0WMP3AjI8TcXcG7jry/LZGxo
 8hWr2RGw0ItcYZ+U65H3iXCntPfz1ioK4lQBJVLBqFu7aTAK4eNZSqEUU
 BxJmzwUYMNUA5f87yfkWj+AUVnHPAiMgiQQPJk0HFRMrKxHGm29ns7KGa
 jyeFlpQGTIAXH+DCHTL8EfrHa0AXEv0GmCxi62LXThG+66zRO2kuiDhaH A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="236530229"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="236530229"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 06:26:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="634975950"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com)
 ([10.237.72.43])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 06:26:36 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
 by paasikivi.fi.intel.com (Postfix) with SMTP id A50C620090;
 Wed, 16 Mar 2022 15:26:34 +0200 (EET)
Date: Wed, 16 Mar 2022 15:26:34 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 7/9] dt-bindings: media: Add Allwinner A83T MIPI CSI-2
 bindings documentation
Message-ID: <YjHlisNfdobeAta7@paasikivi.fi.intel.com>
References: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
 <20220302220739.144303-8-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220302220739.144303-8-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_062644_409546_46F62749 
X-CRM114-Status: GOOD (  19.67  )
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

Hi Paul,

Thanks for the patch.

On Wed, Mar 02, 2022 at 11:07:37PM +0100, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the Allwinner A83T
> MIPI CSI-2 controller.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 138 ++++++++++++++++++
>  1 file changed, 138 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
> new file mode 100644
> index 000000000000..75121b402435
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
> @@ -0,0 +1,138 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/allwinner,sun8i-a83t-mipi-csi2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A83T MIPI CSI-2 Device Tree Bindings
> +
> +maintainers:
> +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> +
> +properties:
> +  compatible:
> +    const: allwinner,sun8i-a83t-mipi-csi2
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +      - description: MIPI-specific Clock
> +      - description: Misc CSI Clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +      - const: mipi
> +      - const: misc
> +
> +  resets:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: Input port, connect to a MIPI CSI-2 sensor
> +
> +        properties:
> +          reg:
> +            const: 0
> +
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              clock-lanes:
> +                maxItems: 1

Does the hardware support lane reordering? If not, the property should be
omitted here.

I can also remove the three lines here while applying the patches.

> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - data-lanes
> +
> +        additionalProperties: false
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: Output port, connect to a CSI controller
> +
> +        properties:
> +          reg:
> +            const: 1
> +
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +        additionalProperties: false
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/sun8i-a83t-ccu.h>
> +    #include <dt-bindings/reset/sun8i-a83t-ccu.h>
> +
> +    mipi_csi2: csi@1cb1000 {
> +        compatible = "allwinner,sun8i-a83t-mipi-csi2";
> +        reg = <0x01cb1000 0x1000>;
> +        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&ccu CLK_BUS_CSI>,
> +                 <&ccu CLK_CSI_SCLK>,
> +                 <&ccu CLK_MIPI_CSI>,
> +                 <&ccu CLK_CSI_MISC>;
> +        clock-names = "bus", "mod", "mipi", "misc";
> +        resets = <&ccu RST_BUS_CSI>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            mipi_csi2_in: port@0 {
> +                reg = <0>;
> +
> +                mipi_csi2_in_ov8865: endpoint {
> +                    data-lanes = <1 2 3 4>;
> +
> +                    remote-endpoint = <&ov8865_out_mipi_csi2>;
> +                };
> +            };
> +
> +            mipi_csi2_out: port@1 {
> +                reg = <1>;
> +
> +                mipi_csi2_out_csi: endpoint {
> +                    remote-endpoint = <&csi_in_mipi_csi2>;
> +                };
> +            };
> +        };
> +    };
> +
> +...

-- 
Kind regards,

Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
