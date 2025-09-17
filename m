Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AF12CAC59A
	for <linux-phy@archiver.kernel.org>; Wed, 17 Sep 2025 14:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M4jfu1VwhkWJQSp4Nn4z0MzoSVXOElyjDTzhIAAQWSk=; b=tH4k7l2CKUZwiwcgduHId1lMWs
	fkenF4wAl+ARhc0tv7vvmykJrUqAt2QjSCuOWwag8P6HELa2fUfxqF4nIz7+G8phyjeoU0uFv5R4b
	xR8SYIs8qgVz7ZF6EQFwHIPrrlNHWGMZvjQCNJ/irjiy8/efjKzUOdS5cKx5Nm4eisfEBWtk7Exq7
	6fwkLB1LXxbTZRBJ/ro1yWBiwfIQ2xJx8VdpXVCWHqIu0Oc0muVMoGJKUYOVfTZBY4Lhnw+B9XUsO
	CpQpu/zmFIYymAo8GL3D6lyDvEg6t6tXL233Nnly7E9Gv9mEhtuTmR6Ufr8QVIqwwxpsEjkXjWAOX
	gi4sD6Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uytbc-0000000CTaj-0NHy;
	Wed, 17 Sep 2025 14:58:00 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uytbY-0000000CTX0-0fnw
	for linux-phy@lists.infradead.org;
	Wed, 17 Sep 2025 14:57:58 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45f2acb5f42so9126485e9.1
        for <linux-phy@lists.infradead.org>; Wed, 17 Sep 2025 07:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758121074; x=1758725874; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VNJiPyXScWAskCoPGIAYsTwf0lJxfeavCsADGNiPscs=;
        b=DG9uEd5wXbbTG6KMDMzet7+wDARlkWFs7CyR8ttpZ4vxw/bZcyC0BApNfUzVrACYpC
         JUDA2WLeLIS73gv+fYPqHK74vXil2efhFmpFpBBR2ruljnJ9UW0Ykbo6V9Pn6gBLEhlc
         udMWSZIJ3Hh4SHhIG5qqIC4dMKpGm5TSCTnJHVM7WueiM9zp0a0II8BnNHVejlWGfC3d
         +dNIJujp+drfaEE0oObFPhkrOkc8UbjuI8+S4apF53V90rofEqVgPSxiUR0P6GqME93k
         a+FqhQ/zqLuI6ZnTfWYaPOj09Vi3gYqEEz5VOWWs1wy2xfIhypZ7lRLF9SNGao0fKFaN
         YB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758121074; x=1758725874;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VNJiPyXScWAskCoPGIAYsTwf0lJxfeavCsADGNiPscs=;
        b=bNR9wZEJDYAKfaaO8AvsiWqm7rvYpywMVYhEikReBA4MT00XBC8xBQzBsrOqh8NpsA
         KrfpqdLE/DB6ROJaDLZb4OspRF62c9jb62FhyO6OC9I8/iCxURFSD+4hVvPpSNUkRusg
         57W6Vdi83qsFgfpsB1gU8TgbjjISQ/mUC/MddLXCuROUNpcSbDq9v/0esjgfLaENQCiS
         o9ZWHs38mWvR6QNRwnFIVMJvsaS+2zyfmQnlcp/4LHbGen8eNto7QBGhaeTecVLu/2Ji
         rgVvQ4MqmuBpmY1WtoensBtpwGtmUfVfrcpFTTfGpdZTAmaDmUT7yryGXosNOkKT186w
         Go/Q==
X-Forwarded-Encrypted: i=1; AJvYcCU0Eev9/fnlx3Hb4cQl17zuBkFEZ/FthEcwPfWSye3/Jauxwtf9VBDLIJ1binjekXMsgah6JzMeKQY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6bITtD9+NAeQ+O78SWYYu8m5KsmKyS7zi0y7pSvrf/tHL01Y7
	wVMY2xi52dZCMVH5EGbZgCJWR9rJXY47eTgPylvC+uOX1O2Ik/JvjRnX4Yzs6pYJ3fU20mopoFq
	vY0VT
