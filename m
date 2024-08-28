Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1873CC54752
	for <linux-phy@archiver.kernel.org>; Wed, 28 Aug 2024 08:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1ohmciU0ys0oSfCk+ZM8X+3jJnJizfdeJWtk1nr8mE=; b=N6VeZf9uRkHIGE
	L5U2VShqO16i66s79QKV82SEm1Xl517JW7+kN0AqgJSuO5DsGgU8J3QAfbtvk6ay+g5xy21CLISt1
	zExk+XSWJgQB8HMqqnrZjmoOu89X9norxW47cwJ1NJLCpHuBAWlRwPuQSON40ox+VTA1de6/ShBmL
	zHew0xoNVR2HBZ0719fmy+MOqjfkA9UON8VZnb6MJUpYuxzWnCOubHBHgbBgKYQC/wFrqNkD9N0zN
	io4NVzQ6F7/ubx0KcWwy971tj+nN1tBnZvaAXHLNUEk8asobaD7U0GiQGriMKb7Rm5b5zqyxJDvfq
	Rtv1B1Iu4FZBHUcCWcGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjENj-0000000Eag8-2zAS;
	Wed, 28 Aug 2024 08:50:23 +0000
Received: from gw2.atmark-techno.com ([35.74.137.57])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjELL-0000000Ea7h-0WCU
	for linux-phy@lists.infradead.org;
	Wed, 28 Aug 2024 08:47:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=atmark-techno.com;
	s=gw2_bookworm; t=1724834871;
	bh=6pfs4i4vDripwVzKrOUHAThf6XujiPM6U5bZyFKdLrc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TIondvqP02EmwVDIat/KpfaxjKUFAWSxUqlz23Od0SErB5d4A5+Jh0RlKOONnhDLD
	 Ox8RV3oXZFgmPicxboRx514iApcv14ouYwm7VP+E2uIu9phQXNM04rP5dWlU/kk27w
	 Ime4G0OpCYbQpnGp5a5Tcqy0pcXFpyi38fPpzjVemZNm5gbyusin/EguSs4dFLid0J
	 KEJC331wNP4YSpemMD2FVA5ePOIdVYHTh4I7Ku3euHhG8IKYlsmg78HWhnjTSYcOhB
	 6jPKRNjRaARrgxdEPTvkMdE4no8QKpjzhe/mZzjvj1RIpD3fqQKCppi4n+6uui1KC4
	 W3yL8V/Mmg5lA==
Received: from gw2.atmark-techno.com (localhost [127.0.0.1])
	by gw2.atmark-techno.com (Postfix) with ESMTP id BA5CD93C
	for <linux-phy@lists.infradead.org>; Wed, 28 Aug 2024 17:47:51 +0900 (JST)
Authentication-Results: gw2.atmark-techno.com;
	dkim=pass (2048-bit key; unprotected) header.d=atmark-techno.com header.i=@atmark-techno.com header.a=rsa-sha256 header.s=google header.b=cKbI8skS;
	dkim-atps=neutral
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by gw2.atmark-techno.com (Postfix) with ESMTPS id 26DCC3D8
	for <linux-phy@lists.infradead.org>; Wed, 28 Aug 2024 17:47:49 +0900 (JST)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2d3e42ef85eso8262552a91.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Aug 2024 01:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atmark-techno.com; s=google; t=1724834869; x=1725439669; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pAldl2xCzAsh3Cj6QcqFR8+ZE1/v9SHjhlqKHvRmHc8=;
        b=cKbI8skS4gX4BvoYzHurB72Cl9Wkp0xwT3UsJIPY+RQE5TXqVoJCb6HoGDdX7hZ4AD
         myk8bxvgoYPWpMu6vtf3fWPH/oY6vf1hdcSqQ5WzTVbFU/GdkuAUHLv4hc+lWGgFs/gF
         Mc3liIIzTdnkxVctMx+4bvkKURkdKQmN5uVpb52Ko6/Oo9Q7uJNJFUpmH92jM1PAXnmB
         FMqDtgO6X/GkHOIGjlQqe8rGokx3CEvenBHvnJUqIdbKqGR4y3LhusacO6kGGM7av9jy
         fmROdJxh15jpEvhbioDbh0rxm0Ic57U24I4ViWoCeOnWwnQ1B41z+FmpowSFoYDMcFan
         tNXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724834869; x=1725439669;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pAldl2xCzAsh3Cj6QcqFR8+ZE1/v9SHjhlqKHvRmHc8=;
        b=wvcR9ffhqB6ZYyd+b+PJ9q3+TZ6N3LJjp68MXgq+JW2AIJ3x3QgxPlxqMPmbYzP/JA
         jPDf3P1Bc6Ko6LStgzpDMaVkrJ8TVn6vhf5juxEuGGuZbT0nG/mhpkIzVrCzmSIrvxyd
         ZTcJnipbbbgCWMfzY7Aym6KKFITluoFVQE8hNzk3pNqCac9IFD14Jcm/3iDu3J1uD+pR
         C1exT/HXcp3pX5U4KZiuIgipf9DE57VJBqKIOAsBWKPXJbgRU0h1bx67OffNVsNYqlxJ
         dkgGSkLDbgbhVrfHiHiNrxZz+OANmbE8bXVbwXN2Lh09zRb18IYqRcRI2r6fgi9/A4fV
         425g==
