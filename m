Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9A35C38A2D
	for <linux-phy@archiver.kernel.org>; Wed, 26 Oct 2022 01:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaaP2+mdI5/T53UtIhg/ZB1y+vHtHKhTBTIB42x3t2M=; b=YpztTp3nYc4Yxk
	7R71r7S7RLNy0yUNLUN7M5d8vI2WHrh2+SK5bVJ9M/+omB8C66Z0xsyLfIhR5CygDrMkb5XwMhtyN
	xEahfrn4aaK937mBRVpSw12xAakxU1Lkmw6rDauPTz+jU2n5B3YOa/dmRyPL1Yv6E5kbkvvp/JgJs
	06dGKMiLZ6c3bCmOsyYic+lSII+Q0Uk4IiU8NtCsu+trqUI7Yzd5wGGYEDoJKfLlHwkIGgEuGRDx8
	M+OmAguKYVVYzBMqporHZnOdq4DhKfx+8O5hLOrH9pItveLHhHL8snfgWrN+q4EGDarrql+LTNJTO
	Pb1Q1QAoh/aBYp31XXWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onUt3-007mYu-4W; Wed, 26 Oct 2022 01:07:17 +0000
Received: from mail-oa1-f46.google.com ([209.85.160.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onUt0-007mYP-Jm
	for linux-phy@lists.infradead.org; Wed, 26 Oct 2022 01:07:16 +0000
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-12c8312131fso18187132fac.4
        for <linux-phy@lists.infradead.org>; Tue, 25 Oct 2022 18:07:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/fJTKt940eth1OpdSb2WO5kQsdZXgZfQJNIIFcYi3Hg=;
        b=tFMV+LRShhI6CbusF6nBS4p+xGTEdEjofM3g6A3oUgSx62oyH5iK93RJVnLij2j2GA
         Diqv7gkQdWYDGKS6MiTq4TyQG72bvhb9Bbzj6Q9Ul211KQJK1C5R1LVoAnf7F7PCY5sh
         /WRkAE7QKgdVEGGQK7ZRiYb3inm/oKyicTsEOlKC93k6R4/jj+lG+UdKkwI+TsxxUug/
         Vk4GdYXfRYA9AuMWZC29p5TGnE7KdKcBSK5QGu2FI93TNaLGoDbHa4zGdujYrC1Qwpvs
         YbURjFfIAon6/u3HpZAm1mO7qOOOk2atV6/S9l2h78GFrtd61RVApZPFqiV3RvWE31tt
         rtrQ==
X-Gm-Message-State: ACrzQf2aVJ6tvRr+UpjmTJegVizuF0owRnMeEGedKpdiYMKpnlsD2OXO
	SRqd7I8heUpR99qLL/fBhA==
X-Google-Smtp-Source: AMsMyM4xjqa65NuztevNo6tGxHSfTJvxr9edT4ZFZekBByytP213dGKQEHdsVIKhYYUVG0yHCYQwLA==
X-Received: by 2002:a05:6870:c58d:b0:136:7f6a:1e5a with SMTP id ba13-20020a056870c58d00b001367f6a1e5amr717425oab.24.1666746431099;
        Tue, 25 Oct 2022 18:07:11 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id d63-20020a9d2945000000b006618bbede10sm1626853otb.53.2022.10.25.18.07.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 18:07:10 -0700 (PDT)
Received: (nullmailer pid 3522397 invoked by uid 1000);
	Wed, 26 Oct 2022 01:07:11 -0000
Date: Tue, 25 Oct 2022 20:07:11 -0500
From: Rob Herring <robh@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com, jonathanh@nvidia.com, thierry.reding@gmail.com, heikki.krogerus@linux.intel.com, ajayg@nvidia.com, kishon@ti.com, vkoul@kernel.org, p.zabel@pengutronix.de, balbi@kernel.org, mathias.nyman@intel.com, jckuo@nvidia.com, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, singhanc@nvidia.com, linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 03/11] dt-bindings: usb: Add binding for Cypress cypd4226
 I2C driver
Message-ID: <20221026010711.GA3438928-robh@kernel.org>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-4-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221024074128.1113554-4-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_180714_672946_921A3262 
X-CRM114-Status: GOOD (  19.65  )
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

On Mon, Oct 24, 2022 at 03:41:20PM +0800, Wayne Chang wrote:
> add device-tree binding documentation for Cypress cypd4226 type-C
> controller's I2C interface. It is a standard i2c slave with GPIO
> input as IRQ interface.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
>  .../bindings/usb/cypress,cypd4226.yaml        | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml b/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> new file mode 100644
> index 000000000000..5ac28ab4e7a1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/cypress,cypd4226.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cypress cypd4226 UCSI I2C Type-C Controller
> +
> +maintainers:
> +  - Wayne Chang <waynec@nvidia.com>
> +
> +description: |

Don't need '|'.

> +  The Cypress cypd4226 UCSI I2C type-C controller is a I2C interface type-C
> +  controller.
> +
> +properties:
> +  compatible:
> +    const: cypress,cypd4226
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  reg:
> +    const: 0x08
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  cypress,firmware-build:
> +    enum:
> +      - nv
> +      - gn
> +    description: |
> +      the name of the CCGx firmware built for product series.
> +      should be set one of following:
> +      - "nv" for the RTX product series
> +      - "gn" for the Jetson product series
> +
> +patternProperties:
> +  '^connector@[0-9a-f]+$':

Looks like the part only has 2 PD controllers, so 2 connectors only, 
right?

> +    $ref: /schemas/connector/usb-connector.yaml#

       unevaluatedProperties: false

> +    properties:
> +      reg:
> +        maxItems: 1

maximum: 1

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: true

false

true is only for incomplete, common schemas.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/tegra194-gpio.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      #interrupt-cells = <2>;
> +
> +      ucsi_ccg: ucsi_ccg@8 {
> +        compatible = "cypress,cypd4226";
> +        interrupt-parent = <&gpio_aon>;
> +        interrupts = <TEGRA194_AON_GPIO(BB, 2) IRQ_TYPE_LEVEL_LOW>;
> +        reg = <0x08>;
> +        cypress,firmware-build = "gn";
> +        status = "okay";

Don't need status in examples.

> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        ccg_typec_con0: connector@0 {
> +          compatible = "usb-c-connector";
> +          reg = <0>;
> +          label = "USB-C";
> +          data-role = "dual";
> +          port {
> +            ucsi_ccg_p0: endpoint {
> +              remote-endpoint = <&usb_role_switch0>;
> +            };
> +          };
> +        };
> +      };
> +    };
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
