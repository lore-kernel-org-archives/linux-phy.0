Return-Path: <SRS0=Fvr8=MG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF00FC07E95
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 02:30:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8FC1E61289
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 02:30:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8FC1E61289
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pqy9vqD34bjW/qdI3XGyWgXMu+XV+R/e4U7cHBpAP/A=; b=C60WI08EqXfOXG
	IqfHxbs3t0R4D9MF1r4IettSBoTkvSBlhnY0SpgNiQUWzJ5e2lZa07n5NEINN1UNZHXSQvmP9hlXH
	a1lBxc1OeluTMzIONuk9lbL+DgefAULO2FSIPx7jvp6sk7tQPf0KBzKnY4gunWYG0hECjAyeZPyaR
	Fm3b88e5dbx3oyMghK5lK2t+Hroq6Pmy2P4nqqAanhCjsvDKmkfTSvY2R6N0aFYbSdhWZJI2vzzFI
	kxaF33C4wWH2WAI43DwaMYN8KhdqYduAFaEAbk+hq7s9JjdFvWqmCEvk1UtUngzivSr6LmlnS7mZD
	obVF+XLLxQMVKWEbYm/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3Uey-00C0fc-Ui; Wed, 14 Jul 2021 02:30:04 +0000
Received: from mail-il1-f176.google.com ([209.85.166.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3UYA-00BxxY-Kp
 for linux-phy@lists.infradead.org; Wed, 14 Jul 2021 02:23:04 +0000
Received: by mail-il1-f176.google.com with SMTP id w1so47888ilg.10
 for <linux-phy@lists.infradead.org>; Tue, 13 Jul 2021 19:23:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=12gW3X9OrRKnrBX1nzhlxSiSqMfBp8er0J24VFr4/og=;
 b=b//diHtCl/QSyUHihXD3SkQYivj4M8fhsyzBCBNqdtu/P9wRQ/wnhWxWTJgXqPzWM4
 d7HG6VxP3DGUIyj1DyI4Q8l6Dd7OIEbPygD5OE6BfmkCGMGVzaLrbQwHGRM+wzjVLBtD
 y7zthLSSnKyQaIgdhOWkNARrDn8uXZ9AffLR7X8gMc8sKQZ/3RzEWIolt7wSZP2wj3fE
 z3BpGHQxLmsQyEWdoFuC3ZhE9nvDm0eZiWxLIkckZimSy49oyVObVRqOnIGD37EwYQ+t
 ynr4JfiWBoRa6ct2rdfH5jAPS3MdCBb1IyYLBhu/moWaOqtxrKI3iheOITh9U+RhghCK
 adSg==
X-Gm-Message-State: AOAM5337YUrgsThpz1jsXtoBlNeEbfEhMUjXdLXB33E1B7ZFLQUb54yh
 rqIJoTMu2FBfSeA9BSD5+A==
X-Google-Smtp-Source: ABdhPJz2TkSxBQkzmWQxdvbf6TvEl4d9KgP5yS1/XCJYDi/Q8PCHYjScU07wkIdjmceJH7iegD6dDw==
X-Received: by 2002:a92:cbd0:: with SMTP id s16mr5086798ilq.19.1626229381404; 
 Tue, 13 Jul 2021 19:23:01 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id x10sm442883ill.26.2021.07.13.19.22.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 19:23:00 -0700 (PDT)
Received: (nullmailer pid 1323921 invoked by uid 1000);
 Wed, 14 Jul 2021 02:22:57 -0000
Date: Tue, 13 Jul 2021 20:22:57 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, linuxarm@huawei.com,
 mauro.chehab@huawei.com, Manivannan Sadhasivam <mani@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 1/8] dt-bindings: phy: Add bindings for HiKey 960 PCIe
 PHY
Message-ID: <20210714022257.GA1320622@robh.at.kernel.org>
References: <cover.1626157454.git.mchehab+huawei@kernel.org>
 <390e7fc0cd6fa4217f5d67c74f12ea101fab3f6d.1626157454.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <390e7fc0cd6fa4217f5d67c74f12ea101fab3f6d.1626157454.git.mchehab+huawei@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210713_192302_760188_1DAB76B5 
X-CRM114-Status: GOOD (  18.14  )
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

On Tue, Jul 13, 2021 at 08:28:34AM +0200, Mauro Carvalho Chehab wrote:
> Document the bindings for HiKey 960 (hi3660) PCIe PHY
> interface, supported via the pcie-kirin driver.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../phy/hisilicon,phy-hi3660-pcie.yaml        | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
> new file mode 100644
> index 000000000000..81c93e76cef4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/hisilicon,phy-hi3660-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HiSilicon Kirin960 PCIe PHY
> +
> +maintainers:
> +  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> +
> +description: |+
> +  Bindings for PCIe PHY on HiSilicon Kirin 960.
> +
> +properties:
> +  compatible:
> +    const: hisilicon,hi960-pcie-phy
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  reg:
> +    maxItems: 1
> +    description: PHY Control registers
> +
> +  reg-names:
> +    const: phy

You don't really need reg-names with only 1.

> +
> +  clocks:
> +    items:
> +      - description: PCIe PHY clock
> +      - description: PCIe AUX clock
> +      - description: PCIe APB PHY clock
> +      - description: PCIe APB SYS clock
> +      - description: PCIe ACLK clock
> +
> +  clock-names:
> +    items:
> +      - const: pcie_phy_ref
> +      - const: pcie_aux
> +      - const: pcie_apb_phy
> +      - const: pcie_apb_sys
> +      - const: pcie_aclk

'pcie_' is redundant. Drop.

> +
> +  reset-gpios:
> +    description: PCI PERST reset GPIO

maxItems: 1

Though this belongs in the PCIE node.

> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - reset-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/hi3660-clock.h>
> +
> +    bus {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +      pcie_phy: pcie-phy@f3f2000 {
> +        compatible = "hisilicon,hi960-pcie-phy";
> +        reg = <0x0 0xf3f20000 0x0 0x40000>;
> +        reg-names = "phy";
> +        clocks = <&crg_ctrl HI3660_PCIEPHY_REF>,
> +                 <&crg_ctrl HI3660_CLK_GATE_PCIEAUX>,
> +                 <&crg_ctrl HI3660_PCLK_GATE_PCIE_PHY>,
> +                 <&crg_ctrl HI3660_PCLK_GATE_PCIE_SYS>,
> +                 <&crg_ctrl HI3660_ACLK_GATE_PCIE>;
> +        clock-names = "pcie_phy_ref", "pcie_aux",
> +                 "pcie_apb_phy", "pcie_apb_sys",
> +                 "pcie_aclk";
> +        reset-gpios = <&gpio11 1 0 >;
> +        #phy-cells = <0>;
> +      };
> +    };
> +...
> -- 
> 2.31.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
