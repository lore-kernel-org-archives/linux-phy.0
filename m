Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32963C282D2
	for <linux-phy@archiver.kernel.org>; Mon,  3 Mar 2025 16:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1tDho+2UF+GoVLlORd3vO3tN5Jh7KwFVi0fBiW0axR0=; b=5Achp8hruKppUYztw16LiU7d24
	AbdAfrY68XAG793OrqEy1ac3HWKGoWOwygaPf3WDxr9x7kq3u5Bj0QO2CUsQ1RyKqA0vN3dV4+GEM
	tRgNLRCQi33rEGei3U9p+otE0t2gQu616zZXyGWg7IgiBqwbf9/UNztwUlIYkUalFAtHd/zWlK86x
	c5IfxzJDLjtEMKWZqu5XrBeXHiFtmz0wwY2lq3En5VqQ6LL+3Xx5U6pvV7a6CDSJlCmZWd3CDcLkM
	hWpaXJTbMsOJAh6ie3nI8pHPvk8abBPogImU3iPHQRMSEkCKxvLSM5Muzu96zonw7mO0l613smh3k
	brjBV+oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp8PX-00000001SSP-3st8;
	Mon, 03 Mar 2025 16:12:55 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp858-00000001OIB-0tpu
	for linux-phy@lists.infradead.org;
	Mon, 03 Mar 2025 15:51:51 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-390df0138beso2460704f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Mar 2025 07:51:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741017108; x=1741621908; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dtryQxotpz8U5ArYfvfuETSf+fKZsakZSrz5Z30r0AU=;
        b=UuaObtnUgozIoHifkHSOr/zTOraRuRgj+OMhBiQtvcI1yXRG32n4kEL2rQXaiKW99N
         foud0KuFVPf4M94trhxbv3nu7fn3/M/cexNHEGlnYK993DYwF63hyw/+EsCaIUdWhu7Z
         ynRlBtYgJRMTACdQNqHfu9Nt6bIPzFm5jOa48RYzEX2mJpqhsk/YJvgod0briGZJemHI
         H2F092jrocVxN0BxPJYoyN9vWCAbAIVtxwstiHtlZMcv40FHBw6/z6ywq4NUN/KNlkM5
         Pu3IDMoIdIomb8aG9UAH9tV9kPWTgKA+D+KBLnzk7UFuAjWWv5SsIDVUzhyzFRDlAowV
         Ow5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741017108; x=1741621908;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dtryQxotpz8U5ArYfvfuETSf+fKZsakZSrz5Z30r0AU=;
        b=w+xi9uH3DbnjGbUjveavhzjBLw+s0c3ZJt4oN4AlJo1nmONkN78R673VaZYdCUk6Hj
         1Qp1K+wBTA4cG97pMEesZli7epMkTw829HWSGtAG9git91jGlWTejcdPYlNzB8oMCkBN
         +aeJ2ibw5RdVuQravRfXxdZiVMakZYlMuWt6WUccvH835uV6NqmMArAU0+AQDfSYrLSQ
         omAbHxvFY5rfj29oba64ouW0Vjzdp/sbcvl0G821YHceRBDOrquYNpQJn8eDtWGszzzV
         xBRZUsC/lJ1J5brZQ6j642v5zvradMcK8lt8SBMdYW/SxqhWRRwQKkpfI8NQLt8kdHOC
         pi3w==
X-Forwarded-Encrypted: i=1; AJvYcCUn5CvVdOXNqPPBI+lU1xLIhItBrW7Fs1wzHaay4DkvMLwLe/Y3G5kvUo5ltIwmJjfroqfuWpbZAtQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywp56ohi/1S2RGodb38MxDmOc2z45zp1DF83NkD0EvR3xIxYtQ0
	t7NZibw8uK3eEBAB9Zd5qANEL8+FWnv/KX6ayqYXcCICQTDk3/OQ
X-Gm-Gg: ASbGnctl+uIhiEjfENss2MonaVCwxwv4pYNqHCA3lmzrAmtPmzdz77VqJ9yVCJdDjdq
	UP3e1Saf9R2ItvOrvJY1bSAQ9v/IJdEXvR2Y3QFXo3LY3cPNq3WSDSc4lVjxxoHJg+gjPbktT56
	86OWx2HwS/CXpYBQQ4brragYRD/RMGlX3HHqwPzcO6UuLX2m3m8kSQtHroRSqf8CvxXJ+f2Y6fG
	hs2wRQqHdx8AlLuWOrVBjx+JvHoHznu6bbi8ZZg99d/Y1KDqhSCjNHjllMTiqeQ1CmVJNNkU36K
	+2zYaoHD2GHHMLIfcfcAmxmA/r12CVtrLtC91iBAVbiioGoLxXeVBDCNAQwm0hM5Qca7Lp8khBG
	RnaWvtEoEsbc1NOLiNmljuutJCO0vJiY=
