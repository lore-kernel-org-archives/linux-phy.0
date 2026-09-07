Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 939D9C79F9F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 08:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZMvqpxLov8xNGxoFYhyfeMc9RBxAPGK5TdamALKuvRQ=; b=V587GKIntn4WN1iMFctMdZdN4t
	NJamsVe5BcKf2v4rby1vlj/BCSwx+BxOfmYrpzP9+BKB1rSh7wLy9jVOteO9JRDpqlOfJQYXw02tT
	46O2hQWo85cJu+/ROi5wtozR44BWsjOEFLu7eVkRs0GXRVagZqyWAy5QOS9P+a3uVbkVijbqWLyAd
	cI65veSv+IbsirxJjNdEWmNxDj0mbpW5ITqwCYYAqe2Utnd+LHUYxWeLIvZTGQMQe3sgeJHwSuF7t
	+Pj1cElpvEgobmGsgowaXmzkq2miQCEN+kH8JTnl08+hf59BdEYzZHumaRzv6ECI6tCuE6XOLn+rX
	hXJJK16A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Udu-00000006G1a-0j9z;
	Mon, 07 Sep 2026 08:23:54 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Udp-00000006FzC-0qT6
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 08:23:51 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4957eefd361so25113885e9.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 01:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1788769427; x=1789374227; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=toPH+1ZArk/DDhOFULiU+peDd7xkrEZ/LBY2wlar/aY=;
        b=AqcT6azw3NpV0M6LDthDjv71uXMUGp8u5NPdzZGQjsRrZnaejM6iDAFl+xdExk7sSV
         BRxRq5B7N3NE/49Am7ON9xl1rbzT5wIrLrsPNuzBFw/Rj5QEFIaCDZDs8rH25dj6AaGN
         0s6Kq36gy+LzV88UVjsyRZpPv0NlQ9LJaCsPdHAz4ttHcuT0WMIT69JHmnR6M7tkzaYG
         RREHGYtzZYOQzcrmBnkrx8EABPBJieCWQvrmPDP5mJH0FWrRmB5b7rYKAYXb+NGIjVaf
         xOdCIRtFy2xi1u/mFb5AcMwWNWDPWt8NYlO7MsbTmUsOh9Ql4iiBLfqCrjMvkMmj3Ji+
         SNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788769427; x=1789374227;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=toPH+1ZArk/DDhOFULiU+peDd7xkrEZ/LBY2wlar/aY=;
        b=kdjjLd2ey3mM/f3zGpKYICxliz0MpBEV4oWmZ+EJ25vx+jrO3h816SCAk23EUZt35S
         aqZN3mzEu1LyXgxO+dH22/t2IDzNI6b962Csr66V1YZsbVkhKZicj9kY4qCJCnjx5Zit
         qNVBnGudHQOZmhuftmgKK7sJ8zr2eKvdsHmafdYKWXCyW/qyo9lAW2xMh8VCVDR8Uk2Z
         liwPopJNY28Mx3UgXA9DR8hv3h889uChG4KaFmezterxfia6TA8DFjMSXUOrCwUiIe1c
         T+kG7xEDvvbD2W7c4J/2yvvOnnRjgHPyjkBvOtUklN/iLozKEnucJNYVPJVZwh6XcLdX
         QQDQ==
X-Forwarded-Encrypted: i=1; AKwUvBxPAN4rebpqKqdshO76VS94/pmRUpdsg01X96iiDR/7jAL/X6QkxEmLFA9d7Rhs9zOvIiZHjbRRxyo=@lists.infradead.org
X-Gm-Message-State: AFuF++kcrZMZeLMl3/+yQAeG26FguPnBJmcZRIxSA3lcWqSvdThn9hAA
	jZwv9LEJ9b0kIIUy+nuxwy/E4wJ+WilwPhCpT4H59x2cl/QJvR9wB42ctvBMsqSUghY=
