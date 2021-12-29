Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F439C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 29 Dec 2021 23:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaT38YH/K2iihCAK0X0lMkyL2dA4/2R4FLnS10A2B8I=; b=ZTQyLedYJ1ifqY
	shBAcUy3sv0MXjQUI12QR/ip4smY1sITQMpAiXUYqzzCKbsKj8WCG2MoOy3ecDO0UHyR4xChGFvet
	7ory8YYQ82W8NNamrK1jNxxAZRlep5CeMrs8DLJkYWlCMAMhgFC7fJThqj0yHf+GMCOAg/LCZ1xPv
	T2+eqF+HlDdtDAw2CdJbwn9ekQVHTedJ7V3oORACRCzgu/QHpivCSRusxCIFcB9zZBbbNLAjODPxU
	0klMpnhZMuvGyMWPljEu2XRj3H0TfQSrVvKDGVjcgI5FTEv5Ak1CV0Sbk/gZjxCfQ/TjFhBZKPyzQ
	7JRSOVS3gz074k+QQc3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2i9j-003URr-E8; Wed, 29 Dec 2021 23:14:51 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2i9f-003UQw-VP
 for linux-phy@lists.infradead.org; Wed, 29 Dec 2021 23:14:49 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id B843B2A5;
 Thu, 30 Dec 2021 00:14:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1640819682;
 bh=4eq2xSPxJdkCgLTr3g1rhY4N6v+fUkMRBP9qpSr4SVg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q2wPoSyjkwGqoDZKEWW8/KDure2VxHruX7BKX1Gkk7wXXM5lkk5yPg1CiY/MzMrNz
 BWKSL96jkL7HoOWOCJnyBE69PKQ4EM4W4lMUSnXYsa6Ij0mDJ6o3umpN7jpC0EAqba
 uBn2iqerA94xp4l4gHeaWLF1UoEVepOeqQZhqbDY=
Date: Thu, 30 Dec 2021 01:14:39 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 4/4] phy: dt-bindings: Add Cadence D-PHY Rx bindings
Message-ID: <Yczr39LMvdYT4SNL@pendragon.ideasonboard.com>
References: <20211227105545.4852-1-p.yadav@ti.com>
 <20211227105545.4852-5-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211227105545.4852-5-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211229_151448_213718_2A5B9B12 
X-CRM114-Status: GOOD (  15.74  )
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

Hi Pratyush,

Thank you for the patch.

On Mon, Dec 27, 2021 at 04:25:45PM +0530, Pratyush Yadav wrote:
> The Rx mode DPHY is different from Tx mode DPHY. Add a separate binding
> for it.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
> 
> (no changes since v6)
> 
> Changes in v6:
> - Add a new binding for DPHY Rx.
> 
>  .../devicetree/bindings/phy/cdns,dphy-rx.yaml | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
> new file mode 100644
> index 000000000000..07be031d82e6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/cdns,dphy-rx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence DPHY Rx Device Tree Bindings
> +
> +maintainers:
> +  - Pratyush Yadav <p.yadav@ti.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: cdns,dphy-rx
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
> +
> +    dphy0: phy@4580000 {
> +        compatible = "cdns,dphy-rx";
> +        reg = <0x4580000 0x1100>;
> +        #phy-cells = <0>;
> +        power-domains = <&k3_pds 147 TI_SCI_PD_EXCLUSIVE>;
> +    };

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
