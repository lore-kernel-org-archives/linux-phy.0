Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF40DC3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 18:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+VQCYNPzr0+7p2/ZZZ8dME+4oghc5Zpb1j7EwL5I78=; b=dZ7GQ2gTpWF6vk
	v4i99YWs3QCZaiUX3WCalO7jI1nkb4aWqdNYJ3142YHUDgRi+VxBtSjox7YZx29HPruD7L0pUaZOo
	pq6BgpYJ1/nq2LI0CGj+S1a4JqTL33NVS+qpmIoXamJQH9Jx/lW8QVDEHf1G8rVpETbopYerTg4r+
	RxOFIN5xayPg6FiXffcDTNER8c1KePbCwfVRrD6jGiC33uzwbN/xsQkpPT9vE2ifHFA1XWQncDhGu
	yk34DAs6LgpqTLt0cKKai42oK+KoZse55DmeKbR26tIOXlmB7J7TQ/6o7uZ8fh8uyIdtATWQfUFnA
	wLB9kxve7xakn9vnIBlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHr1h-00FV9n-0N; Tue, 17 Jan 2023 18:49:41 +0000
Received: from mail-oa1-f43.google.com ([209.85.160.43])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHr1e-00FV8z-Ba
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 18:49:40 +0000
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-15f64f2791dso2655129fac.7
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 10:49:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dt+JVILd4L3+1ltru4R7Q2ivakcvcUmpRc9Jx8O+hgc=;
        b=o3y2GAauhjtCx7H/ZIIQ6AFgHDaEzJe6rnZ1Y91qIyWzEQSFWYUcAfb1lVLFOWDlQd
         xBT3nZMV3OZx0UmMToSKLZseXy+XxJk8Y4G0DKnEPMGGqRXpBR1EyFBEFupuu34/qaHn
         hwNsKwH3U5BA3E5OKKxkjJJSL+yS3nESMm+PDiZ/ImTr8YMqu8N6MrlLm4+CWKlmw/Zo
         nw3EI70OPRcYrX1BeF1pUGHC3FMYiFktThXcWpANm6kR2klCaingYCFLPXlnsuYyvwPw
         PrtOp8ya8WtSX2gO2ApR7ZCXRdo0EemP3cPtVu/N45TwJ62H5r4XAZaV6Vp/emOtn9xv
         hz3w==
X-Gm-Message-State: AFqh2koqa0S6v7F2vzyOkgaDMivHJIFEEGRTD00+IsZj7bLzGbr0fMJw
	jgDTZEBBckBtontNN2oWiQ==
X-Google-Smtp-Source: AMrXdXvFTgrwmcyihMrqnmdsU7P0JAEegOcRFwjVHBZxPEZd8kcDnA+SdeCcchrujcRs3CfN2ur8rg==
X-Received: by 2002:a05:6870:7997:b0:15b:9fb0:864c with SMTP id he23-20020a056870799700b0015b9fb0864cmr2551641oab.19.1673981372533;
        Tue, 17 Jan 2023 10:49:32 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f96-20020a9d03e9000000b00684e4d974e6sm5092762otf.24.2023.01.17.10.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 10:49:32 -0800 (PST)
Received: (nullmailer pid 3445817 invoked by uid 1000);
	Tue, 17 Jan 2023 18:49:31 -0000
Date: Tue, 17 Jan 2023 12:49:31 -0600
From: Rob Herring <robh@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jon Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: phy: tegra-xusb: Convert to json-schema
Message-ID: <20230117184931.GA3431713-robh@kernel.org>
References: <20230113150804.1272555-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230113150804.1272555-1-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_104938_419718_2F4DEB91 
X-CRM114-Status: GOOD (  35.01  )
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

On Fri, Jan 13, 2023 at 04:08:04PM +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Convert the Tegra XUSB pad controller bindings from free-form text
> format to json-schema.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v3:
> - use | to keep paragraphs in multi-paragraph descriptions
> - move additionalProperties to improve readability
> - clarify that "status" can also be absent
> - drop phandle and status properties
> - remove quotes around references
> - use dual licensing
> 
> Changes in v2:
> - split up into multiple schemas
> 
>  .../phy/nvidia,tegra124-xusb-padctl.txt       | 779 -----------------
>  .../phy/nvidia,tegra124-xusb-padctl.yaml      | 654 +++++++++++++++
>  .../phy/nvidia,tegra186-xusb-padctl.yaml      | 544 ++++++++++++
>  .../phy/nvidia,tegra194-xusb-padctl.yaml      | 630 ++++++++++++++
>  .../phy/nvidia,tegra210-xusb-padctl.yaml      | 786 ++++++++++++++++++
>  5 files changed, 2614 insertions(+), 779 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra186-xusb-padctl.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml
>  create mode 100644 Documentation/devicetree/bindings/phy/nvidia,tegra210-xusb-padctl.yaml
> 

> diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.yaml
> new file mode 100644
> index 000000000000..33b41b6b2fd5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/nvidia,tegra124-xusb-padctl.yaml
> @@ -0,0 +1,654 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/nvidia,tegra124-xusb-padctl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NVIDIA Tegra124 XUSB pad controller
> +
> +maintainers:
> +  - Thierry Reding <thierry.reding@gmail.com>
> +  - Jon Hunter <jonathanh@nvidia.com>
> +
> +description: |
> +  The Tegra XUSB pad controller manages a set of I/O lanes (with differential
> +  signals) which connect directly to pins/pads on the SoC package. Each lane
> +  is controlled by a HW block referred to as a "pad" in the Tegra hardware
> +  documentation. Each such "pad" may control either one or multiple lanes,
> +  and thus contains any logic common to all its lanes. Each lane can be
> +  separately configured and powered up.
> +
> +  Some of the lanes are high-speed lanes, which can be used for PCIe, SATA or
> +  super-speed USB. Other lanes are for various types of low-speed, full-speed
> +  or high-speed USB (such as UTMI, ULPI and HSIC). The XUSB pad controller
> +  contains a software-configurable mux that sits between the I/O controller
> +  ports (e.g. PCIe) and the lanes.
> +
> +  In addition to per-lane configuration, USB 3.0 ports may require additional
> +  settings on a per-board basis.
> +
> +  Pads will be represented as children of the top-level XUSB pad controller
> +  device tree node. Each lane exposed by the pad will be represented by its
> +  own subnode and can be referenced by users of the lane using the standard
> +  PHY bindings, as described by the phy-bindings.txt file in this directory.
> +
> +  The Tegra hardware documentation refers to the connection between the XUSB
> +  pad controller and the XUSB controller as "ports". This is confusing since
> +  "port" is typically used to denote the physical USB receptacle. The device
> +  tree binding in this document uses the term "port" to refer to the logical
> +  abstraction of the signals that are routed to a USB receptacle (i.e. a PHY
> +  for the USB signal, the VBUS power supply, the USB 2.0 companion port for
> +  USB 3.0 receptacles, ...).
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - nvidia,tegra124-xusb-padctl
> +
> +      - items:
> +          - const: nvidia,tegra132-xusb-padctl
> +          - const: nvidia,tegra124-xusb-padctl
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: XUSB pad controller interrupt
> +
> +  resets:
> +    items:
> +      - description: pad controller reset
> +
> +  reset-names:
> +    items:
> +      - const: padctl
> +
> +  avdd-pll-utmip-supply:
> +    description: UTMI PLL power supply. Must supply 1.8 V.
> +
> +  avdd-pll-erefe-supply:
> +    description: PLLE reference PLL power supply. Must supply 1.05 V.
> +
> +  avdd-pex-pll-supply:
> +    description: PCIe/USB3 PLL power supply. Must supply 1.05 V.
> +
> +  hvdd-pex-pll-e-supply:
> +    description: High-voltage PLLE power supply. Must supply 3.3 V.
> +
> +  pads:
> +    description: A required child node named "pads" contains a list of
> +      subnodes, one for each of the pads exposed by the XUSB pad controller.
> +      Each pad may need additional resources that can be referenced in its
> +      pad node.
> +
> +      The "status" property is used to enable or disable the use of a pad.
> +      If set to "disabled", the pad will not be used on the given board. In
> +      order to use the pad and any of its lanes, this property must be set
> +      to "okay" or be absent.
> +    type: object
> +    additionalProperties: false
> +    properties:
> +      usb2:
> +        type: object
> +        additionalProperties: false
> +        properties:
> +          clocks:
> +            items:
> +              - description: USB2 tracking clock
> +
> +          clock-names:
> +            items:
> +              - const: trk
> +
> +          lanes:
> +            type: object
> +            additionalProperties: false
> +            properties:
> +              usb2-0:

Any reason to not make this a pattern? '^usb2-[0-2]$'

Same question in several other cases.

> +                type: object
> +                additionalProperties: false
> +                properties:
> +                  "#phy-cells":
> +                    const: 0
> +
> +                  nvidia,function:
> +                    description: Function selection for this lane.
> +                    $ref: /schemas/types.yaml#/definitions/string
> +                    enum: [ snps, xusb, uart ]
> +
> +              usb2-1:
> +                type: object
> +                additionalProperties: false
> +                properties:
> +                  "#phy-cells":
> +                    const: 0
> +
> +                  nvidia,function:
> +                    description: Function selection for this lane.
> +                    $ref: /schemas/types.yaml#/definitions/string
> +                    enum: [ snps, xusb, uart ]
> +
> +              usb2-2:
> +                type: object
> +                additionalProperties: false
> +                properties:
> +                  "#phy-cells":
> +                    const: 0
> +
> +                  nvidia,function:
> +                    description: Function selection for this lane.
> +                    $ref: /schemas/types.yaml#/definitions/string
> +                    enum: [ snps, xusb, uart ]

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
