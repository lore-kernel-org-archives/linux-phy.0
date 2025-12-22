Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 245EFE674BA
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 14:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2J4F7rRM1ksRyAv8lLj1aVhUbpee2edtsJYYfy6H4EI=; b=fNnGbg/Cn7gKq2
	reW+N0qji8t4hJSxrC3yFO/DdNYKtHKjvJnDbD34prOY4fHqPgV4hfODp5If9WuOhxiw0VeKZn/ln
	FDmhxeYwev50AjkiQxOAvJ8gJUvycXDGgQ4ofzXkLNL/LeRmC3RRIBIvGYFytlcOvdOCCopXzJuXB
	qkJRgUOSOCaH+W4JsaChi2VxcpWAvrmw5c+imZQgdMmj1FBUTecUlp6VTB2YYsOLfU/uzpDSWcesy
	i1vDGFhrMEmSrlLZ4ulReyylXHO11N7QiiDk1paofQSTLRYzTx3fNxpId1ApUM5PwGpppsd3Laimg
	/dEleWPh/XcMQ7D93nYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXhCL-0000000Dshi-241h;
	Mon, 22 Dec 2025 14:47:45 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXhCI-0000000DshN-3uNw
	for linux-phy@lists.infradead.org;
	Mon, 22 Dec 2025 14:47:44 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-597c83bb5c2so3231781e87.3
        for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 06:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766414860; x=1767019660; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lNpWj6TBvVji/fHBEAyDcOFnMWFot5zrE/hRwsxnXVY=;
        b=gOxFsMVPOEzSIJvo2joOTTO90ibwifmfZtZnjN1hrfsTn/neOrLTqH4LxiuPDdWrqa
         qbqrK2e0FlYu1sRardMJ+wvxstyCM7AvOOI5bBVOwA+q55ZYIeH0LnR+8SIrMbCPoceP
         Kk4SDr7lWdK+ELpGqww6UGeNld++aBJA5p94X5+86GcnYdB7Y5jgaO+0QEBVhULxj7OH
         YiZBfqTmejK16fCmlOwP88xc/rxSlvQdXVRRcJZCVJAJxNuuL+ASNvhcf5SJE5Wv/Hfb
         x0aL4YHXCK7zCttlKUXOq4CDWpnfosfyKypj0TKNuDQ1RDBujghnsi6xfxDkF3bRvnTP
         bXHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766414860; x=1767019660;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lNpWj6TBvVji/fHBEAyDcOFnMWFot5zrE/hRwsxnXVY=;
        b=onloeaFfrhvSlpG0yqGrZOfUqePiC8PveraZmvtqlCzB6p4BOud7Sl0PQY6RbQ47TM
         cSwIc6U0opR1P40SDPeAMbjqYa1tBBoQe7EpUFVDMAAkVKmH8uJ03a7S4sWIZbQ5oZ5v
         //8gwbsvrqk/6FrISAnHgZokiH1BI08YNmQwcIWm1fNxHzyX4FMOajHgKKByYkXdnN3y
         0jECf5Vkme2n7/+wSnQFBIjr/l/yLhAEqDBSE5O+TnX+gBJj8jpce7sYEeZ7GzJ6oAOb
         DurAkCTQbnfMe8YfNV2SJbjJucLkZpriKsza4bYq2xDgxvEohrI2MQlgGr52hIvTtcfq
         gAWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvl0uIC52rEDnBer6gt0++alyBumA3jZgJ7AIxGk6uaOZu/AU46pY7s8DbmfP561zYN03bDNVsgY4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzF5woaOLzo9eSALpJq2AGn+N8gFgncWZ3G8NdjWWCOPTnsFE9+
	Tl8Ekt2jy7myyLCffYIdy9+cNnT0AB42TM+yY5qBI2Q8oBSeX2DXEKyvecmFy6hL9dfsQn505ki
	NEbsqB4U+wIxF12MN5Nqcu4PmUfmgkJvwzQ0jHY8MBQ==
