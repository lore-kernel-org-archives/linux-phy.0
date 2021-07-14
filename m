Return-Path: <SRS0=Fvr8=MG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD0AC12002
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 23:52:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D13661377
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jul 2021 23:52:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2D13661377
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGH5iQdg9xnU10qmsHsFqp+58LJlL+2R40snIlzWZLE=; b=ppa57wYT1jYuUD
	z172xDpCWXxgLL/RJvycvN7ww0SrR/git2A/XSXCLdy6i9mKv7+hDA5hpbqOaFcNzZnvtXnDNGvcg
	S8VyIGdpK1Ll1EKR775Bvy8tEKhtj25woxQp+Ks+PUTIyqdGUChwHJ7Hg6IrhUGWRSCfB7YLFf5Cx
	D9BDves/IG7SvVNcJCcOyweHDL4A5Kd4kIaXl/Eqaf6jFSSKFEfrpmqBIYdHKi5wo5B20+NgGYSQB
	5Ai5V48igtzgDdLLA7hT8rAGGMom0b/V3IA1D7/l5Wl8Ua6WXA0wgsP69UNLuaFsWwWzYBMVnO6i8
	78icC1wlqifv7isQlcgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3og7-00GRsi-1m; Wed, 14 Jul 2021 23:52:35 +0000
Received: from mail-io1-f46.google.com ([209.85.166.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3mK3-00FMz6-7e
 for linux-phy@lists.infradead.org; Wed, 14 Jul 2021 21:21:40 +0000
Received: by mail-io1-f46.google.com with SMTP id k11so3903448ioa.5
 for <linux-phy@lists.infradead.org>; Wed, 14 Jul 2021 14:21:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IYBoANMWpQAMr1SyRjISViwatcbgyIVGjbgA84mOGkw=;
 b=SbVrNqFhD5+t/32qUOMrEn48Ztah2o/wwEbT9zLyWD48P4FIPh6EfSrHobkAoR5X+p
 EOg442DZYCulGToxgKIPMTwhNrRKp0HeqI8u2qPJDLAPgjUOQbecOulnKWvoihQLyGxr
 XTukTvEmeCFFb5u3Au8tW73GRauAvhcp2g277aE17La38EeeZ4+ywBL2ig4PF0pbcrMx
 7CeenwYGuGi3qaFBTpNFmU3xmyu3bkMM524358m0A05o965KgyoPR3KwNApKWHbfpQ9m
 MfO2tvgsKIXeq7Mq2X3/wIawGPTZmrFNicyeuOUg5Sr5uHjd3yX+5xCxHI+rEU5lJeM8
 HtNA==
X-Gm-Message-State: AOAM531oJI4kpQEtLnQxDzPd1RYaoTrQcrHxYJWagCbLGf3Y4I+kQ6pf
 saqeLGN5bY+coByncrMV1g==
X-Google-Smtp-Source: ABdhPJy7ujoAq+G//A7FprDLMJV/JzSGMndI9PwcKrHJE3kWbm3hBzZO4JBbPZiNosPBt8ld0TVJew==
X-Received: by 2002:a05:6638:270c:: with SMTP id
 m12mr235585jav.5.1626297698605; 
 Wed, 14 Jul 2021 14:21:38 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id y2sm1748395ilh.82.2021.07.14.14.21.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 14:21:37 -0700 (PDT)
Received: (nullmailer pid 3547394 invoked by uid 1000);
 Wed, 14 Jul 2021 21:21:35 -0000
Date: Wed, 14 Jul 2021 15:21:35 -0600
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v3 07/11] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G2L phy bindings
Message-ID: <20210714212135.GA3539572@robh.at.kernel.org>
References: <20210630073013.22415-1-biju.das.jz@bp.renesas.com>
 <20210630073013.22415-8-biju.das.jz@bp.renesas.com>
 <CAMuHMdWbhY9i+WvV77LVNYhLBLQBVCojgEwM93A-pvFf9Eab1g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdWbhY9i+WvV77LVNYhLBLQBVCojgEwM93A-pvFf9Eab1g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_142139_346987_B80C1E32 
X-CRM114-Status: GOOD (  19.85  )
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

On Wed, Jun 30, 2021 at 11:29:36AM +0200, Geert Uytterhoeven wrote:
> Hi Biju,
> 
> Thanks for your patch!
> 
> On Wed, Jun 30, 2021 at 9:31 AM Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > Document USB phy bindings for RZ/G2L SoC.
> >
> > RZ/G2L USB2.0 phy uses line ctrl register for OTG_ID pin changes. Apart
> > from this it uses a different OTG-BC interrupt bit for device recognition.
> 
> Nothing about resets? But see below...
> 
> >
> > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> > Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> > v2->v3
> >  * Created a new compatible for RZ/G2L as per Geert's suggestion.
> >  * Added resets required properties for RZ/G2L SoC.
> > ---
> >  .../bindings/phy/renesas,usb2-phy.yaml         | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > index d5dc5a3cdceb..a7e585ff28dc 100644
> > --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
> > @@ -30,6 +30,9 @@ properties:
> >                - renesas,usb2-phy-r8a77995 # R-Car D3
> >            - const: renesas,rcar-gen3-usb2-phy
> >
> > +      - items:
> > +          - const: renesas,usb2-phy-r9a07g044 # RZ/G2{L,LC}
> > +
> >    reg:
> >      maxItems: 1
> >
> > @@ -91,6 +94,21 @@ required:
> >    - clocks
> >    - '#phy-cells'
> >
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: renesas,usb2-phy-r9a07g044
> > +    then:
> > +      properties:
> > +        resets:
> > +          items:
> > +            - description: USB phy reset
> > +            - description: reset of USB 2.0 host side
> 
> Do you need the second reset?
> Looking at your .dtsi patch, the second reset is shared with ehci/ohci,
> so perhaps it makes sense to drop it from the phy node?

The existing binding has the host reset (and peripheral, but no phy 
reset). Was that a mistake too? Smells like collecting resources the 
driver happens to want, not what the h/w connections are.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
