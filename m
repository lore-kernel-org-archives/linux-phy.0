Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F130D6408E
	for <linux-phy@archiver.kernel.org>; Wed, 17 Dec 2025 08:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cu1nlhiCG9/0eJrJivW2GIS/810/dALc898s1W7IZ24=; b=Tf3PSDdUgFmxBw
	0D+yUi63kt0vGiL0u3hoi31akhPDjTBS2s4l7eKhVvVrpRRQbICo52pUPX5Hs7KaWz8p+ispvEwOH
	V6xCqYuW1BAosX4+o3ONmNMtvZ1irxTxuCg0/pZSWOsfbOsspkRYVkSxd7Gu7NCsneNQf7d2OHrOJ
	OmMXAMD8wJVmIAFGZAO9zxSSrMkL/ShG5dBcy7wmIn2iKycgMVwaP2cysRY8vfPxjRkt/Hr7y/JP+
	5yM1j++8SMsDpyspG0FuTGfalxyDpx5Tyhq7e3/ChSs5P5p3JYM9uZLoSaZfaQDffdlSA/g1z1wU3
	p6exP1iYpvpthVkM4+gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVmme-00000006KuM-3XZg;
	Wed, 17 Dec 2025 08:21:20 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVmmb-00000006Ktw-1y14
	for linux-phy@lists.infradead.org;
	Wed, 17 Dec 2025 08:21:19 +0000
Received: by mail-qt1-f194.google.com with SMTP id d75a77b69052e-4edb6e678ddso75874751cf.2
        for <linux-phy@lists.infradead.org>; Wed, 17 Dec 2025 00:21:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765959676; x=1766564476;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rym4p+SQ3MsVDrU2KotDsjjR/+PnxDtYr8m/dR/i6BU=;
        b=ELl1OVTbEYAU50ENe9vwVv+bXceyHLeced3HkN6qr3/iYNKdqceb+PzuJJItahfUit
         u10ehPv3DYX8UE5EWNuL9UTDWHte4Rc5RImUh+dD8sUkMbMAOLaLm967qPXGrZqgXvQ4
         /aTfRSZjKZozRx4lVVaw4EV5wQd+nKQziC2RFEJN95D3RCbz93wd2MoNmAR4jOe3WlCq
         1fFKOrBsnYRsOzITYZar5DhvLGxNpOjjptfNpS2bZ3T5RbjzE4Wac+N1aCMQ4c0ELsZM
         ADQXWAwlb8efgyDkFmrxTvwEzymBTV7R98c9ag1+OXQneqeKTdSnTA3zPjYK1u2bCFYG
         iWaA==
X-Forwarded-Encrypted: i=1; AJvYcCX1T+QeIMgwk+CagBu2zV7Ly/kPI688ocbNRGBXzp7MigfPCQzvnAd0GEs7GbdAc+aVmRqRmE5BfEI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQpPL3rN6aO8cJntKCy46iCgtbeFvl7JuOE7wVnxmMlKxGy9R3
	diwJUYcgqV+lVG+pa5EDTycsIXc7W79GgRLF8E+nuVe6KtOHDe9GHpz6a+n8Eu5AB0A=
X-Gm-Gg: AY/fxX79tT4d4VhR2fftI76BZgPTvqHU5aL8m4AaOPglNJeIOxgvSSZz7Jsa1LZT86F
	9O2R9ELzgG2+hwqh6RYaShhrkLsf8VrA8VWBVRZBKD/0HEgPw4VhNvn/1kfqepibK3Ir6iY5b9w
	e9e3b+BFqzNiVP4hf0iMUKTAid0djZn5Yz+Do2jlOz+0dD6ZlUOyX+eim96uOcKso0uPelNCEcY
	eUnQtSi0Mf0zb1H7cNi4cGvYrVVxmHrQTGzNOZm6IbFfH0z0NhtYYH1QQ0oWSLqh3esoOHPC6KH
	LD1seGPB9iA0mzXqZBih3/ojWdkroEq44uuj9utZfcbTSqDbHFh+fnpRcKHaG/7x3AumiSejOSc
	tSC7sWD483B7hk92GMBTNBolGH6XfdLinyh7vpLWbOCQUdANUybuM5whq5yw1QPngTDVRaQ8YmD
	+JQ01B17ahCIyrCxEuTPxsaaN1qCGXPC17IRZ0dvYTxT8rJwDPgF50
X-Google-Smtp-Source: AGHT+IGHsy2zkbk8t7W71DEJTxiayI9wrLrQo80O+hWr0UfAI6bym1mWDezRawzVCovMElupej3eCg==
X-Received: by 2002:a05:622a:728e:b0:4f1:e97a:db01 with SMTP id d75a77b69052e-4f1e97adb66mr110123611cf.78.1765959675902;
        Wed, 17 Dec 2025 00:21:15 -0800 (PST)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com. [209.85.160.182])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f345c2e09fsm31610131cf.16.2025.12.17.00.21.15
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 00:21:15 -0800 (PST)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-4ed861eb98cso60315691cf.3
        for <linux-phy@lists.infradead.org>; Wed, 17 Dec 2025 00:21:15 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXPkPuUw0pduCC1mCVdNVgGoenjEQcRzj6qCFI1JyHMAoOkpg1kkjJ/c+44ZUY4fuwy31A3LTTudP4=@lists.infradead.org
