Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCBE1C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 14:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqXP2xB+7n085rc8PUfIGPUpZ7oasXCEnKekhqu4QpM=; b=Aldzq8IGT+TVth
	0Tnhq2FOpxNE6TSzaeCb339zTNguUY1su8yiJU3f42H7S4rexAA1kiVjNNcRSm9cfkOCuG7GWaW90
	FcciEoREw1JwS8urubbmO8wb2UySStAK54W56xYJcMUiW53j4MRqREDEEtOMyS8ba8IgOjgT5k6yy
	EjyohVnbnPZMK/ouauKpo4mzOgcUIcH1WnRPxetQrGtshnaGyCq108r/cS3Avga/fFjaPhXWc0U85
	k3bVNfRlcEXshK4qwkM+ubS460XlyywWY/eWusHWGzu6APvvpnVOeStaQOuR5Z2hQJEYMjanZ6nHN
	DnjkzYbhslAyuYWSJTMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyx2y-00DoBD-DK; Wed, 08 Jun 2022 14:52:36 +0000
Received: from mail-io1-f46.google.com ([209.85.166.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyx0B-00DmVs-99; Wed, 08 Jun 2022 14:49:45 +0000
Received: by mail-io1-f46.google.com with SMTP id d123so111971iof.10;
        Wed, 08 Jun 2022 07:49:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=RpPfGx+ya8x2JljdpaaMlVFLU3uBTp8K04ETijPhfOM=;
        b=jbH9MvgwhcVs5OealiQ0c6QWFUJbGTX3YECyppwkNZRv9khX5hknRs7LkyeOXjI9ok
         /lRG/tapmPfEOE68IS3G79I6aPBZI724kLpYTUJDxf81FYsPsJdGu2KFbwJMwI6EQVe6
         TCASRg+O1fD/fgZiRd8mZHvut3qr6nWPB8a9qJYTUk04o8PodP0yjjriFVMEtngpoywq
         PlxUYwaI36XedHjrwUNyHHK+1Pe7jx2u9MPrVyQPYAp3ZNR7QSgl1VZYD5stjMhBI+5u
         zEDOK9fSImNJPkUTFGX+PR28ssa+IgHoSlIMSBN3hk3xx1/FR52jUVU7zJ8Ih4ruv9i4
         pSSQ==
X-Gm-Message-State: AOAM53029tW/z/G+683DYfQ97IlJkGUD8Blq0In95glhFWfEvFydmOIA
	OhL5v52HfU3qbAhbtXWD0w==
X-Google-Smtp-Source: ABdhPJzOnYPieiilKsMevnIGVxmRS85Gff9BgZOBvO3la3EOiMcvigdWjz8nadOg8Epv471+N3K7Ww==
X-Received: by 2002:a02:164a:0:b0:331:5661:75b2 with SMTP id a71-20020a02164a000000b00331566175b2mr18458434jaa.122.1654699781569;
        Wed, 08 Jun 2022 07:49:41 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id cv12-20020a056638498c00b0032b3a7817acsm8092684jab.112.2022.06.08.07.49.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 07:49:41 -0700 (PDT)
Received: (nullmailer pid 1375513 invoked by uid 1000);
	Wed, 08 Jun 2022 14:49:39 -0000
Date: Wed, 8 Jun 2022 08:49:39 -0600
From: Rob Herring <robh@kernel.org>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Bin Liu <b-liu@ti.com>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-usb@vger.kernel.org
Subject: Re: [PATCH 2/7] dt-bindings: phy: add binding document for Allwinner
 F1C100s USB PHY
Message-ID: <20220608144939.GA1366879-robh@kernel.org>
References: <20220608070452.338006-1-uwu@icenowy.me>
 <20220608070452.338006-3-uwu@icenowy.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220608070452.338006-3-uwu@icenowy.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_074943_378083_51F9713B 
X-CRM114-Status: GOOD (  19.97  )
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

On Wed, Jun 08, 2022 at 03:04:47PM +0800, Icenowy Zheng wrote:
> Allwinner F1C100s has the most simple USB PHY among all Allwinner SoCs,
> because it has only one OTG USB controller, no host-only OHCI/EHCI
> controllers.
> 
> Add a binding document for it.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> ---
>  .../phy/allwinner,suniv-f1c100s-usb-phy.yaml  | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
> new file mode 100644
> index 000000000000..180fa8840bf7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license please.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/allwinner,suniv-f1c100s-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner F1C100s USB PHY Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <mripard@kernel.org>
> +
> +properties:
> +  "#phy-cells":
> +    const: 1
> +
> +  compatible:
> +    const: allwinner,suniv-f1c100s-usb-phy
> +
> +  reg:
> +    maxItems: 1
> +    description: PHY Control registers
> +
> +  reg-names:
> +    const: phy_ctrl
> +
> +  clocks:
> +    maxItems: 1
> +    description: USB OTG PHY bus clock
> +
> +  clock-names:
> +    const: usb0_phy

*-names is not needed with only one entry. Plus, just using the module 
name is not a great choice.

> +
> +  resets:
> +    maxItems: 1
> +    description: USB OTG reset
> +
> +  reset-names:
> +    const: usb0_reset

Same here.

> +  usb0_id_det-gpios:
> +    maxItems: 1
> +    description: GPIO to the USB OTG ID pin
> +
> +  usb0_vbus_det-gpios:
> +    maxItems: 1
> +    description: GPIO to the USB OTG VBUS detect pin
> +
> +  usb0_vbus_power-supply:
> +    description: Power supply to detect the USB OTG VBUS
> +
> +  usb0_vbus-supply:
> +    description: Regulator controlling USB OTG VBUS

Why the 'usb0_' prefix?

Are these GPIOs and Vbus supply connected to the phy? If not, these all 
belong in a connector node (as that is where they are connected to in 
h/w).

> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - reg
> +  - reg-names
> +  - resets
> +  - reset-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/clock/suniv-f1c100s-ccu.h>
> +    #include <dt-bindings/reset/suniv-f1c100s-ccu.h>
> +
> +    phy@1c13400 {
> +        compatible = "allwinner,suniv-f1c100s-usb-phy";
> +        reg = <0x01c13400 0x10>;
> +        reg-names = "phy_ctrl";
> +        clocks = <&ccu CLK_USB_PHY0>;
> +        clock-names = "usb0_phy";
> +        resets = <&ccu RST_USB_PHY0>;
> +        reset-names = "usb0_reset";
> +        #phy-cells = <1>;
> +        usb0_id_det-gpios = <&pio 4 2 GPIO_ACTIVE_HIGH>;
> +    };
> -- 
> 2.36.0
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
