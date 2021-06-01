Return-Path: <SRS0=tIkt=K3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04A49C4708F
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jun 2021 17:45:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B7F5C613DD
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jun 2021 17:45:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B7F5C613DD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fbTRYkOaemTTUG4/8MTh9Du0Bg7N7qsD1XyN5x3Qb0=; b=pQXkOgJHJL8V2d
	NcnlOala++j+sTf38u4a1/4OlsRNmqnW4L3KtGWZlZhD/Bj4lH813Ov9KLuSbE+icJWxbGdeH22kL
	KrjDjRsCdC+F3Qdz19D9Hj1mq7pPjLl9h9+lBsV3c6LFxUoJDJlEvwzLoldhYib8Z2R0Cph2BonrV
	CbgEE0caERHRW43PD0tzurWZLdzPMxOK54eAm3u7ZPVp48ovTC7qiJlNWa2IB8shuIqgj7lx9SekG
	ZTXeL1+OxEqKIIO9iFVMzILZdTphdqdoTDOBtP64Bu8hNblbBQ66fPB2oWYSlBgmqbsJWZPtMphrr
	aIqxgef/sjgmFoD+NjXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo8SF-0008PY-7E; Tue, 01 Jun 2021 17:45:27 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo8SB-0008Ni-Lh
 for linux-phy@lists.infradead.org; Tue, 01 Jun 2021 17:45:25 +0000
Received: by mail-oi1-f182.google.com with SMTP id w127so153841oig.12
 for <linux-phy@lists.infradead.org>; Tue, 01 Jun 2021 10:45:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=D/RwutDeiUE8RoJ6NiieivInKsIh5wCxpSy1RciiElU=;
 b=b5Y2XLhpXUvXi4kg8hsU3yyHAZpVanZF93sJ221FyTKIyozqRYNbEjc8DOmDuPvgHC
 utzywwbdJrME9P7LEGAwEKzNihXsIKWWJZ/tQ8gOAQl9vHDVV7oMPiueKbeEm634UDWe
 nNOy+1ocjdbH6qObaz06qmzyvr+wTOb+OYTN4GMQlXBF+ln6LTTEmktbdEcy7dgehE30
 idfMjPa0IySqPggUkBSoQNTK2TS/LYcA1ThtncymVNeY9PBMaow1UX2k8XNjvC7qYDTT
 JMsMVwGNQa2wvvRSq3LvT7VpGB3BCJqRVm53wSIbMP2HLZABOH5eOZrc2bd3/Aa1FKAa
 MXIg==
X-Gm-Message-State: AOAM531caeIXb0n99tLsskQAnBjoY00nQdz6yRzvUg+i6Vursx+mMJNa
 dEodTCCw8u3rROJVePJSwg==
X-Google-Smtp-Source: ABdhPJzvNU9U33YqpbUUxKRtRnym65kpSninZ/cD0ub81YCj0r4m8yLb2ew3h563MJZYBCJh6BxCow==
X-Received: by 2002:a05:6808:1592:: with SMTP id
 t18mr18633949oiw.123.1622569522240; 
 Tue, 01 Jun 2021 10:45:22 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z9sm3554897oog.25.2021.06.01.10.45.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Jun 2021 10:45:21 -0700 (PDT)
Received: (nullmailer pid 684833 invoked by uid 1000);
 Tue, 01 Jun 2021 17:45:19 -0000
Date: Tue, 1 Jun 2021 12:45:19 -0500
From: Rob Herring <robh@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Benoit Parrot <bparrot@ti.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 15/18] media: dt-bindings: Convert Cadence CSI2RX
 binding to YAML
Message-ID: <20210601174519.GA666193@robh.at.kernel.org>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-16-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526152308.16525-16-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_104523_754209_43849BC2 
X-CRM114-Status: GOOD (  26.33  )
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

