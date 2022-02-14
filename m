Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D289C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Feb 2022 17:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkuNHEGz8i8kh5cMsMLN8aH7iRYNYIfS1bB+gglzdi4=; b=jsMPvHDphK1Iqn
	8E83NsuiiCuOUVRT3Qv3nV6JEnBd4kceE7rEQZ2btwhhRlnQbMJ31smbn8KQCx30JVjgUnKSwhZeO
	3zky5WW3aiueVIY//eNYji2mNbPRJmsoYnnUb3G6BJ0vbngY80gP602YDQZDOmgA5yjyrpcgcGVR5
	PsGEHfJqvJzDEWryg8EX/uRvJOiNI6ILSpjug3ajX4Jso3BrvYtGzVC6rc/+Dga1iD+zPLbmB9f4s
	Z/PWWoIaoVvZE5Ntc/6slP059bhhI1ecxXlgxZBrMF5Rm8nbSlzwfhN/+p9ahWdVNW9CmpHZWqA2d
	kUX54T0kKfsSKhz5BCgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJesn-00GJX3-Ik; Mon, 14 Feb 2022 17:11:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJesV-00GJO4-Ac; Mon, 14 Feb 2022 17:11:09 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C260047F;
 Mon, 14 Feb 2022 18:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1644858665;
 bh=JqS9SbZmHIwxe2/FLymyDTJDOdNjYOqTts4RFlMiVPY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S4HmDLcjbKBUQUrw/PTFWsJNxR2MlAjuiuUBLVdLeHq0jhX4RXJ9eiT2MDARnTcb9
 4TFOp0VvAH2/vIJQO4AvoyIEb/TicIvf98p5GKBbe7qwgEYRCTW3Y3nU/+YiCZT4Gy
 VubXcY49PpCh4xIOtsYAJYXjxDM5PI2TyecX7SfE=
Date: Mon, 14 Feb 2022 19:10:58 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-staging@lists.linux.dev, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 61/66] dt-bindings: media: Add Allwinner A31 ISP
 bindings documentation
Message-ID: <YgqNIihM4OgdBUti@pendragon.ideasonboard.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-62-paul.kocialkowski@bootlin.com>
 <YgE/+UmP4nJVxtRT@pendragon.ideasonboard.com>
 <YgZ9GjgasiPljg9X@robh.at.kernel.org>
 <YgbMmLht/AXb5R1y@pendragon.ideasonboard.com>
 <YgqDQs/GJVxZMB+C@aptenodytes>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YgqDQs/GJVxZMB+C@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_091107_572132_FA6B9EBB 
X-CRM114-Status: GOOD (  36.92  )
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

On Mon, Feb 14, 2022 at 05:28:50PM +0100, Paul Kocialkowski wrote:
> Hi,
> 
> On Fri 11 Feb 22, 22:52, Laurent Pinchart wrote:
> > Hi Rob,
> > 
> > On Fri, Feb 11, 2022 at 09:13:30AM -0600, Rob Herring wrote:
> > > On Mon, Feb 07, 2022 at 05:51:21PM +0200, Laurent Pinchart wrote:
> > > > On Sat, Feb 05, 2022 at 07:54:24PM +0100, Paul Kocialkowski wrote:
> > > > > This introduces YAML bindings documentation for the Allwinner A31 Image
> > > > > Signal Processor (ISP).
> > > > > 
> > > > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > > ---
> > > > >  .../media/allwinner,sun6i-a31-isp.yaml        | 117 ++++++++++++++++++
> > > > >  1 file changed, 117 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
> > > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
> > > > > new file mode 100644
> > > > > index 000000000000..2d87022c43ce
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
> > > > > @@ -0,0 +1,117 @@
> > > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > > +%YAML 1.2
> > > > > +---
> > > > > +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-isp.yaml#
> > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > +
> > > > > +title: Allwinner A31 Image Signal Processor Driver (ISP) Device Tree Bindings
> > > > > +
> > > > > +maintainers:
> > > > > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > > +
> > > > > +properties:
> > > > > +  compatible:
> > > > > +    enum:
> > > > > +      - allwinner,sun6i-a31-isp
> > > > > +      - allwinner,sun8i-v3s-isp
> > > > > +
> > > > > +  reg:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  interrupts:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  clocks:
> > > > > +    items:
> > > > > +      - description: Bus Clock
> > > > > +      - description: Module Clock
> > > > > +      - description: DRAM Clock
> > > > 
> > > > That's interesting, does the ISP have a dedicated DRAM ?
> > > > 
> > > > > +
> > > > > +  clock-names:
> > > > > +    items:
> > > > > +      - const: bus
> > > > > +      - const: mod
> > > > > +      - const: ram
> > > > > +
> > > > > +  resets:
> > > > > +    maxItems: 1
> > > > > +
> > > > > +  ports:
> > > > > +    $ref: /schemas/graph.yaml#/properties/ports
> > > > > +
> > > > > +    properties:
> > > > > +      port@0:
> > > > > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > > > > +        description: CSI0 input port
> > > > > +
> > > > > +        properties:
> > > > > +          reg:
> > > > > +            const: 0
> > > > > +
> > > > > +          endpoint:
> > > > > +            $ref: video-interfaces.yaml#
> > > > > +            unevaluatedProperties: false
> > > > 
> > > > If no other property than remote-endpoint are allowed, I'd write
> > > > 
> > > >           endpoint:
> > > >             $ref: video-interfaces.yaml#
> > > > 	    remote-endpoint: true
> > > 
> > > You just mixed a node and a property...
> > 
> > Yes, I meant
> > 
> >            endpoint:
> >              $ref: video-interfaces.yaml#
> >              properties:
> >                remote-endpoint: true
> > 
> > and actually add
> > 
> >              additionalProperties: false
> > 
> > > 'remote-endpoint' is always allowed, so need to put it here and every 
> > > other user. So 'unevaluatedProperties' is correct. But it would be good 
> > > to define what properties from video-interfaces.yaml are used here.
> > 
> > I've been looking at this recently. The usual pattern is to write
> > 
> >     endpoint:
> >       $ref: video-interfaces.yaml#
> >       unevaluatedProperties: false
> >       properties:
> >         hsync-polarity: true
> >         vsync-polarity: true
> > 
> > to express that the hsync-polarity and vsync-polarity properties are
> > used. However, this will still validate fine if, for instance,
> > data-lanes was specified in the device tree. Shouldn't we use
> > additionalProperties instead of unevaluatedProperties here ? If so,
> > specifying remote-endpoint: true seems needed.
> 
> My understanding is that unevaluatedProperties well allow all properties
> defined in the included video-interfaces.yaml ref but reject others
> while additionalProperties will reject any unspecified local property,
> even if it is declared in the ref.
> 
> In any case with the ISP maybe we don't even want to take the ref from
> video-interfaces.yaml since we are dealing with an internal fifo between
> two devices. Maybe it would be more appropriate to ref
> /schemas/graph.yaml#/$defs/endpoint-base, which already defines
> remote-endpoint too.
> 
> What do you think?

Yes, if no additional property are needed, you can replace port-base
with port, it will simplify the bindings.

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
