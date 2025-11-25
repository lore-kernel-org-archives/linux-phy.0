Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2BD7D0E6EC
	for <linux-phy@archiver.kernel.org>; Tue, 25 Nov 2025 14:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZSIzHjbsMmoRmVS4eaukWyES1kKDH4rNeFTvrnUsaw=; b=qO5eMRMNfnU/rN
	M6Rs3zDpcRn3kbZg3R25KOZ1srYzu4xna13lM6PqHw3qp0NB9/fh06iTjntT/MBzxb6zXpyjpJf0N
	VcGdXaEWhnZtMzRR/TtXBHGWJFUh6mSgrA9MA6cDLHrCs2oZpP9NJRGVdns5G24m3/4hnSYwovVip
	RKY/EYLGn+4djDt+6V1nzzmdh8EEazV2Kz6d2WiKEg4k6EGFqs1PsfYNo3JHcCrohscDderTySKIo
	u1r1Kdmz4okWGFH2sNpNkUV/LK24Dp6bApqsBf9X8o4kXKaPalwvyykMR0HOg7nUX83Zk09KpoRt7
	KVv3Ta9ZoDOPbailxazg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNtrm-0000000DPwx-46GY;
	Tue, 25 Nov 2025 14:18:02 +0000
Received: from mail-qt1-f174.google.com ([209.85.160.174])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNtrj-0000000DPwM-2UuU
	for linux-phy@lists.infradead.org;
	Tue, 25 Nov 2025 14:18:01 +0000
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4edaf8773c4so64423431cf.1
        for <linux-phy@lists.infradead.org>; Tue, 25 Nov 2025 06:17:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764080278; x=1764685078;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rpqva75E+/1bzSUnB6Db17eeITC1uo8KnqBCNeKmeC8=;
        b=VQAYXW1EYycL5FRGwY5bMIRqrLO2UHCZlv6O1DmSGMwTkbu4Iw+yhISvGHSPX0uG2W
         2wj3bAA1x+22vWTp1MYmxUQbCs3s4HApi3W2W0ZE81eI3lWUBz1Ad4v9KqIrJ+PNWHOi
         I5+jZi+fBNaIN26i1TgjddSxt/3g39+KMzIVhkB6s/MqNe2MwN5+dwgXGZVI3J6qvujQ
         N8jx7XUZo9Zctfdmw0eY/MIhWNcEKZngIZpPD8i+TE4JBB50sb+yNm/YgvYFXPwU3WIg
         rEl6u7whvlTdm10wyprTa9Af8SlXZd/EN1vJubGBk8nbvr5Yr/xIT0WpIaqZuQtcMfC1
         IkBw==
X-Forwarded-Encrypted: i=1; AJvYcCWb9kfjon6+ONZ4SGJ6z3B+MfAeKdNom0cM1IGkHy6ACVPTjHTAhNdXR6qbwijwAECxw37RSR9FLKU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrrMe9umlk4xod9c67KBGj+yKNdg0I6AjpcqqguDMN5AHwDvHV
	vIDUpa4H74/m1aFEtGDRapVT089Z8yLo5F3fCokroQfbLzG0YAcs+nk8Rjf4CBoKgfk=
X-Gm-Gg: ASbGncu5r9kpE1jNtzm8NOc7sv7O93soqwhj5PKcHF0pqOMsOvWLg0BMF9hypcQ9XYA
	jozDoFjt7qFyzFyBVETEmpzmriqhWB9khS6mS8uRmm64td1yHaUs2p2S66bLMC+oSDgxrEN8d/y
	XZx1bGolVLPNo8wY+DW0ckbaRqnh0LnXJaRkWw7Qabx3E4v0Mj4FpVn3gUyCtwu9j9iGKOvfQg7
	WzmizYvRsfXbC2mb23Tlp6VqLvEyQXoT+78zbZNfCzXCJ7TRS4ADBtUyXIofYRuQlg0s8yrA3uv
	OAdVSwY153P+M9k1o8BbzmWsPpaOyKnG1dE8161LJZb6iZAET1HwYN4cLpv/6Ub0xiwcNt97RXL
	1MZwM2wutAL/gkF3P1xP32zJLV7FiuHbo8hktPJY0hnXBLEC+1lALeTu+GH2E+xB2UWr7RsZ5MZ
	6vfVirjXcIEeouUEAYKKf90MQYki5zSUV5on73nTwKfw==
