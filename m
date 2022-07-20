Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A258C43334
	for <linux-phy@archiver.kernel.org>; Wed, 20 Jul 2022 22:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxPC3avXH8mvelrNoMP8BgartprZZLt0PjH2ChzEQ68=; b=MlXVxfB2/+svi1
	2TW3MdSdpNEqM2/Uk1KbN+/WU2THeVuF/t3wd04ZPV/CUhlbHpvUZvD8GZeNWrS6NlcZmRntca4E/
	seWweDj1z4ujgPm1oDXd3jR2WHDLK4U8L+LZ2FQ67qMbiJNDISCUCovHO1HZYiwzz69VGk2UusqfK
	wT6QAk4bvxi4WTkgSgI9O94RRNiyu0LjzgPSXVsXXlR2AluYeIZO70qlOJJtx2T6i7PTu7BqyhfYd
	U4El0LPM1WhVb0QlGBXwyYbS9eEGtGRkfQGwjizkiJhw3Khw9arOfs9WYouKzJp5u1B0OEy6VhKdO
	Aa/wCAaG8ju8UwA7Nqxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEI0Q-00CFgk-Cu; Wed, 20 Jul 2022 22:17:22 +0000
Received: from mail-il1-f175.google.com ([209.85.166.175])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEI0E-00CFH7-CO; Wed, 20 Jul 2022 22:17:12 +0000
Received: by mail-il1-f175.google.com with SMTP id i5so2673555ila.6;
        Wed, 20 Jul 2022 15:17:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aUlOd+EpVilq1LbBbOdnAUUakZ1pmB0C8nlxw1tK264=;
        b=mFGMFUUYWQwgaliimeaw6bM0RK7aQC5nZV0WwMBTef+T8miFyU7XW9AIfrevXwVlWm
         VTS0k/SPxKbbGE3MM71YV119iE99q+MXDbSo2/3c6vbJ4yN71FR8H66aO/gvPQrXJSKC
         JU3NPSe5NX6t2tPPrF3tLDjfabAC6/W9KSZbfjjrxKM0CibrlDO0WHo46C6oZ2f8I35N
         6V0lGnCSIBEHs7WlTj6cDuW9VSy8v83cQpcL/u8PrEYd0Xp2/nmQm327UximiKMs3Nud
         hynn2Mi2YpULWfkkk7i7GyNmsS1ejkWoyK6d8wVAyjuXpSL7NbM/4+rECpWbJ+/tXbDb
         agQg==
X-Gm-Message-State: AJIora+mU6GNFwnWIzJF9gci6AhaEjJmIQUGC+qxllO04rxNloQALDuh
	spZree6hypLqcaE0cZF/2g==
X-Google-Smtp-Source: AGRyM1ucGxMPK6PIuTcVoOD7WoI7SmAzmBLBAjid9V6pCEpsJf5qwJh8tZ+HnYsW8k3BoW2u51OOiQ==
X-Received: by 2002:a05:6e02:1a6e:b0:2dc:ff0b:3e3e with SMTP id w14-20020a056e021a6e00b002dcff0b3e3emr4972041ilv.219.1658355426542;
        Wed, 20 Jul 2022 15:17:06 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id o14-20020a02740e000000b00331b9a3c5adsm24659jac.170.2022.07.20.15.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 15:17:06 -0700 (PDT)
Received: (nullmailer pid 4079078 invoked by uid 1000);
	Wed, 20 Jul 2022 22:17:04 -0000
Date: Wed, 20 Jul 2022 16:17:04 -0600
From: Rob Herring <robh@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Madalin Bucur <madalin.bucur@nxp.com>, netdev@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, Eric Dumazet <edumazet@google.com>, linux-arm-kernel@lists.infradead.org, Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next v3 01/47] dt-bindings: phy: Add Lynx 10G phy
 binding
Message-ID: <20220720221704.GA4049520-robh@kernel.org>
References: <20220715215954.1449214-1-sean.anderson@seco.com>
 <20220715215954.1449214-2-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220715215954.1449214-2-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_151710_467727_BE9285DA 
