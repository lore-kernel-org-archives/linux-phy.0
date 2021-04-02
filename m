Return-Path: <SRS0=ixR+=I7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 196ACC433ED
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:25:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9FC06610E7
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:25:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9FC06610E7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M1jzW/idWvewenKimcG/79ImL5djudeA0Y6GIFdlt7s=; b=Hdc/fstId89+HqDxrYB7sYgJ7
	Orr0Nl4rW5BE1+UuGAr5i6/Np3EiWzp5m3cqeQPipPJd1fanlC2prlHWO97nqsPBqAXbs271sy4OV
	Y6xfVuuZ1bojygql4LiQhVl5rYv6hNVI5iKYt+8zAQcf8fZAXqxwitlSlH4eSXyB/acMKj5k975c/
	Ji5fN+CJWo4fGImUQHz3pCNfi9F/wYMJmsAgmXoMO7WsLCsMIWh+jEkC/6Ng00MubvbBqkZOd0W/n
	2WKrp5rJxlM/jis8zBf5ZBPQVuQ8J04GYLHA2ae43bUqoqr3ksjMZKLcLXt89mFM89dU86R8Sz0V7
	eqhrq5+fg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSGzU-00CjzX-Nq; Fri, 02 Apr 2021 10:25:24 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSGyI-00Cjhd-Pd
 for linux-phy@lists.infradead.org; Fri, 02 Apr 2021 10:24:24 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5FD252C1;
 Fri,  2 Apr 2021 12:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1617359049;
 bh=tkld6UVERd3oCk44uMV+QIoIlJrSO79ZF4RjmGPJcxw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iDm4EHpTx7uiNiABVNQbYuQZYE51oww2XBlvvVgvfvaZpgNm3HVdyjit3iSTvQVu7
 to/Cdzu8WZ4K1g4PbxinpFsto/U5AAWvYnkXOaQcSwOdJ3fklD7txo7uIUUs5UXaXH
 wdytP3eBHRN9xwptHjLnvmAmOaY0oixWKC4RGY5I=
Date: Fri, 2 Apr 2021 13:23:25 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 14/16] dt-bindings: phy: Convert Cadence DPHY binding to
 YAML
Message-ID: <YGbwnTNiL6WYoxPF@pendragon.ideasonboard.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-15-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330173348.30135-15-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_112412_642941_9FCB7A17 
X-CRM114-Status: GOOD (  18.02  )
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

On Tue, Mar 30, 2021 at 11:03:46PM +0530, Pratyush Yadav wrote:
> Convert Cadence DPHY binding to YAML.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  .../devicetree/bindings/phy/cdns,dphy.txt     | 20 --------
>  .../devicetree/bindings/phy/cdns,dphy.yaml    | 51 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.txt b/Documentation/devicetree/bindings/phy/cdns,dphy.txt
> deleted file mode 100644
> index 1095bc4e72d9..000000000000
> --- a/Documentation/devicetree/bindings/phy/cdns,dphy.txt
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -Cadence DPHY
> -============
> -
> -Cadence DPHY block.
> -
> -Required properties:
> -- compatible: should be set to "cdns,dphy".
> -- reg: physical base address and length of the DPHY registers.
> -- clocks: DPHY reference clocks.
> -- clock-names: must contain "psm" and "pll_ref".
> -- #phy-cells: must be set to 0.
> -
> -Example:
> -	dphy0: dphy@fd0e0000{
> -		compatible = "cdns,dphy";
> -		reg = <0x0 0xfd0e0000 0x0 0x1000>;
> -		clocks = <&psm_clk>, <&pll_ref_clk>;
> -		clock-names = "psm", "pll_ref";
> -		#phy-cells = <0>;
> -	};
> diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> new file mode 100644
> index 000000000000..d1bbf96a8250
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/cdns,dphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence DPHY Device Tree Bindings
> +
> +maintainers:
> +  - Pratyush Yadav <p.yadav@ti.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: cdns,dphy
> +
> +  reg:
> +    maxItems: 1
> +    description: Physical base address and length of the DPHY registers.

You can drop the description.

> +
> +  clocks:
> +    maxItems: 2
> +    description: DPHY reference clocks.

It's best to describe individual items, which will then allow dropping
the maxItems property:

  clocks:
    items:
      - description: Description of the psm clock
      - description: Description of the pll_ref clock

> +
> +  clock-names:
> +    items:
> +      - const: psm
> +      - const: pll_ref
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +
> +    dphy0: dphy@fd0e0000{

This is copied verbatim from the existing description, but while at it,
I'd rename the node from dphy@... to phy@..., as DT node are supposed to
be named according to the class of devices, not the specific device
type.

With these small issues addressed,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +        compatible = "cdns,dphy";
> +        reg = <0xfd0e0000 0x1000>;
> +        clocks = <&psm_clk>, <&pll_ref_clk>;
> +        clock-names = "psm", "pll_ref";
> +        #phy-cells = <0>;
> +    };

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