X-Received: by 2002:a05:6102:1611:b0:5e1:866c:4f7c with SMTP id
 ada2fe7eead31-5e82781ea47mr5731108137.39.1765959318483; Wed, 17 Dec 2025
 00:15:18 -0800 (PST)
MIME-Version: 1.0
References: <20251209162119.2038313-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251210-mauve-cow-of-hurricane-0f969d-mkl@pengutronix.de>
 <20251210-persuaded-rewire-8ac93b0cc039@spud> <20251211-wonderful-singing-eel-4e2293-mkl@pengutronix.de>
In-Reply-To: <20251211-wonderful-singing-eel-4e2293-mkl@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 17 Dec 2025 09:15:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXW2iFQO3vTzMg_ydqZ5YC1EPqyNzkpLRfTAkLhmC+K5g@mail.gmail.com>
X-Gm-Features: AQt7F2oD50PxDosHDFQJjqw3YErV6WFAJtpUaCLTAZeWlqwHnCeiK6ic6sDkf3A
Message-ID: <CAMuHMdXW2iFQO3vTzMg_ydqZ5YC1EPqyNzkpLRfTAkLhmC+K5g@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1046
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Conor Dooley <conor@kernel.org>, Prabhakar <prabhakar.csengg@gmail.com>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aswath Govindraju <a-govindraju@ti.com>, Frank Li <Frank.li@nxp.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_002118_175984_E53C1A7E 
X-CRM114-Status: GOOD (  34.21  )
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

On Fri, 12 Dec 2025 at 12:22, Marc Kleine-Budde <mkl@pengutronix.de> wrote:
> On 10.12.2025 18:21:34, Conor Dooley wrote:
> > On Wed, Dec 10, 2025 at 08:52:58AM +0100, Marc Kleine-Budde wrote:
> > > On 09.12.2025 16:21:19, Prabhakar wrote:
> > > > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > >
> > > > Document the TI TCAN1046 automotive CAN transceiver. The TCAN1046 is a
> > > > dual high-speed CAN transceiver with sleep-mode support and no EN pin,
> > > > mirroring the behaviour of the NXP TJA1048, which also provides dual
> > > > channels and STB1/2 sleep-control lines.
> > > >
> > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > ---
> > > > TCAN 1046, https://www.ti.com/lit/ds/symlink/tcan1046v-q1.pdf?ts=1765297159307&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FTCAN1046V-Q1
> > > > NXP TJA1048, https://www.nxp.com/docs/en/data-sheet/TJA1048.pdf
> > >
> > > The polarity of the standby line of the chips is different.
> > >
> > > You must set the correct active high/low property for the GPIO, as the
> > > driver uses logical levels.
> > >
> > > Reviewed-by: Marc Kleine-Budde <mkl@pengutronix.de>
> >
> > What you're saying seems to contradict the tag you've given, is a
> > fallback really suitable if the standby polarity is not the same?
>
> The driver uses _logical_ levels to switch the GPIOs. For example to
> power on the PHY, it disables the standby GPIO by setting the value to
> "0".
>
> | static int can_transceiver_phy_power_on(struct phy *phy)
> | {
> [...]
> |         gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 0);
> [...]
> | }
>
> You have to use GPIO_ACTIVE_HIGH/GPIO_ACTIVE_LOW in the DT to configure
> the actual level of the GPIO.
>
> If you connect the PHY's standby input directly to the SoC's GPIO....
>
> | TJA1048: HIGH = Normal mode, LOW = Standby mode
> | TCAN1046: High = Standby mode, Low = Normal Mode
>
> ...for the TJA1048 you would use GPIO_ACTIVE_LOW, while for the
> TCAN1046 you would use GPIO_ACTIVE_HIGH.

Exactly.  For most of these CAN transceivers, there are typically two
almost identical parts (usually differing in the last digit of the part
number), one with active-high standby, another with active-low standby.
These differences can be handled perfectly fine using the GPIO_ACTIVE_*
lags.

Note that there can be other differences: the RZ/V2H board Prabhakar
works on actually has TCAN1046V.  The "V" variant differs from TCAN1046
(and TJA1048) in configuration of the two power supply pins:
  - TCAN1046 has independent supplies for the two channels,
  - TCAN1046V has separate logic and I/O supplies for the combined
    channels.
Since this difference can be handled through *-supply properties
(when the need arises, and the driver gains regulator support),
I don't think separate compatible values are needed for "V" variants.

BTW, how do I know? Because I had started working on adding support
for TCAN1046V myself, but Prabhakar beat me to sending out patches ;-)

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