On Wed, May 26, 2021 at 08:53:05PM +0530, Pratyush Yadav wrote:
> Convert the Cadence CSI2RX binding to use YAML schema.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> 
> ---
> 
> Changes in v2:
> - New in v2.
> 
>  .../devicetree/bindings/media/cdns,csi2rx.txt | 100 -----------
>  .../bindings/media/cdns,csi2rx.yaml           | 164 ++++++++++++++++++
>  2 files changed, 164 insertions(+), 100 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/cdns,csi2rx.txt
>  create mode 100644 Documentation/devicetree/bindings/media/cdns,csi2rx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/cdns,csi2rx.txt b/Documentation/devicetree/bindings/media/cdns,csi2rx.txt
> deleted file mode 100644
> index 6b02a0657ad9..000000000000
> --- a/Documentation/devicetree/bindings/media/cdns,csi2rx.txt
> +++ /dev/null
> @@ -1,100 +0,0 @@
> -Cadence MIPI-CSI2 RX controller
> -===============================
> -
> -The Cadence MIPI-CSI2 RX controller is a CSI-2 bridge supporting up to 4 CSI
> -lanes in input, and 4 different pixel streams in output.
> -
> -Required properties:
> -  - compatible: must be set to "cdns,csi2rx" and an SoC-specific compatible
> -  - reg: base address and size of the memory mapped region
> -  - clocks: phandles to the clocks driving the controller
> -  - clock-names: must contain:
> -    * sys_clk: main clock
> -    * p_clk: register bank clock
> -    * pixel_if[0-3]_clk: pixel stream output clock, one for each stream
> -                         implemented in hardware, between 0 and 3
> -
> -Optional properties:
> -  - phys: phandle to the external D-PHY, phy-names must be provided
> -  - phy-names: must contain "dphy", if the implementation uses an
> -               external D-PHY
> -
> -Required subnodes:
> -  - ports: A ports node with one port child node per device input and output
> -           port, in accordance with the video interface bindings defined in
> -           Documentation/devicetree/bindings/media/video-interfaces.txt. The
> -           port nodes are numbered as follows:
> -
> -           Port Description
> -           -----------------------------
> -           0    CSI-2 input
> -           1    Stream 0 output
> -           2    Stream 1 output
> -           3    Stream 2 output
> -           4    Stream 3 output
> -
> -           The stream output port nodes are optional if they are not
> -           connected to anything at the hardware level or implemented
> -           in the design.Since there is only one endpoint per port,
> -           the endpoints are not numbered.
> -
> -
> -Example:
> -
> -csi2rx: csi-bridge@0d060000 {
> -	compatible = "cdns,csi2rx";
> -	reg = <0x0d060000 0x1000>;
> -	clocks = <&byteclock>, <&byteclock>
> -		 <&coreclock>, <&coreclock>,
> -		 <&coreclock>, <&coreclock>;
> -	clock-names = "sys_clk", "p_clk",
> -		      "pixel_if0_clk", "pixel_if1_clk",
> -		      "pixel_if2_clk", "pixel_if3_clk";
> -
> -	ports {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		port@0 {
> -			reg = <0>;
> -
> -			csi2rx_in_sensor: endpoint {
> -				remote-endpoint = <&sensor_out_csi2rx>;
> -				clock-lanes = <0>;
> -				data-lanes = <1 2>;
> -			};
> -		};
> -
> -		port@1 {
> -			reg = <1>;
> -
> -			csi2rx_out_grabber0: endpoint {
> -				remote-endpoint = <&grabber0_in_csi2rx>;
> -			};
> -		};
> -
> -		port@2 {
> -			reg = <2>;
> -
> -			csi2rx_out_grabber1: endpoint {
> -				remote-endpoint = <&grabber1_in_csi2rx>;
> -			};
> -		};
> -
> -		port@3 {
> -			reg = <3>;
> -
> -			csi2rx_out_grabber2: endpoint {
> -				remote-endpoint = <&grabber2_in_csi2rx>;
> -			};
> -		};
> -
> -		port@4 {
> -			reg = <4>;
> -
> -			csi2rx_out_grabber3: endpoint {
> -				remote-endpoint = <&grabber3_in_csi2rx>;
> -			};
> -		};
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/media/cdns,csi2rx.yaml b/Documentation/devicetree/bindings/media/cdns,csi2rx.yaml
> new file mode 100644
> index 000000000000..ff5dd4211ac9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/cdns,csi2rx.yaml
> @@ -0,0 +1,164 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/cdns,csi2rx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MIPI-CSI2 RX controller
> +
> +description: |
> +  The Cadence MIPI-CSI2 RX controller is a CSI-2 bridge supporting up to 4 CSI
> +  lanes in input, and 4 different pixel streams in output.
> +
> +maintainers:
> +  - Pratyush Yadav <p.yadav@ti.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: cdns,csi2rx

Since there has to be an SoC specific compatible, this should be:

compatible:
  contains:
    const: cdns,csi2rx

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 3
> +    maxItems: 6
> +
> +  clock-names:
> +    minItems: 3
> +    maxItems: 6
> +    items:
> +      - const: sys_clk # main clock
> +      - const: p_clk # register bank clock
> +      - const: pixel_if0_clk # pixel stream 0 output clock
> +      - const: pixel_if1_clk # pixel stream 1 output clock
> +      - const: pixel_if2_clk # pixel stream 2 output clock
> +      - const: pixel_if3_clk # pixel stream 3 output clock
> +
> +  phys:
> +    maxItems: 1
> +    description: phandle to the external D-PHY
> +
> +  phy-names:
> +    items:
> +      - const: dphy
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: CSI-2 input
> +
> +        properties:
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +            properties:
> +              clock-lanes:
> +                maxItems: 1
> +
> +              data-lanes:
> +                maxItems: 1

If there's only 1 lane, are you assigning between clock and data lanes? 
If not, then there's no mapping needed.

> +
> +            required:
> +              - clock-lanes
> +              - data-lanes
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Stream 0 output
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Stream 1 output
> +
> +      port@3:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Stream 2 output
> +
> +      port@4:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Stream 3 output
> +
> +    required:
> +      - port@0
> +
> +
> +dependencies:
> +  phys: [ 'phy-names' ]
> +  phy-names: [ 'phys' ]
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    csi2rx: csi-bridge@d060000 {
> +      compatible = "cdns,csi2rx";
> +      reg = <0x0d060000 0x1000>;
> +      clocks = <&byteclock>, <&byteclock>,
> +        <&coreclock>, <&coreclock>,
> +        <&coreclock>, <&coreclock>;
> +      clock-names = "sys_clk", "p_clk",
> +              "pixel_if0_clk", "pixel_if1_clk",
> +              "pixel_if2_clk", "pixel_if3_clk";
> +      phys = <&dphy0>;
> +      phy-names = "dphy";
> +
> +      ports {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        port@0 {
> +          reg = <0>;
> +
> +          csi2rx_in_sensor: endpoint {
> +            remote-endpoint = <&sensor_out_csi2rx>;
> +            clock-lanes = <0>;
> +            data-lanes = <1 2>;
> +          };
> +        };
> +
> +        port@1 {
> +          reg = <1>;
> +
> +          csi2rx_out_grabber0: endpoint {
> +            remote-endpoint = <&grabber0_in_csi2rx>;
> +          };
> +        };
> +
> +        port@2 {
> +          reg = <2>;
> +
> +          csi2rx_out_grabber1: endpoint {
> +            remote-endpoint = <&grabber1_in_csi2rx>;
> +          };
> +        };
> +
> +        port@3 {
> +          reg = <3>;
> +
> +          csi2rx_out_grabber2: endpoint {
> +            remote-endpoint = <&grabber2_in_csi2rx>;
> +          };
> +        };
> +
> +        port@4 {
> +          reg = <4>;
> +
> +          csi2rx_out_grabber3: endpoint {
> +            remote-endpoint = <&grabber3_in_csi2rx>;
> +          };
> +        };
> +      };
> +    };
> -- 
> 2.30.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
