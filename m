Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B91FAC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 19:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cIMZb6O8W/CQAzRGnOFRXvYvl/HDXzjvbAiyr/CuAw=; b=arX+y0kLeWj988
	MvzWG2z/2JVkTIBY3p06C4pyIZxxbuSM6F716OcRMn7LLTOeZ9XbLZjq16o5RadCHjK2I0h0gWJVf
	+RrNZ//BqRUH7cX2R1XBJf3Gyqd2SyhlGPHvDhWtfDG/wteHOz4b1odF1KaguqkkJ0s+mZJoRFpbK
	PfWxqHvzb1chyb06SxY6/pHC3oBSJ6my9wmkmY+TK25kKUmTGHXB7ALICuZ4r1Zj+I1hvbHs4vwJy
	gZMBECnllhHSzZzu4b7YUXC79l+N9PxHfTtFtkdYJh1x01D8J0giSiDTK9T5dseOycMwSLNZKfOVC
	mgg2iMryB5Xjek0+1AqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv2g6-00E4ah-7c; Wed, 08 Dec 2021 19:32:34 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv2fs-00E4Wv-1Q; Wed, 08 Dec 2021 19:32:22 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 i5-20020a05683033e500b0057a369ac614so3768628otu.10; 
 Wed, 08 Dec 2021 11:32:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8nxUtG+5JYlvW5SguB6Kw4ZUS6/ARKAi5lTA7ymRi4U=;
 b=xs1+sUkaOPWFP8ZXTdjIl+WQY1Wyljv2U36Q7mwsstVcJIbfVCPvRowFFWSvOQ4z6c
 L+LgCuR2AlUBG5uHSwvtWXbmdMRjIm4vzJjnPJclls14VBc7TJo1gbyOUM4iJy5Dgmot
 2AifoiKV9cyTP27XFOYvm2GbZ3Lk2BezH7MkFQGDUBUm33Ag1Jbeb/hpTYfTZxClW93Z
 l5tToVm+FxIKh2L8dfiyjYmV3iwHQADhDgSc+YYhP6f4cKg/3NauAXsEsDEOnWN5jKVU
 gRmOHepcyKKWIqhN4Lxj18lJfiC1IWJAv2Ab/V0ijvW38I9b2zOlVYxLkLNuPZYQvkt1
 9+mw==
X-Gm-Message-State: AOAM533FKhmOb8vqgaNJ2XhDoRKB6zty3pIhsRYKqfmocw55dIJLXN3u
 FAbtEZSHB99/09renn1otg==
X-Google-Smtp-Source: ABdhPJyzyO/Bn97Z2SbyHrMUw2BYtmH+nBP1gAtBUQYhquxascjBes0YKkNNS7jVMf4cz9jkJPf5tQ==
X-Received: by 2002:a9d:24c3:: with SMTP id z61mr1369551ota.100.1638991938803; 
 Wed, 08 Dec 2021 11:32:18 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id g7sm642073oon.27.2021.12.08.11.32.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 11:32:17 -0800 (PST)
Received: (nullmailer pid 198024 invoked by uid 1000);
 Wed, 08 Dec 2021 19:32:16 -0000
Date: Wed, 8 Dec 2021 13:32:16 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: devicetree@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 "maintainer:BROADCOM IPROC GBIT ETHERNET DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Doug Berger <opendmb@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v3 4/8] dt-bindings: net: Convert GENET binding to YAML
Message-ID: <YbEIQNoSRR8II7fF@robh.at.kernel.org>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
 <20211206180049.2086907-5-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211206180049.2086907-5-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_113220_137256_A4153703 
X-CRM114-Status: GOOD (  33.53  )
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

