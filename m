Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A02DEFF885A
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 11:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kREvsrs6wHiW2WBBBwKRk2cCusf10FnH6gtfnQJ4/U=; b=orBQN8NFey0l0o
	7CDxhcRfhW3tsi4WhD/kcw/c6dFgUz0TsVBA2krZB2AAg++RnAnjTz6jTfN3Ri29ukppIE5jsn4Qr
	0xw0E2FuMGmQ5EneeA5dCUscKiVTvTYL3SKFiIk2sLzvIz+SepMmbfS4xqjnOgG3X46hqnYw18HU0
	klQThxNdwEIuIFxcWHwonsrPMpA6HQzQki6eJJXyC2C7pGcd7CcThxZ05oOrEYlu3AXmdW696RiNM
	e6PkDYDRSb0YcB9mjdfkXY1ovnLo11R6HYlaFTpLjUgoaK81Fcnp3bk6gqai5SgyMplezQqNyBTGF
	nXvvkBxQXl7pWSgvn42A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJrjd-0000000D4br-0TOg;
	Mon, 04 May 2026 11:45:13 +0000
Received: from mail-ua1-f43.google.com ([209.85.222.43])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJrja-0000000D4bG-2iDJ
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 11:45:12 +0000
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-948029fb1f2so1103976241.0
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 04:45:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777895109; x=1778499909;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HG/BR7xGQ0GXfmqp04teJGIjPf2aTf3X9EhkDQ2kDok=;
        b=GmuZQpUUbxe8v3m9yNzmfuzmdAA4bHgrA9SPSzT+EJk1un+VJK0D9lU9GcXwgR1oju
         yIGWeKbBeSEwavdRlx17qgQopF6P4fAAFcP+DqG4Q1FF2yhM2GlzG/07DPdwq+UzyG1g
         dEi11nANX6JFU4d4EWYxHPTkMZulib3dF6lWEn4KVtgxUpFKFDJv5b6LExDc+cQa8FX7
         tDMrzIOmw3rUgNpeHcEaD8agK+DU4FQJm76wRkr071uEondFE6jSO29NQ4hzWjm4Y3sv
         PKhWemoDLxJSaWPWs8dQMGXIgbmW75OK/5gK5owjIt3gEc6ugu3CDokYJOw0j/CpkSaW
         umjw==
X-Forwarded-Encrypted: i=1; AFNElJ8aUPwGz6ZO9WHRkIa52B0UA5TuoxhR0xq3aku5jfTYNWElfAtGyJ6G7OiLs5nmByXm2EME02JRTec=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNe3OlF1jkjP+vfZj8UUheOQhYs3srz+3KKCqAKRX0ycUeHDn8
	0RE0z5s4ZTw5E9kTu1cRq+hX8TK9ZAlVUL4kNwG4tAsTs/uxaLthH7+Or/yhxo+x
X-Gm-Gg: AeBDieu6zlaWxk5eQ7lK6JyT1ZzKeExWNCpMb8xY3l3YFHQUx9xRQZSGlf2v834x661
	KZLIXBSez0Dy9CkHfD1CzvE2Ii1cyWE4GcivitD+ER/6RUIVGijspLUB1IMH27ffEHSXWUF3Yn/
	AAVhx44N8FSBwy8dgwUo1yjGdcCYSCN4aKnzCNgbOzN+FrRytgb9HIYeNMZKUZRZJI7F+VnqnKT
	GEFU1KBsybaAP+M5N5pzAI/GvdHIPgTenFP2mj54XFjmM4pJJy1ghyJ/NoDOY7/m1oHi/eNG/7A
	JoPt2aq4O8yJGl427BWn/OweIdiFARg2jPu4l3IFhf8i5cv8deNett+yfdPtLxESraJcgdcjjyP
	x1pea9TMTBtNEuMxqoy5wO2uhc4h5r/635BW4Pk8wbB+hqY4+aJ3PARARS0+Rr3hZEO8aOCyssL
	HWXPSfJS1fHDzR9QioRAkaV4XzVTw8Uc63SKT/LVSqvei7ek1BMvJ3DY0bAgwoTL1XwiF+Bvca0
	V0=
