Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 699B0C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BnCGLXa56o/gbq+K94icqO0HZ7ecLm7rQBLxTZwVkY=; b=PRDsw+gVfT75lj
	iqwwHB+vS+ZL3Fko/DGv54hddSexSxAykzvlnPFf4yxR+OvDyCoeUxCc28UMeX/3SyWNV4NNU/g6P
	TIEmunI/2WM0SL4vALF71DvXUc+UdyXsapfxEtTKjNrysP4dp3x2kDtMe+yumGVqu3GpiTBeFgz8i
	ax8MV5E1Qe51f9N8YSF2ZGCUYFQHVt3R16MfHcwo1nH1zlZ0/a9Pm9qfq4mdDlFwjY3py9yoePyi4
	tRHPZ2ANNvQVUv4jmZPSrhD/jJXQUBer8exx92mapyFIC6B3hOuY8y/37h9JXjl0Q0OGgPp+0cRGS
	Zi7cvelv9539+DIeEVEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXcO-007je4-TN; Fri, 11 Feb 2022 15:13:52 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXc8-007jXc-2g; Fri, 11 Feb 2022 15:13:37 +0000
Received: by mail-oi1-f180.google.com with SMTP id s24so9873648oic.6;
 Fri, 11 Feb 2022 07:13:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nAFVbtRVtzhYKIqkkFFxa3DynoLvmGUt99SFwmIUitE=;
 b=UIr1GEXcZyrHUvpywkJs6CR2Ci5FQmF/58VhtiNX+v5UUvBP2sebYDMKATQuY4GOGp
 nRKH0jwjl0rMFM/rww0gbn2hOWJqpvZ7YyewWVhKSiHqhh54Nc4NnvX4ttHvXD8EKY8q
 oaKUX9ZlNM8IfMndmWGYTIH604Nuh5Ebx47+XH7JELdXA0mFDwK+gq2CQUIqrJdzp+CQ
 CjoR7gL3r0F5U+7b2ySYrnZt0hBckSPuvmOuZyxx0OvtX2tMeebGD/vtRkzP0WdyEsbX
 RYswAkQKkkHd5YdTWrUt/xL8DJfXDKqib3+P2mb+O5I21i/SuP7rp7gxI0DMNs+lhEux
 /Z8g==
X-Gm-Message-State: AOAM531JBkiGp8mznlxtnL4lHwguRaN2GH1jGUe8PRLKj3GthTKI7id2
 qDC4CL063evNpeSriDXYQQ==
X-Google-Smtp-Source: ABdhPJwaPHuiQHGSQ6kUYYw0O9nkOWW7a1boAaJFBE38Tc1cgFspZLWYz6Pn0l3DnSsVViQOAEGGUg==
X-Received: by 2002:aca:aa96:: with SMTP id t144mr415668oie.132.1644592415173; 
 Fri, 11 Feb 2022 07:13:35 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:20d7:a802:e6b0:6d9c:32f7:4bd9])
 by smtp.gmail.com with ESMTPSA id
 j3sm9649552oig.37.2022.02.11.07.13.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 07:13:34 -0800 (PST)
Received: (nullmailer pid 378308 invoked by uid 1000);
 Fri, 11 Feb 2022 15:13:31 -0000
Date: Fri, 11 Feb 2022 09:13:30 -0600
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 61/66] dt-bindings: media: Add Allwinner A31 ISP
 bindings documentation
Message-ID: <YgZ9GjgasiPljg9X@robh.at.kernel.org>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-62-paul.kocialkowski@bootlin.com>
 <YgE/+UmP4nJVxtRT@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YgE/+UmP4nJVxtRT@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_071336_153809_58A068FE 
X-CRM114-Status: GOOD (  21.75  )
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

On Mon, Feb 07, 2022 at 05:51:21PM +0200, Laurent Pinchart wrote:
> Hi Paul,
> 
> Thank you for the patch.
> 
> On Sat, Feb 05, 2022 at 07:54:24PM +0100, Paul Kocialkowski wrote:
> > This introduces YAML bindings documentation for the Allwinner A31 Image
> > Signal Processor (ISP).
> > 
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../media/allwinner,sun6i-a31-isp.yaml        | 117 ++++++++++++++++++
> >  1 file changed, 117 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
> > new file mode 100644
> > index 000000000000..2d87022c43ce
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
> > @@ -0,0 +1,117 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-isp.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A31 Image Signal Processor Driver (ISP) Device Tree Bindings
> > +
> > +maintainers:
> > +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - allwinner,sun6i-a31-isp
> > +      - allwinner,sun8i-v3s-isp
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: Bus Clock
> > +      - description: Module Clock
> > +      - description: DRAM Clock
> 
> That's interesting, does the ISP have a dedicated DRAM ?
> 
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
> > +      - const: ram
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        description: CSI0 input port
> > +
> > +        properties:
> > +          reg:
> > +            const: 0
> > +
> > +          endpoint:
> > +            $ref: video-interfaces.yaml#
> > +            unevaluatedProperties: false
> 
> If no other property than remote-endpoint are allowed, I'd write
> 
>           endpoint:
>             $ref: video-interfaces.yaml#
> 	    remote-endpoint: true

You just mixed a node and a property...

'remote-endpoint' is always allowed, so need to put it here and every 
other user. So 'unevaluatedProperties' is correct. But it would be good 
to define what properties from video-interfaces.yaml are used here.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
