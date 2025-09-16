Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2382FCAC598
	for <linux-phy@archiver.kernel.org>; Tue, 16 Sep 2025 15:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a4sNRQPytX84TNtIFabG9H1CVeNMm+zcrFEMHT7poeU=; b=iXO1ztRAnzcoqmR2qbpKc1zgvP
	nL/2y6TeBZddKsRPRDlFrZBnxdqCQPej6cblkcaiAylsgNcGFkZTk5yGUUDoRUgF+Zt25/Rbja8dk
	yZQq+B6cGmfe4Y5IUvM0XSuJtR3YwRzTOtwTYw4z/srrWWxTOQWej1xmT2TzFcA1d9THZTH5+rbi5
	gfb/gjaQQDIrMsbUJWyamfslQq9qoBYcKxocZ6h4TFLIH5yzBWV1NgDR5tWqvZehtBdCd6ZEbflZc
	LQEE0OWNUZ52FBDXvX/79mVHcI21ZRjlvh/Ug9a+pzbUFNQiBjo+VhjsZIgpV6Fme44v1fA5kCKyU
	iFeTHnSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyXKu-00000008FNk-3lON;
	Tue, 16 Sep 2025 15:11:16 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyXKq-00000008FM7-2ZFS
	for linux-phy@lists.infradead.org;
	Tue, 16 Sep 2025 15:11:15 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-45df7dc1b98so38709355e9.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Sep 2025 08:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758035471; x=1758640271; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rmOaDep9iDvIkVV5SOO3btdvNEg4fjn3ZIsqxvgs9l0=;
        b=X7E9A5jyw/zXkb6s9x/+vVJ5WKCmWruwzUmnHnnvlQEODKJAHxfMlr57veb+TQRlms
         W1HK4ihYM7xJ5Ccz8U7Pfx3vZ7qMyua+1hsACWMuD88kpSbA1QUKQYeSCHYyqeLyNK4E
         TcojaaHsi1wCSl+qzw83ETbz+mSet9RXSlJ+RLmSbgzPxEm1kyyO5e39qlq/038ebw4B
         YBWcUKDniGZgEfoZBcQoxRyYqKOrFmM0fkFm4mrKZO2R1zXsIOtE/i+HoGOyfWQ6hx5s
         1GpBrVMIxGDeVHPzwWYPoQ2pK4bjNdbtewIHwK1Zvt+lJkCctCuO5JqXfxP88E+CXODv
         5uCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758035471; x=1758640271;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rmOaDep9iDvIkVV5SOO3btdvNEg4fjn3ZIsqxvgs9l0=;
        b=wLUWn7iKLDksmUNOL/yjpFZdEQB5/GpXy8bCeTKChKn9BTb3sEN3mQq7GWXfVdK/r6
         NzBOaCGvq+kW2QlHt5LcDqdHjdsgWCb/ZoHfab8cMEzDQWOXdyic9AY4CAvRuKLHcIwq
         lLnrhb/LsnHDYvG4TL/ieVsIqAhyCuSbyRkbm+Q/erHoMtAAeepI458rqcZwx/qdoCri
         +UlQ2WWgiBqapoJ4ph0d+oLefTLO5oICWWFVgTaJHkAhmhiKJtuHYjrhKXVhYRkmZ2e5
         pyKYZbHMbrkF86mS3T61zv8y6mD1RoEEkJkvhJSah12qAfPFsjNXkdI0DFYYAB+nSZRE
         t9tQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6XTsJPtuMM2+RuHmYsG0BR3k3fKyR4Q7xhDgHs3IConNFfFJOimDINygUcnAIl1rwL/ELnN+R9nk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxl2f4FhNPjcJJVlP9MkbkABPIhBuMiqlC1RSktDsrgHVcwjVb+
	tyw5xIxI9z2NrNsfIVKAQOeX3EEZDayxdHwVb52xezYYMkrA0thRgyqz8Z+XGaL3fK0=