X-Received: by 2002:a05:6102:3e23:b0:605:2df4:c5f9 with SMTP id ada2fe7eead31-62d85494690mr2987921137.11.1777895108841;
        Mon, 04 May 2026 04:45:08 -0700 (PDT)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-62bfbb75140sm5230625137.5.2026.05.04.04.45.08
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2026 04:45:08 -0700 (PDT)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-5674d8be45eso1038985e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 04:45:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+LreWqBnFGXCnHvf0inKyWKwItJbv1BD5sV6YXIvwgBxPl7ESnnC152UuVG1VlFoG6qR6iSUCFrFs=@lists.infradead.org
X-Received: by 2002:a05:6122:80d4:b0:575:24b5:88e7 with SMTP id
 71dfb90a1353d-57524b59d5emr885661e0c.11.1777895108303; Mon, 04 May 2026
 04:45:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260427194741.161533-1-ovidiu.panait.rb@renesas.com>
 <afd-gj-F3OYDfCwJ@vaman> <OSOP301MB19766FF764E6626FF1CD6771D3312@OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM>
In-Reply-To: <OSOP301MB19766FF764E6626FF1CD6771D3312@OSOP301MB1976.JPNP301.PROD.OUTLOOK.COM>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 4 May 2026 13:44:56 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWT+hv37gxi-5fbLVc16Fk4SKsXuBis5Fg6_zm7TS6hkQ@mail.gmail.com>
X-Gm-Features: AVHnY4Kj8qbZMTdvG7wtnzKp_ceFYbhvcCDqsIIsLiM97LFAw87IuzHnlnXpOnk
Message-ID: <CAMuHMdWT+hv37gxi-5fbLVc16Fk4SKsXuBis5Fg6_zm7TS6hkQ@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix runtime PM underflow
 during suspend
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, Biju Das <biju.das.jz@bp.renesas.com>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_044510_742699_707A2FB0 
X-CRM114-Status: GOOD (  30.00  )
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

Hi Ovidiu,

On Mon, 4 May 2026 at 13:11, Ovidiu Panait <ovidiu.panait.rb@renesas.com> wrote:
> > On 27-04-26, 19:47, Ovidiu Panait wrote:
> > > On the Renesas RZ/V2H platform, if the xhcd driver is unbound and the
> > > system is suspended afterwards, a PM underflow error will occur:
> > >
> > >  # echo 15850000.usb > /sys/bus/platform/drivers/xhci-renesas-hcd/unbind
> > >  # systemctl suspend
> > >  15870000.usb-phy: PM: dpm_run_callback(): genpd_resume_noirq returns -
> > 13
> > >  15870000.usb-phy: PM: failed to resume noirq: error -13
> > >  15870000.usb-phy: Runtime PM usage count underflow!
> > >
> > > Since the PHY framework is managing the runtime PM of the PHY via
> > > phy_power_on()/phy_power_off(), there is no need for the PHY driver to
> > > manipulate the runtime PM state during suspend.
> > >
> > > To fix this, remove the runtime PM calls from the suspend/resume paths
> > > and add a get/put pair inside rzg3e_phy_usb3_init_helper() to make sure
> > > the clock is enabled during init, even when there is no consumer for
> > > the PHY.
> >
> > > Also, change the suspend ops from NOIRQ_SYSTEM_SLEEP_PM_OPS to
> > > SYSTEM_SLEEP_PM_OPS because runtime PM is disabled during the noirq
> > phase
> > > and pm_runtime_resume_and_get() would not actually enable the device
> > clock.
> >
> > > Fixes: ee5f1a3f90a4 ("phy: renesas: Add Renesas RZ/G3E USB3.0 PHY
> > driver")
> > > Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

> > > index 6b3453ea0004..055775e1a0f7 100644
> > > --- a/drivers/phy/renesas/phy-rzg3e-usb3.c
> > > +++ b/drivers/phy/renesas/phy-rzg3e-usb3.c

> > > @@ -215,27 +226,21 @@ static int rzg3e_phy_usb3_resume(struct device
> > *dev)
> > >     if (ret)
> > >             return ret;
> > >
> > > -   ret = pm_runtime_resume_and_get(dev);
> > > +   ret = rzg3e_phy_usb3_init_helper(r);
> > >     if (ret)
> > >             goto reset_assert;
> > >
> > > -   ret = rzg3e_phy_usb3_init_helper(r->base);
> > > -   if (ret)
> > > -           goto pm_put;
> > > -
> > >     r->skip_reinit = true;
> >
> > https://sashiko.dev/#/patchset/20260427194741.161533-1-
> > ovidiu.panait.rb%40renesas.com
> >
>
> I think this is not applicable for our platforms, as the power domain only
> gates the clock during runtime suspend, so the register state is not lost
> across runtime suspend/resume.
>
> The power domain (drivers/clk/renesas/rzv2h-cpg.c) is marked as
> GENPD_FLAG_ALWAYS_ON.

Won't the SoC be powered down during s2ram?

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
