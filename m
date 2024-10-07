Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2158CFB456
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 19:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeiP1NFppsMoIObHWU+kHmd8d1I6D94f3XioiL/6/Zo=; b=VgaW7McC0MkEI5
	oD3WJATwAP82l3GL+vP3IpbBk4KNSl3/N50GDmrt9pulIvIkcvDgTo7wAjIlMM1Y2Ec6v7DDbaziM
	se/6n0N4tahxEvb7730FocHOiTc1SRmWC5yhojXUcNfVrSH+r0FwAoKL9KwMr1uALsuwzUDv/6H5h
	6eATOFwmnKdxVI0+PmujKTUycSL9rWSpgi4Y+cW2/ocnqMb1SAHaHbvXfGpFF8AeKw2TUnN+3z3JG
	ndOrHO7y/XAxbbycexglZkbNeOGN3jgWaHJhcZDr33oSWl8hCjxs7B1AoCxVIrHfw/Mj/6l/aPV4j
	ry5FVIwqL717z9xtzwIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxtRT-00000003cNw-2N4U;
	Mon, 07 Oct 2024 19:30:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxtRN-00000003cM4-3TNk
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 19:30:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 06DCC5C5CF2;
	Mon,  7 Oct 2024 19:30:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFBB8C4CEC6;
	Mon,  7 Oct 2024 19:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728329444;
	bh=p1XU4p9h7t6sdx9STfRqAuq7FBgRZQU3T+UbO5clsds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ur8pVym4heLmVgJP8ccqmYnNUqhR4i3A17OXk+ztta679LUXE5bSv2DjK/cOeoeC4
	 SM7au33McU98vG+bJFgMQyvWKCyU3UerL+lX7+iA/osHu+utQ9n6j2LIpq1ZMdbpK+
	 17cWAMCREa9zTpL2h+wAFvE4q3EDDRUy5TDzWglw3685hCCAqTLTGn/rsNok+xzLH4
	 Y20TFpmHKHHwMSpOD/+frbcDiszmBdQ5BW3/81A5KfKdCBamM7bm07qwimsZNH/ZQU
	 KWmCZJ1yas7n9ydbe3YiaOnMj5V3+9DedYzu9gTVlgpe3qbyvcU5AIwKqlAJF8et2E
	 EqTZvdkxPYhMw==
Date: Mon, 7 Oct 2024 14:30:44 -0500
From: Rob Herring <robh@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, krzk@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY
 binding
Message-ID: <20241007193044.GA2255474-robh@kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
 <20241007163623.3274510-2-markus.stockhausen@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007163623.3274510-2-markus.stockhausen@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_123045_981035_31F0106B 
X-CRM114-Status: GOOD (  27.53  )
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

On Mon, Oct 07, 2024 at 12:36:21PM -0400, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> network Switch SoCs with up to 52 ports divided into four different
> model lines.
> 
> Changes in v2:
> - new subject
> - removed patch command sequences
> - renamed parameter controlled-ports to realtek,controlled-ports
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/phy/realtek,otto-serdes.yaml     | 95 +++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> new file mode 100644
> index 000000000000..a72ac206b35f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/realtek,otto-serdes.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek Otto SerDes controller
> +
> +maintainers:
> +  - Markus Stockhausen <markus.stockhausen@gmx.de>
> +
> +description:

You need '>' on the end if you want to preserve paragraphs.

> +  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x and RTL931x series
> +  have multiple SerDes built in. They are linked to single, quad or octa PHYs like the RTL8218B,
> +  RTL8218D or RTL8214FC and are one of the integral part of the up-to-52-port switch architecture.
> +
> +  Although these SerDes controllers have common basics they behave differently on the SoC families
> +  and rely on heavy register magic. To keep the driver clean it can load patch sequences from
> +  devictree and execute them during the controller actions like phy_init(), ...
> +
> +  The driver exposes the SerDes registers different from the hardware but instead gives a
> +  consistent view and programming interface. So the RTL838x series has 6 ports and 4 pages, the
> +  RTL839x has 14 ports and 12 pages, the RTL930x has 12 ports and 64 pages and the RTL931x has
> +  14 ports and 192 pages.
> +
> +properties:
> +  $nodename:
> +    pattern: "^serdes@[0-9a-f]+$"

The node name for phy providers is 'phy'.

> +
> +  compatible:
> +    items:
> +      - enum:
> +          - realtek,rtl8380-serdes
> +          - realtek,rtl8390-serdes
> +          - realtek,rtl9300-serdes
> +          - realtek,rtl9310-serdes
> +
> +  reg:
> +    items:
> +      description:
> +        The primary SerDes paged register memory location. Other SerDes control and management
> +        registers are distributed all over the I/O memory space and are identified by the driver.
> +
> +  "#phy-cells":
> +    const: 4
> +    description:
> +      The first number defines the SerDes to use. The second number a linked SerDes. E.g. if a octa
> +      1G PHY is attached to two QSGMII SerDes. The third number is the first switch port this
> +      SerDes is working for, the fourth number is the last switch port the SerDes is working for.
> +
> +  realtek,controlled-ports:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      A bit mask defining the ports that are actively controlled by the driver. In case a bit is
> +      not set the driver will only process read operations on the SerDes. This is just in case the
> +      SerDes has been setup by U-Boot correctly and the driver malfunctions. If not set the driver
> +      will control all SerDes.
> +
> +reguired:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties:
> +  false

One line like *everywhere* else.

> +
> +examples:
> +  - |
> +    serdes: serdes@1b00e780 {

Drop unused labels.

> +      compatible = "realtek,rtl8380-serdes", "realtek,otto-serdes";
> +      reg = <0x1b00e780 0x1200>;
> +      controlled-ports = <0x003f>;
> +      #phy-cells = <4>;
> +    };
> +  - |
> +    serdes: serdes@1b00a000 {
> +      compatible = "realtek,rtl8390-serdes", "realtek,otto-serdes";
> +      reg = <0x1b00a000 0x1c00>;
> +      controlled-ports = <0x3fff>;
> +      #phy-cells = <4>;
> +    };
> +  - |
> +    serdes: serdes@1b0003b0 {
> +      compatible = "realtek,rtl9300-serdes", "realtek,otto-serdes";
> +      reg = <0x1b0003b0 0x8>;
> +      controlled-ports = <0x0fff>;
> +      #phy-cells = <4>;
> +    };
> +  - |
> +    serdes: serdes@1b005638 {
> +      compatible = "realtek,rtl9310-serdes", "realtek,otto-serdes";
> +      reg = <0x1b005638 0x8>;
> +      controlled-ports = <0x3fff>;
> +      #phy-cells = <4>;
> +    };

You don't need 4 examples that are essentially the same.

> --
> 2.46.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