X-Google-Smtp-Source: AGHT+IHl6i+Wx8GyrFsrjFSq2aqgzVwU87faQF8uLNVuJXpbD2yA+sicvwzIkp9yWhvNrwWhHONG5A==
X-Received: by 2002:a05:622a:613:b0:4ed:717c:966 with SMTP id d75a77b69052e-4ee58ae6253mr214466551cf.62.1764080277684;
        Tue, 25 Nov 2025 06:17:57 -0800 (PST)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com. [209.85.160.176])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ee4cbc3c81sm99423551cf.16.2025.11.25.06.17.57
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 06:17:57 -0800 (PST)
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4ed861eb98cso60158761cf.3
        for <linux-phy@lists.infradead.org>; Tue, 25 Nov 2025 06:17:57 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWFZ5JRY4bXkWO2bTTeXJR4blHIQ/QmRnKLUEYmHbsbMx7PQ0A0CEva5YWBno7Lz6t/MFvDaYVTIbU=@lists.infradead.org
X-Received: by 2002:a05:6102:1484:b0:5db:d07c:218e with SMTP id
 ada2fe7eead31-5e1de4a7207mr5657352137.41.1764079835352; Tue, 25 Nov 2025
 06:10:35 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763737324.git.tommaso.merciai.xr@bp.renesas.com> <89b6d61854e94966fc9781d5832b6c187c35b4de.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <89b6d61854e94966fc9781d5832b6c187c35b4de.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 25 Nov 2025 15:10:22 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXBbzTeiQJQWuUnJ_rRD1Zo=1TBOzrv4WbvC7whL1=E9w@mail.gmail.com>
X-Gm-Features: AWmQ_blmZJeMsinamgGW4f3qFK-TiajCRRQHceRXLE0egHCuP5sJvvaiID97Ruk
Message-ID: <CAMuHMdXBbzTeiQJQWuUnJ_rRD1Zo=1TBOzrv4WbvC7whL1=E9w@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20251125_061759_646282_47835CA6 
X-CRM114-Status: GOOD (  30.89  )
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

On Fri, 21 Nov 2025 at 16:14, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add support for selecting the phyrst mux-state using the Linux mux
> subsystem in the R-Car Gen3 USB2 PHY driver. This ensures correct hardware
> initialization and integration with systems utilizing the mux-state device
> tree property.
>
> A temporary wrapper for optional muxes is introduced until native support
> is available in the multiplexer subsystem.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -938,11 +939,27 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
>         return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);
>  }
>
> +/* Temporary wrapper until the multiplexer subsystem supports optional muxes */
> +static inline struct mux_state *
> +devm_mux_state_get_optional(struct device *dev, const char *mux_name)
> +{
> +       if (!of_property_present(dev->of_node, "mux-states"))
> +               return NULL;
> +
> +       return devm_mux_state_get(dev, mux_name);
> +}
> +
> +static void rcar_gen3_phy_mux_state_deselect(void *data)
> +{
> +       mux_state_deselect(data);
> +}
> +
>  static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>  {
>         struct device *dev = &pdev->dev;
>         struct rcar_gen3_chan *channel;
>         struct phy_provider *provider;
> +       struct mux_state *mux_state;
>         int ret = 0, i, irq;
>
>         if (!dev->of_node) {
> @@ -1019,6 +1036,23 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>                 phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
>         }
>
> +       mux_state = devm_mux_state_get_optional(dev, NULL);
> +       if (IS_ERR(mux_state)) {
> +               if (PTR_ERR(mux_state) == -EPROBE_DEFER)
> +                       return PTR_ERR(mux_state);
> +               mux_state = NULL;

No need to set mux_state to NULL, as mux_state is not used below.

However, shouldn't you propagate all errors up?
If the mux is not present, mux_state should already be NULL,
i.e. IS_ERR(mux_state) would be false.

> +       } else {
> +               ret = mux_state_select(mux_state);

This causes a crash on R-Car Gen3 and RZ/Five, as mux_state_select()
doesn't handle NULL pointers gracefully yet.

Adding a check like

    -       } else {
    +       } else if (mux_state) {

fixes the issue.

> +               if (ret)
> +                       return dev_err_probe(dev, ret, "Failed to select USB mux\n");
> +
> +               ret = devm_add_action_or_reset(dev, rcar_gen3_phy_mux_state_deselect,
> +                                              mux_state);
> +               if (ret)
> +                       return dev_err_probe(dev, ret,
> +                                            "Failed to register USB mux state deselect\n");
> +       }
> +
>         if (channel->phy_data->no_adp_ctrl && channel->is_otg_channel) {
>                 ret = rcar_gen3_phy_usb2_vbus_regulator_register(channel);
>                 if (ret)

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
