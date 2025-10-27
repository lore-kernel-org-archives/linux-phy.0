Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47EA9CCF9E0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 09:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnQZ/pdrLXzTobSjHxYC2jg3zZw5pOfU5UeX/ljJHXE=; b=0IUOznQH2NlrEC
	lOERiR0CghtxR5wEGS/AQlwmOuqqASiInmIUl4+R8pjtKeD1x2VISqpMOUHdgiAylUSvcNvUguXdm
	Tp1ZVN+NrwtOqsRu9a8DVUSskAky/1U08/XlCM6YI0TB4c741L1yKKe3TzTA6+kPlqR9voXbxJXyC
	PyNOUMnYqbDTtOIvmmuHN6r43GuMhNlo1GoraxIRfBN+mk0JBowekbkTaqiNvl3KZqnjl4YcSvPr0
	OYHoEyohPpl8JoFVahO6UqA6i08gUGt0JSAjo18yv7eqcADcaZyl7Js+wTdp+ytUJB1zRBM5TcjqL
	F8jD6aIMT1i/rBod2jmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDJRJ-0000000DW36-0jBs;
	Mon, 27 Oct 2025 09:22:57 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDJRF-0000000DW1o-3mpo
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 09:22:55 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-b6d855ca585so447430066b.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Oct 2025 02:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761556972; x=1762161772; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=idLQEGHawEowPnMFpADe7JKEtzSuZ6zkkitTWQDADFM=;
        b=gMG0i4syMQmOSyHQREgQ3R87FW3UyXXyrwMUH0CyQmmoIPSTnMcQeRUXime4NANpE9
         EnrXsqkz7Xr/NLJ2OYHmzCfG+UrDhP4QpEAO2x0mcYTxBUyoRT4BjO/Dlg7fXOsbJqLP
         WUUY9IXARU7P+gqX1ochZp6jF6s5m0bvdKF1c+p8EuEgdmPYP43AgqdY14MwL5QJSzZh
         GQW0DSmofcXASOi2LtMaH6+VLmWCDbmEfzkp/puLLeOmv8Dj/j2paUv+huJf+wlOcNLv
         K8M0LRihUxxlzHymgd8Ot/RUJMVVvcS8G4MXF7RZIe5Hv2qEAfP3wNGCSRb2vHrYc7gS
         xiPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761556972; x=1762161772;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=idLQEGHawEowPnMFpADe7JKEtzSuZ6zkkitTWQDADFM=;
        b=FbbDEpGjBjEpaAMgAW9+mFNCPu9bY2Ej3i8ywjunMyobEp19zatid8EviPKjM0q1L2
         goqNf31bnhxZp0m/m3jB8ug1PVKQ2fDQ5d7J8RTPoi+jOi1wFdXagMvSrS3C/amQ6Emy
         j4nbm2Q39iELQvt2Nly7QgOVof/MKD7go1VG0yCnkFOpgPd/t2LbDm0vrpOg5D8oyW8g
         Gm+7zu4oy11G/xZbN1P1/S8VIqcn7ZhEq7rNYt+keNnIt82a1zPLG6+jqfwRcBjvJTnb
         XuHAKdIgn3BTvuURi1PlQb6lKuWUAB1K9QqV2EN7bbZy/CRgmUXXq0j356L3qFdNu1Q2
         0wDg==
X-Forwarded-Encrypted: i=1; AJvYcCVa38Blw8W4Izr164zX0uNxA+0aS3LazPPNnq6O/jLuWgz8/2L8l/nkci2foMYQG/S4bD+Y5tujmtk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyw5ahkzMw0+39Ha8NqL4GtCykr0/yHUznSJPoLiMfx+DvkkBd9
	5bqIGj9z3xE/zX+BYL8YHwzJ0bk7C5kOJgY7Dx8hc6tx0VgGKXN/3DdHCKMV7K9+Lfg=