On Mon, Dec 06, 2021 at 10:00:45AM -0800, Florian Fainelli wrote:
> Convert the GENET binding to YAML, leveraging brcm,unimac-mdio.yaml and
> the standard ethernet-controller.yaml files.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../devicetree/bindings/net/brcm,bcmgenet.txt | 125 ---------------
>  .../bindings/net/brcm,bcmgenet.yaml           | 145 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 146 insertions(+), 126 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
>  create mode 100644 Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/brcm,bcmgenet.txt b/Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
> deleted file mode 100644
> index 0b5994fba35f..000000000000
> --- a/Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
> +++ /dev/null
> @@ -1,125 +0,0 @@
> -* Broadcom BCM7xxx Ethernet Controller (GENET)
> -
> -Required properties:
> -- compatible: should contain one of "brcm,genet-v1", "brcm,genet-v2",
> -  "brcm,genet-v3", "brcm,genet-v4", "brcm,genet-v5", "brcm,bcm2711-genet-v5" or
> -  "brcm,bcm7712-genet-v5".
> -- reg: address and length of the register set for the device
> -- interrupts and/or interrupts-extended: must be two cells, the first cell
> -  is the general purpose interrupt line, while the second cell is the
> -  interrupt for the ring RX and TX queues operating in ring mode.  An
> -  optional third interrupt cell for Wake-on-LAN can be specified.
> -  See Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
> -  for information on the property specifics.
> -- phy-mode: see ethernet.txt file in the same directory
> -- #address-cells: should be 1
> -- #size-cells: should be 1
> -
> -Optional properties:
> -- clocks: When provided, must be two phandles to the functional clocks nodes
> -  of the GENET block. The first phandle is the main GENET clock used during
> -  normal operation, while the second phandle is the Wake-on-LAN clock.
> -- clock-names: When provided, names of the functional clock phandles, first
> -  name should be "enet" and second should be "enet-wol".
> -
> -- phy-handle: See ethernet.txt file in the same directory; used to describe
> -  configurations where a PHY (internal or external) is used.
> -
> -- fixed-link: When the GENET interface is connected to a MoCA hardware block or
> -  when operating in a RGMII to RGMII type of connection, or when the MDIO bus is
> -  voluntarily disabled, this property should be used to describe the "fixed link".
> -  See Documentation/devicetree/bindings/net/fixed-link.txt for information on
> -  the property specifics
> -
> -Required child nodes:
> -
> -- mdio bus node: this node should always be present regardless of the PHY
> -  configuration of the GENET instance
> -
> -MDIO bus node required properties:
> -
> -- compatible: should contain one of "brcm,genet-mdio-v1", "brcm,genet-mdio-v2"
> -  "brcm,genet-mdio-v3", "brcm,genet-mdio-v4", "brcm,genet-mdio-v5", the version
> -  has to match the parent node compatible property (e.g: brcm,genet-v4 pairs
> -  with brcm,genet-mdio-v4)
> -- reg: address and length relative to the parent node base register address
> -- #address-cells: address cell for MDIO bus addressing, should be 1
> -- #size-cells: size of the cells for MDIO bus addressing, should be 0
> -
> -Ethernet PHY node properties:
> -
> -See Documentation/devicetree/bindings/net/phy.txt for the list of required and
> -optional properties.
> -
> -Internal Gigabit PHY example:
> -
> -ethernet@f0b60000 {
> -	phy-mode = "internal";
> -	phy-handle = <&phy1>;
> -	mac-address = [ 00 10 18 36 23 1a ];
> -	compatible = "brcm,genet-v4";
> -	#address-cells = <0x1>;
> -	#size-cells = <0x1>;
> -	reg = <0xf0b60000 0xfc4c>;
> -	interrupts = <0x0 0x14 0x0>, <0x0 0x15 0x0>;
> -
> -	mdio@e14 {
> -		compatible = "brcm,genet-mdio-v4";
> -		#address-cells = <0x1>;
> -		#size-cells = <0x0>;
> -		reg = <0xe14 0x8>;
> -
> -		phy1: ethernet-phy@1 {
> -			max-speed = <1000>;
> -			reg = <0x1>;
> -			compatible = "ethernet-phy-ieee802.3-c22";
> -		};
> -	};
> -};
> -
> -MoCA interface / MAC to MAC example:
> -
> -ethernet@f0b80000 {
> -	phy-mode = "moca";
> -	fixed-link = <1 0 1000 0 0>;
> -	mac-address = [ 00 10 18 36 24 1a ];
> -	compatible = "brcm,genet-v4";
> -	#address-cells = <0x1>;
> -	#size-cells = <0x1>;
> -	reg = <0xf0b80000 0xfc4c>;
> -	interrupts = <0x0 0x16 0x0>, <0x0 0x17 0x0>;
> -
> -	mdio@e14 {
> -		compatible = "brcm,genet-mdio-v4";
> -		#address-cells = <0x1>;
> -		#size-cells = <0x0>;
> -		reg = <0xe14 0x8>;
> -	};
> -};
> -
> -
> -External MDIO-connected Gigabit PHY/switch:
> -
> -ethernet@f0ba0000 {
> -	phy-mode = "rgmii";
> -	phy-handle = <&phy0>;
> -	mac-address = [ 00 10 18 36 26 1a ];
> -	compatible = "brcm,genet-v4";
> -	#address-cells = <0x1>;
> -	#size-cells = <0x1>;
> -	reg = <0xf0ba0000 0xfc4c>;
> -	interrupts = <0x0 0x18 0x0>, <0x0 0x19 0x0>;
> -
> -	mdio@e14 {
> -		compatible = "brcm,genet-mdio-v4";
> -		#address-cells = <0x1>;
> -		#size-cells = <0x0>;
> -		reg = <0xe14 0x8>;
> -
> -		phy0: ethernet-phy@0 {
> -			max-speed = <1000>;
> -			reg = <0x0>;
> -			compatible = "ethernet-phy-ieee802.3-c22";
> -		};
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml b/Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml
> new file mode 100644
> index 000000000000..ba9a6d156815
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml
> @@ -0,0 +1,145 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/brcm,bcmgenet.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom BCM7xxx Ethernet Controller (GENET) binding
> +
> +maintainers:
> +  - Doug Berger <opendmb@gmail.com>
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - brcm,genet-v1
> +      - brcm,genet-v2
> +      - brcm,genet-v3
> +      - brcm,genet-v4
> +      - brcm,genet-v5
> +      - brcm,bcm2711-genet-v5
> +      - brcm,bcm7712-genet-v5
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 2
> +    items:
> +      - description: general purpose interrupt line
> +      - description: RX and TX rings interrupt line
> +      - description: Wake-on-LAN interrupt line
> +
> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: main clock
> +      - description: EEE clock
> +      - description: Wake-on-LAN clock
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: enet
> +      - const: enet-eee
> +      - const: enet-wol
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +patternProperties:
> +  "^mdio@[0-9a-f]+$":
> +    type: object
> +    $ref: "brcm,unimac-mdio.yaml"
> +
> +    description:
> +      GENET internal UniMAC MDIO bus
> +
> +required:
> +  - reg
> +  - interrupts
> +  - phy-mode
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +allOf:
> +  - $ref: ethernet-controller.yaml
> +
> +additionalProperties: true

This should be 'unevaluatedProperties: false'. I'll fixup while 
applying.

> +
> +examples:
> +  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +  - |
> +    ethernet@f0b60000 {
> +        phy-mode = "internal";
> +        phy-handle = <&phy1>;
> +        mac-address = [ 00 10 18 36 23 1a ];
> +        compatible = "brcm,genet-v4";
> +        reg = <0xf0b60000 0xfc4c>;
> +        interrupts = <0x0 0x14 0x0>, <0x0 0x15 0x0>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        mdio0: mdio@e14 {
> +           compatible = "brcm,genet-mdio-v4";
> +           #address-cells = <1>;
> +           #size-cells = <0>;
> +           reg = <0xe14 0x8>;
> +
> +           phy1: ethernet-phy@1 {
> +                max-speed = <1000>;
> +                reg = <1>;
> +                compatible = "ethernet-phy-ieee802.3-c22";
> +           };
> +        };
> +    };
> +
> +  - |
> +    ethernet@f0b80000 {
> +        phy-mode = "moca";
> +        fixed-link = <1 0 1000 0 0>;
> +        mac-address = [ 00 10 18 36 24 1a ];
> +        compatible = "brcm,genet-v4";
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        reg = <0xf0b80000 0xfc4c>;
> +        interrupts = <0x0 0x16 0x0>, <0x0 0x17 0x0>;
> +
> +        mdio1: mdio@e14 {
> +           compatible = "brcm,genet-mdio-v4";
> +           #address-cells = <1>;
> +           #size-cells = <0>;
> +           reg = <0xe14 0x8>;
> +        };
> +    };
> +
> +  - |
> +    ethernet@f0ba0000 {
> +        phy-mode = "rgmii";
> +        phy-handle = <&phy0>;
> +        mac-address = [ 00 10 18 36 26 1a ];
> +        compatible = "brcm,genet-v4";
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        reg = <0xf0ba0000 0xfc4c>;
> +        interrupts = <0x0 0x18 0x0>, <0x0 0x19 0x0>;
> +
> +        mdio2: mdio@e14 {
> +           compatible = "brcm,genet-mdio-v4";
> +           #address-cells = <1>;
> +           #size-cells = <0>;
> +           reg = <0xe14 0x8>;
> +
> +           phy0: ethernet-phy@0 {
> +                max-speed = <1000>;
> +                reg = <0>;
> +                compatible = "ethernet-phy-ieee802.3-c22";
> +           };
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 7a2345ce8521..5e1064c23f41 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3819,7 +3819,7 @@ M:	Florian Fainelli <f.fainelli@gmail.com>
>  L:	bcm-kernel-feedback-list@broadcom.com
>  L:	netdev@vger.kernel.org
>  S:	Supported
> -F:	Documentation/devicetree/bindings/net/brcm,bcmgenet.txt
> +F:	Documentation/devicetree/bindings/net/brcm,bcmgenet.yaml
>  F:	Documentation/devicetree/bindings/net/brcm,unimac-mdio.yaml
>  F:	drivers/net/ethernet/broadcom/genet/
>  F:	drivers/net/ethernet/broadcom/unimac.h
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
