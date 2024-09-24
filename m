Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B298ECF9C71
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 08:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2bNj7uoOm0XYbXEnMxWSdwFYybAiQPjugN+G1bZEFA=; b=B1/a2OH0F/14TN
	xRI06yUoHcv/jNSiOZgRsf1D97Ye1X8a5Rs84XP8f5fdgYYHmu6RLr185C5TPDlqHSuyvF8DHiuBQ
	mn8bP5Jtgp8BPLVKImr32xr5f/oaMTKwxefk0omZiHIZ7K7ZFp1zaTQ4xWGie65ISWSNThACqyulM
	cx1Z5HD68IZNUM75uVfjd+xv3aW2q3xDNZIEhPH/bHvqs7DmOiu8ca0PTQrm/Dn+HLDQqvdQBlead
	ab2McreuooZqmSbv69n5hFWRH2hMkNXu5LPPqSx3rydfcTC9qJLYYN60hFxxt/je+MfQa5GcTlTPE
	P8XZT82YpyK4jAJ4r3YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st1Lx-00000001gou-1nwB;
	Tue, 24 Sep 2024 08:57:01 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st1KP-00000001gMp-0SsI
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 08:55:26 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2f75c56f16aso67634631fa.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Sep 2024 01:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727168122; x=1727772922; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3zPekBBQnYE9h1wNiBnPJ1W27ZUNg/CsS+5seicJ1+I=;
        b=GAxCdwMb3SXJoWT8HKmvciB14vyAnaOoS/poViJB7tSOXp7uWzFlHWoE8jD8/dJh4Y
         f3n3HmZ22oqfM3k6L7dyRXw+ERQJjR+xbIzPy1Gds0iWo7sp4w/IL4TGwX1a9YBgZDMk
         t0n3yNMwNFDAogk6JYONApQC22i4eJuxIdVeolncAJCZS4tMLBBIID+5ydWB7Uil0/YP
         uz1j7983F6NDu+GHHXYfsG1muGcPbT1QlM6nyd4Lw1usMbNv3oM6kO6RysCuU/pwUjiR
         6KA9eEbBHtM0xVHC2lfnhSTG1V90HoEYPqJkP+GsJ7SIqp5nkntI+KWnD6kH2O63ykDw
         dX9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727168122; x=1727772922;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3zPekBBQnYE9h1wNiBnPJ1W27ZUNg/CsS+5seicJ1+I=;
        b=SCxbDzPxOqxd95XFNQuCdZ9mqLT7RvWUTcXXd9CE+vhHpYiULU+79CYXxiqgUXMnaU
         08+4XwMvY7m7XnNJBQXLo8VFdaSEkNETLibO8HA9In9yzNJYx+jYM8/7B+L0bsz5atlp
         tmrhkw+GnCfkc1dMlFC6x/XaOYH5XBtn/3UBUOQX4ITYSU+fWCiDzrPxQWrwgDCLbxXj
         pTyj4sWKe45n3FRpqWax7EOqG5FoK7GD8opjWGnQ2CkT7SzOoLMl0jufUXVutUuQZO/K
         51kslSWdMtXIsgn0BpfWOWjwMqMLHKPXkJ1ttmKJ9aUHa/rPX9jVjcHeWGIZNbEREB25
         SP7w==
X-Forwarded-Encrypted: i=1; AJvYcCUbBoXI88Qm56CXXZQGfT0Iox0ZSu3S0mhtLwJM6KFW44yrTX7ClwYwXNUkDwMgu+YM0afogPim9+Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YzEzdfebEicKd3d9UR8TlFpVcKIrM0wv9ngRl8Ja4m61H4cOXL+
	0tbmrsZ4g5wirxe9KB4yAipVWiHePKxbJdeEBwDtqr2MWQvvdE0WzGtX3aTSt24=
X-Google-Smtp-Source: AGHT+IF6kGMJj95pD29Vie/S8ZFE7+n7j8iD9RC3u4NBK76/EBw9rwODDmYNVV5BSqgST6bsdkOcKg==
X-Received: by 2002:a2e:510a:0:b0:2f6:5f0a:9cfe with SMTP id 38308e7fff4ca-2f7cb36059dmr56161761fa.30.1727168122127;
        Tue, 24 Sep 2024 01:55:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f8d289b68fsm1458611fa.115.2024.09.24.01.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 01:55:20 -0700 (PDT)
Date: Tue, 24 Sep 2024 11:55:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v17 3/8] dt-bindings: display: bridge: Add Cadence
 MHDP8501
Message-ID: <w72m4bxymngdadhp4x3mxyvv4j6k3mgtoqg3tcw4p3xdmhfpmx@wbkmfj3zmwcv>
References: <cover.1727159906.git.Sandor.yu@nxp.com>
 <b2e1d26f964a03163ec7a1ba6ac8d7c88d6cb111.1727159906.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2e1d26f964a03163ec7a1ba6ac8d7c88d6cb111.1727159906.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_015525_169558_6AF30ACB 
X-CRM114-Status: GOOD (  17.95  )
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

On Tue, Sep 24, 2024 at 03:36:48PM GMT, Sandor Yu wrote:
> Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> v16->v17:
> - Add lane-mapping property
> 
> v9->v16:
>  *No change
> 
> .../display/bridge/cdns,mhdp8501.yaml         | 109 ++++++++++++++++++
>  1 file changed, 109 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> new file mode 100644
> index 0000000000000..3f79f328c7425
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> @@ -0,0 +1,109 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp8501.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MHDP8501 DP/HDMI bridge
> +
> +maintainers:
> +  - Sandor Yu <Sandor.yu@nxp.com>
> +
> +description:
> +  Cadence MHDP8501 DisplayPort/HDMI interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mq-mhdp8501
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: MHDP8501 DP/HDMI APB clock.
> +
> +  phys:
> +    maxItems: 1
> +    description:
> +      phandle to the DP/HDMI PHY
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
> +  lane-mapping:
> +    description: lane mapping for HDMI or DisplayPort interface.
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
> +          Output port to DisplayPort or HDMI connector.
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
> +  - lane-mapping
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    mhdp: display-bridge@32c00000 {
> +        compatible = "fsl,imx8mq-mhdp8501";
> +        reg = <0x32c00000 0x100000>;
> +        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "plug_in", "plug_out";
> +        clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
> +        phys = <&mdhp_phy>;
> +        lane-mapping = <0xe4>;

What does this value mean? The DT should be describing the hardware, not
the register values. Can it be expressed as the data-lanes property of
the corresponding port?

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
> +                    remote-endpoint = <&dp_connector>;
> +                };
> +            };
> +        };
> +    };
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
