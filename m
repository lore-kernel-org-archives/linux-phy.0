Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3F59EA4FBA
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 13:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hqoh7Y+SmtZM/f8m18C7UItOkHHB6cTJjog79n193Z4=; b=ib85UfXcQkvEq5
	2UUvUugdygx0G0hF+qR+sm8tc4NkX71HBlH1tX7/oFI3t7AbqFsxapzX4qWL2ZgsUSRfxZgQbJFLN
	7Sb6L8yI61fYdouBzLAH5y9e5bcnV6ZCkGIrsZZ73t67MxA8NCwpMr/zSObIT6xO8+g3VVD0rrSUi
	YP1SjlvFbyQUOtKGTSMAC7Hbe/R9nCoyvOmtBrgu2d8h13u+BrlhjQddYzipKxPGhoMaE+Ty3rQ6R
	URgkigrA+CqV/Q0Otts57O5BcPiWPFZyn//oaex3414r+5durOfQRF4FKJd9KnrVCAi3S7exHukOS
	Q8wm78dn2GVf3ojfK5sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuWEz-00000000P0X-0ht6;
	Mon, 23 Feb 2026 13:44:49 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuWEw-00000000OyQ-2pY6
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 13:44:47 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-59e5eaa491cso5721126e87.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 05:44:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771854285; cv=none;
        d=google.com; s=arc-20240605;
        b=ORMY83A0fjm2yzmGl0YHrTDO2jrGonkCX/6s6mKcRbYPsfpB77XTlUJ2XKf4XDDKhC
         0wAPxFf6xhpounJBTSZZhbuZ3C7HWdVmzPfR79slm/eps9j/8t7PBlzTphfCn/18EcKD
         3nO97TvQ270gA8+/Ub7mJCYkt2YXJMizFRzQI5eGD+IyBPDUK78imxd5sQUGvnbY+K/j
         KDpXq00Eoi7OXSoklHRWX8a68VmiOMT4xl2Us8XFsU8jfYO57bJvMdCC1pCYus2z89al
         pM0dEMNpgkeSjhnE9M4CqouJylI4qOuyfwv46FQKgOvf83tlksSrBAlrQoSIF30nMZEH
         fbVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Fhetx7uwtFJRgRkUexEhKn5KeWaKODjWdb8CIbVt7HA=;
        fh=rXOgYKhFKIhIJ/LNbykkErTrPlTUGMrtAPiy4o0VLZs=;
        b=JA//msbQ8kbwDT7KT8A2Us+rkxiBCGy9yNSvyvO9kLy8PW4s1g4QQDVMqPik35m7Gl
         5SZoKSBSABvf46lqpYmXydxWKWdVdX/JJOGAHzBeOR6vno0/CoXBnNBuiwgwn2S0B5Pt
         sTrkSGRSLL3LqbqYcByGAsh0UmVE22iflEQSQOuy6Uup5YWS0NeYiqJ+jpPvJNw3bOT4
         OA9D6KzuZB0rbR86UW7hJWEM2aeGSvorwFh6oDIxaKAX526yioKZIvwuwp+BsHl5RdfQ
         SHJA1BYQF32cp4geE6CSoxrUKbDAHIjenbfK5s/7H6LzHeeNy5m41sA0AvE/0yo20U/c
         gE6w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771854285; x=1772459085; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Fhetx7uwtFJRgRkUexEhKn5KeWaKODjWdb8CIbVt7HA=;
        b=SUvdG1jgLWXqKEawzb+4pvgGg/BW8dEX0T3JIzyYdeEFj8bPyv65Rjt2t7e8B2Ksxa
         jP19cAqQMVvhm7TWEj2VFNd+xtcNIQwvdUcGYSnZQOgFVE2eAFsRjOrq7yIb7TcU3XRa
         /ub64g0+REpZkFJ7vb/hi3zV91qCmj5Y8p+n70BWuB/Y2qDwv7TwBmXcuaO9zUdBzOsp
         ykZa/++aRB1hI++YtKnhWWBUQyDbYgZr+9UtGAG3GZnzvnOYwlWvytDJJNp0Wzt9Ya+G
         ESJu0tbEKpLgmKZgvZSRBFms7dXaF7SVQEajSpNgMvzYKG/Av3PEkmyO1HmIGkWPZ6Qm
         K4Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771854285; x=1772459085;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fhetx7uwtFJRgRkUexEhKn5KeWaKODjWdb8CIbVt7HA=;
        b=EW7bzP2fGcW0C2Qcx5Mo3jSkudQt2GVq8mUZS4n5ek+AqI/cSrKLtAfKFPOBi414LQ
         s6jqprqUun82FyHGPulRBgDneD7/bwIwXMAw8vjIySNudC3aSFuXvnCmp2w8bftKcmSz
         fn4OVrLLdIYyUmyvd/zYX9URIqxZUQZPhHAaYvQeTYhb/o40Mb8BnsG+dF2f4zJ0jXfD
         +k91bBWSt+GHyeiKkPLtLkLqkbPVNF2VMFOPn1dCiLw4iUod/U6aYsexAi7MwmOWS5zY
         f11a/fUiLUGN6UGmbHE+wiMHXt18omoBlJgWFhla4IHYJ0V6T8IBkGmvFjgCTCMkAMKJ
         z4mQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNOdpFZRvL11T/It58iTiy78sH0YslA1Hp+an1A6/OCU7/bCVPnxH8tc70KCLjgjRSzK8m8A1Er/8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxmg7CgMSY/KPT4vWZp5gMg9IbPDXDQccIprJbSSQ4yEmWWm+EB
	/j0Gy4Yc8uWSyOVLdDZGRaOthmKa23iNV6oFzm3FKmJhCwaKVMZhBtMYmKQdVsYK0XW9gUv2qrd
	4+YMUJ6lC3ECaxQjtU3CfH53zcJ8b9LtKxe+Fsl0h/g==
