Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C138C4332F
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 23:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfKAj55sEohY+x1zrd1/eJYP8Xut1PK3EYenSkLE6Ls=; b=R6wFkh0ombbU+X
	wJr5uF4XKTXy5YDfzdcYrbGiIDx8/fhs24MzuCZiILF8wxrOTVODGUJxZ+QsCI2Eo5JyMApJxxyY+
	i82M4iX9mQc/MdOXjTjNcCC7mkpfE7puMZsx7A3jgZK1yMyxWuSEkQEhl5xpD6ZQqLWDthFGv0oD0
	oFuP8F4UQ2CMWp7smI6lAEqe8yBWISTnAPN1TJoquJmkPJjIUNcyCO3naF6R/56WvAYB4gr/mPbV/
	L6Fvf7q+occBU5M0USmGqRKQc8Tg3aGc9JVfZnhz/SJYKeNdewKBcsHVth251L9TVp66RrH5GkfII
	zATHIa5bGN6bs20ssJGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0tDV-00Bo5W-4t; Thu, 01 Dec 2022 23:43:45 +0000
Received: from mail-oo1-f49.google.com ([209.85.161.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0scO-00BWjG-9r; Thu, 01 Dec 2022 23:05:26 +0000
Received: by mail-oo1-f49.google.com with SMTP id g15-20020a4a894f000000b0047f8e899623so486058ooi.5;
        Thu, 01 Dec 2022 15:05:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EYxFCZnowr65DbHcfQhWYnFpeX0olFgDD4k93tsTiVw=;
        b=YyjxXp+OM1socYu2C50ZxqdYflRYS0plHhw1ukJh3GZtHMIsbEAXYtx2k/hpOcuZH5
         NLxjrZ10HqJf10AxvGx0fsZ+ugjNsPdafBlM2V+yfoxBpUBeYLdu/rtYl4OLUR9iDXbo
         MgsKBnWBKPQobg3qWVEkV16BUdgn1xxatcEzSfkI0mYrw/RpiAIz1ZUyvhFTAYemtZik
         RWDu9+vy9wMzR3F7RzcVIJB3y/p3uQ73b5S5Z5SEh/p2Pxhcloc1q67LrZ+sIror63nC
         0K5TYvzXI6fMfsSOZfJmA1pzev87ztqvQxqtoqEkfiRj5tiufaUkX+YgJYGj7Ji9FOqX
         JLzw==
X-Gm-Message-State: ANoB5pm/sLT9ICtGIYSX8XHt7nwczL09mSaOZhUejmsMlwucb01nskpU
	YoVaiVaHPKqm/96y/Pjv3NhCXRuGWg==
X-Google-Smtp-Source: AA0mqf4rQVpySWq13aBh3qdWe0uXeRim3blDGaHbZwBQtc79suwZOY9htr6rpJmE7Vl3pqXpRBwzdQ==
X-Received: by 2002:a4a:4486:0:b0:49a:a7a9:8435 with SMTP id o128-20020a4a4486000000b0049aa7a98435mr29020119ooa.28.1669935922089;
        Thu, 01 Dec 2022 15:05:22 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g13-20020a056870c14d00b001375188dae9sm3304996oad.16.2022.12.01.15.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 15:05:21 -0800 (PST)
Received: (nullmailer pid 1615063 invoked by uid 1000);
	Thu, 01 Dec 2022 23:05:20 -0000
Date: Thu, 1 Dec 2022 17:05:20 -0600
From: Rob Herring <robh@kernel.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com
Subject: Re: [PATCH v5 02/10] dt-bindings: display: bridge: Add MHDP DP for
 i.MX8MQ
Message-ID: <20221201230520.GA1600786-robh@kernel.org>
References: <cover.1669620155.git.Sandor.yu@nxp.com>
 <f5ab57311a0dc197ec25bde415271c4b4b85635a.1669620155.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5ab57311a0dc197ec25bde415271c4b4b85635a.1669620155.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_150524_411021_43060CE3 
X-CRM114-Status: GOOD (  18.67  )
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

On Mon, Nov 28, 2022 at 03:36:10PM +0800, Sandor Yu wrote:
> Add bindings for i.MX8MQ MHDP DisplayPort.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../display/bridge/cdns,mhdp-imx8mq-dp.yaml   | 102 ++++++++++++++++++
>  1 file changed, 102 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> new file mode 100644
> index 000000000000..21cf87c79766
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> @@ -0,0 +1,102 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp-imx8mq-dp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MHDP Displayport bridge
> +
> +maintainers:
> +  - Sandor Yu <Sandor.yu@nxp.com>
> +
> +description:
> +  The Cadence MHDP Displayport TX interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,mhdp-imx8mq-dp

nxp,ixm8mq-mhdp

Cadence is not the vendor for imx8mq. It is doubtful that every vendor 
using this IP block will be the same because that rarely/never happens.

And I assume the 'dp in 'mhdp' stands for DisplayPort, so we don't need 
it twice.

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: MHDP DP APB clock.

Seems like there would be more than just a bus clock unless all the 
function clocks come from the display controller or phy.

> +
> +  phys:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Hotplug cable plugin.
> +      - description: Hotplug cable plugout.
> +
> +  interrupt-names:
> +    items:
> +      - const: plug_in
> +      - const: plug_out
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Input port from display controller output.
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output port to DP connector.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - interrupt-names
> +  - phys
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    mhdp_dp: dp-bridge@32c00000 {
> +        compatible = "cdns,mhdp-imx8mq-dp";
> +        reg = <0x32c00000 0x100000>;
> +        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "plug_in", "plug_out";
> +        clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
> +        phys = <&dp_phy>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +
> +                mhdp_in: endpoint {
> +                    remote-endpoint = <&dcss_out>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +
> +                mhdp_out: endpoint {
> +                    remote-endpoint = <&dp_con>;
> +                };
> +            };
> +        };
> +    };
> -- 
> 2.34.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