X-Gm-Gg: ASbGncvO34gpKW5SnPMQwYBevw9M+MKNi50dJt7bcGMplYxlW29JlO/hWONL/N5CQ3D
	gYGJSVBOh5ZIAMRxph49jwyj79GuIv38ofDgesipGW976bG7K1F1Du/an9ovy3xOW0nhaCykFAz
	O5BQ6GpZO0WoUZlb22UrFF2MarzBixiZ7X3MxbBIAyv3LqQI6S14ZoJQPDZi6zRud8046BQNgHQ
	NExTVvwUI68PhTyUk3bfFJ180aLjcyJ1rJh95rUVxT+Jp5FHg7Al7y/DEX0NZYziP0UbJ4QYgkR
	RAwuxOlAyusdMr8UcR0ope/Kp8UJ62xbZowu7C+7196LxPiC8nfkzkpLe1i+G+P8wBiehsGZkfL
	q3DGThdLgLVhQGDAXnUEQj62he81aUAajQFvCnKAn7WGrn8s1CQQADmp85+uC2BfMZ4rnYXH/BN
	pridQ550w9WBGUPfvSxg==
X-Google-Smtp-Source: AGHT+IFgheBk8plPZFOvo1Fh8CqMw+IDlX5zjqqJtiHnOJ15bA0846Akm4ZoeAvbvhHYf1Mdb/gfzw==
X-Received: by 2002:a17:907:6d20:b0:b6d:6a35:99a0 with SMTP id a640c23a62f3a-b6d6a359c49mr1253713666b.33.1761556971534;
        Mon, 27 Oct 2025 02:22:51 -0700 (PDT)
Received: from [192.168.0.39] ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853c549fsm708029666b.37.2025.10.27.02.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 02:22:51 -0700 (PDT)
Message-ID: <56a13c84-7d8b-42f1-97f6-c338b931f205@linaro.org>
Date: Mon, 27 Oct 2025 11:22:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/31] dt-bindings: media: add DW MIPI CSI-2 Host
 support
To: Sakari Ailus <sakari.ailus@iki.fi>, Frank Li <Frank.Li@nxp.com>
Cc: Rui Miguel Silva <rmfrfs@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Martin Kepplinger <martink@posteo.de>, Purism Kernel Team <kernel@puri.sm>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
 Alice Yuan <alice.yuan@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-staging@lists.linux.dev, Luis Oliveira <lolivei@synopsys.com>
References: <20250821-95_cam-v3-0-c9286fbb34b9@nxp.com>
 <20250821-95_cam-v3-1-c9286fbb34b9@nxp.com>
 <aP8t3YClrZxOnHea@valkosipuli.retiisi.eu>
From: Eugen Hristev <eugen.hristev@linaro.org>
Content-Language: en-US
In-Reply-To: <aP8t3YClrZxOnHea@valkosipuli.retiisi.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_022253_998718_2913F81E 
X-CRM114-Status: GOOD (  18.08  )
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



On 10/27/25 10:31, Sakari Ailus wrote:
> Hei Eugen,
> 
> On Thu, Aug 21, 2025 at 04:15:36PM -0400, Frank Li wrote:
>> From: Eugen Hristev <eugen.hristev@linaro.org>

Hi everyone,

While I originally wrote this patch, and Frank keeping me as author, I
have not contributed more to it, so, I think you can drop me as author
and Frank you can put your name to it.

Thanks for continuing the work on it.

