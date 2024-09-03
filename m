Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CF03CD3420
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 10:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGY5c6tJCZOe3vFpc9japo+ehpwuOg9p2h5zyDxgkDA=; b=tAszpAszI9JNP6
	EuRg8iExEQoQ3ou9EPSwyizeUa+MD6R/antKlfQXcBkSaoJ6qYXaM+CsWqxcITCj767UhazhrhqAS
	q0UBguDtOhxLcEPEoHMbtIyCNJyOHNgOkUJdcHrG4oSdg59JzQ62t78mvqb/u0y857EWTJzmwzmdS
	GuHsQQ1Z80GlmH0bV3TzxQ60SqYuYUyHIpUCLjOCJuqewL0GAK0Mh9fM/5PThY/2WybIMEjUF/Iwi
	5QnbtSL4g71+qdCGz2AT1ztTd2/loYnJdXrmFenXxB12jR5iZ1zR3jNLQc/g+K60DxKQZyvBvVo4q
	YAQyEm2QJVtJE2ReS23Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQtG-0000000HMfm-3kcg;
	Tue, 03 Sep 2024 10:36:02 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQt4-0000000HMe5-1YbN
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 10:36:01 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-e04196b7603so5534426276.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 03:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725359749; x=1725964549; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wk8IQrj3Ag1NuoIr8ToTqjuTDbNQapkqLJ16Fkg4zcI=;
        b=ziPcvEGnGx4mh6qyotKYIZY++6WazEPnTjOHtx88GlY9OjnTUWbTaDJ3VVwgzn7clw
         euJIOzAH9uDyDomKX/ofIQOgSs3yorFkjmvJyw8PMbGFpoSBWl5pEW4IMZSvEtb+Uw/7
         KSqXuV6+Js92dpURGVLDCYuW45BTGGfqgMo/S32PnYrx4sQ4Lz93FoIP3xTBKs1UL+6U
         W1ZJGhqaGxYLocQiUs5l/QmCralHWQRQGZ3t8wc8DN+o6F/Y4VZ4WnorBOC2QA6MDc/V
         dQoFaItT/Aq9qUqDlDMwj+bormerKCNdzhDKLuc2ozrun9vYZRjYvvKdSxaj3CFJsRMb
         cFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725359749; x=1725964549;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wk8IQrj3Ag1NuoIr8ToTqjuTDbNQapkqLJ16Fkg4zcI=;
        b=pM4begYQp2GLiu5BVCb/mYn3y6Brx9cIXEM1kTSH4JSGGTl6P0eaO3mdBO/l1rTw+K
         CYCGx5zzeo0fY7DYPlLTWS0hnX9OdN70OoVy0sAQnmQ0f2Nq3YGlrXPbXY8YGJLvIe1g
         B5nVJU7b9ecZKiP9+J1xNTbhT9eUSvaCTeASIdqlhwyF6EAN0lpf/Fl/BdPzZszDyfCX
         x8Q2L+jJ1UsKS95PcPE6VR4cT70DXG6FHdMlbgk6CQ7e1rPsg3b+GLJWbIjx2GzofrwQ
         EWcXorBrrgLTlmW2x9D1b4wU4nsQZlbrt3Yx+xa/V27qEU9Hbre4g0SHJxFOQJ6sQ7JH
         tkpA==
X-Forwarded-Encrypted: i=1; AJvYcCVbk3Vc/kl5dTdLlZOCAWYgXtxiIVONMev0ucT3gWHiR4MxNZK2JXKNCFFKz4AyEx+g5OJ1qbbUbyw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVBww9vQQE3AfSvygeDEaLfduJbQYqBuaF+ofKrybZo7uFrTwA
	TwmtDUVHUtreIJfFnxHmO6pwcnQI9eZvStqKOnq2P5D6vzT5HIcijdU/FSp0jU+WG5mzHekhRB2
	8D5q5R1oyOMdFtjo62YQHs3zfUfdp7oL3BscmWw==
X-Google-Smtp-Source: AGHT+IEptjQ9HnzO7IsNO1D9S4qr5WM4xYdZM3VIT60UnRxgn+glo0EzcUHzkrVnacRkJvKM+kyKu9xW5IsYaduxCjQ=
X-Received: by 2002:a05:6902:120d:b0:e16:55cc:215c with SMTP id
 3f1490d57ef6-e1a79fe3948mr17521678276.6.1725359748806; Tue, 03 Sep 2024
 03:35:48 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev> <CAPDyKFrVS2vpsJqTvjKCJ7ADqXc4D4k2eeCBsaK4T+=pXDnKUA@mail.gmail.com>
 <fa9b3449-ea3e-4482-b7eb-96999445cea5@tuxon.dev> <CAPDyKFrkkASq7rfRN=9sEet-p8T8t+f__PdnSNRN3bMNipnNNw@mail.gmail.com>
In-Reply-To: <CAPDyKFrkkASq7rfRN=9sEet-p8T8t+f__PdnSNRN3bMNipnNNw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Sep 2024 12:35:12 +0200
Message-ID: <CAPDyKFpLnREr4C=wZ7o8Lb-CZbQa4Nr2VTuYdZHZ26Rcb1Masg@mail.gmail.com>
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com, 
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com, 
	biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_033550_588661_DCC84ACC 
X-CRM114-Status: GOOD (  21.46  )
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

On Sat, 31 Aug 2024 at 12:32, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> [...]
>
> > >
> > > If not, there are two other options that can be considered I think.
> > > *) Using the genpd on/off notifiers, to really allow the consumer
> > > driver of the reset-control to know when the PM domain gets turned
> > > on/off.
> > > **) Move the entire reset handling into the PM domain provider, as it
> > > obviously knows when the domain is getting turned on/off.
> >
> > This option is what I've explored, tested on my side.
> >
> > I explored it in 2 ways:
> >
> > 1/ SYSC modeled as an individual PM domain provider (this is more
> >    appropriate to how HW manual described the hardware) with this the PHY
> >    reset DT node would have to get 2 PM domains handlers (one for the
> >    current PM domain provider and the other one for SYSC):
> >
> > +               phyrst: usbphy-ctrl@11e00000 {
> > +                       compatible = "renesas,r9a08g045-usbphy-ctrl";
> > +                       reg = <0 0x11e00000 0 0x10000>;
> > +                       clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>;
> > +                       resets = <&cpg R9A08G045_USB_PRESETN>;
> > +                       power-domain-names = "cpg", "sysc";
> > +                       power-domains = <&cpg R9A08G045_PD_USB_PHY>, <&sysc
> > R9A08G045_SYSC_PD_USB>;
> > +                       #reset-cells = <1>;
> > +                       status = "disabled";
> > +
> > +                       usb0_vbus_otg: regulator-vbus {
> > +                               regulator-name = "vbus";
> > +                       };
> > +               };
> > +
>
> According to what you have described earlier/above, modelling the SYSC
> as a PM domain provider seems like a better description of the HW to
> me. Although, as I said earlier, if you prefer the reset approach, I
> would not object to that.

Following the discussion I believe I should take this back. If I
understand correctly, SYSC signal seems best to be modelled as a
reset.

 Although, it looks like the USB PM domain provider should rather be
the consumer of that reset, instead of having the reset being consumed
by the consumers of the USB PM domain.

Did that make sense?

[...]

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