X-Gm-Gg: ASbGncuiLo6dVKHNssCYVIW6hSGy5p2rO2lGvT76OgRjibnww4YVdZbmSZhQ8Ans414
	gBv3wsCD+Qs/fNaYPZLsn9PH4qRRCRw/3jtvoGUyiX12WHPLixVMeS4fbLfPAxh1SDPvueQQpC4
	CQw8Cc6D57QbORnY2nVqzxNdzDo5tXRHsgemlb5MAx+1N3f2hLEJdhnycCHm8s2H6h4fSNPnw66
	ZZHS7fDG0Ic1339CrU+si/R4t8QcTrieJ1WA+/GWKVw0trVl24SzvMHhW7y4vj+OCZS7VGv4Qhz
	FZmupdUAW3jYA1Ay7jLn+kMHlCb+9kgMHu+X+y+j08eM+RteO+8U5AucClbjNbJWuFjCJSyJ8+U
	0Y07dcKAz50wen6tcvUUf9OWaXjHvG1yO7HhccxIWQyNBacHXP92HwVXcjvAsib94
X-Google-Smtp-Source: AGHT+IHaJ8RLGRWJjGkWj3mOlv4MrMyQtredyYklN46lH/3oMjKK5GoSCinEm44gnypkzxXye6/JJg==
X-Received: by 2002:a05:600c:608b:b0:45d:e775:d8b8 with SMTP id 5b1f17b1804b1-45f32d002bamr73775275e9.1.1758121074054;
        Wed, 17 Sep 2025 07:57:54 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-46137930274sm39496035e9.6.2025.09.17.07.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 07:57:53 -0700 (PDT)
Date: Wed, 17 Sep 2025 16:57:52 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com, 
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, 
	srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org, 
	krzysztof.kozlowski@linaro.org, linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	kernel@collabora.com, wenst@chromium.org, casey.connolly@linaro.org, 
	Jonathan Cameron <jonathan.cameron@huawei.com>, Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 1/7] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
Message-ID: <hsemgg5s3nptxeh3jyim6ahgb37yb3h3hcbdtwixiisyf7ehqk@r7zlg23yz5cv>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-2-angelogioacchino.delregno@collabora.com>
 <mr7gqhvom5soofn2oujzxtsuczsnx2yizkushar64cojwnvhd6@dt64ojgjqdxw>
 <a16cafd4-4d6c-45be-b241-45d2d6479bb1@collabora.com>
MIME-Version: 1.0
In-Reply-To: <a16cafd4-4d6c-45be-b241-45d2d6479bb1@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_075756_221947_4FEDD7A9 
X-CRM114-Status: GOOD (  26.21  )
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
Content-Type: multipart/mixed; boundary="===============5903884620404339637=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5903884620404339637==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vd4q4xt757pbxzqi"
Content-Disposition: inline


--vd4q4xt757pbxzqi
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 1/7] spmi: Implement spmi_subdevice_alloc_and_add()
 and devm variant
MIME-Version: 1.0

Hello AngeloGioacchino,