Eugen
>>
>> Add bindings for Synopsys DesignWare MIPI CSI-2 host, which used at i.MX93
>> and i.MX95 platform.
>>
>> Signed-off-by: Luis Oliveira <lolivei@synopsys.com>
>> Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
>> Signed-off-by: Frank Li <Frank.Li@nxp.com>
>> ---
>> Change in v3
>> - drop remote-endpoint: true
>> - drop clock-lanes
>>
>> Change in v2
>> - remove Eugen Hristev <eugen.hristev@microchip.com> from mantainer.
>> - update ugen Hristev's s-o-b tag to align original author's email address
>> - remove single snps,dw-mipi-csi2-v150 compatible string
>> - move additionalProperties after required
>> ---
>>  .../bindings/media/snps,dw-mipi-csi2-v150.yaml     | 151 +++++++++++++++++++++
>>  MAINTAINERS                                        |   1 +
>>  2 files changed, 152 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/media/snps,dw-mipi-csi2-v150.yaml b/Documentation/devicetree/bindings/media/snps,dw-mipi-csi2-v150.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..d950daa4ee9cfd504ef84b83271b2a1b710ffd6b
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/media/snps,dw-mipi-csi2-v150.yaml
>> @@ -0,0 +1,151 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/media/snps,dw-mipi-csi2-v150.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Synopsys DesignWare CSI-2 Host controller (csi2host)
>> +
>> +maintainers:
>> +  - Frank Li <Frank.Li@nxp.com>
>> +
>> +description:
>> +  CSI2HOST is used to receive image coming from an MIPI CSI-2 compatible
>> +  camera. It will convert the incoming CSI-2 stream into a dedicated
>> +  interface called the Synopsys IDI (Image Data Interface).
>> +  This interface is a 32-bit SoC internal only, and can be assimilated
>> +  with a CSI-2 interface.
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - enum:
>> +          - fsl,imx93-mipi-csi2
>> +      - const: snps,dw-mipi-csi2-v150
>> +
>> +  reg:
>> +    items:
>> +      - description: MIPI CSI-2 core register
>> +
>> +  reg-names:
>> +    items:
>> +      - const: core
>> +
>> +  clocks:
>> +    maxItems: 2
>> +
>> +  clock-names:
>> +    items:
>> +      - const: per
>> +      - const: pixel
>> +
>> +  phys:
>> +    maxItems: 1
>> +    description: MIPI D-PHY
>> +
>> +  phy-names:
>> +    items:
>> +      - const: rx
>> +
>> +  resets:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        unevaluatedProperties: false
>> +        description:
>> +          Input port node, single endpoint describing the input port.
>> +
>> +        properties:
>> +          endpoint:
>> +            $ref: video-interfaces.yaml#
>> +            unevaluatedProperties: false
>> +            description: Endpoint connected to input device
>> +
>> +            properties:
>> +              bus-type:
>> +                const: 4
> 
> If 4 is the only value supported, you can drop the property altogether.
> 
>> +
>> +              data-lanes:
>> +                minItems: 1
>> +                maxItems: 4
>> +                items:
>> +                  maximum: 4
>> +
>> +      port@1:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        unevaluatedProperties: false
>> +        description:
>> +          Output port node, single endpoint describing the output port.
>> +
>> +        properties:
>> +          endpoint:
>> +            unevaluatedProperties: false
>> +            $ref: video-interfaces.yaml#
>> +            description: Endpoint connected to output device
>> +
>> +            properties:
>> +              bus-type:
>> +                const: 4
> 
> Are both input and output of this block CSI-2 with D-PHY?
> 
>> +
>> +    required:
>> +      - port@0
>> +      - port@1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - reg-names
>> +  - interrupts
>> +  - ports
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    csi@3000 {
>> +        compatible = "fsl,imx93-mipi-csi2", "snps,dw-mipi-csi2-v150";
>> +        reg = <0x03000 0x1000>;
>> +        reg-names = "core";
>> +        phys = <&mipi_dphy_rx 0>;
>> +        phy-names = "rx";
>> +        resets = <&dw_rst 1>;
>> +        interrupts = <2>;
>> +
>> +        ports {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +
>> +            port@0 {
>> +                reg = <0>;
>> +
>> +                endpoint {
>> +                    bus-type = <4>; /* MIPI CSI2 D-PHY */
>> +                    remote-endpoint = <&camera_1>;
>> +                    data-lanes = <1 2>;
>> +                    clock-lanes = <0>;
>> +                };
>> +            };
>> +
>> +            port@1 {
>> +                reg = <1>;
>> +
>> +                endpoint {
>> +                    remote-endpoint = <&idi_receiver>;
>> +                    bus-type = <4>;
>> +                };
>> +            };
>> +        };
>> +    };
>> +
>> +...
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 9d9d2be7be8037dfa96f1c9edd24a0cf997b9393..ecb7bc7cc8ad797f43173075ca8973804bf335f7 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -15334,6 +15334,7 @@ F:	Documentation/devicetree/bindings/media/fsl,imx93-parallel-csi.yaml
>>  F:	Documentation/devicetree/bindings/media/nxp,imx-mipi-csi2.yaml
>>  F:	Documentation/devicetree/bindings/media/nxp,imx7-csi.yaml
>>  F:	Documentation/devicetree/bindings/media/nxp,imx8mq-mipi-csi2.yaml
>> +F:	Documentation/devicetree/bindings/media/snps,dw-mipi-csi2-v150.yaml
>>  F:	drivers/media/platform/nxp/imx-mipi-csis.c
>>  F:	drivers/media/platform/nxp/imx-parallel-csi.c
>>  F:	drivers/media/platform/nxp/imx7-media-csi.c
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