X-Google-Smtp-Source: AGHT+IGVA2kkwtzvyc7wmuOevfFku3iq8bCghvi0ovoAVjUJkQ+OukYLz0HXfZag+lj/EmUrcnnfBg==
X-Received: by 2002:a5d:5c84:0:b0:390:f116:d23e with SMTP id ffacd0b85a97d-390f116d675mr6558402f8f.19.1741017108217;
        Mon, 03 Mar 2025 07:51:48 -0800 (PST)
Received: from orome (p200300e41f187700f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f18:7700:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4847fe5sm14941073f8f.73.2025.03.03.07.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 07:51:47 -0800 (PST)
Date: Mon, 3 Mar 2025 16:51:45 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Ma Ke <make24@iscas.ac.cn>
Cc: jckuo@nvidia.com, vkoul@kernel.org, kishon@kernel.org, 
	jonathanh@nvidia.com, linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org, akpm@linux-foundation.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 RESEND] phy: Fix error handling in tegra_xusb_port_init
Message-ID: <lieqwndlwojiwh7ipqbhf45iv37k2e52yl5jsmpe4wifki3tby@qndkynn5qogf>
References: <20250303072739.3874987-1-make24@iscas.ac.cn>
MIME-Version: 1.0
In-Reply-To: <20250303072739.3874987-1-make24@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_075150_254565_8746AD07 
X-CRM114-Status: GOOD (  16.20  )
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
Content-Type: multipart/mixed; boundary="===============6397485358188534494=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6397485358188534494==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dogd6n2uv5zyr2bv"
Content-Disposition: inline


--dogd6n2uv5zyr2bv
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 RESEND] phy: Fix error handling in tegra_xusb_port_init
MIME-Version: 1.0

On Mon, Mar 03, 2025 at 03:27:39PM +0800, Ma Ke wrote:
> If device_add() fails, do not use device_unregister() for error
> handling. device_unregister() consists two functions: device_del() and
> put_device(). device_unregister() should only be called after
> device_add() succeeded because device_del() undoes what device_add()
> does if successful. Change device_unregister() to put_device() call
> before returning from the function.
>=20
> As comment of device_add() says, 'if device_add() succeeds, you should
> call device_del() when you want to get rid of it. If device_add() has
> not succeeded, use only put_device() to drop the reference count'.
>=20
> Found by code review.
>=20
> Cc: stable@vger.kernel.org
> Fixes: 53d2a715c240 ("phy: Add Tegra XUSB pad controller support")
> Signed-off-by: Ma Ke <make24@iscas.ac.cn>
> ---
> Changes in v2:
> - modified the bug description as suggestions.
> ---
>  drivers/phy/tegra/xusb.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--dogd6n2uv5zyr2bv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmfF0BEACgkQ3SOs138+
s6HeIBAAimqmNAdbUICiy7xT16w1yKGIbmD9HklsSfEO8yLwmRf0JsegiRpWqVbx
nJCXDDAUnzaUXv3u58rwUdhEAXtdX3ENEt1RojEnjxGU2x45FclbR+57gE5jw67L
01cjFcaaZT6mQK8Rwq38m2s287W+da7gEdcWlZe1PK63wL1bgqvEygtMMbZtS4yw
IVXoDPCMv+IKLuW3EfrnUeUT+7lBrL73HuFhUlKRv3Nu5Kj6V7esx8K4bv9meaUl
+q/K84lkENYo5xEYnoSWFgwO+MZcF+MsuCIZsXWqBvXuFHtYJB1ce8siBrpq+Ggg
ZeyP1loDD/4hyGTfwoX3XkiLdBXRX1yNXs1NK3MJjKg/SMjQ79QxVdMzWJ7vRIO9
08t74Vt4CguKGHCeLgdwgHxSzgOhLSCKhjXBa4cphmDBlYGvARYd2X/WPjgbZyd5
dSLsOrMvCtnEfW9gtKb0xEWuLX0eVBiKnYI/3ga8BmE2vQ8CbOyrczs5EwmVoVWf
MyDtqVnJGxDEN+tIOOdN0FzY65If7kDCShc7GHln+6QLXHZlr1q7vmfomrhWCLXG
2Gn2sE8gvnkshPo5LUFBrLVzIX6OoCnHKMgZXch4Oy0hm/8nncKDAiQZWJgnbq3i
lfJsJGYOD4Htj1Aco035O+S95fnEwUyZwWOlTsHi7l/YIzpGkNQ=
=CVRC
-----END PGP SIGNATURE-----

--dogd6n2uv5zyr2bv--


--===============6397485358188534494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6397485358188534494==--

