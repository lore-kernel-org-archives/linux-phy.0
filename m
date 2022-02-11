Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2E8CC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Feb 2022 15:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwqP+zSHojPsz4cx29rTXZXnLKX42xZNIvjP7VYs2i4=; b=YnzgnxQ91Kd6CM
	9kntVfrYZ43ENUIdnDC3c+Y1IFqbsGZnqG75D7VsSr4gosam0P9Ypy+ecd8rXMtnB2uPk6q571yu9
	aD+840qexIn+78NJ2KRFost1enGc8iIEhPJ9pm6eHXFFxrZLuU8ygVKxaqyPcERLiXLCN7wXmmsUa
	1We2n37X1jk1TMmC1Gu8ptf1xGQlDZIufRuUysF3yBnRWMCey/cJAG69FQMt3wriJCPYbXmej4oc9
	V8nU2awvt11FbkfcWPm4mvIuGCxWPpxEuRlHHcjbiOOcmMW+Y2dyAimnpL85K2/9UM4SLKPcpLaFt
	E7Ug2DartYKOyjjalpRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIXgO-007lWc-Vp; Fri, 11 Feb 2022 15:18:00 +0000
Received: from mail-oo1-f47.google.com ([209.85.161.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIXfF-007koh-Hf; Fri, 11 Feb 2022 15:16:51 +0000
Received: by mail-oo1-f47.google.com with SMTP id
 u25-20020a4ad0d9000000b002e8d4370689so10643336oor.12; 
 Fri, 11 Feb 2022 07:16:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1P3H5utZhmDvFsnAtwZyeK8JRztag6WByXWcE5q2Zyc=;
 b=i9B9+Oiaj+OKPMlx7Dh8PRSwlg+0O3uGvMfX6pHPyNPvJDdPT1t7rGU7rXM3Bij8Nn
 1sCil9DkNEBVwkAr8gnpNoqfMEZ/UxHveqja+FT4xQn/M+7caKllvenJzWIqxsSZywCJ
 YkNUvszKwuUGlIVlJx8zxWFxZEb0t/NuHE2Tvzc235Y8etrWm1Lun8C0Q/ihoV9L82MN
 9RzKj3wiJaryme6jvC1sPqilObYWLhG4Uhyti4sNLwKWVcm9B63aWphHURQayuUDGRuF
 YIzOTGAklrv9BnQyyFCtoYH3lXlORjOqczFjnjesWsoGKnOWJPvvBwQI5iBKMtMk0bZg
 z46w==
X-Gm-Message-State: AOAM532KDq4icR4E4de0hNP+9/RwmV+WM8S3JfAaMV7zd0qhmQ6j2TKr
 oBDrffk7vFUwNH29fGMh3w==
X-Google-Smtp-Source: ABdhPJyjj0qRfHV+X2Or/x7i2b6yIL+QqHCBBRDSOpVutl1Fb19j9aZR3y+aSd0eIuMcJSEYP3cxig==
X-Received: by 2002:a05:6870:87c2:: with SMTP id
 s2mr283788oam.123.1644592608577; 
 Fri, 11 Feb 2022 07:16:48 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:20db:bd0f:3516:878e:18c1:cd1e])
 by smtp.gmail.com with ESMTPSA id
 eh38sm5186127oab.36.2022.02.11.07.16.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 07:16:47 -0800 (PST)
Received: (nullmailer pid 382654 invoked by uid 1000);
 Fri, 11 Feb 2022 15:16:44 -0000
Date: Fri, 11 Feb 2022 09:16:44 -0600
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
Subject: Re: [PATCH v2 62/66] dt-bindings: media: sun6i-a31-csi: Add ISP
 output port
Message-ID: <YgZ93JcVaeU6VUBq@robh.at.kernel.org>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-63-paul.kocialkowski@bootlin.com>
 <YgFDI17Q3AlZxaOi@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YgFDI17Q3AlZxaOi@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_071649_625559_5FDECA0A 
X-CRM114-Status: GOOD (  22.85  )
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

On Mon, Feb 07, 2022 at 06:04:51PM +0200, Laurent Pinchart wrote:
> On Sat, Feb 05, 2022 at 07:54:25PM +0100, Paul Kocialkowski wrote:
> > Some Allwinner devices come with an Image Signal Processor (ISP) that
> > allows processing camera data to produce good-looking images,
> > especially from raw bayer representations.
> > 
> > The ISP does not have a dedicated capture path: it is fed directly by
> > one of the CSI controllers, which can be selected at run-time.
> > 
> > Represent this possibility as a graph connection between the CSI
> > controller and the ISP in the device-tree bindings.
> > 
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../bindings/media/allwinner,sun6i-a31-csi.yaml    | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> > index 3cc61866ea89..7952413f98d8 100644
> > --- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
> > @@ -83,6 +83,20 @@ properties:
> >  
> >          additionalProperties: false
> >  
> > +      port@2:
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> > +        description: ISP output port
> > +
> > +        properties:
> > +          reg:
> > +            const: 2
> > +
> > +          endpoint:
> > +            $ref: video-interfaces.yaml#
> > +            unevaluatedProperties: false
> 
> This could be
> 
>             $ref: video-interfaces.yaml#
>             remote-endpoint: true
>             additionalProperties: false
> 
> to reject other properties.

If that's what is desired, then video-interfaces.yaml shouldn't be 
referenced and up above should be /properties/port.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
