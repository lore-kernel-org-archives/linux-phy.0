Return-Path: <SRS0=LI2T=NO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 504E3C4338F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Aug 2021 22:43:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 19F3D6136F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Aug 2021 22:43:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 19F3D6136F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbDkwTbv4XyJv8H1T+SNdkU2sCIdblmn5MhwvY9Y3ZI=; b=ZwjA8hqOXHnYhG
	Ys4efsvc0XAD7JhH+Cn3DPgxN22uoI67PK+R3deoOaJyllQXr3JOzf8Wk9ubKIqlCkoMuY9cN4l1y
	u38jEthS0qtrau7JnFjLaOiWMupzwCZ7YoGM2Bp0xC2Dp7xbEkkgATNJRhVaGIYgMtQAsrS0xrT/P
	ZF9wwDUVuv2KitT6xPquXDKTIneS/2ckO5BTPuHtMtXAA7lpACZ3zegDGvdreOg5zpYy37owxwcxa
	baUn1mWl+iufNSwpXwKoQ8r0iiGK70ge15Lk49RRSCTiNjU9/rk+g7CObAhLbWOng7cMu+Ym2nRC5
	kug+WfStDTb2+3ZUDJ9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIIfY-000tQ0-J5; Mon, 23 Aug 2021 22:43:52 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIIfV-000tOW-6K
 for linux-phy@lists.infradead.org; Mon, 23 Aug 2021 22:43:51 +0000
Received: by mail-ot1-f51.google.com with SMTP id
 i8-20020a056830402800b0051afc3e373aso29462040ots.5
 for <linux-phy@lists.infradead.org>; Mon, 23 Aug 2021 15:43:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Gx5tRxni4JPjQJdOKA2ckEH891YFidYtWQTg4z4AvhU=;
 b=s1fDjJKTXYXU4GAY4z4IrChZJ1bZKvKfjp9FwnNQ4G/lbNjoxc9UkZoCr0B4RUT5fZ
 kS1Dy9zuCWUR7uclTnPUkmuWQ8O6VUCNd2rtbcw7KlVqbLBAHHOsI0mg7TbXnPBlq9nJ
 UFzaCsxU5S+Chua3uDqxXAk2AyPyufODhpFpW5LOqyzJlmvaDSSV1H/Llnf0fx0QT5I0
 zJJ+ETC+GCyJdYBf9NMVmdXx6e76s9HZlKw/Cmh6KIC2pw0rlHkftPXnyVE2jIYGL49X
 mJ2SXV5inUALTrNA8CCTuAIAyM6yvB242J2wF7SqowZIw9rfcV7EYMaA6qIKt+UDC9Im
 zmvQ==
X-Gm-Message-State: AOAM5336Z4UafihQZNHNMblWRDUbGFwBlL7eFshazS5EIhmwj8ZHkWJj
 1iVGbHJlV55+lMnQ9Qlq7w==
X-Google-Smtp-Source: ABdhPJx15/z0Ao9IpjV+6RPw4A0UFJc4gWmgZ9kjjdmXvWPq6T7IMhFJ8QZpn+vMmsNCFF5lL6pYIw==
X-Received: by 2002:a05:6808:56:: with SMTP id v22mr669163oic.49.1629758626884; 
 Mon, 23 Aug 2021 15:43:46 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id e7sm3182070oom.26.2021.08.23.15.43.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Aug 2021 15:43:46 -0700 (PDT)
Received: (nullmailer pid 2881591 invoked by uid 1000);
 Mon, 23 Aug 2021 22:43:45 -0000
Date: Mon, 23 Aug 2021 17:43:45 -0500
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Pratyush Yadav <p.yadav@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Nikhil Devshatwar <nikhil.nd@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 6/6] phy: dt-bindings: cdns,dphy: add Rx DPHY compatible
Message-ID: <YSQkoVTjemx+nFpS@robh.at.kernel.org>
References: <20210820190346.18550-1-p.yadav@ti.com>
 <20210820190346.18550-7-p.yadav@ti.com>
 <YSL9lkLB0wKk9sem@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YSL9lkLB0wKk9sem@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_154349_323627_5D599972 
X-CRM114-Status: GOOD (  20.48  )
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

On Mon, Aug 23, 2021 at 04:44:54AM +0300, Laurent Pinchart wrote:
> Hi Pratyush,
> 
> Thank you for the patch.
> 
> On Sat, Aug 21, 2021 at 12:33:46AM +0530, Pratyush Yadav wrote:
> > The DPHY is treated to be in Tx mode by default. Add a new compatible
> > for Rx mode DPHYs.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > 
> > ---
> > 
> > Changes in v4:
> > - New in v4.
> > 
> >  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > index d5a5e1f0b671..48b6a841152e 100644
> > --- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > @@ -11,8 +11,9 @@ maintainers:
> >  
> >  properties:
> >    compatible:
> > -    items:
> > +    oneOf:
> >        - const: cdns,dphy
> > +      - const: cdns,dphy-rx
> 
> It's customary to use an enum instead:
> 
>   compatibles:
>     enum:
>       - cdns,dphy
>       - cdns,dphy-tx
> 
> I don't know if Rob has a preference for consistency (or for any other
> reason). In either case,

Yes, use enum.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
