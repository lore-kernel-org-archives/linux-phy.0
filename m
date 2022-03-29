Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6511C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 29 Mar 2022 15:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ob3ZiiqAnbst02jFVnqotBrTsppfTuwQtMyGOYXFDpk=; b=G9f2gIqrDwCS8r
	m3O0J8R9XgYL8nQFldGODAKWmqE0lDmK5ky7zIZA+PW2fGVvGL8cbu4iW3hWRYvRkYJeEnzZt/n9m
	w/AZ4TfqdMmqjRC9zv10bVVQn/9u3n200HJ9b6IfvOaWnApilNrmxg7Ax2Cij+hxPt5mPFZdIoHIM
	zMLa2cT7igA/YzXJp9jYaudBjTOFPXlapFT7Vzto11jNqhCYzn+LzPN/un0rHk3aqmuqu/rMa9Fnw
	fufKdUKpHQotjrxYBtCfihlGoFu3P1xiu4RYRrFMpvjdkQgo2s5pF1lnOvCCOq7ZlIxQXmqQDKLxl
	EQ6Y0OVhbkBena6cUVFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDYI-00CcRZ-7a; Tue, 29 Mar 2022 15:14:34 +0000
Received: from mail-qk1-f173.google.com ([209.85.222.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDYF-00CcQk-6B
 for linux-phy@lists.infradead.org; Tue, 29 Mar 2022 15:14:32 +0000
Received: by mail-qk1-f173.google.com with SMTP id w141so14017798qkb.6
 for <linux-phy@lists.infradead.org>; Tue, 29 Mar 2022 08:14:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iTX5eis5JXZM+luuzeeILwldfqD5/+1wXgCmLUitkS4=;
 b=lqDLFoPLo08P5b+9/D4x/EMx03QPzZ8u9HLphCegIstDgbAl5Pr+/2R1xoDTSQCOf9
 KuWZ2vaj0ouneggiRzgA4Oso8UuCUa4XmJhamF961BwqJWJAvobflyH6DKjvK6eSCwve
 /bGCAKrBOUnMMGqqFfyEzXn30OjyfjONpWYWkDEVkjMGaBC0JjYn7tOlMuJUAcX6wpUX
 MQO7uOI+yL3J+kJVNTgXdlP/gkZSZsI2xGC/M2YpEwAULTrFeQqeYnaE+TREQUFnDXba
 Qsg55BWKsmbCiV8Lb56BNckzsgZ76OMwVecaMDRI6ZzYaUyj8IVDoJVaUKuPyk1rlxzh
 HomQ==
X-Gm-Message-State: AOAM5331DcNI0p/RN6xY7lP2cGxr5Mr3hGVjYk/4+uhCUUE+T5eZMPQ6
 IvrdrYOoUKLrjGfMtfMUa7eb4uiu03v2rg==
X-Google-Smtp-Source: ABdhPJxDqUKxbiV1gzr867pAYla8vT7QKH8EYb4xgy0hx0UoR546GCVuJlnQQH1/HKZBI62mX4E3aw==
X-Received: by 2002:ae9:e501:0:b0:67d:370f:b9b5 with SMTP id
 w1-20020ae9e501000000b0067d370fb9b5mr19976925qkf.536.1648566869748; 
 Tue, 29 Mar 2022 08:14:29 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com.
 [209.85.128.179]) by smtp.gmail.com with ESMTPSA id
 j1-20020a05620a410100b0067ec5ecac66sm11102876qko.19.2022.03.29.08.14.29
 for <linux-phy@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 08:14:29 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id
 00721157ae682-2e5e31c34bfso186946497b3.10
 for <linux-phy@lists.infradead.org>; Tue, 29 Mar 2022 08:14:29 -0700 (PDT)
X-Received: by 2002:a81:24d6:0:b0:2e5:b253:f9fc with SMTP id
 k205-20020a8124d6000000b002e5b253f9fcmr32054884ywk.438.1648566868204; Tue, 29
 Mar 2022 08:14:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220329125631.2915388-1-geert@linux-m68k.org>
 <YkMVLNHo+iMLHZRg@kroah.com>
In-Reply-To: <YkMVLNHo+iMLHZRg@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 29 Mar 2022 17:14:16 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVZfxYgbcB2ikAU_a-7BmU4dkrmSwte86irFUn6E6wrDw@mail.gmail.com>
Message-ID: <CAMuHMdVZfxYgbcB2ikAU_a-7BmU4dkrmSwte86irFUn6E6wrDw@mail.gmail.com>
Subject: Re: [PATCH] phy: PHY_FSL_LYNX_28G should depend on ARCH_LAYERSCAPE
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Vinod Koul <vkoul@kernel.org>, Richard Zhu <hongxing.zhu@nxp.com>, 
 Ioana Ciornei <ioana.ciornei@nxp.com>, "David S . Miller" <davem@davemloft.net>,
 linux-phy@lists.infradead.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_081431_262166_450F483C 
X-CRM114-Status: GOOD (  33.89  )
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

Hi Greg,

On Tue, Mar 29, 2022 at 4:18 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Mar 29, 2022 at 02:56:31PM +0200, Geert Uytterhoeven wrote:
> > From: Geert Uytterhoeven <geert+renesas@glider.be>
> >
> > Freescale Layerscape Lynx 28G SerDes PHYs are only present on
> > Freescale/NXP Layerscape SoCs.
> >
> > Move PHY_FSL_LYNX_28G outside the block for ARCH_MXC, as the latter
> > is meant for i.MX8 SoCs, which is a different family than Layerscape.
> > Add a dependency on ARCH_LAYERSCAPE, to prevent asking the user about
> > this driver when configuring a kernel without Layerscape SoC support.
>
> Why the artificial ARCH dependency?  What happens when people want to

Because it does not make sense to ask Linus^Weverybody about this
driver when configuring a kernel that cannot even run on a platform
that has this hardware.

Please read "Architecture and platform dependencies"
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/kconfig-language.rst#n552

> build kernels for multiple arches at the same time?  We shouldn't put

If you build a kernel to run on multiple arches, you should have
support for all of these arches enabled anyway, else it won't run.
E.g. both are enabled in the arm64 defconfig:
$ git grep -E "ARCH_(MXC|LAYERSCAPE)" -- arch/arm64/configs/defconfig
arch/arm64/configs/defconfig:CONFIG_ARCH_LAYERSCAPE=y
arch/arm64/configs/defconfig:CONFIG_ARCH_MXC=y

> these restrictions on just to have to go back later and remove them.

What do you gain by removing them, apart from having to spend more
time making love with your kernel configuration?
Do you (and everyone else) really want to see all 19190 config
symbol questions?

> > Fixes: 02e2af20f4f9f2aa ("Merge tag 'char-misc-5.18-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc")
> > Fixes: 8f73b37cf3fbda67 ("phy: add support for the Layerscape SerDes 28G")
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

> > --- a/drivers/phy/freescale/Kconfig
> > +++ b/drivers/phy/freescale/Kconfig
> > @@ -26,14 +26,15 @@ config PHY_FSL_IMX8M_PCIE
> >         Enable this to add support for the PCIE PHY as found on
> >         i.MX8M family of SOCs.
> >
> > +endif
> > +
> >  config PHY_FSL_LYNX_28G
> >       tristate "Freescale Layerscape Lynx 28G SerDes PHY support"
> >       depends on OF
> > +     depends on ARCH_LAYERSCAPE || COMPILE_TEST
> >       select GENERIC_PHY
> >       help
> >         Enable this to add support for the Lynx SerDes 28G PHY as
> >         found on NXP's Layerscape platforms such as LX2160A.
> >         Used to change the protocol running on SerDes lanes at runtime.
> >         Only useful for a restricted set of Ethernet protocols.
> > -
> > -endif
>
> The movement of the #endif is fine, how about just sending that change
> as that is the merge issue here.

The Lynx 28G SerDes PHY driver should depend on ARCH_LAYERSCAPE
instead of ARCH_MXC.  The former needs a new dependency, the latter
needs the if to bemoved.

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