X-Gm-Gg: AZuq6aIoUbOa11KGiBBOE+ztA+XQSVTuQv5GmgIzqXwY6zds2ZZQjBqjWbft2frKUfP
	k4z3PYttGzo1PzwRVoDVO9HHzKPmD5LjR5oZTstXJ/zERUeCaUVIqyJUyT3M+5Ee9mjn34pLkFX
	vS9ZJF7S5CuTrOCs8d+wJZBdw2lfhXJvv3kXpXgpz8c1cf5ngmR7yJ8yqRilQeql2pq/RH+nvaK
	qNWzxavM/dTXor9uPjS9Ch7LREoH01keqct5he3G+ZjHuyEn9VGv8EpkdKcXh1y02dr0DJY93bn
	hxcvJGov
X-Received: by 2002:a05:6512:318f:b0:59e:63b7:585e with SMTP id
 2adb3069b0e04-5a0ed99f1fcmr2755602e87.36.1771854284344; Mon, 23 Feb 2026
 05:44:44 -0800 (PST)
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com> <20260212164823.mbeycqwzsy2dfq6e@skbuf>
 <CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
 <f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com> <20260216092914.kmvl7aep7dantcsd@skbuf>
 <20260216162406.0121dd91@kemnade.info> <203a36fb-6ac9-41f6-80ce-b137b9db4ad1@solid-run.com>
In-Reply-To: <203a36fb-6ac9-41f6-80ce-b137b9db4ad1@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 23 Feb 2026 14:44:07 +0100
X-Gm-Features: AaiRm53IT_Xzv6_ZjZsPbjTua3wzc0_3fH4fOJcUrcKMz5LLxYEEUcMyBCE8pyI
Message-ID: <CAPDyKFrtTaJ5fqqbGrE_K6SAdTZYUfp-BycGjtWs4SabwBysKA@mail.gmail.com>
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
To: Josua Mayer <josua@solid-run.com>
Cc: Andreas Kemnade <andreas@kemnade.info>, Vladimir Oltean <olteanv@gmail.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, 
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_054446_797000_45718C46 
X-CRM114-Status: GOOD (  38.34  )
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

