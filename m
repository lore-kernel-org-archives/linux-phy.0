Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0352C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 21:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnx/xzMyg4SiOXwdzDjyNDs7OiHeF6HOVbbZJfc2vxU=; b=ZWy1ZaNTRHZGZh
	/Ga/kWPytZesEvRYlrPcEYpELOFgaCuN976sVXdxbEcznrXNSGpmjVP5rHhLKDq8VuMViOS/0lAs3
	p1qK5//amgEjGVxFc6WdaINE7Y8WcLxB1f92WAc8dsTlwwDZF2MeQ+IFqsVfZiCTIwLwsl6277lD2
	OFd0MuQ5AAzQ6rS9WfUBqXVcDn95FMDS5UUjCa32VfAOMdFHsDR3ItBvtUZUlAG9ajQtksm11YTaf
	Ya81eQ0iUO2uG0BIWa4XQQ3cLDTTiVa6BU/E0kzaotbhmOj88Fy4Mxw/X7vV20NuMU9s4cc5rYSOt
	aNHDMiEzMxoU2VE3qxYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovPjr-0084Mw-8J; Wed, 16 Nov 2022 21:14:31 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovPjo-0084LW-BU
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 21:14:30 +0000
Received: by mail-ot1-f48.google.com with SMTP id l42-20020a9d1b2d000000b0066c6366fbc3so11238844otl.3
        for <linux-phy@lists.infradead.org>; Wed, 16 Nov 2022 13:14:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cV6uRSj5A0RfJrnNHT9JxaI5Eiomkz3u/uqtM/E+nQs=;
        b=Mus9qk+Rul6iRHaiw+N7OWgqTXivJOz+0o6hncqHEQvl/lAXYaTOaY5zF1AzEhiv5i
         usbw4Dnrf65yYFJwLp9vIYkFASqRBigwE5F/zrIPSnM1ZUeH1fbOLvoWjdyaQ749LpM1
         FpDX5y9bo4D1IVW2i5iH7fcR/3oZkzeKivVK3V4GrhDAweRzvJQFl2v8DrZSSxs/SYaW
         JSfoOzNqD8nwBSUwKemYQiFdox6MMnFe0mTDBNkrY+f6O6kjEpCkHCTMG/tEjuGCsA7B
         cxm86oO5HTPvneU5gsYmX01aPnp2c7sjCBfGXJoCjpQfus6iq540dE5A8xWVT8Iu9YbI
         S/xQ==
X-Gm-Message-State: ANoB5plU7Em+0eHV5brr/UgRbEMl2lttLSM0nMojmVGTGlsgzCXN1vsn
	SRyNjgrkd0pYtSPE7yKwL0x37rYItA==
X-Google-Smtp-Source: AA0mqf6cpJwbBEertTrRB0QkgjpFroc/t0HskBTyjwQPspYfyJWlf51lrnxI7AnVUgQrnmwEgAHRCw==
X-Received: by 2002:a9d:19a2:0:b0:66c:4ed7:fea9 with SMTP id k31-20020a9d19a2000000b0066c4ed7fea9mr1409otk.57.1668633267157;
        Wed, 16 Nov 2022 13:14:27 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r15-20020a4aad0f000000b004908a9542f8sm6441166oon.31.2022.11.16.13.14.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 13:14:26 -0800 (PST)
Received: (nullmailer pid 953152 invoked by uid 1000);
	Wed, 16 Nov 2022 21:14:28 -0000
Date: Wed, 16 Nov 2022 15:14:28 -0600
From: Rob Herring <robh@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org, treding@nvidia.com, jonathanh@nvidia.com, thierry.reding@gmail.com, heikki.krogerus@linux.intel.com, ajayg@nvidia.com, vkoul@kernel.org, p.zabel@pengutronix.de, balbi@kernel.org, mathias.nyman@intel.com, jckuo@nvidia.com, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, singhanc@nvidia.com, linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3 03/13] dt-bindings: usb: Add binding for Cypress
 cypd4226 I2C driver
Message-ID: <20221116211428.GA884584-robh@kernel.org>
References: <20221114124053.1873316-1-waynec@nvidia.com>
 <20221114124053.1873316-4-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221114124053.1873316-4-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_131428_412098_3C2435BB 
X-CRM114-Status: GOOD (  19.62  )
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

On Mon, Nov 14, 2022 at 08:40:43PM +0800, Wayne Chang wrote:
> add device-tree binding documentation for Cypress cypd4226 type-C
> controller's I2C interface. It is a standard I2C slave with GPIO
> input as IRQ interface.

For the subject:

dt-bindings: usb: Add Cypress cypd4226 Type-C controller

> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
> V2 -> V3:fix additionalProperties warning on new schema
> V1 -> V2:based on the review comments. Fix some addressed issues on
> description, interrupts, cypress,firmware-build, connector, and 
> additionalProperties properties. And also remove the status in the example.
>  .../bindings/usb/cypress,cypd4226.yaml        | 86 +++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml b/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> new file mode 100644
> index 000000000000..854fe2f9181c
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
> +description:
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
> +    items:
> +      - description: cypd4226 I2C interrupt
> +
> +  cypress,firmware-build:
> +    enum:
> +      - nvidia,gpu
> +      - nvidia,jetson-agx-xavier
> +    description: |
> +      the name of the CCGx firmware built for product series.
> +      should be set one of following:
> +      - "nvidia,gpu" for the NVIDIA RTX product series
> +      - "nvidia,jetson-agx-xavier" for the NVIDIA Jetson product series

Standard 'firmware-name' property doesn't work for you?

> +
> +patternProperties:
> +  '^connector@[0-1]+$':
> +    $ref: /schemas/connector/usb-connector.yaml#
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
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
> +      ucsi-ccg@8 {
> +        compatible = "cypress,cypd4226";
> +        interrupt-parent = <&gpio_aon>;
> +        interrupts = <TEGRA194_AON_GPIO(BB, 2) IRQ_TYPE_LEVEL_LOW>;
> +        reg = <0x08>;
> +        cypress,firmware-build = "nvidia,jetson-agx-xavier";
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