X-Gm-Gg: ASbGncvop/bdThrZH0FePWPFaALFJkRKuAg0BdhtCbLtcbtynzFBoObxrC2H0xtlqVo
	Em1/t+//SwO4uNMJ7ly3T44sL6lnLByhUHhKXKquwAha8nA3Vsy/Voh2wnWUwimP3KOJoQyTiQI
	PK5zGx1xPpt1hAiFpoJsYZkVmQacuHOgXqQk4wX4/n6JhmT3sTdYESM1/BWrSBavsLmVfFY3KiF
	ivFY6NpPz+tkGmGwOhH2N7qcsYsKOTe4WusftqKu2NLrurrKAyyAtNE2ZpqQkekK+Gvv63gINc/
	MG3Dobwv0ffLwMnJ6N+3OSAbuzWyTPiH+XhfTCXwTY7cPY1oU/ahMPVWMGqNEmAF8TGnLtgpfaH
	lPlY5Yt21Qn2/Uh98qZYBR9f2McQoSVD+ejux1nJrpf9ab3JWe0xQnqwlUMZ3NYjc
X-Google-Smtp-Source: AGHT+IFjwopgYVPo6VKMtYSKedXcVrli8pwqzXpfa37U2o4471Lcz0KQL5QMmQQhJ8xqhKe1X6WGiQ==
X-Received: by 2002:a05:600c:1992:b0:456:fc1:c26d with SMTP id 5b1f17b1804b1-45f211c8437mr143544675e9.2.1758035470631;
        Tue, 16 Sep 2025 08:11:10 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45e01578272sm241914915e9.9.2025.09.16.08.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:11:09 -0700 (PDT)
Date: Tue, 16 Sep 2025 17:11:08 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com, 
	andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, sre@kernel.org, 
	krzysztof.kozlowski@linaro.org, linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	kernel@collabora.com, wenst@chromium.org, casey.connolly@linaro.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
 <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
 <aMlnp4x-1MUoModr@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <aMlnp4x-1MUoModr@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_081112_663758_3F8BEA3F 
X-CRM114-Status: GOOD (  17.43  )
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
Content-Type: multipart/mixed; boundary="===============0963125903476753891=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0963125903476753891==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cy5a22gjj6esxnjr"
Content-Disposition: inline


--cy5a22gjj6esxnjr
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
MIME-Version: 1.0

On Tue, Sep 16, 2025 at 04:35:35PM +0300, Andy Shevchenko wrote:
> On Tue, Sep 16, 2025 at 03:24:56PM +0200, Uwe Kleine-K=F6nig wrote:
> > On Tue, Sep 16, 2025 at 10:44:40AM +0200, AngeloGioacchino Del Regno wr=
ote:
>=20
> ...
>=20
> > > +MODULE_IMPORT_NS("SPMI");
> >=20
> > If it's exactly the files that #include <linux/spmi.h> should have that
> > namespace import, you can put the MODULE_IMPORT_NS into that header.
>=20
> Which makes anyone to import namespace even if they just want to use some=
 types
> out of the header.

Notice that I carefully formulated my suggestion to cope for this case.

> This is not good solution generally speaking. Also this will
> diminish one of the purposes of _NS variants of MODULE*/EXPORT*, i.e. mak=
e it
> invisible that some of the code may become an abuser of the API just by s=
omeone
> include the header (for a reason or by a mistake).

Yeah, opinions differ. In my eyes it's quite elegant.

Best regards
Uwe

--cy5a22gjj6esxnjr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmjJfgkACgkQj4D7WH0S
/k5bVwgAg+5I7FGikPiLyM6nJF2xieob+ruwdkRFDohxfb7PQp4RA3i332VcbQXW
uPoXcpVKI3rBmxcqdXznCt5nec30ko8fgwZAb31BtOXwOf+VPlXIz5wDU5CdFQs+
35qgGyJnn48yhisyQx02GgDm/7esFho8zJOIaKvERuPGZ391HpLD4+z6Nxavy5JH
ZgxR7eIMcsnuF9vidUZhFi25abs7LFmJ72MF4i2N41OEdA/SMG9rpkEFBk5moBvK
qRRqVUDpCMxyDH6MddhP5CmgVUiW+3ucV17tdWKlnjjxMJx5rFb8BJD+jZx0Iuo+
HRtugRPqfdauF5Que8FvEqOdkDDLIw==
=R2qg
-----END PGP SIGNATURE-----

--cy5a22gjj6esxnjr--


--===============0963125903476753891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0963125903476753891==--

