Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 727D8D10384
	for <linux-phy@archiver.kernel.org>; Wed, 26 Nov 2025 07:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pczgG6RCdHHdbPJyZD3sj6tE+2duH18QhgatT+E4eBI=; b=1fbqVl+UZf/vi+
	ADujd8w38evMnxBzWnpc8VytGGO4vmgnnOaIasBg6XgNgZLzWeCgBYgwCqrFpLbePsM0vdmieD2bv
	FkLeGemR/P+swAHBaIDyhbOyZuGmlgQAFsN0iA4UaUqJInNNmRGdlfTwxocMIi08N+ZDIQNMN235l
	CYyHYBygASUeWmdznGQgYoGLhe7TNoZfDGH4wHlzFgbH9ufqDN6K0bDNcawyvyuwkNnMnWbUCyamU
	v8X3M40KAYTz8A/urWF3bNq+CdwmjfD6vvw5nqUb8wHneuLv5ezOwr9h4nMLbElskEDVSAICMK8y1
	W6SbmTxf+q4YZTHBnQXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOAIP-0000000EYc5-09cE;
	Wed, 26 Nov 2025 07:50:37 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOAIM-0000000EYbg-2jjX
	for linux-phy@lists.infradead.org;
	Wed, 26 Nov 2025 07:50:36 +0000
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4edaf8773c4so74357591cf.1
        for <linux-phy@lists.infradead.org>; Tue, 25 Nov 2025 23:50:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764143433; x=1764748233;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yTYhQ3G63lU/atNAXCnWcO1/Wz+JDqjFVpYbXLbGHEE=;
        b=tuVcDRP45GpUBrkzztIKfXvSu+FTwKHSsvKKaBxvWKu/ajTQOH01cW5VrWzVcGOsDE
         sMxYGRdGJ/O8CEquOYKjpGbqEOp57hvJaF5yWIexBRqaijOTwjqvCaZLBBDXRYK6XLuS
         Ow2TF+/35ndNVjyWJS/idICvPAD6pD5jMeco+asWLVuPO/NQn95EgpXW3FT6rTxbJ/0W
         W5NRtCT+OIylD/E+QB5OQoIvhZuNUtNvdzCCD1EkCAkotQE38HqyYpbiJEhCDbtqVHzf
         RV7KUkmf9fbdhABw7XRbbSQ1mp7uywbcwvOkS8J9E6WcRC0nyWvT8U4r+49mieKFk4P5
         zh4g==
X-Forwarded-Encrypted: i=1; AJvYcCUNP40sck5uJnJMVxEfmKzEzPo/rReklIUAp5h8/IoMk7YTOrYTQK0qgjx4h8wgVVFcV8vt3TMeB7U=@lists.infradead.org
X-Gm-Message-State: AOJu0YyfUqjxLRkElr8CPDHYaH+B5STJwMIE3F0tb8rzzFd7Uzv1HiMr
	rx2biO9pbqtrcqUi11R3Hlg8rt8h/oMtFHIHgvxCyAZi7/xm5/besItUzXTJ0zzb
X-Gm-Gg: ASbGncs476XujiKsqPQeNCq2Bteipbdujo+U+tzgf4C1EpqbOdpYVQFRCwRWAc+8IDC
	/Qfml4ofnS7rjPuE3oJC9YQrnMDVozPwnwXtGoX6ZrDZLpK93Y2ddD8tprgSdGZrFAppuYZsfKT
	QI0SkTgpV6mt+OYH1qo9f9LdoyD0WQwVJ2UdJHqQTYBW/PrFkEAmuCgk7xlfcazsEr65xTv0sNy
	aQsAbrUm8iwf6eeXrym47Ng4x52anbMkXOpTB59QEBk4KHEvxGObEFCIrzgO2dv5tC715AmQQvF
	0leppmNMrVEWOh9cXSyPDl+KmgXHcgQyYFiOFMPDD+x6IvRATXEjZ/IZ4H3/pTb2DflMna7n5Xd
	y//UtmF8pXapZu4RuEV0qtzI9vAOOFVGgAyZ4LVaAsfNkVzZyudwsgF53biGLLgpMhLKS1BQDr8
	QzuH6/OTSUv7okNPllE3DII9x2TNoPLCpnD40/Opuz8856RTUo+TfjO7fN
X-Google-Smtp-Source: AGHT+IHRS4u8NmbV0RNR9N55ju984u5TWRV0UdiQfh24u7xDgBdqE73rT5ZIWao9sWJu1UVJ1HNlMw==
X-Received: by 2002:ac8:58c4:0:b0:4e8:93a1:7464 with SMTP id d75a77b69052e-4ee58a44081mr228869051cf.15.1764143433035;
        Tue, 25 Nov 2025 23:50:33 -0800 (PST)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com. [209.85.222.170])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ee48e69f3dsm121161881cf.25.2025.11.25.23.50.32
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 23:50:32 -0800 (PST)
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8b22624bcdaso779806885a.3
        for <linux-phy@lists.infradead.org>; Tue, 25 Nov 2025 23:50:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVbT1yWXNsjCZeWCNpQ8N6dcGlRXnuE2nLyV1VJR51nacK0AaBGV+xNVwnpwKdmn6L5VM4UJuIiUfI=@lists.infradead.org
