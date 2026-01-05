Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1729CD040D
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 22:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KzU3Q7OYAqpL+UTLEdFSK4WGz1+m3Fyt1vEP/9xwWY=; b=xD2nr4TIVM2bE8
	R7YvtGcof+ZDzdwJRElOJKfxpkG2ojFF6B2XlS1h63scHy37d3UMvmroLc20V35ThgP0YJsXSoC7l
	feqhugEjOa/BaEXcarelLIWFg2YzUPif50CSumRzFC4J5wd5CSlewyfDi9HwOrwS1gSPIL8JatMeC
	Z/IOwibMKW46ceP/bOK/6zzeXv6Y8OT/8iVXresU3KCyc1SsQ8cthaSLAkqqeWuoNJknOZxxw5Gf+
	aMlaVJAyd0oYXQkQ6K7sf39AKCbAjE0VZweKz+8/3Oy9ep3DAdisFOCGyor/SFti3OnQukv0yq3Uf
	LoDTh5s61YOWfz7b89VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcsl6-0000000C99Y-133x;
	Mon, 05 Jan 2026 22:09:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcsl3-0000000C99C-1hwI
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 22:09:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 97F7A4070D;
	Mon,  5 Jan 2026 22:09:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50B8FC116D0;
	Mon,  5 Jan 2026 22:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767650940;
	bh=OT7qGR+zPTIDPXBVfIEPEdBknDEX6cYQwoyWhOvgpVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rl12Ov2n1zZn5IpgQf2V965rF2qfv63NLcwKpCEBvkX1HCgORPIw6DXEnZ4JAzQHS
	 c0SbqcRq6RwxFRiCRjRc2OQs4+Xfn3z2a1yKY0vqODfTjvRn1CQ0kpR2kzZQc6K0bn
	 /0sxQBI82R0uZ2GzeKu1BS4pf1r+T6Bu4PCIeGbMk7JDicPSXhCoWCbmyzxR+Jm+kF
	 8l5+YnFuwcJxe/CDDpH7hqUMJCZ9qJM2mpOIC5ZV3wxbDPgb7Onc6ckfKTt9kqpeVu
	 PC7a1CKEnM7tPxN8UoqTwT2WALVL0SD04Pgmor851AefmwCMMdK9wqnLo4AffBF5kd
	 jZ7zAtFQgnedg==
Date: Mon, 5 Jan 2026 16:08:59 -0600
From: Rob Herring <robh@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: ti,control-phy-otghs: convert to DT
 schema
Message-ID: <20260105220859.GA3498531-robh@kernel.org>
References: <20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_140901_488950_240C6249 
X-CRM114-Status: GOOD (  19.52  )
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

On Sat, Jan 03, 2026 at 11:06:10AM +0000, Charan Pedumuru wrote:
> Convert TI OMAP Control PHY and PIPE3 PHY binding to YAML format.
> Changes during conversion:
> - Define a new pattern 'pciephy'and 'control-phy' to match nodes
>   defined in DT.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  .../bindings/phy/ti,control-phy-otghs.yaml         | 206 +++++++++++++++++++++
>  Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ----------
>  2 files changed, 206 insertions(+), 98 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
> new file mode 100644
> index 000000000000..830be2af5fb6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
> @@ -0,0 +1,206 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI PHYs for TI Platforms (OMAP Control PHY and PIPE3 PHY)
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>

No, this should be a TI person or someone with the h/w.

> +
> +description:
> +  This device tree binding describes the TI PHYs used in TI platforms.
> +  Two types of PHYs are supported.
> +  1. OMAP Control PHY - Simple control PHYs for power control
> +  2. PIPE3 PHY - High-speed PIPE3 PHYs for USB3, SATA, PCIe
> +
> +properties:
> +  $nodename:
> +    pattern: "^(pciephy|control-phy|usb3phy|phy)(@[0-9a-fA-F]+)?$"

Only phy, pcie-phy, or usb3-phy are valid node names.

A-F is not valid for unit-addresses either.

> +
> +  compatible:
> +    oneOf:
> +      - description: OMAP Control PHY compatibles
> +        items:
> +          enum:
> +            - ti,control-phy-otghs
> +            - ti,control-phy-usb2
> +            - ti,control-phy-pipe3
> +            - ti,control-phy-pcie
> +            - ti,control-phy-usb2-dra7
> +            - ti,control-phy-usb2-am437
> +      - description: PIPE3 high-speed PHY compatibles
> +        items:
> +          enum:
> +            - ti,phy-usb3
> +            - ti,phy-pipe3-sata
> +            - ti,phy-pipe3-pcie
> +            - ti,omap-usb3

IMO, these 2 bindings are completely unrelated and should be split to 2 
schema files.

> +
> +  reg:
> +    minItems: 1
> +    maxItems: 4
> +
> +  reg-names:
> +    oneOf:
> +      - description: OMAP Control PHY
> +        items:
> +          enum: [otghs_control, power, pcie_pcs, control_sma]
> +      - description: PIPE3 high-speed PHY
> +        items:
> +          enum: [phy_rx, phy_tx, pll_ctrl]

Here's one example why.

> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 7
> +
> +  clock-names:
> +    minItems: 2
> +    maxItems: 7
> +    items:
> +      enum: [wkupclk, sysclk, refclk, dpll_ref,
> +             dpll_ref_m2, phy-div, div-clk]
> +
> +# Optional Properties
> +  id:
> +    description:
> +      Instance ID for multiple instances of same PHY type.
> +      Used for multi-lane PCIe PHYs.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 1

There aren't any users of this that I see. Drop it (and note that in the 
commit msg).

> +
> +  syscon-phy-power:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle/offset pair to system control module register for PHY
> +      power on/off.
> +
> +  syscon-pllreset:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
> +      SATA_PLL_SOFT_RESET bit (SATA PHY only).
> +
> +  syscon-pcs:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description:
> +      Phandle/offset pair to system control module for writing PCS delay value.
> +
> +  ctrl-module:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle of control module for PHY power on.
> +    deprecated: true

I believe all these phandle props only apply to the PIPE3 binding.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
