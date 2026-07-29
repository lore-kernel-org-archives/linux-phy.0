Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AF98C54F51
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 12:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yikBCofZkt7iFiJaPEspby107LLIAAvfddCfXI9VAlU=; b=vTnMIPJPvA/Ec3m/V/JrFaIUpW
	SOE/JFYqvrQUZGRVD6SYmm/qX/l3zCoNBBkemR7a06pD4Oczktw9gcHkAezwmSzGuFOutCoex03yR
	dunsSiFe0jY4tsbZyVuVmTUmJb9xEAzTsr2KzvBLIAXsb0ngeH7ZIux/Q9bljUrGYOmY7eW5rVD9p
	IhWuTPDpjOL8/lXIdR89Hytgg65SlRP1d+2h/JHvUROrWaIn+ThbsRJJhr0K5RP2dgHJLYLBIYi3I
	qrPcHic86IICG1guxRBbQvRukZ3Wj0jaLRrvmrUXi4Oe3cbF5nwjVvxrTfsFGUUEae0iXL65tVfj3
	a2nICEIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp3WY-00000007vmV-2l6F;
	Wed, 29 Jul 2026 12:36:38 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp3WV-00000007vlf-3DWm
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 12:36:37 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-496bb7cdf51so9322045e9.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Jul 2026 05:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1785328593; x=1785933393; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=xGyW1zCh+rLKiJ62hDLL4FkHUX+Lqecc47aUXSHCSkw=;
        b=N01y0mJDn698AyWwDU08aHuZU51PYBnT24YRvN4pXCO4VAbZ7XjIg3BrwhN9Fn5JGO
         z4k2QHzDxT2tJ2Jvi9rcrYMdZoiK0DsMn7Gv6UgKbj6lKEW4+QCkaqDaK0r9oULR7Cul
         gwsPUfxMFBwjA8qhVKhIK5o2orjDGcLk2cbFaW0pkE2yrQo77RP+GmfVOPFU/8wtVahA
         8EqMMcJTuuAHQvQzgjP3TXr3epsYI+RrCQDD+e0xZJ8ZbOJhU5v0hfRrsGzPEpfGNlDG
         HfTdcR4myvgPLRCgLhfuRnV8Lz/dmDxS0sozKWkWtp096D9I6uMnfJrx45qraQa6X2Ba
         qz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785328593; x=1785933393;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xGyW1zCh+rLKiJ62hDLL4FkHUX+Lqecc47aUXSHCSkw=;
        b=rRkb/2DLOlUaCqXKor/SGM/FK0lffqapnGi5pYd80kBwBSYR65pvAsnktJ23HPScp/
         d2YZnBBz/CGz6vypWqoP4T7t6O5j/An7Sh4RbycjwpqcVc3ltSmWIA9s9ChFqZ2K8tGe
         4za7wghGScjXprZjBDwkIZZKruKN8Ca4Djbka/bBqQ4WR533dNJ2WAGRt6D7uGDQ/sXy
         yfRqI9e+JIvNaERkc8YayMy7cjbjwP8UlWdYFKbhbB6kGphjO+YoLj/6Ka6heiYxcX7P
         1HwbCuzJFGBSog9NBbeqhVaSg8Ot098i0JpCT1QH5mO/QCoFuZSW8ihhBMVJoYEI1Jgo
         l/IA==
X-Forwarded-Encrypted: i=1; AHgh+RoyLn5drg90FIyzGSkIU9qQmXP2DlkyfQnIrs7torjz+t5KMBVlFijEdA5rUcZgp/y5l16I3tWQSMg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9hkmC1I0kGqhKXHzS6PsTkjiyEMVgSYEynsw9MopsLzR3MdPF
	6XkeRHFtI8Wt7rC29cqWPwrlHqEv3/pqBKC0OavsGwUaAvKcEp8e+bpaQxT8byH1cXE=