X-Gm-Gg: AYBFou015++hqQksjxwK6jX1I3pJX9zBzvfL47q86hIklBshgg+74wOUq/REbNpZX7s
	T+rCV9G6V3dWWIsp4UY5+NOdScSrAULe+dZazmu7N0zAMo+BFWVsrKOkm2ePRfrPZuL9uWckh6A
	QtSkx0rMQKePSriRgDbDGbRQLh/TkWDQC4bEnkXcg7r3c7J7y0DkrbDqGSIo3inl3I/fMruybn7
	2jk99yVWGLLcMJBrz01y6F7GxJHVNrMmTecZMQToYeZ5uJNaGYPOsa0n1krV7EA1jNJnmj+CSDv
	Hm+QNo53uUEV4UZyX2+HvfZxHg9P9WMbAu2zsEWN7kNCjKIpt3NlhbVoRxZ1km4XY+it76n/C/9
	YEVbQ4BxIVKPY43XoFADmWxWCe88WjVGEWKCABSHZOBWAcfjGH4uDhJwYIiD5/5kgDpfoiGWpO7
	hKRAKgFc5rSm0+SIqCgp29h0gG3omLRR3GRyXuLf1Ucn9kuL5f/mYQVYzo25kgkvNnqgsAkl6lk
	DU1A2bQw0Z+IONvJjlgnk9W1kaCPZ0VHPwLWtKkBxW0qheD1CfgogCb2KYLow==
X-Received: by 2002:a05:600c:348e:b0:49d:622:df25 with SMTP id 5b1f17b1804b1-49d0622dff1mr104970285e9.1.1788769427009;
        Mon, 07 Sep 2026 01:23:47 -0700 (PDT)
Received: from localhost (p200300f65f19a9047ae53bb37ada872a.dip0.t-ipconnect.de. [2003:f6:5f19:a904:7ae5:3bb3:7ada:872a])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-485883953cfsm22327326f8f.13.2026.09.07.01.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 01:23:46 -0700 (PDT)
Date: Mon, 7 Sep 2026 10:23:45 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Lee Jones <lee@kernel.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Emil Renner Berthing <kernel@esmil.dk>, 
	Hal Feng <hal.feng@starfivetech.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
	Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Dominique Belhachemi <db@domibel.de>, 
	Brian Masney <bmasney+clk@redhat.com>, Jerome Brunet <jbrunet+clk@baylibre.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, mfd@lists.linux.dev, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-riscv@lists.infradead.org, Andy Yan <andyshrk@163.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Maud Spierings <maud_spierings@murena.io>, 
	Graham Markall <hello@big-grey.co.uk>, Icenowy Zheng <zhengxingda@iscas.ac.cn>
Subject: Re: [PATCH v3 11/19] soc: starfive: Add jh7110-hdmi-subsystem driver
Message-ID: <ap50F4QOw7jbcvI6@monoceros>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132729eucas1p1bd78eb90feaf90b6265c13fc7bf43ada@eucas1p1.samsung.com>
 <20260904-jh7110-clean-send-v3-11-484f9ae72715@samsung.com>
MIME-Version: 1.0
In-Reply-To: <20260904-jh7110-clean-send-v3-11-484f9ae72715@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_012349_543074_C7936EB3 
X-CRM114-Status: GOOD (  10.48  )
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
Content-Type: multipart/mixed; boundary="===============8238314463301083054=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8238314463301083054==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dohx7bkeczkqrdqr"
Content-Disposition: inline


--dohx7bkeczkqrdqr
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v3 11/19] soc: starfive: Add jh7110-hdmi-subsystem driver
MIME-Version: 1.0

Hello Michael,

On Fri, Sep 04, 2026 at 03:27:12PM +0200, Michal Wilczynski wrote:
> +#include <linux/mod_devicetable.h>
> [...]
> +#include <linux/platform_device.h>

Please don't add includes for <linux/mod_devicetable.h> as it introduces
many unneeded build dependencies. Either rely on
<linux/platform_device.h> providing of_device_id (IMHO preferred), or
include <linux/device-id/of.h> directly.

The same applies to two more patches in this series.

Best regards
Uwe

--dohx7bkeczkqrdqr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqedI8ACgkQj4D7WH0S
/k4SQAf+JxaOkTt0KXEdMeiFgnBOg/VvLQ2tgwyYbYV25ymCW6f+E/Oz3WAI4IDD
S5sDwYSMfEN2g+u3IdIzE3kZhVEAdkv+iyA6MExPzaVz9qaS/A5RwGIGRO8EtmbY
OnW/GTowIQWQH8Fs2w7pe+ITRAhjl+9OOwdM2Y5h4x+EZD4CUz4apRozxIz62mu0
rv5S6v/JdJiz/WNpikSdNzKKIKdq56RUI2KHXKfjqnvCkAHwAVnPfgCH+HNcpJSX
wljKv3FOemKlAJV4uNgIjZs2QqmcGZbZ0acdyNWZ++YujYR8wLjOkQ0loi8lNg/x
i6GGu8ylq1Jcpp7HF98D268WTb+1Fg==
=jV7I
-----END PGP SIGNATURE-----

--dohx7bkeczkqrdqr--


--===============8238314463301083054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8238314463301083054==--

