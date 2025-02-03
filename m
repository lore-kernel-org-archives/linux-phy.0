Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80372C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXFCsl2tIZtk0FNz0OOsZJC7vj6sKCkWBwjcKMaich4=; b=DCDNSJiRDFZ8Tp
	CAPj6tiPgwLzOM/w9Xne8Fd9dmmyP+MJQ2no+gf1P0GXrBnY80SZz8UJaXDGTHvhrlLxAPBTYOehG
	rVofywTcFMI0jWdKcg6Aalc0rXqSc+RT8OUHZFcdRzOD5j5gp607bmpTFnJMugF6yoV63bXJKKQft
	S2Rh2VMnWGrKA7DNzNNEdSk6BjB4UCWMJjsUkc5Hl7uz8WRNtkNGuVc0uVcby4w4YHxlLkLBgKfb4
	RhuOfGvNX9bnhKNxZnILska+wSgBQMrQoDRumtF2yp/WzLKN0wnapP7/XDJvLOohrif6tT2+VpVhE
	1PPVTcLQDX+KVkFoik9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf5u1-0000000Gt5c-0Inn;
	Mon, 03 Feb 2025 23:30:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf4kX-0000000Gljl-2NXN;
	Mon, 03 Feb 2025 22:17:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DA52A5C68FC;
	Mon,  3 Feb 2025 22:16:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AE5EC4CED2;
	Mon,  3 Feb 2025 22:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738621020;
	bh=7svs+wKmG+cmpxhyFwkJOaZkFZ0sH/NMkYxSYvVASpA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O5SGTJYVHZPmJijhTIVkKFqBL/LQ+LXHOLoLZN6HyTVDQpvwslxaAt8rk/NQIKXRQ
	 rXzTeiz3f0E+oQJXbWPzUhUxigwKvrzwRbhwa5L4y2PqvHnN4SWwP4uS+KybParPIv
	 rAI2Olu+qiKqkx1t4yawMj7b1Yyg6P7MGel+divo5gTXDgUEtOMMFVuMs3pQ3e9UW0
	 br+V0YLQNoHYbM5YNVWH9g/i4lha4WmtmCmAkWsMqePah/WWMXriUEqxXBjZjzwvi4
	 b1SxTU9P/sm53pRcDsUEY0tycrSbHKil2dqhkeHUk8UkJAdN7tTlLB2CtO3azrAPPU
	 sJAMHHfY2MAZg==
Date: Mon, 3 Feb 2025 16:16:59 -0600
From: Rob Herring <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Martin Kepplinger <martink@posteo.de>,
	Purism Kernel Team <kernel@puri.sm>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, "Guoniu.zhou" <guoniu.zhou@nxp.com>,
	Robby Cai <robby.cai@nxp.com>,
	Robert Chiras <robert.chiras@nxp.com>,
	Mirela Rabulea <mirela.rabulea@nxp.com>,
	Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
Subject: Re: [PATCH 05/14] media: dt-bindings: nxp,imx8-isi: Add i.MX8Q ISI
 compatible strings
Message-ID: <20250203221659.GA130749-robh@kernel.org>
References: <20250131-8qxp_camera-v1-0-319402ab606a@nxp.com>
 <20250131-8qxp_camera-v1-5-319402ab606a@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250131-8qxp_camera-v1-5-319402ab606a@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_141701_695754_82D5BF6F 
X-CRM114-Status: GOOD (  21.90  )
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

On Fri, Jan 31, 2025 at 04:33:50PM -0500, Frank Li wrote:
> From: Robert Chiras <robert.chiras@nxp.com>
> 
> Add compatible strings for i.MX8QM and i.MX8QXP platforms.
> 
> Increase the number of max interrupts and clock to 8. i.MX8QM have 8
> channels and i.MX8QXP have 5 channels. Each channel requires one clock
> source and interrupt.
> 
> Remove fsl,blk-ctrl from required list because i.MX8Q needn't it.
> 
> i.MX8QM use port@2 and port@3. i.MX8QXP use port@2 and port@6.
> 
> Keep the same restriction for the other platform.
> 
> Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> Reviewed-by: Robby Cai <robby.cai@nxp.com>
> Reviewed-by: Mirela Rabulea <mirela.rabulea@nxp.com>
> Reviewed-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../devicetree/bindings/media/nxp,imx8-isi.yaml    | 87 +++++++++++++++++++---
>  1 file changed, 75 insertions(+), 12 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8-isi.yaml b/Documentation/devicetree/bindings/media/nxp,imx8-isi.yaml
> index f43b91984f015..b713c8ba79e39 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8-isi.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8-isi.yaml
> @@ -21,6 +21,8 @@ properties:
>      enum:
>        - fsl,imx8mn-isi
>        - fsl,imx8mp-isi
> +      - fsl,imx8qm-isi
> +      - fsl,imx8qxp-isi
>        - fsl,imx8ulp-isi
>        - fsl,imx93-isi
>  
> @@ -28,17 +30,12 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    items:
> -      - description: The AXI clock
> -      - description: The APB clock
> -      # TODO: Check if the per-channel ipg_proc_clk clocks need to be specified
> -      # as well, in case some SoCs have the ability to control them separately.
> -      # This may be the case of the i.MX8[DQ]X(P)
> +    minItems: 1
> +    maxItems: 8

Isn't the minimum still 2?

>  
>    clock-names:
> -    items:
> -      - const: axi
> -      - const: apb
> +    minItems: 1
> +    maxItems: 8
>  
>    fsl,blk-ctrl:
>      $ref: /schemas/types.yaml#/definitions/phandle
> @@ -49,10 +46,11 @@ properties:
>    interrupts:
>      description: Processing pipeline interrupts, one per pipeline
>      minItems: 1
> -    maxItems: 2
> +    maxItems: 8
>  
>    power-domains:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 8
>  
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> @@ -66,7 +64,6 @@ required:
>    - interrupts
>    - clocks
>    - clock-names
> -  - fsl,blk-ctrl
>    - ports
>  
>  allOf:
> @@ -79,9 +76,17 @@ allOf:
>                - fsl,imx8ulp-isi
>                - fsl,imx93-isi
>      then:
> +      required:
> +        - fsl,blk-ctrl
>        properties:
>          interrupts:
>            maxItems: 1
> +        clocks:
> +          maxItems: 2
> +        clock-names:
> +          items:
> +            - const: axi
> +            - const: apb
>          ports:
>            properties:
>              port@0:
> @@ -96,9 +101,17 @@ allOf:
>            contains:
>              const: fsl,imx8mp-isi
>      then:
> +      required:
> +        - fsl,blk-ctrl
>        properties:
>          interrupts:
>            maxItems: 2
> +        clocks:
> +          maxItems: 2
> +        clock-names:
> +          items:
> +            - const: axi
> +            - const: apb
>          ports:
>            properties:
>              port@0:
> @@ -109,6 +122,56 @@ allOf:
>              - port@0
>              - port@1
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: fsl,imx8qm-isi
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 8
> +        clock-names:
> +          items:
> +            pattern: "^per[0-7]"
> +        interrupts:
> +          minItems: 8
> +        ports:
> +          properties:
> +            port@2:
> +              description: MIPI CSI-2 RX 0
> +            port@3:
> +              description: MIPI CSI-2 RX 1
> +          required:
> +            - port@2
> +            - port@3

This schema is completely missing proper schemas for port nodes. It 
needs to reference the port schema for each port. That should be at the 
top-level.

I think this addition is borderline whether it should be its own schema 
doc. The if/then schemas are larger than the main part. The ports are 
not even the same.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