X-Received: by 2002:a05:6102:1484:b0:5db:d07c:218e with SMTP id
 ada2fe7eead31-5e1de4a7207mr6895254137.41.1764142991927; Tue, 25 Nov 2025
 23:43:11 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
 <89b6d61854e94966fc9781d5832b6c187c35b4de.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
 <CAMuHMdXBbzTeiQJQWuUnJ_rRD1Zo=1TBOzrv4WbvC7whL1=E9w@mail.gmail.com> <aSXR2iEAKjxM8VOR@tom-desktop>
In-Reply-To: <aSXR2iEAKjxM8VOR@tom-desktop>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 26 Nov 2025 08:43:00 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVYvV8WXBKmQEMnw_qgMdoUDLreNJM3UqEtoZ29AR6NoA@mail.gmail.com>
X-Gm-Features: AWmQ_bninuJBRTizSxZYPmdtY-ViJHt3X5imX5OlC4FiWsDPZsFKFDX1UIJfnDk
Message-ID: <CAMuHMdVYvV8WXBKmQEMnw_qgMdoUDLreNJM3UqEtoZ29AR6NoA@mail.gmail.com>
Subject: Re: [PATCH v4 11/22] phy: renesas: rcar-gen3-usb2: Use mux-state for
 phyrst management
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Jonathan Cameron <jonathan.cameron@huawei.com>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_235034_733370_ECBB5465 
X-CRM114-Status: GOOD (  38.78  )
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

Hi Tommaso,

On Tue, 25 Nov 2025 at 16:57, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> On Tue, Nov 25, 2025 at 03:10:22PM +0100, Geert Uytterhoeven wrote:
> > On Fri, 21 Nov 2025 at 16:14, Tommaso Merciai
> > <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > Add support for selecting the phyrst mux-state using the Linux mux
> > > subsystem in the R-Car Gen3 USB2 PHY driver. This ensures correct hardware
> > > initialization and integration with systems utilizing the mux-state device
> > > tree property.
> > >
> > > A temporary wrapper for optional muxes is introduced until native support
> > > is available in the multiplexer subsystem.
> > >
> > > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

> > > --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> > > +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> > > @@ -938,11 +939,27 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
> > >         return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);
> > >  }
> > >
> > > +/* Temporary wrapper until the multiplexer subsystem supports optional muxes */
> > > +static inline struct mux_state *
> > > +devm_mux_state_get_optional(struct device *dev, const char *mux_name)
> > > +{
> > > +       if (!of_property_present(dev->of_node, "mux-states"))
> > > +               return NULL;
> > > +
> > > +       return devm_mux_state_get(dev, mux_name);
> > > +}
> > > +
> > > +static void rcar_gen3_phy_mux_state_deselect(void *data)
> > > +{
> > > +       mux_state_deselect(data);
> > > +}
> > > +
> > >  static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
> > >  {
> > >         struct device *dev = &pdev->dev;
> > >         struct rcar_gen3_chan *channel;
> > >         struct phy_provider *provider;
> > > +       struct mux_state *mux_state;
> > >         int ret = 0, i, irq;
> > >
> > >         if (!dev->of_node) {
> > > @@ -1019,6 +1036,23 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
> > >                 phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
> > >         }
> > >
> > > +       mux_state = devm_mux_state_get_optional(dev, NULL);
> > > +       if (IS_ERR(mux_state)) {
> > > +               if (PTR_ERR(mux_state) == -EPROBE_DEFER)
> > > +                       return PTR_ERR(mux_state);
> > > +               mux_state = NULL;
> >
> > No need to set mux_state to NULL, as mux_state is not used below.
> >
> > However, shouldn't you propagate all errors up?
> > If the mux is not present, mux_state should already be NULL,
> > i.e. IS_ERR(mux_state) would be false.
> >
> > > +       } else {
> > > +               ret = mux_state_select(mux_state);
> >
> > This causes a crash on R-Car Gen3 and RZ/Five, as mux_state_select()
> > doesn't handle NULL pointers gracefully yet.
> >
> > Adding a check like
> >
> >     -       } else {
> >     +       } else if (mux_state) {
> >
> > fixes the issue.
>
> Thank you for checking this!
>
> Ack :)
> I will switch to:
>
>         mux_state = devm_mux_state_get_optional(dev, NULL);
>         if (IS_ERR(mux_state)) {
>                 return PTR_ERR(mux_state);
>         } else if (mux_state) {

Please no else after return.

>                 ret = mux_state_select(mux_state);
>                 if (ret)
>                         return dev_err_probe(dev, ret, "Failed to select USB mux\n");
>
>                 ret = devm_add_action_or_reset(dev, rcar_gen3_phy_mux_state_deselect,
>                                                mux_state);
>                 if (ret)
>                         return dev_err_probe(dev, ret,
>                                              "Failed to register USB mux state deselect\n");
>         }
>
> In v5.

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
