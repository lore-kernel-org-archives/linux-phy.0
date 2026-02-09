Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 710A7E81BC3
	for <linux-phy@archiver.kernel.org>; Mon,  9 Feb 2026 13:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAToQU0EhE5XdAHzfuMBW6IaS50gHSEhdR19F+wDoCY=; b=2I5G+t/gBGGZft
	ilpwtaugEcaMleG93n1bRuMoy8m6eRIJhjg8tJeotUzf+YfMTP9vTiVea6KESTbuJQNeFGDhOwBMr
	gqsiW5FB19xCF2r9+nf+Xlj9OG0vo/hPt7bERVAj9WbYWuo6FpHlTJBG4MDqx0ccfTl11FWoccQI6
	ikvls91aogyXDXt0bLPQ0jwPHjBLIIWrohwGDZmZ4ykG6iJaHD7De0xguxhbiArEdpTPcnqAKrlmu
	gxjw5+mIG4+L4pzs4b/ySdXWMYrpL65m1yqTxVWOnXyKPNGhytMSttbN3UiEDra6cEpR/Efn7c/o0
	9gLFPj74unF/aay5BITw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRVC-0000000FSCA-3KDX;
	Mon, 09 Feb 2026 13:40:34 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpRV8-0000000FSBi-2oPB
	for linux-phy@lists.infradead.org;
	Mon, 09 Feb 2026 13:40:32 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-59b672f8ec4so4385526e87.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Feb 2026 05:40:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770644428; cv=none;
        d=google.com; s=arc-20240605;
        b=RP6KoMH7VGxZUX0b3hpCUwzmgimLVV34FbPJh0yS16BvAdONcvsuk/FXFrRGHwkYIk
         ZxOESUYFyZ0gBI/s3u+FVaJrU0Ku5wmlBB4lgIaSapLrnXtLhI5UW4Bp+cW9tTgNwu4Y
         JmCMa+4N0ezUr5waElR2874xf5LyDyaiVyShA/m4Ifi5gfMOlm3OKYIf5Std1WbOPNIJ
         wCQ0jd0Ce4UA+kwxbr0YFhQMmvNgQ7UFocVFbWLqlDmH+7rbLGLyWyNCCVQAi2efuSD4
         BeHJU70blMZ9epucYQk6wrfBNqwxEFaNvGo592uHHFBMrptQqbB4EB3uI9gaxFRhlI/+
         EczQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=R1Asw47nW8KbTcIT5in3zyK3FGQv2KlKo6oaVI/Z6yA=;
        fh=9rEIB/5DL0trV+6wexgeExsJo8l7TKmrDbSTYzF8yjY=;
        b=eKxcZVXY3POrlxx5Tn7lCsohe83Wal2bVZdWbZtPfMOTjzRU7xArT9PLUDo27mPE2Z
         Oy/27787QK8mGgpIfs99FqSpMTdFaaMGgLqRCPSMBBiWYg40LnhuBK8C1U5qR5/alt2x
         G0KEsA8hsENebwGQBphqVGbSNVrYeUThjUmedeKACz1M1XorhZtHYMircJ1R0dXCAjjE
         QCzFUu4DMYYj8gleZeTgqf2jVLjgjKJ33LaoilhCBaGClslx2i4pp0dQhVIIh32EmMrI
         VUI9HJPxTIL9Me3SIwKb5oC6tL97BFPhQmWdZ2zuU9S9ZOZbCQMUQAU3LtkQSJ0nek9X
         EuBw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770644428; x=1771249228; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R1Asw47nW8KbTcIT5in3zyK3FGQv2KlKo6oaVI/Z6yA=;
        b=xY/qx80PoZKBr2Ulaur7cRI5WCfX8CgQ6Ku9NOXXhPrCdUWyLu/07OP1byJ1N8tGP/
         UpQ3F8ytmopKrV4gLRJHM3kIZHH5fDp6lSGdo3pcc1WkFX/xmS9RhQlubiOA8tKR3lW3
         OB31+sFurcPkrAUIqIXkRdrXuH+ZZVCXhYGEBROCi+EordRkzjbMAOW2fLmd3/u8TglM
         h8u9wYEfMqGTCcfda6DfK0Cs+XV78UglU3St96pp6Zg5dm9TLxiauuNZVdu8MWnpJgX2
         bys/DKatVsS67RCVUxMcpecBssjN308uam+QF4dhuVe8xZVljKM/UTALjL8uYS3WBTQV
         mIbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770644428; x=1771249228;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R1Asw47nW8KbTcIT5in3zyK3FGQv2KlKo6oaVI/Z6yA=;
        b=A95gwQ5o/9rHGbfjxxTpvS4HIIRIeTTO1FkwLIzhdEwXzAH19JPR/974NfvOHr4k0a
         EUcSF3eJbGRcx+SapIqhEPSgmXy+H0+/+dbsBFBlbKlvou/V/GgXNPoVnUVllweU2Jpp
         M64u99puAZhIirMzQHJWqMH8CSUeGD7+NAwkFDEV4Fja4oPn125vafYTO4efaqjmgs5n
         r2AL64mIWMHkpuXg9zzBfayv8fIlFbkIfB0yidOR/8eN1LXdj4zT1YKZogVyWVbp4WaV
         TCVnkgaLN2SUA/VvxoiYOr+IshH4ujZTe1Y0BALPYMdXSDn61EYXUdxF3NZnEadBx/Tz
         CHMA==
