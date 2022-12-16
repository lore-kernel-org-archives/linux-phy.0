Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DECD5C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 16 Dec 2022 23:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnohNMsx6XALgGKBPkr4IuirJZw/C/tFhE/+w16cMFw=; b=mbhnTgS5PY6S2L
	WTBAZ9pQTcYqmLMuDIf1Wu8b2DZA+b999LCM3lFxJAoMZEwwC0bp0F/OnysmejbHkextxIVXytTwv
	QwxzboznbWMKtZGT0AV88MXsgspdYftW8KwLt5PgyxYiz2RBWhywDqV9tnT0yPd5BtnD+kRAoks+M
	S1jLJzuzURSB/CdbleP+rdr2u5/AJm+TVuMD8s8Mx8mizmULdpoOBpGpbLiVqM4enRaz+f/BHf1rz
	VrDJpbr+JYc2fl1FCeYpxZX9EGk3bioNgc84Oap3POdBNndMDkCQY/RLYb62CTaaSAhfIHTD4nOX4
	Wwud7n658GE0lX6JrgwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KHN-002iBu-Qv; Fri, 16 Dec 2022 23:38:13 +0000
Received: from mail-oa1-f45.google.com ([209.85.160.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6KF2-002hPa-1m
	for linux-phy@lists.infradead.org; Fri, 16 Dec 2022 23:35:50 +0000
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-144b21f5e5fso5082810fac.12
        for <linux-phy@lists.infradead.org>; Fri, 16 Dec 2022 15:35:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ezE52xFkQObjRjRtInBGhG6kB7cA4+yJlcUUUMROGec=;
        b=pmBHWKFui//4cQnh7L/7nJtZHhLAB3Wgxj+GfHEImXrkVEYzYSwjRXhhWdRW9G2AMK
         2xSFIqyuzcrcyGrjf5pDyyKVB1h5AUm+ElRmT8W+dzHPKXLI83T94gOG232aE0djobg1
         eN3josGnxLX7bjJN4d/7qDWNR4yMSa0XIsevQcTHfmkY3QZFvfbexAP+aGQ0bxppPb2t
         mtfA1Z5RDuaPdn4DriCNgKPXjmterWC0H66BMSDBzcNHrb45aKE4JMzGJExYSMsjxmqI
         6PddZfh+s0dQNcu+Ed0QjhmnizlHNAaykIW1cBESQgyuuTQVK94/dODNuAhM/GTw6wvl
         0Fwg==
X-Gm-Message-State: ANoB5pkLT7dzUXMvUsIHsLLTUVp6ik/xCHtSTwo1kUgCqHEs1AJ8L58j
	tNkHdFYsSzUJW/L1tf/jiU7kJw1Luw==
X-Google-Smtp-Source: AA0mqf6/zADOku4n5eNjLLFwzErqoFNJU5+DKPJxKstPfso/j2iOPJmt2FByGD044KHW/wbA+ARWLg==
X-Received: by 2002:a05:6870:6c15:b0:143:9d79:e911 with SMTP id na21-20020a0568706c1500b001439d79e911mr15314113oab.46.1671233746754;
        Fri, 16 Dec 2022 15:35:46 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id q12-20020a056870828c00b0012763819bcasm1540096oae.50.2022.12.16.15.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 15:35:46 -0800 (PST)
Received: (nullmailer pid 79790 invoked by uid 1000);
	Fri, 16 Dec 2022 23:35:45 -0000
Date: Fri, 16 Dec 2022 17:35:45 -0600
From: Rob Herring <robh@kernel.org>
To: Eugen Hristev <eugen.hristev@microchip.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, luis.oliveira@synopsys.com, Luis Oliveira <lolivei@synopsys.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: media: Document bindings for DW MIPI
 CSI-2 Host
Message-ID: <20221216233545.GA72415-robh@kernel.org>
References: <20221216143717.1002015-1-eugen.hristev@microchip.com>
 <20221216143717.1002015-2-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221216143717.1002015-2-eugen.hristev@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_153548_188224_1F6E0267 
X-CRM114-Status: GOOD (  21.42  )
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

On Fri, Dec 16, 2022 at 04:37:14PM +0200, Eugen Hristev wrote:
> Add bindings for Synopsys DesignWare MIPI CSI-2 host.
> 
> Signed-off-by: Luis Oliveira <lolivei@synopsys.com>
> [eugen.hristev@microchip.com: reworked binding, converted to yaml]
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  .../bindings/media/snps,dw-csi.yaml           | 149 ++++++++++++++++++
>  1 file changed, 149 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/snps,dw-csi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/snps,dw-csi.yaml b/Documentation/devicetree/bindings/media/snps,dw-csi.yaml
> new file mode 100644
> index 000000000000..439eadc8e517
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/snps,dw-csi.yaml
> @@ -0,0 +1,149 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/snps,dw-csi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys DesignWare CSI-2 Host controller (csi2host)
> +
> +maintainers:
> +  - Eugen Hristev <eugen.hristev@microchip.com>
> +
> +description:
> +  CSI2HOST is used to receive image coming from an MIPI CSI-2 compatible
> +  camera. It will convert the incoming CSI-2 stream into a dedicated
> +  interface called the Synopsys IDI (Image Data Interface).
> +  This interface is a 32-bit SoC internal only, and can be assimilated
> +  with a CSI-2 interface.
> +
> +properties:
> +  compatible:
> +    const: snps,dw-csi

This needs an SoC specific compatible.

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    description:
> +      CSI2HOST can have two clocks connected. One clock is the
> +      peripheral clock for the inside functionality of the hardware block.
> +      This is named 'perclk'. The second clock can be the phy clock,
> +      which is used to clock the phy via an internal link.
> +      This clock is named 'phyclk', phy clock.

The schema says most of this, don't repeat it in freeform text. If you 
want a description of each clock, that goes 'clocks' like this:

items:
  - description: ...
  - description: ...

> +    items:
> +      - const: perclk
> +      - const: phyclk
> +
> +  phys:
> +    maxItems: 1
> +    description: MIPI D-PHY
> +
> +  phy-names:
> +    items:
> +      - const: dphy
> +
> +  resets:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Input port node, single endpoint describing the input port.
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +            description: Endpoint connected to input device

Don't need generic descriptions. Only the port nodes need to define what 
they are.

> +
> +            properties:
> +              bus-type:
> +                const: 4
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +                items:
> +                  maximum: 4
> +
> +              clock-lanes:
> +                maxItems: 1
> +
> +              remote-endpoint: true

Don't need to list this.

> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description:
> +          Output port node, single endpoint describing the output port.
> +
> +        properties:
> +          endpoint:
> +            unevaluatedProperties: false
> +            $ref: video-interfaces.yaml#
> +            description: Endpoint connected to output device
> +
> +            properties:
> +              bus-type:
> +                const: 4
> +
> +              remote-endpoint: true

Ditto.

> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - ports
> +
> +examples:
> +  - |
> +    csi2: csi2@3000 {
> +        compatible = "snps,dw-csi";
> +        reg = <0x03000 0x7FF>;
> +        phys = <&mipi_dphy_rx>;
> +        phy-names = "dphy";
> +        resets = <&dw_rst 1>;
> +        interrupts = <2>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +
> +                csi_ep1: endpoint {
> +                    bus-type = <4>; /* MIPI CSI2 D-PHY */
> +                    remote-endpoint = <&camera_1>;
> +                    data-lanes = <1 2>;
> +                    clock-lanes = <0>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +
> +                csi_ep2: endpoint {
> +                    remote-endpoint = <&idi_receiver>;
> +                    bus-type = <4>;
> +                };
> +            };
> +        };
> +    };
> +
> +...
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