On Mon, 23 Feb 2026 at 13:44, Josua Mayer <josua@solid-run.com> wrote:
>
> Am 16.02.26 um 16:24 schrieb Andreas Kemnade:
> > On Mon, 16 Feb 2026 11:29:14 +0200
> > Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> >> Hi Josua,
> >>
> >> On Mon, Feb 16, 2026 at 08:19:27AM +0000, Josua Mayer wrote:
> >>>>> In the future, when you have a series with cross-tree dependencies,
> >>>>> please try to think of it as individual mini-series for each tree's
> >>>>> 'next' branch, and specify clearly that you need stable tags (to be
> >>>>> pulled into other trees).
> >>> I don't really understand how I could split my series up to avoid this
> >>> issue.
> >>>
> >>> Due to the fact that one (and now two) drivers implemented local
> >>> mux helpers, to undo that an atomic change must be made tree-wide.
> >>>
> >>> Meanwhile it must be avoided that while the mux core helpers are being
> >>> tested / reviewed, that any tree adds another driver-local mux helper
> >>> like appears to have happened here.
> >>>
> >>> Note that my patch-set did go to linux-phy@lists.infradead.org list, too.
> >>>
> >>> The second challenge for this series was that mux framework is being
> >>> enabled only by drivers Kconfig "select" - and not possible by menuconfig.
> >>> This is e.g. responsible for being unable to test =m build with arm64
> >>> defconfig - and lead to it only being detected through kernel robot
> >>> x86_64 allmodconfig.
> >> To avoid this, a combination of developer due diligence + maintainer due
> >> diligence is probably required.
> >>
> >> From linux-phy perspective, there will be some automated build testing
> >> (which did not exist at the time of your submission). This would have
> >> caught the 'hidden' devm_mux_state_get_optional() call present only in
> >> linux-phy/next, when testing patch 2/7.
> Excellent!
> >>
> >> But, to work, the build automation needs to be able to apply the entire
> >> patch set on linux-phy/next. So expect some pushback if it doesn't
> >> (hence the recommendation to send a mini-series to linux-phy first, and
> >> request a stable tag).
> It would help immensely if there was a way to get the patches renaming
> driver-local conflicting helper-functions very early, before anything else.
>
> Would this sort of patch be acceptable in linux-next now, so it can make
> it into v7.0-rc1?
>
> If not then that mini-patchset would be the first one I shall submit after
> v7.0-rc1 is released.
>
> Then I can treat the actual implementation of the devm_mux_* helpers
> as a second standalone patch-set.
>
> And finally patching all drivers with local helpers to use the new global ones
> can be patch-set number 3.
>
> Any opinions on this?
>
> > I do not think that is at all the duty of the patch submitter. I think as
> > long as every dependencies and side effects are documented, it is IMHO up to the
> > maintainers to decide how it can be merged best. They know best whether there
> > is any danger of conflicts in their working tree because that is an area
> > where people are working on. Especially this patchset is around for months.
> >
> >  In MFD where it is
> > more common practice to have cross-subsystem patchsets, once acks from
> > everyone are there, MFD Maintainer creates an immutable branch with a tag.
> > The maintainers of the affected subsystems pull it in.
> This seems like an option, if I can get the patch-set (or a partial one) ready early in the cycle.

I agree with this approach as it should provide less churns for all of
us. Especially since the changes to the consumer drivers here are few
and trivial.

I am willing to help with hosting the immutable branch (unless someone
else wants of course). Once all acks have been received for the
series, I can set it up. Then other subsystem maintainers can pull it
in if there is a need to avoid conflicts/build-errors.

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