X-Forwarded-Encrypted: i=1; AJvYcCUTQmQVixQ5F4CHTCq+ZSEkkmL5mpUvCqOcPdtEx78BAjy+6Xg+yxsp9hkGEsrNqFe7BtWm3Ko7JYs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxdg1wbskWowxwO5uB8EiKjNlmkcvJnVUrlVMBRwYVBR9wrh+cB
	0sSiO1ZAcDdk/0mNsqyIaWJaSgr8lx5138ZYAMVJbrt/cdh2qTcNlzf6RLGIWIJSL8mYPibxtnA
	99ROJ1atHrGczMi+PV4uVRV84oN4hp+vnXqWvkkzvuA==
X-Gm-Gg: AZuq6aJc7GXusjfW92TC5NIPcHqVN/K2fT/XWU3xTDOHIZel4timlsn7t2/JAx8/PmA
	7jvvQVK3+7vIZkY0PelYmGzZdIaLlN/ogPXlrRlPBsuc38MEHajjxu7gigmpcHMjI0SOYuxcQhq
	53d4bFBeerSrihCdBV4qU6NEL8YjqiO6FCZ12FAna4vLWIyWh4WDeGOBBdOU4fBpw1MalApeCvP
	Y4XOJuOoIPltLQy9bMAjnvIOvfFztblRW4yYkdcMpWzWvzDxQ2i53d0DmyuTwXen/4MS8ot5PAw
	ZxOOhv0c2aY7X7ii180kbVSghWs=
X-Received: by 2002:a05:6512:23aa:b0:59e:3fca:fd68 with SMTP id
 2adb3069b0e04-59e45049262mr3618201e87.15.1770644428108; Mon, 09 Feb 2026
 05:40:28 -0800 (PST)
MIME-Version: 1.0
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
 <CAPDyKFpbpcg3ei51hEcG5FzJL7tK44PdBcMbxfOdON7ozxP2Xg@mail.gmail.com> <9f49bf4d-48ab-cb8e-db39-3f573d20bcff@axentia.se>
In-Reply-To: <9f49bf4d-48ab-cb8e-db39-3f573d20bcff@axentia.se>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 9 Feb 2026 14:39:52 +0100
X-Gm-Features: AZwV_QiBKZ8ysCcM3dIWhiLTRzG7BAEGejTSAtpE8_Z2Od0YK-CzC2pfzVA8zOY
Message-ID: <CAPDyKFo2Zm2LKP6=m=fJEbo1a2ZpBn10EGaucFS7zGfGJV_6tg@mail.gmail.com>
Subject: Re: [PATCH v9 0/7] mmc: host: renesas_sdhi_core: support configuring
 an optional sdio mux
To: Peter Rosin <peda@axentia.se>
Cc: Josua Mayer <josua@solid-run.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_054030_753043_8860EC83 
X-CRM114-Status: GOOD (  15.46  )
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

On Mon, 9 Feb 2026 at 14:16, Peter Rosin <peda@axentia.se> wrote:
>
> 2026-02-09 at 10:57, Ulf Hansson wrote:
> > I have already applied for v8 and it's going to be in my pull-request
> > for v7.0 in a few hours.
> >
> > Please send incremental fixes on top instead of a new version of the
> > series, then I can pick them as fixes for v7.0.
>
> Hi!
>
> Sorry for being late with this, but as the mux maintainer I'm not
> fond of
>
> 028ec00381f5 ("mux: add help text for MULTIPLEXER config option"
>
> and would not like to see it in rc1. Can you prevent that some way?

Sorry, but my pull-request and branch was already prepared.

Please send an incremental patch on top then I can pick it up as a fix
for 7.0-rc1. Unless you want to manage this yourself via your tree.

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