X-Gm-Gg: AY/fxX4l1qaYhuOrXoKkzpMS7oeD6WIXBQnfaKXUKDxTfeNTn79cGCyJYfN1ExMZXik
	zVvAromMb/0ZRYp+0JQfFk2zpO17sICMaAyM7UnteBiYyJw4ZEAY6UmLr1DPlW/2uSBvNAqo4+M
	dcByhOx8ezBmFJ19cb+5sVB1HEU23AVfU/To53IEqeMjXLcB67d5FzOINNYIjablUNIO642YqKc
	8Lb+rnNOTBFgU/pc8ONEn4Wkaem/J2dyschVRI0vNUraptubfLaDK2Xb8K7RP0WqVyG0YMm
X-Google-Smtp-Source: AGHT+IEmZoekCpdFdxCX6++mG8wezcWmjXxPG5ogJ3p4YsZ2il+JIIqimrrt74JmCImmja/XHDzRdip0knGEk5MWYgo=
X-Received: by 2002:a05:6512:e9c:b0:598:faba:c8fa with SMTP id
 2adb3069b0e04-59a17d006e1mr4286628e87.10.1766414859977; Mon, 22 Dec 2025
 06:47:39 -0800 (PST)
MIME-Version: 1.0
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com>
 <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com> <CAPDyKFoYd3WKGrjD3DEzZH8EfgZPmRkrqL=rdoKNuAADrvz3Eg@mail.gmail.com>
 <20f2128c-c6cb-4b13-aa08-b93e540f5bd9@solid-run.com>
In-Reply-To: <20f2128c-c6cb-4b13-aa08-b93e540f5bd9@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 22 Dec 2025 15:47:03 +0100
X-Gm-Features: AQt7F2pGUIPrw4OqWueh78ppZDBGwQc_mhY3RygUrq6e1L74fXopGZ4K0V_QvZo
Message-ID: <CAPDyKFo2jsV02qSDBSZTewJjV09AMO8iETU5Uxqz+GBnd0JY6g@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] mux: Add helper functions for getting optional and
 selected mux-state
To: Josua Mayer <josua@solid-run.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Vignesh R <vigneshr@ti.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>, 
	Jon Nettleton <jon@solid-run.com>, "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_064743_024833_735BC438 
X-CRM114-Status: GOOD (  21.41  )
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

On Sun, 21 Dec 2025 at 11:38, Josua Mayer <josua@solid-run.com> wrote:
>
> Hi Ulf,
>
> Am 17.12.25 um 14:38 schrieb Ulf Hansson:
> > On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:
>
> cut
>
> >>  /*
> >>   * Using subsys_initcall instead of module_init here to try to ensure - for
> >>   * the non-modular case - that the subsystem is initialized when mux consumers
> >> diff --git a/include/linux/mux/consumer.h b/include/linux/mux/consumer.h
> >> index 2e25c838f8312..a5da2e33a45c0 100644
> >> --- a/include/linux/mux/consumer.h
> >> +++ b/include/linux/mux/consumer.h
> >> @@ -60,5 +60,9 @@ struct mux_control *devm_mux_control_get(struct device *dev,
> >>                                          const char *mux_name);
> >>  struct mux_state *devm_mux_state_get(struct device *dev,
> >>                                      const char *mux_name);
> >> +struct mux_state *devm_mux_state_get_optional(struct device *dev,
> >> +                                             const char *mux_name);
> >> +struct mux_state *devm_mux_state_get_optional_selected(struct device *dev,
> >> +                                                      const char *mux_name);
> > Seems like we need stub-functions of these too. Otherwise
> > subsystems/drivers need to have a "depends on MULTIPLEXER" in their
> > Kconfigs.
>
> Currently the drivers that can use a mux select MULTIPLEXER in Kconfig.

Yes, but that's not generally how we do this. The driver may not need
MULTIPLEXER for all platforms that driver is being used on.

>
> There already exist a few mux helpers both for mux-state and for mux-control,
> and they might all need stubs.

Correct. I think we should add subs for all of them.

>
> I'd prefer the restructuring of kconfig dependencies being independent from
> adding mux-state functionality to renesas sdhi driver.

I understand your point, but adding the stubs isn't really a big thing
- unless someone has some good arguments not to!?

Moreover, since the series changes the mux-core anyways - and
subsequent changes depend on it, I don't see an issue to fold in yet
another patch to add the stubs.

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
