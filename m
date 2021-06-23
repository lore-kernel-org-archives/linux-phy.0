Return-Path: <SRS0=CyPL=LR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7907BC4743C
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 14:29:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A7DC6115A
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jun 2021 14:29:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4A7DC6115A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kthmguq/t+fpnbk9oPeL1IFVHEjXPRiSoGo/HX00wlY=; b=MpJ82QeIEOZu2H
	xhgHE3Iko08ZhBt0UOuK+HAJg2Lds6v7/vLoW6KyHbrKzYy/sdV+zTWfS430ZnD3RiP1WOw1ZEuE8
	oVDXFEIT4/zyweIijybSdY0k12l12LBjNwE7MgXmNAcT1ihBiLwB23YROua/MWo+t/EXd/NKQD3Dn
	WvjNCVVfGnfAWXZxQEmhoFbBR8VbQaQWBrbibH0LdvTdRoqcR8xVGGHQRLMinOjf8eNsDc7pKH2VP
	QgCNguVGf+sxguGV7SWWPHRbBrKsUdBjDjxK3/R0FSKhNiLTXGIGYv1pWmfoMPzVOXL2/xO8rViFV
	XrUF9V3sYcuSJCWJ7SNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw3ss-00B01s-Rl; Wed, 23 Jun 2021 14:29:42 +0000
Received: from mail-vk1-f170.google.com ([209.85.221.170])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw3sg-00AzzY-C8
 for linux-phy@lists.infradead.org; Wed, 23 Jun 2021 14:29:32 +0000
Received: by mail-vk1-f170.google.com with SMTP id b64so328616vkh.12
 for <linux-phy@lists.infradead.org>; Wed, 23 Jun 2021 07:29:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4zLP8Lzz+0qOLc6xIklg3T8AfAgg7V88EpKSHAjjsNY=;
 b=MJH2zODLXQHcTMsxEyJSDM2ijs3H8OdJpqHQdW7MKS5SYaMpPkx3dOU2uSYhK2AdFK
 EsYrgTTkO8piJKEuqudcg4bfBLjhXsOmWdVjP2jFCvDlPhDC4NJilQO5BmZPVoHcaQxr
 cvONJ/2cNmbqWLkWgdbP+774j8hrr/iQo0EP5KD1+Rmhg0ggrOuN8yyJQRc8GFqe5yWl
 34qVDVGjpaENL8NeRb5G4NkL4fvKFXl+y235ct2KMXGleFaebY9/LH1Gm/WvNiBTnHJs
 yikrlK6J/+qoFwKutNlZBo/r2ERnROoTpfj3BcPmo5BP08U3vhi/qjnaA7RZP8Va6tiM
 eeiA==
X-Gm-Message-State: AOAM533ZZ3I0PeFebd+ptmGEvfCnhUsPVAk2LfwOMvYHbHgIKD5mWA9R
 8cZxkzkm6YO0KAyAjShOA4/Jzku9QkB+nL7/vXo=
X-Google-Smtp-Source: ABdhPJwKQtxd9FI1MugpOvBaepnBWwy2HkNEuTC9CSN+34BNYMxIsa2iKwG2XysCM5/jB0JFoMhjcf0gJS7M4lhpZXo=
X-Received: by 2002:a1f:1a41:: with SMTP id a62mr337115vka.5.1624458566857;
 Wed, 23 Jun 2021 07:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
 <20210621093943.12143-2-biju.das.jz@bp.renesas.com>
 <20210622165851.GA3840386@robh.at.kernel.org>
 <OS0PR01MB5922ECC2B573F1F8E170744F86089@OS0PR01MB5922.jpnprd01.prod.outlook.com>
 <CAL_JsqK_6_LUD-ffkDCuDEds2RiYftJfynZyPN4io3Lt3MnQ4g@mail.gmail.com>
In-Reply-To: <CAL_JsqK_6_LUD-ffkDCuDEds2RiYftJfynZyPN4io3Lt3MnQ4g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 23 Jun 2021 16:29:15 +0200
Message-ID: <CAMuHMdV0YrdUL6WGBTwxi1jQvakfmKNTB-8dv1LcAqMz-w356g@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] dt-bindings: phy: renesas: Document RZ/G2L USB
 PHY Control bindings
To: Rob Herring <robh@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>, 
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_072930_452113_60A26E4F 
X-CRM114-Status: GOOD (  21.25  )
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

Hi Rob,

On Wed, Jun 23, 2021 at 4:13 PM Rob Herring <robh@kernel.org> wrote:
> On Wed, Jun 23, 2021 at 7:38 AM Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > > Subject: Re: [PATCH v2 01/11] dt-bindings: phy: renesas: Document RZ/G2L
> > > USB PHY Control bindings
> > >
> > > On Mon, Jun 21, 2021 at 10:39:33AM +0100, Biju Das wrote:
> > > > Add device tree binding document for RZ/G2L USB PHY control driver.
> > > >
> > > > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> > > > Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

> > > > +        compatible = "renesas,r9a07g044-usbphyctrl",
> > > > +                     "renesas,rzg2l-usbphyctrl";
> > > > +        reg = <0x11c40000 0x10000>;
> > > > +        clocks = <&cpg CPG_MOD R9A07G044_USB_PCLK>;
> > > > +        resets = <&cpg R9A07G044_USB_PCLK>;
> > > > +        power-domains = <&cpg>;
>
> Also, are these all resources of the usbphyctrl block and not just
> resources you happen to want in the driver? For example, the
> power-domain should be the power island that this block resides in.

It's a clock domain, not a power area: the block goes into power-save
mode by stopping the module clock controlled by the CPG.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
