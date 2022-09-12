Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95C91C6FA82
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 19:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PG+bARfOkiJ+sJ96rOv2ehcoEWNxJcb4lTr8BT3A1pI=; b=Q2OXYrZQnn4cn6
	veF/88cqxHKYFDBxORb0OndxRS/sUni01qatN9/e/U2N1CgpuhClvFRel4HyxTp0IxzNT35IjFgJQ
	mZzxoAGr7gvzMNVb8oVz7tXfjuLXFoj5Zfqp4dwAuk8TZ4c+JXQvN81rzkY+wdlU8UarPWbshjDtj
	3AdR4En5McBRlW+MW+mZRT7dEyK7czvjYKR/MikyZyUa4Bg+X285RqzHb3CfKCOl1Gtr5kbqSVcjX
	t1n5OsdzPRVk2XpFiVcO0hRtRzMTHjUZ2qLXoKCzVlt9vYCPYYGMTcLNoG9jLuvQouz0xlfEW7uTS
	4f0x/YcfgIpdzB2mlxkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXpO6-00D9iI-Pr; Mon, 12 Sep 2022 19:46:34 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXpO3-00D9fM-FT; Mon, 12 Sep 2022 19:46:33 +0000
Received: by mail-ot1-f50.google.com with SMTP id c39-20020a05683034a700b006540d515722so6598427otu.5;
        Mon, 12 Sep 2022 12:46:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=fm5bPtneHW7sGF3CxsmjRWFYrIwe2I803tgYA+S1Ptk=;
        b=kA6krTwvIVwIRvGwgO8hmMiRg+NMopUoBatO2DpE73eviduF9rTbKn2zme7baJNhkz
         5lnLRKBv3xqoMbAhl/kKujJPYdYb/7i8w9gckQ/CiG4Dr/hx9SsYU2aldXLLASkLvY9d
         smV1RqhscXqHgaq6ccngFq/eg1rZx8m2rCSkPg6Z2uyzy2P76kLpXp5tPDK3+5wRL6Wk
         0ek4qCdYqEwQL3ashCLRBf40p7h7BSapfw0hAJEDGfBWdcFnrpbHCJT7ymLVce3wd/i2
         ZRgwqG906pFjYBDBye82GuzuEe98Qwsc7inVci+dGw3s5MxvwAdPhpy4C/ujSjeWQo3Q
         X1cA==
X-Gm-Message-State: ACgBeo2qCHlPCH+NmmC0JS6Io8fBC7bFcKrHWc/l1024ZFuOwmOIDOAo
	AuxxC9T1XlWA/e/DWqhJjA==
X-Google-Smtp-Source: AA6agR5nMVJJBnc7j0bzhEyfc8Sxw0CW8vby1Jit5kU9podnIKLYJq/RHRPx27ltLuTc9Bm85IOlzA==
X-Received: by 2002:a9d:386:0:b0:655:ced8:8e43 with SMTP id f6-20020a9d0386000000b00655ced88e43mr4391360otf.62.1663011988269;
        Mon, 12 Sep 2022 12:46:28 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t6-20020a4a8246000000b0044b491ccf97sm4499403oog.25.2022.09.12.12.46.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 12:46:27 -0700 (PDT)
Received: (nullmailer pid 1718508 invoked by uid 1000);
	Mon, 12 Sep 2022 19:46:26 -0000
Date: Mon, 12 Sep 2022 14:46:26 -0500
From: Rob Herring <robh@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, Madalin Bucur <madalin.bucur@nxp.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Camelia Alexandra Groza <camelia.groza@nxp.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Ioana Ciornei <ioana.ciornei@nxp.com>, linuxppc-dev@lists.ozlabs.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: Add Lynx 10G phy binding
Message-ID: <20220912194626.GA1687952-robh@kernel.org>
References: <20220902213721.946138-1-sean.anderson@seco.com>
 <20220902213721.946138-3-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220902213721.946138-3-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_124631_548631_F55F2473 