X-CRM114-Status: GOOD (  52.99  )
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

On Fri, Jul 15, 2022 at 05:59:08PM -0400, Sean Anderson wrote:
> This adds a binding for the SerDes module found on QorIQ processors. The
> phy reference has two cells, one for the first lane and one for the
> last. This should allow for good support of multi-lane protocols when
> (if) they are added. There is no protocol option, because the driver is
> designed to be able to completely reconfigure lanes at runtime.
> Generally, the phy consumer can select the appropriate protocol using
> set_mode. For the most part there is only one protocol controller
> (consumer) per lane/protocol combination. The exception to this is the
> B4860 processor, which has some lanes which can be connected to
> multiple MACs. For that processor, I anticipate the easiest way to
> resolve this will be to add an additional cell with a "protocol
> controller instance" property.
> 
> Each serdes has a unique set of supported protocols (and lanes). The
> support matrix is configured in the device tree. The format of each
> PCCR (protocol configuration register) is modeled. Although the general
> format is typically the same across different SoCs, the specific
> supported protocols (and the values necessary to select them) are
> particular to individual SerDes. A nested structure is used to reduce
> duplication of data.
> 
> There are two PLLs, each of which can be used as the master clock for
> each lane. Each PLL has its own reference. For the moment they are
> required, because it simplifies the driver implementation. Absent
> reference clocks can be modeled by a fixed-clock with a rate of 0.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> Changes in v3:
> - Manually expand yaml references
> - Add mode configuration to device tree
> 
> Changes in v2:
> - Rename to fsl,lynx-10g.yaml
> - Refer to the device in the documentation, rather than the binding
> - Move compatible first
> - Document phy cells in the description
> - Allow a value of 1 for phy-cells. This allows for compatibility with
>   the similar (but according to Ioana Ciornei different enough) lynx-28g
>   binding.
> - Remove minItems
> - Use list for clock-names
> - Fix example binding having too many cells in regs
> - Add #clock-cells. This will allow using assigned-clocks* to configure
>   the PLLs.
> - Document the structure of the compatible strings
> 
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 311 ++++++++++++++++++
>  1 file changed, 311 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> new file mode 100644
> index 000000000000..a2c37225bb67
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> @@ -0,0 +1,311 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,lynx-10g.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP Lynx 10G SerDes
> +
> +maintainers:
> +  - Sean Anderson <sean.anderson@seco.com>
> +
> +description: |
> +  These Lynx "SerDes" devices are found in NXP's QorIQ line of processors. The
> +  SerDes provides up to eight lanes. Each lane may be configured individually,
> +  or may be combined with adjacent lanes for a multi-lane protocol. The SerDes
> +  supports a variety of protocols, including up to 10G Ethernet, PCIe, SATA, and
> +  others. The specific protocols supported for each lane depend on the
> +  particular SoC.
> +
> +definitions:

$defs:

> +  fsl,cfg:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1
> +    description: |
> +      The configuration value to program into the field.

What field?