X-Gm-Message-State: AOJu0YxCy+dnxtnVJIvTanqp8wNpPOHPj8OInlYbIXi5llcv4S4HsEis
	gcifDxprXX8gyShwGd2rdJTVCaurAVQ+qliqlyDXHtoKPbbo4kAGtuLnY4uKEA2z5Gto2iQfGYS
	URLzsS3bbbVdsKOqCLEBbdvTSworxQK8uTV7Iyf4bDlmsHyKBYYFpoXXSuO79LM7xnwj7uSLEFk
	E=
X-Received: by 2002:a17:90b:1b0a:b0:2c9:80cd:86b4 with SMTP id 98e67ed59e1d1-2d646bf64c2mr14792068a91.11.1724834868855;
        Wed, 28 Aug 2024 01:47:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdjQnPKPR912NnK2N/SqoeL4fXzUu88nk0g3dQyz5864cBxHSptKcI63bsrGMeiRP1XSHdMw==
X-Received: by 2002:a17:90b:1b0a:b0:2c9:80cd:86b4 with SMTP id 98e67ed59e1d1-2d646bf64c2mr14792050a91.11.1724834868531;
        Wed, 28 Aug 2024 01:47:48 -0700 (PDT)
Received: from pc-0182.atmarktech (103.131.189.35.bc.googleusercontent.com. [35.189.131.103])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d8446f35eesm1119665a91.47.2024.08.28.01.47.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2024 01:47:47 -0700 (PDT)
Received: from martinet by pc-0182.atmarktech with local (Exim 4.96)
	(envelope-from <martinet@pc-zest>)
	id 1sjELC-00CmWk-05;
	Wed, 28 Aug 2024 17:47:46 +0900
Date: Wed, 28 Aug 2024 17:47:35 +0900
From: Dominique Martinet <dominique.martinet@atmark-techno.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com, festevam@gmail.com,
	frieder.schrempf@kontron.de, aford@beaconembedded.com,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Lucas Stach <l.stach@pengutronix.de>, linux-kernel@vger.kernel.org,
	Makoto Sato <makoto.sato@atmark-techno.com>
Subject: Re: [RFC 2/2] phy: freescale: fsl-samsung-hdmi: Support dynamic
 integer divider
Message-ID: <Zs7kJ6vCDbxVvxU1@atmark-techno.com>
References: <20240828024813.1353572-1-aford173@gmail.com>
 <20240828024813.1353572-2-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240828024813.1353572-2-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_014755_473936_5F6B9674 
X-CRM114-Status: GOOD (  20.75  )
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

Adam Ford wrote on Tue, Aug 27, 2024 at 09:48:02PM -0500:
> There is currently a look-up table for a variety of resolutions.
> Since the phy has the ability to dynamically calculate the values
> necessary to use the intger divider which should allow more
> resolutions without having to update the look-up-table.  If the
> integer calculator cannot get an exact frequency, it falls back
> to the look-up-table.  Because the LUT algorithm does some
> rounding, I did not remove integer entries from the LUT.

Thank you!

We're still running 5.10 so I backported the driver as of it's current
state first (that part works), unfortunately our 51.2MHz display does
not work with this.

After phy_clk_round_rate() not round the pixel clock to the table values
(otherwise we'd only get rounded values), and making phy_clk_set_rate()
pass the requested `rate` instead of using the next smaller cfg->pixclk,
the display no longer comes up.

It comes up with the values obtained for 50.4MHz (next closest value),
which also has an exact match so uses the integer divider this patch
computes instead of the table values, but not with the 51.2MHz it
requests...
I'm afraid at this point I don't know how to debug that further without
getting a scope out (I don't know if the soc isn't generating something
correct or if the display actually doesn't like the frequency it
requests?! the later could be checked by plugging it in to another PC
that might support that frequency...), and that is going to take quite a
while...

Hopefully Frieder will have more success with his displays?
It could also be very well due to some of the differences with our 5.10
tree, sorry about that.

>  static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
>  					  const struct phy_config *cfg)
>  {
> +	u32 desired_clock = cfg->pixclk * 5;

(I don't really understand where that `* 5` comes from, but I guess it's
expected? works for other display and neighbor frequency anyway...)

Thanks,
-- 
Dominique



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
