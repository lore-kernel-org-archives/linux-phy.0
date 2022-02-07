Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 485A4C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 16:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqmu9dhEoNSOteDq7edETh6OBF0Yy1mXn2lMo5yRs2w=; b=KGnADEP5cgA8x9
	TG2CNJdqkiuWAh0WHz5JvHIyfBdns8WjiSkR+BMC6NgBdyxcuinVzNy9gPi9loEMRPtBbogdqTPBi
	lP2c1kN848KbCjxvanuQmi5x23qwyEWkAVW6OG7DMkvzj4wMIu0e1nQDV4+yDm1VnsOctWj9ZGIpP
	Js2ok/qvm00wKHnZSnm/aArjiErA19uiX+9la8Y07qPqmORFGG3BWNLTlPlvQwvwQ9o2Dx4+IM46S
	XAnUs7ONvIiMEdjeiTCYkYrq0At/pdNOmv0lFP7uAO7qeWJOgwi306r8ST4ACMGsB2+oM0bF3IrNX
	oJJqRyYCY/lpGOZWX6Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH6lf-00B37Q-GE; Mon, 07 Feb 2022 16:21:31 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH6Va-00AxUl-Vm; Mon, 07 Feb 2022 16:04:58 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3E872340;
 Mon,  7 Feb 2022 17:04:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1644249893;
 bh=EBS3kkJ8BCBs5yuj170BnDdZuFVfeUksdyi/hOkIA0E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MvyY9OKI0dHBs/LuDngKy5LRwVmt4U8MI1JrSmzwEUbroZ1j66FdAKeufPHPc7msD
 NxjUI4SKDw4w34fThGl88PBkP2eV0Y/iGXexOPDFBST9fnesGw30bWNPIqTqgpShzO
 4YXjESc+sTvUEu1GGJ+aQxB0h7K4mhQSax2L7XJE=
Date: Mon, 7 Feb 2022 18:04:51 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 62/66] dt-bindings: media: sun6i-a31-csi: Add ISP
 output port
Message-ID: <YgFDI17Q3AlZxaOi@pendragon.ideasonboard.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-63-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205185429.2278860-63-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_080455_210477_D292526B 
X-CRM114-Status: GOOD (  17.29  )
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

On Sat, Feb 05, 2022 at 07:54:25PM +0100, Paul Kocialkowski wrote:
> Some Allwinner devices come with an Image Signal Processor (ISP) that
> allows processing camera data to produce good-looking images,
> especially from raw bayer representations.
> 
> The ISP does not have a dedicated capture path: it is fed directly by
> one of the CSI controllers, which can be selected at run-time.
> 
> Represent this possibility as a graph connection between the CSI
> controller and the ISP in the device-tree bindings.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../bindings/media/allwinner,sun6i-a31-csi.yaml    | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> index 3cc61866ea89..7952413f98d8 100644
> --- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> @@ -83,6 +83,20 @@ properties:
>  
>          additionalProperties: false
>  
> +      port@2:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: ISP output port
> +
> +        properties:
> +          reg:
> +            const: 2
> +
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false

This could be

            $ref: video-interfaces.yaml#
            remote-endpoint: true
            additionalProperties: false

to reject other properties.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +
> +        additionalProperties: false
> +
>      anyOf:
>        - required:
>          - port@0

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
