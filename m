Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68416C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 17:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWCT04v+UTS8txcujussV9gblWIaQ68xdAN7BY+/a+k=; b=nCYsrFekyCbAR1
	fpK5xCYcaGDGfhxC2HUZHgTm7d+lhaxBge/rrRpqUtouXsyO5+vCknZXKIXAiy1/5ZaJ3v3PCic7o
	9m0LnESeOvgIlbrCcwqK+LepvjbL4bIocLVegIZPs+3+61oO+MG9JX/F6LlpDCUHAos1ZMBnJNlHN
	lz5N5lFMjTVqvnccPaO8eEiP+bK1h/SwJR/o9+RSALHjovEcOQNsfMd4FDmXGJCPHgYLaLcJlqqWx
	5Dw9AWEKOuT2s6K7V6pJIyPKZmuiKQeJxiLP45nDjl3NAIOQpYSuvUsn1mwfxznUu8zil0jGR+Izk
	wOuT34dTV1UWNQNMpciw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovMG2-006Rhc-P3; Wed, 16 Nov 2022 17:31:30 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovLEP-005q9w-2i; Wed, 16 Nov 2022 16:25:46 +0000
Received: by mail-oi1-f173.google.com with SMTP id b124so19064256oia.4;
        Wed, 16 Nov 2022 08:25:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=59o3Mlg3Bt4WsmBYPeaPa7JMIRGNco3k9zIgaMmG37k=;
        b=wN/uNuN5JyR8bwmN/mR836ULy5LqIAR6I7NBDrGVEmD8Om0nDj2iA81Vlc3XK/GQYv
         EV8WIiLG6bvqP29HTrOlzEnzS/1NoGtZnflVSsqvoMS85rudoDtE/ilOj+Dri4ufycuQ
         iD+9UdNeYbxCG2RQ/DT8LIL8RkNfSyGIaMhFMui9/vzOvllobP0cDZuSo+2G8qObK/kQ
         wm+Jf6E6SoIB0ASKccDrKGVQkvfNALgFT/T3jmBCobdQB4NcxkfnGU+xodqq8RXlOVr7
         EO6ciiIiu8xgmdW1iSdWIrohXGWrPcGeDp2msD1DBTQty0WRx/mp79CGam5Hv6fQlXOA
         poBA==
X-Gm-Message-State: ANoB5pk1asNv5alB2wPIep1aW4f9kSp20i13VXq0N2Un/RnVrF8OTYAf
	DG7u6KQXR8DjnkfAYo3P/A==
X-Google-Smtp-Source: AA0mqf4IlcgAmzvLCHRHAVt7/LkJvqiP7OkXi3KiD6BfWcE1SyNP3xSxg6GNLTLHKGjFi1iLqbQAow==
X-Received: by 2002:a05:6808:18a8:b0:35a:79fd:fc8b with SMTP id bi40-20020a05680818a800b0035a79fdfc8bmr2040722oib.231.1668615942969;
        Wed, 16 Nov 2022 08:25:42 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u38-20020a05687100a600b00141e56210b2sm3750550oaa.57.2022.11.16.08.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 08:25:42 -0800 (PST)
Received: (nullmailer pid 195051 invoked by uid 1000);
	Wed, 16 Nov 2022 16:25:44 -0000
Date: Wed, 16 Nov 2022 10:25:44 -0600
From: Rob Herring <robh@kernel.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, linux-imx@nxp.com, tzimmermann@suse.de, lyude@redhat.com, javierm@redhat.com, ville.syrjala@linux.intel.com, sam@ravnborg.org, jani.nikula@intel.com, maxime@cerno.tech, penguin-kernel@i-love.sakura.ne.jp, oliver.brown@nxp.com
Subject: Re: [PATCH v3 02/10] dt-bindings: display: bridge: Add MHDP HDMI for
 i.MX8MQ
Message-ID: <20221116162544.GA193163-robh@kernel.org>
References: <cover.1667911321.git.Sandor.yu@nxp.com>
 <9ccf53cad7f735f985f4ca37b3b0159ef78a2103.1667911321.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ccf53cad7f735f985f4ca37b3b0159ef78a2103.1667911321.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_082545_142428_59E8D6F4 
X-CRM114-Status: GOOD (  15.75  )
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

On Tue, Nov 08, 2022 at 09:00:05PM +0800, Sandor Yu wrote:
> Add bindings for i.MX8MQ MHDP HDMI.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../display/bridge/cdns,mhdp-imx8mq-hdmi.yaml | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml
> new file mode 100644
> index 000000000000..8c0afef157aa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp-imx8mq-hdmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MHDP HDMI bridge
> +
> +maintainers:
> +  - Sandor Yu <Sandor.yu@nxp.com>
> +
> +description:
> +  The Cadence MHDP TX HDMI interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,mhdp-imx8mq-hdmi
> +
> +  reg:
> +    maxItems: 1
> +
> +  phys:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Hotplug detect interrupter for cable plugin event.
> +      - description: Hotplug detect interrupter for cable plugout event.
> +
> +  interrupt-names:
> +    items:
> +      - const: plug_in
> +      - const: plug_out
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port
> +    description:
> +      A port node pointing to the output port of a display controller.

You also need an output port to an HDMI connector node.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    mhdp_hdmi: hdmi-bridge@32c00000 {
> +        compatible = "cdns,mhdp-imx8mq-hdmi";
> +        reg = <0x32c00000 0x100000>;
> +        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "plug_in", "plug_out";
> +        phys = <&hdmi_phy>;
> +
> +        port {
> +            mhdp_in: endpoint {
> +                remote-endpoint = <&dcss_out>;
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