On Wed, Sep 17, 2025 at 01:41:40PM +0200, AngeloGioacchino Del Regno wrote:
> Il 16/09/25 15:25, Uwe Kleine-K=F6nig ha scritto:
> > Hello AngeloGioacchino,
> >=20
> > On Tue, Sep 16, 2025 at 10:44:39AM +0200, AngeloGioacchino Del Regno wr=
ote:
> > > +/**
> > > + * spmi_subdevice_alloc_and_add(): Allocate and add a new SPMI sub-d=
evice
> > > + * @sparent:	SPMI parent device with previously registered SPMI cont=
roller
> > > + *
> > > + * Returns:
> > > + * Pointer to newly allocated SPMI sub-device for success or negativ=
e ERR_PTR.
> > > + */
> > > +struct spmi_subdevice *spmi_subdevice_alloc_and_add(struct spmi_devi=
ce *sparent)
> > > +{
> > > +	struct spmi_subdevice *sub_sdev;
> > > +	struct spmi_device *sdev;
> > > +	int ret;
> > > +
> > > +	sub_sdev =3D kzalloc(sizeof(*sub_sdev), GFP_KERNEL);
> > > +	if (!sub_sdev)
> > > +		return ERR_PTR(-ENOMEM);
> > > +
> > > +	ret =3D ida_alloc(&spmi_subdevice_ida, GFP_KERNEL);
> > > +	if (ret < 0) {
> > > +		kfree(sub_sdev);
> > > +		return ERR_PTR(ret);
> > > +	}
> > > +
> > > +	sdev =3D &sub_sdev->sdev;
> > > +	sdev->ctrl =3D sparent->ctrl;
> > > +	device_initialize(&sdev->dev);
> > > +	sdev->dev.parent =3D &sparent->dev;
> > > +	sdev->dev.bus =3D &spmi_bus_type;
> > > +	sdev->dev.type =3D &spmi_subdev_type;
> > > +
> > > +	sub_sdev->devid =3D ret;
> > > +	sdev->usid =3D sparent->usid;
> > > +
> > > +	ret =3D dev_set_name(&sdev->dev, "%d-%02x.%d.auto",
> > > +			   sdev->ctrl->nr, sdev->usid, sub_sdev->devid);
> >=20
> > If I understand correctly sub_sdev->devid is globally unique. I wonder
> > if a namespace that is specific to the parent spmi device would be more
> > sensible?!
>=20
> Only in the context of the children of sdev. I'm not sure of what you're =
proposing
> here, looks like it would complicate the code for no big reason - unless =
I am
> misunderstanding something here.

The thing that I wondered about is: Why use sdev->usid if
sub_sdev->devid is already a unique description of the subdevice? And
for other device types (platform devices, mfd) the device identifiers
are not globally unique. So I just wondered why spmi is different here.

> > > +	if (ret)
> > > +		goto err_put_dev;
> > > +
> > > +	ret =3D device_add(&sdev->dev);
> > > +	if (ret) {
> > > +		dev_err(&sdev->dev, "Can't add %s, status %d\n",
> >=20
> > I'd use %pe instead of %d here.
> >=20
>=20
> The only reason why I am using %d is for consistency with the rest of the=
 code that
> is in SPMI - there is another device_add() call in spmi_device_add() whic=
h prints
> the same error in the very same way as I'm doing here.
>=20
> I agree that using %pe makes error prints more readable, but perhaps that=
 should be
> done as a later cleanup to keep prints consistent (and perhaps that shoul=
d not be
> done only in SPMI anyway).
>=20
> If you have really strong opinions about doing that right now I can do it=
, but I
> anyway prefer seeing that as a later commit doing that in the entire SPMI=
 codebase.

My approach would be to first convert the driver to use %pe and then
add the new code. But I don't feel strong.

Best regards
Uwe

--vd4q4xt757pbxzqi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmjKzG0ACgkQj4D7WH0S
/k6QAwgAjFK8Yjwpa5jj8yoQmTljLuhXr3CuLMG/fOZmijXiT4J5ufD4aliJbr4c
zkNE7I3gWE8MV1guDtw7WULdaj7y1RnKRvOVADynBNQpXb6TuHwp8Gwf9IEZNbtJ
Vi+wPP46epW94GY1SGjJHd6SJzg3ZqIO5LAAuEQwlXcrm4Y513Kv9pflqChHkr2D
rNpkyVdzDbrIjBpnmqbpYsi/bMShr0GL0/PIzE0wd/0cFYjLRc+PsjvTtXmnJ6SW
NC4IDWqztRVrsKZJNYc4mI8oD/ysZDjKGs62xmrcNrJxnYuZO0bzIZXGctuailWF
faHHEN/aOhC5FVoar9BuOkvPukStTQ==
=HAfP
-----END PGP SIGNATURE-----

--vd4q4xt757pbxzqi--


--===============5903884620404339637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5903884620404339637==--

