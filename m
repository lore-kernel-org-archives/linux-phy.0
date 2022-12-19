Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B58D3C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 19 Dec 2022 12:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XN/YqY+f1t9hLP3CEvRVpnjQA459z8MOR0wxao4Belg=; b=OovxLKIYcqp8D2
	jkJTDWfOIARj2br7zpWLYHNWkFnyH5/cgCU49VFYNSlevRWYcUbrYUFRJLiLzNtxZiiRcdB7P/Bwf
	6dflSyS/dJIIsNebRMjl4hzVHtaDdT/1WdWF1ORWTl3xMJu5ZGEwuFRR0eux27Ptumq30WJfvjfPU
	2caKzIV3vGqBcgTAMioccNicoFvS3WVgEf+T1JL4ovNNZWtXrW4FIedwClNivBblukTFW3A7e16rl
	IZY0J+Ts5T3/uGgoiUpgld/j84qtsnLfOjNc7fPWp0H6h05I5B7pcRyAvFVo867Y5MoXlXtN4l8q1
	5E8Hw4iam5oatDYalHDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7FMY-00DCrI-1s; Mon, 19 Dec 2022 12:35:22 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7FMT-00DCnW-V5
	for linux-phy@lists.infradead.org; Mon, 19 Dec 2022 12:35:20 +0000
Received: by mail-ej1-x632.google.com with SMTP id ud5so21126084ejc.4
        for <linux-phy@lists.infradead.org>; Mon, 19 Dec 2022 04:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rCYG7t1izN/gOyqR3UaPefTWs3YwGVtAE/HZuYn9Rfc=;
        b=ZKtkG+FX5U20S1M6EMAO9s5DcYzxSPb3NQCBOLLNZKUq1ijR3Q2uoYri0UIzTgvgB0
         BuFxphDmBbwcllU3Gq/LcNYSqtuoFmVbWfxHoWpZbb485QqVZreK8NBdka6pJ9kqxEfi
         b6g2VtgxtP/YluAJZKnBbJAR0WCcpqKp7HjTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rCYG7t1izN/gOyqR3UaPefTWs3YwGVtAE/HZuYn9Rfc=;
        b=Q6dUP7WoM8vpxsXjfqHYRnBInNt70Eo7yutTq4QEg/ATlemTlfxSSae0+D6OtyHzRh
         jr9C81n7OWYJgoe2YjpVyFP7wltUhehNR2q2VmfQDR1Q9/wmyDLz43mXQA7crP7d0enG
         P1Az0MC1qXYwFhRW5shj23OjpSxDh/QmaxHtMQrBLJd+PJx2BDQhK+EFZmV5T3AEs+yk
         Zj1CDFrPQzd0EzrWLNhMfxEn4lloJHumXMemdK20jkTFW+hAa4iBsp6lCx3LquIaqb7p
         aXyeveJGDDzCYubcu4Iu/HZfegnTOkGSYjINLjuBTey5okD77zzLpno0WGu3zRUPx0Bw
         Icwg==
X-Gm-Message-State: ANoB5pkzqzUqdjeddqSLADalxoTLkcfLVw5aMwI2anklISYreqFjRTZk
	GJfbs9BC4w3a+OLAKoPWDknxpkc9AHTRjCAIom4CDAqaqsLxVPa0
X-Google-Smtp-Source: AA0mqf7MRvG+Qj2JseT+Qj2IY04GU3ehuu2j+6yoRs/z0TWbsGNO6utzwcWxYija4unhyYJGQ57ZKqf8K83fjcrrTnQ=
X-Received: by 2002:a17:906:8383:b0:7c1:19ea:dda with SMTP id
 p3-20020a170906838300b007c119ea0ddamr8979778ejx.31.1671453314287; Mon, 19 Dec
 2022 04:35:14 -0800 (PST)
MIME-Version: 1.0
References: <20221002064540.2500257-1-michael@amarulasolutions.com>
In-Reply-To: <20221002064540.2500257-1-michael@amarulasolutions.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Mon, 19 Dec 2022 13:35:02 +0100
Message-ID: <CAOf5uw=2zjki8DEkgvDTKrj6V=FS44Z1WN3AvFZvzuN-MU_y4Q@mail.gmail.com>
Subject: Re: [RFC PATCH 0/4] Add RGB ttl connection on rockchip phy
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-amarula@amarulasolutions.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_043518_070395_2A9C3687 
X-CRM114-Status: GOOD (  19.51  )
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

Hi all

On Sun, Oct 2, 2022 at 8:45 AM Michael Trimarchi
<michael@amarulasolutions.com> wrote:
>
> The rockchip phy can be convigured in ttl mode. The phy is shared
> between lvds, dsi, ttl. The configuration that now I'm able to support
> has the display output on some set of pins on standard vop output
> and a set of pins using the ttl phy. The solution is not clean as I
> would like to have because some register that are used to enable
> the TTL, are in the same register area of the dsi controller.
> In order to test I must add the following
>
> dsi_dphy: phy@ff2e0000 {
>
>         reg = <0x0 0xff2e0000 0x0 0x10000>,
>                 <0x0 0xff450000 0x0 0x10000>;
>         ...
> }
>
> The problem here is the second region I have added is the same of
> dsi logic. Only one register is needed by the the phy driver
>

Is there anyone who has time to review it?

Michael

> Michael Trimarchi (4):
>   phy: add PHY_MODE_TTL
>   phy: rockchip: Add inno_is_valid_phy_mode
>   phy: rockchip: Implement TTY phy mode
>   drm/rockchip: rgb: Add dphy connection to rgb output
>
>  drivers/gpu/drm/rockchip/rockchip_rgb.c       | 18 +++++
>  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 72 +++++++++++++++++++
>  include/linux/phy/phy.h                       |  3 +-
>  3 files changed, 92 insertions(+), 1 deletion(-)
>
> --
> 2.34.1
>


-- 
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