X-Gm-Gg: AR+sD11ug30Q3X+TjsGH4ymZM2lT//Y/9x2uyGJ/LHcKHeUx/q1WjX6fwJF4xURsNl3
	Kx023+j/fT7oFsPV4jBHnO/rVI9tBV/vjM7WlUrGIpTTmVPbeSMd2VQ9u/G0XAE+bXzJI5lFpYZ
	nymVY53S4RlenFRJb0nss3+E0UlKAiXYCcyQG6U12jh9DQKZJIMyZ/OArNx4tZWfhpDrvz/ssYN
	CvvOzwpsUtsCgUAEnkm8z2t/SqmN7qTcPCFdWePu7DWlQJQwnVce5GlHOU25OW1tzN0ZKrhsZdJ
	xPX6v/4uHeAaAes8kO7yon/BBB2bs66n1BCyhEkco8u6sIIDdaCv8KkIw3M+egeGWvymG10gl4h
	4Nbqff8QL2CQsZkL/LUOBiA2zpv391CUx/JFmFFi5HGJECgILyFqyADfCk9Qr+xnVNZm0PKlWTv
	3c9EPdRhekoQDbKB+Z9qDBxSeViiTcD1nad1UkNxh8WjjJYqKuSP7IxcQ+0nm3bwfO//kjyk5f9
	uZgaVRMdVKrj3uXW3u0RjyUhevxc0OwAMs+Rz2PscFMUj58fSU=
X-Received: by 2002:a05:600c:3153:b0:495:573e:1c54 with SMTP id 5b1f17b1804b1-496c6428a29mr80996735e9.9.1785328593413;
        Wed, 29 Jul 2026 05:36:33 -0700 (PDT)
Received: from localhost (p200300f65f47db0401da7fd03a16a046.dip0.t-ipconnect.de. [2003:f6:5f47:db04:1da:7fd0:3a16:a046])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-496c45b1c76sm146982725e9.6.2026.07.29.05.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 05:36:32 -0700 (PDT)
Date: Wed, 29 Jul 2026 14:36:31 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: codykang.hk@gmail.com
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH RESEND 05/17] phy: spacemit: add Innosilicon DP TX PHY
 driver
Message-ID: <amnzTxDYtSBojHdY@monoceros>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-5-6de34d80e86c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260725-k3-display-v1-5-6de34d80e86c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_053635_823392_AE1D6E3D 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============2482632440932494688=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2482632440932494688==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="db2zigiccrbrx7pn"
Content-Disposition: inline


--db2zigiccrbrx7pn
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH RESEND 05/17] phy: spacemit: add Innosilicon DP TX PHY
 driver
MIME-Version: 1.0

Hello,

On Sat, Jul 25, 2026 at 12:51:14AM -0400, Cody Kang via B4 Relay wrote:
> +#include <linux/mod_devicetable.h>
> [...]
> +#include <linux/platform_device.h>

<linux/platform_device.h> already makes sure that of_device_id
is available and <linux/mod_devicetable.h> will go away soon.

So please drop the latter #include.

Best regards
Uwe


--db2zigiccrbrx7pn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpp88sACgkQj4D7WH0S
/k6T8gf8DMOwEtZaYC8vvvJqKWATzitxIn2z2YqgDVlNFzaZEYTG61pFLh/KTds+
sl2cVZmTi8idTg/Of+KXRfO2hxAkSW3C5UbNd60pd0VY+mQSfW0RGGroYO+tusRx
A6NwUHW15ZrpIuAsbkKepIhd0YmoiVA9SimCLHX85RxW8RuuPoKWsaur8Jv/j+Pz
dp+m3Lfaj8gG8J21Rdy8YTgKJ8GMpjOVpViSpsqQIROd5gqkOUepPpTGc8Cc+Pr9
haGqNLM86F9sZOA5aL8HEpYGHDo3Q6hGRmDiUm3CBaNwalgdp6qGUEKWGBjRoi/4
tgGD4NlIoAze3OTkKRb3ysqj3/8Xng==
=c0aq
-----END PGP SIGNATURE-----

--db2zigiccrbrx7pn--


--===============2482632440932494688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2482632440932494688==--