X-CRM114-Status: GOOD (  39.29  )
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

On Fri, Sep 02, 2022 at 05:37:15PM -0400, Sean Anderson wrote:
> This adds a binding for the SerDes module found on QorIQ processors.
> Each phy is a subnode of the top-level device, possibly supporting
> multiple lanes and protocols. This "thick" #phy-cells is used due to
> allow for better organization of parameters. Note that the particular
> parameters necessary to select a protocol-controller/lane combination
> vary across different SoCs, and even within different SerDes on the same
> SoC.
> 
> The driver is designed to be able to completely reconfigure lanes at
> runtime. Generally, the phy consumer can select the appropriate
> protocol using set_mode.
> 
> There are two PLLs, each of which can be used as the master clock for
> each lane. Each PLL has its own reference. For the moment they are
> required, because it simplifies the driver implementation. Absent
> reference clocks can be modeled by a fixed-clock with a rate of 0.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> (no changes since v4)
> 
> Changes in v4:
> - Use subnodes to describe lane configuration, instead of describing
>   PCCRs. This is the same style used by phy-cadence-sierra et al.
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
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 236 ++++++++++++++++++
>  1 file changed, 236 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> new file mode 100644
> index 000000000000..59417e6172d7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> @@ -0,0 +1,236 @@
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
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - fsl,ls1046a-serdes
> +          - fsl,ls1088a-serdes
> +      - const: fsl,lynx-10g
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  "#clock-cells":
> +    const: 1
> +    description: |
> +      The cell contains an ID as described in dt-bindings/clock/fsl,lynx-10g.h.
> +      Note that when assigning a rate to a PLL, the PLL's rate is divided by
> +      1000 to avoid overflow. A rate of 5000000 corresponds to 5GHz.
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
> +  '^phy@':
> +    type: object
> +
> +    description: |
> +      A contiguous group of lanes which will be configured together. Each group
> +      corresponds to one phy device. Lanes not described by any group will be
> +      left as-is.
> +
> +    properties:
> +      "#phy-cells":
> +        const: 0
> +
> +      reg:
> +        minItems: 1
> +        maxItems: 8
> +        description:
> +          The lanes in the group. These must be listed in order. The first lane
> +          will have the FIRST_LANE bit set in GCR0. The order of lanes also
> +          determines the reset order (TRSTDIR).
> +
> +    patternProperties:
> +      '^(q?sgmii|xfi)':
> +        type: object
> +
> +        description: |
> +          A protocol controller which may control the group of lanes. Each
> +          controller is selected through the PCCRs. In addition to protocols
> +          desired for use by the OS, protocols which may have been configured
> +          by the bootloader must also be described. This ensures that only one
> +          protocol controller is attached to a group of lanes at once.
> +
> +        properties:
> +          fsl,pccr:
> +            $ref: /schemas/types.yaml#/definitions/uint32
> +            description: |
> +              The index of the PCCR which configures this protocol controller.
> +              This is the same as the register name suffix. For example, PCCR8
> +              would use a value of 8 for an offset of 0x220 (0x200 + 4 * 8).
> +
> +          fsl,index:
> +            $ref: /schemas/types.yaml#/definitions/uint32
> +            description: |
> +              The index of the protocol controller. This corresponds to the
> +              suffix in the documentation. For example, PEXa would be 0, PEXb
> +              1, etc. Generally, higher fields occupy lower bits.
> +
> +          fsl,cfg:
> +            $ref: /schemas/types.yaml#/definitions/uint32
> +            minimum: 1
> +            description: |
> +              The configuration value to program into the protocol controller
> +              field.
> +
> +          fsl,type:

Use the common 'phy-type' here.

I don't love this binding, but it seems using phy cells here doesn't 
work and I don't have other suggestions. At the end of the day, it's 
just one device. I'll be less enthusiastic on the next one.

With the above change,

Reviewed-by: Rob Herring <robh@kernel.org>

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