> +
> +  fsl,first-lane:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 7
> +    description: |
> +      The first lane in the group configured by fsl,cfg. This lane will have
> +      the FIRST_LANE bit set in GCR0. The reset direction will also be set
> +      based on whether this property is less than or greater than
> +      fsl,last-lane.
> +
> +  fsl,last-lane:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 7
> +    description: |
> +      The last lane configured by fsl,cfg. If this property is absent,
> +      then it will default to the value of fsl,first-lane.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - fsl,ls1046a-serdes
> +          - fsl,ls1088a-serdes
> +      - const: fsl,lynx-10g
> +
> +  "#clock-cells":
> +    const: 1
> +    description: |
> +      The cell contains the index of the PLL, starting from 0. Note that when
> +      assigning a rate to a PLL, the PLLs' rates are divided by 1000 to avoid
> +      overflow. A rate of 5000000 corresponds to 5GHz.
> +
> +  "#phy-cells":
> +    minimum: 1
> +    maximum: 2
> +    description: |
> +      The cells contain the following arguments:
> +      - The first lane in the group. Lanes are numbered based on the register
> +        offsets, not the I/O ports. This corresponds to the letter-based ("Lane
> +        A") naming scheme, and not the number-based ("Lane 0") naming scheme. On
> +        most SoCs, "Lane A" is "Lane 0", but not always.
> +      - Last lane. For single-lane protocols, this should be the same as the
> +        first lane.

Perhaps a single cell with a lane mask would be simpler.

> +      If no lanes in a SerDes can be grouped, then #phy-cells may be 1, and the
> +      first cell will specify the only lane in the group.

It is generally easier to have a fixed number of cells.

> +
> +  clocks:
> +    maxItems: 2
> +    description: |
> +      Clock for each PLL reference clock input.
> +
> +  clock-names:
> +    minItems: 2
> +    maxItems: 2
> +    items:
> +      enum:
> +        - ref0
> +        - ref1
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  '^pccr-':
> +    type: object
> +
> +    description: |
> +      One of the protocol configuration registers (PCCRs). These contains
> +      several fields, each of which mux a particular protocol onto a particular
> +      lane.
> +
> +    properties:
> +      fsl,pccr:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description: |
> +          The index of the PCCR. This is the same as the register name suffix.
> +          For example, a node for PCCRB would use a value of '0xb' for an
> +          offset of 0x22C (0x200 + 4 * 0xb).
> +
> +    patternProperties:
> +      '^(q?sgmii|xfi|pcie|sata)-':
> +        type: object
> +
> +        description: |
> +          A configuration field within a PCCR. Each field configures one
> +          protocol controller. The value of the field determines the lanes the
> +          controller is connected to, if any.
> +
> +        properties:
> +          fsl,index:

indexes are generally a red flag in binding. What is the index, how does 
it correspond to the h/w and why do you need it. If we do end up needing 
it, 'reg' is generally how we address some component.

> +            $ref: /schemas/types.yaml#/definitions/uint32
> +            description: |
> +              The index of the field. This corresponds to the suffix in the

What field?

> +              documentation. For example, PEXa would be 0, PEXb 1, etc.
> +              Generally, higher fields occupy lower bits.
> +
> +              If there are any subnodes present, they will be preferred over
> +              fsl,cfg et. al.
> +
> +          fsl,cfg:
> +            $ref: "#/definitions/fsl,cfg"
> +
> +          fsl,first-lane:
> +            $ref: "#/definitions/fsl,first-lane"
> +
> +          fsl,last-lane:
> +            $ref: "#/definitions/fsl,last-lane"

Why do you have lane assignments here and in the phy cells?

> +
> +          fsl,proto:
> +            $ref: /schemas/types.yaml#/definitions/string
> +            enum:
> +              - sgmii
> +              - sgmii25
> +              - qsgmii
> +              - xfi
> +              - pcie
> +              - sata

We have standard phy modes already for at least most of these types. 
Generally the mode is set in the phy cells.

> +            description: |
> +              Indicates the basic group protocols supported by this field.
> +              Individual protocols are selected by configuring the protocol
> +              controller.
> +
> +              - sgmii: 1000BASE-X, SGMII, and 1000BASE-KX (depending on the
> +                       SoC)
> +              - sgmii25: 2500BASE-X, 1000BASE-X, SGMII, and 1000BASE-KX
> +                         (depending on the SoC)
> +              - qsgmii: QSGMII
> +              - xfi: 10GBASE-R and 10GBASE-KR (depending on the SoC)
> +              - pcie: PCIe
> +              - sata: SATA
> +
> +        patternProperties:
> +          '^cfg-':
> +            type: object
> +
> +            description: |
> +              A single field may have multiple values which, when programmed,
> +              connect the protocol controller to different lanes. If this is the
> +              case, multiple sub-nodes may be provided, each describing a
> +              single muxing.
> +
> +            properties:
> +              fsl,cfg:
> +                $ref: "#/definitions/fsl,cfg"
> +
> +              fsl,first-lane:
> +                $ref: "#/definitions/fsl,first-lane"
> +
> +              fsl,last-lane:
> +                $ref: "#/definitions/fsl,last-lane"
> +
> +            required:
> +              - fsl,cfg
> +              - fsl,first-lane
> +
> +            dependencies:
> +              fsl,last-lane:
> +                - fsl,first-lane
> +
> +            additionalProperties: false
> +
> +        required:
> +          - fsl,index
> +          - fsl,proto
> +
> +        dependencies:
> +          fsl,last-lane:
> +            - fsl,first-lane
> +          fsl,cfg:
> +            - fsl,first-lane
> +          fsl,first-lane:
> +            - fsl,cfg
> +
> +        # I would like to require either a config subnode or the config
> +        # properties (and not both), but from what I can tell that can't be
> +        # expressed in json schema. In particular, it is not possible to
> +        # require a pattern property.

Indeed, it is not. There's been some proposals.

> +
> +        additionalProperties: false
> +
> +    required:
> +      - fsl,pccr
> +
> +    additionalProperties: false
> +
> +required:
> +  - "#clock-cells"
> +  - "#phy-cells"
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    serdes1: phy@1ea0000 {
> +      #clock-cells = <1>;
> +      #phy-cells = <2>;
> +      compatible = "fsl,ls1088a-serdes", "fsl,lynx-10g";
> +      reg = <0x1ea0000 0x2000>;
> +      clocks = <&clk_100mhz>, <&clk_156_mhz>;
> +      clock-names = "ref0", "ref1";
> +      assigned-clocks = <&serdes1 0>;
> +      assigned-clock-rates = <5000000>;
> +
> +      pccr-8 {
> +        fsl,pccr = <0x8>;
> +
> +        sgmii-0 {
> +          fsl,index = <0>;
> +          fsl,cfg = <0x1>;
> +          fsl,first-lane = <3>;
> +          fsl,proto = "sgmii";
> +        };
> +
> +        sgmii-1 {
> +          fsl,index = <1>;
> +          fsl,cfg = <0x1>;
> +          fsl,first-lane = <2>;
> +          fsl,proto = "sgmii";
> +        };
> +
> +        sgmii-2 {
> +          fsl,index = <2>;
> +          fsl,cfg = <0x1>;
> +          fsl,first-lane = <1>;
> +          fsl,proto = "sgmii25";
> +        };
> +
> +        sgmii-3 {
> +          fsl,index = <3>;
> +          fsl,cfg = <0x1>;
> +          fsl,first-lane = <0>;
> +          fsl,proto = "sgmii25";
> +        };
> +      };
> +
> +      pccr-9 {
> +        fsl,pccr = <0x9>;
> +
> +        qsgmii-0 {
> +          fsl,index = <0>;
> +          fsl,cfg = <0x1>;
> +          fsl,first-lane = <3>;
> +          fsl,proto = "qsgmii";
> +        };
> +
> +        qsgmii-1 {
> +          fsl,index = <1>;
> +          fsl,proto = "qsgmii";
> +
> +          cfg-1 {
> +            fsl,cfg = <0x1>;
> +            fsl,first-lane = <2>;
> +          };
> +
> +          cfg-2 {
> +            fsl,cfg = <0x2>;
> +            fsl,first-lane = <0>;
> +          };
> +        };
> +      };
> +
> +      pccr-b {
> +        fsl,pccr = <0xb>;
> +
> +        xfi-0 {
> +          fsl,index = <0>;
> +          fsl,cfg = <0x1>;
> +          fsl,first-lane = <1>;
> +          fsl,proto = "xfi";
> +        };
> +
> +        xfi-1 {
> +          fsl,index = <1>;
> +          fsl,cfg = <0x1>;
> +          fsl,first-lane = <0>;
> +          fsl,proto = "xfi";
> +        };
> +      };
> +    };

Other than lane assignments and modes, I don't really understand what 
you are trying to do. It all looks too complex and I don't see any other 
phy bindings needing something this complex.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
