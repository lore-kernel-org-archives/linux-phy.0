Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FC78C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 16:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lp0d9z3VH2KT6Q8qu6Ltp4r6UYCtpbOs4RUetVmBLAs=; b=FFcajNEw7/Nz6K
	tzUZczXUI1vl2hLmTvFIEIS5x6yL8f3xYihCeHRJi9TE9Zml4dcLgpU6wMtLSIxC/52NUHIUFffYy
	dRkgEHIFepWCcTddwXDpsAkrq9VAbGLS6sVwTpAiZucN4dGd9B3wfGjWHvAE/+SEHLNABAE59qxBq
	w8nexs72ukcC1naPjr8JitdnCLL7oR2g4jiehaFGAoQ40rBlWg1AappkA5eTAwO+t05zRaABgE5Kc
	qz5JFP+FKwKhGyI+GRo+83Wuz5g1w3NpRl/ttpI+RlWZTqQ7CIXp5vkZ3od5dklY+4aquPhkZh2RM
	k5mp+PhuHVYQv7kmaDyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH6jP-00B2Q0-Mq; Mon, 07 Feb 2022 16:19:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH6Tt-00AweW-46; Mon, 07 Feb 2022 16:03:10 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id DC3CF340;
 Mon,  7 Feb 2022 17:03:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1644249787;
 bh=nfHhY7SAAx/jSa8dp1hMDTzjQj/OuY2kGz3jjvPk5xk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S+CZh0fGXgBerQVwuj4ZfLJQ6bwJ9df1Vzllh4VKcSm+MtCyn0LFsexbZWLsxjcsb
 2skIMGdk4g0rNN5bgOMEeHnJUPIe4cLJ3I4iUbUt3S9fuywk0x7fmElGrEqbiPZV8J
 3HmpuM9QGZsrLtswnZ8AtdRp5YENQqjto4nHkQHs=
Date: Mon, 7 Feb 2022 18:03:05 +0200
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 07/66] dt-bindings: media: sun6i-a31-csi: Add MIPI
 CSI-2 input port
Message-ID: <YgFCuaf007wd8sJy@pendragon.ideasonboard.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-8-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205185429.2278860-8-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_080309_355605_659EE90A 
X-CRM114-Status: GOOD (  29.86  )
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

Hi Paul,

Thank you for the patch.

On Sat, Feb 05, 2022 at 07:53:30PM +0100, Paul Kocialkowski wrote:
> The A31 CSI controller supports two distinct input interfaces:
> parallel and an external MIPI CSI-2 bridge. The parallel interface
> is often connected to a set of hardware pins while the MIPI CSI-2
> bridge is an internal FIFO-ish link. As a result, these two inputs
> are distinguished as two different ports.
> 
> Note that only one of the two may be present on a controller instance.
> For example, the V3s has one controller dedicated to MIPI-CSI2 and one
> dedicated to parallel.

Is it that only one of the two is present, or only one of the two is
connected ? In the latter case I'd make both ports required, but with
only one of them connected.

> Update the binding with an explicit ports node that holds two distinct
> port nodes: one for parallel input and one for MIPI CSI-2.
> 
> This is backward-compatible with the single-port approach that was
> previously taken for representing the parallel interface port, which
> stays enumerated as fwnode port 0.
> 
> Note that additional ports may be added in the future, especially to
> support feeding the CSI controller's output to the ISP.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Acked-by: Maxime Ripard <mripard@kernel.org>
> ---
>  .../media/allwinner,sun6i-a31-csi.yaml        | 60 +++++++++++++++----
>  1 file changed, 47 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> index 8b568072a069..3cc61866ea89 100644
> --- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> @@ -61,6 +61,34 @@ properties:
>  
>      additionalProperties: false
>  
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: "#/properties/port"
> +        unevaluatedProperties: false
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: MIPI CSI-2 bridge input port
> +
> +        properties:
> +          reg:
> +            const: 1
> +
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +        additionalProperties: false
> +
> +    anyOf:
> +      - required:
> +        - port@0
> +      - required:
> +        - port@1
> +
>  required:
>    - compatible
>    - reg

Shouldn't you specify that either port or ports is required, but not
both ? I'd also add a comment in the port node to tell it's deprecated,
and that ports should be used instead.

> @@ -89,19 +117,25 @@ examples:
>                        "ram";
>          resets = <&ccu RST_BUS_CSI>;
>  
> -        port {
> -            /* Parallel bus endpoint */
> -            csi1_ep: endpoint {
> -                remote-endpoint = <&adv7611_ep>;
> -                bus-width = <16>;
> -
> -                /*
> -                 * If hsync-active/vsync-active are missing,
> -                 * embedded BT.656 sync is used.
> -                 */
> -                 hsync-active = <0>; /* Active low */
> -                 vsync-active = <0>; /* Active low */
> -                 pclk-sample = <1>;  /* Rising */
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +                /* Parallel bus endpoint */
> +                csi1_ep: endpoint {
> +                    remote-endpoint = <&adv7611_ep>;
> +                    bus-width = <16>;
> +
> +                    /*
> +                     * If hsync-active/vsync-active are missing,
> +                     * embedded BT.656 sync is used.
> +                     */
> +                     hsync-active = <0>; /* Active low */
> +                     vsync-active = <0>; /* Active low */
> +                     pclk-sample = <1>;  /* Rising */

Wrong indentation.

> +                };
>              };
>          };
>      };

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
