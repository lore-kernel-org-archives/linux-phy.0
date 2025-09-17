Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E6B1CAC599
	for <linux-phy@archiver.kernel.org>; Wed, 17 Sep 2025 12:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dZpXO8GH2xq8De7OS7ZRQqxPahuG8+C4dzCm5ryseCo=; b=lPK4VYYcy18AxtomBDVlPM/cIJ
	C5zvbZDpQfK3JRCCtu1WrbFTYSvsOEVFPUUJS3VS1YHoa+KnoAOe9RSyLa9PUQsJUT8blObBx6a0j
	YhAeW4Fka9dzmjm9sudYnjCJowzUGIzcU+jLgVh7kd4t3ECdVGhEC/yabnxFSw5vrCB51h7CVfdo+
	sPX3OAuiqm9HlRxPyOTdz0A7tFeCIxj6C045YMo3KtKs1G4Dh/a6IfQspa+bBkatWzMkujCfg4yqP
	qNO3K/lz0nBXq+LllBrtuL7cyRWkw8OtXPukQ9A1coS5+SJcc/Q9E5AdnHpAaF2cQFgRbk0l+NYmu
	4VQxcudg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyrZL-0000000BPQH-0KYd;
	Wed, 17 Sep 2025 12:47:31 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyrZI-0000000BPOF-11c4
	for linux-phy@lists.infradead.org;
	Wed, 17 Sep 2025 12:47:30 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-b07c081660aso972569466b.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Sep 2025 05:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758113246; x=1758718046; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OpFjrz8zqyAOuDDEavL83RJ8Trpvvw84g1TSZSRsq/o=;
        b=F+9yaZoOi+M8HeqkE09ttUx4RPkjVEHClBWqUsdA5hX0XSjGB9G+AfTsWihnZv0Oto
         IVwqXJr7CUsekcsR4mxJD3MKrnPJQDS4aud+lzUC4ET23sdeENoc9K616PVOSOqmfLeN
         TRBJk9eUmGcqT2q70zlxApO1jCGY53lL5eksFWhIUSsFB0iR7qIntdwzNGvdvZAv8pxj
         GKYtUAze5L7FDbg0PhxTnE/MZnSDuckaa96/I/bL+Ar/ImRC1H4YNS4rmWCQ6u+KgJbk
         wQnp30CQzB0l95/U1PJfNXTNoQpmtAoMclxjixvHUiPAbfMl7LjXSTg/QW2U1kA8ftY2
         veoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758113246; x=1758718046;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OpFjrz8zqyAOuDDEavL83RJ8Trpvvw84g1TSZSRsq/o=;
        b=LMEZWbZxAbZwiq6/p5y1QTNhJ+GIuGtf6DqMHghn0sjqaIlZHlqm15d4sOwaH/RWGx
         RApaxCjLrjpzn4wF6N1+pGZPA1trVmIuG4rCwxuThkfEK+Fr3zaOOm+nWC25x2s5ebb7
         J+FxGSCtGKdP0lw0+A2cLZSV43PW4B4RtlhinG5x19uqu+El24pOcGPDMI06Z7pXCRC1
         e/cCy/bBtttriZPSB8LgbsNStsvl20AhlNyrS3WDMsS1arNKcreIvaZPg1aLvv4OKGy3
         fXsWp+OMTLrE5qDSvt/e5FKVHAL2dBC6gb7b8jIDuuGovb8Dn+Lr5S/Y19fLwV8EM3d8
         Jy5Q==
X-Forwarded-Encrypted: i=1; AJvYcCU08Z+aIcnoTSKy4xycbEiLST21iNYKgQ5eoOUaX4ceC4oxPctk4Q64d6u+5eDQSmn42SVh07oJ2sg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVJYACZZPChCXDDo48EUBzCHYx7Evaw4z+AEF0HiQK8P5He6h0
	TOB4AeHAFx2I4qisFpr1/f2YmfkVvs6UqqOuMPoLr1oD2tYQSNDebRgdm8ycPmfZf+Q=
X-Gm-Gg: ASbGncsmF6ulhTzvvKETPBqbIjl3PfU0NZJgrMTu6LjCFI3hOddiID7VtnqU3/39pe7
	46Rj6HogqT0x+k5W/E1tBwGky/OBRnTIaKE7GmbgCdP5LNjg4WC8XpwCYSEKI59Nf0qTnZ8woOl
	ia4z0MNznm5WtZdpjiR0TljoQUMylwFEdOwHz7spqyzvXKK0XpW54FbjhIyaBhPTTtsw9w4hR5F
	82xoxVEjIWP2WJ6Ol3duX9JPG5958McL1Xg6LINWCPvb3HsT9zBUYFyyLh24IbiIuzcWZSdIyjx
	7UsORtNgGX6WLpN7YXpI6/3voWbo/BhSOBuLP10J8EzdtgU5Ndv7Qv7athMcza1jy6YtjuadzYa
	dCP2fP6Q4VUuSOxP/PMwm4fs7FjA=
X-Google-Smtp-Source: AGHT+IHgG+feaLFS5lYK61xigE0As4f8SIEZukBQyUiZyyvMqVLGwJC7y1Bl5VWs3fMe9SZIDZZJTw==
X-Received: by 2002:a17:906:f591:b0:b07:c905:af33 with SMTP id a640c23a62f3a-b1bc02f669dmr228527266b.65.1758113246285;
        Wed, 17 Sep 2025 05:47:26 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b07b30da289sm1339567666b.17.2025.09.17.05.47.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 05:47:25 -0700 (PDT)
Date: Wed, 17 Sep 2025 14:47:22 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, sboyd@kernel.org, jic23@kernel.org, dlechner@baylibre.com, 
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, 
	srini@kernel.org, vkoul@kernel.org, kishon@kernel.org, sre@kernel.org, 
	krzysztof.kozlowski@linaro.org, linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	kernel@collabora.com, wenst@chromium.org, casey.connolly@linaro.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <er7dkmzutsu3ooegeihjzngi6l3hol5iaohecr3n5bolfse3tj@xeedlx2utwym>
References: <20250916084445.96621-1-angelogioacchino.delregno@collabora.com>
 <20250916084445.96621-3-angelogioacchino.delregno@collabora.com>
 <t3uk3k4h3l53yajoe3xog2njmdn3jhkmdphv3c4wnpvcqniz4n@opgigzazycot>
 <aMlnp4x-1MUoModr@smile.fi.intel.com>
 <mknxgesog6aghc6cjzm63g63zqbqvysxf6ktmnbrbtafervveg@uoiohk3yclso>
 <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHp75Vf7KrsN7Ec9zOvJoRuKvkbrJ5sMv7pVv6+88tPX-j_9ZA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_054728_417616_8EAB1179 
X-CRM114-Status: GOOD (  29.61  )
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
Content-Type: multipart/mixed; boundary="===============9098559691020018698=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============9098559691020018698==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ah6qgcyytq6i6rrs"
Content-Disposition: inline


--ah6qgcyytq6i6rrs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 2/7] nvmem: qcom-spmi-sdam: Migrate to
 devm_spmi_subdevice_alloc_and_add()
MIME-Version: 1.0

Hello Andy,

On Tue, Sep 16, 2025 at 07:20:20PM +0300, Andy Shevchenko wrote:
> On Tue, Sep 16, 2025 at 6:11=E2=80=AFPM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@baylibre.com> wrote:
> > On Tue, Sep 16, 2025 at 04:35:35PM +0300, Andy Shevchenko wrote:
> > > On Tue, Sep 16, 2025 at 03:24:56PM +0200, Uwe Kleine-K=C3=B6nig wrote:
> > > > On Tue, Sep 16, 2025 at 10:44:40AM +0200, AngeloGioacchino Del Regn=
o wrote:
>=20
> ...
>=20
> > > > > +MODULE_IMPORT_NS("SPMI");
> > > >
> > > > If it's exactly the files that #include <linux/spmi.h> should have =
that
> > > > namespace import, you can put the MODULE_IMPORT_NS into that header.
> > >
> > > Which makes anyone to import namespace even if they just want to use =
some types
> > > out of the header.
> >
> > Notice that I carefully formulated my suggestion to cope for this case.
>=20
> And I carefully answered.

I tend to disagree. If that anyone only wants some type from the header
but not the namespace, the if part of my statement isn't given any more.
Still your reply felt like objection while logically it's not.

> Your proposal won't prevent _other_ files to
> use the same header in the future without needing a namespace to be
> imported.

Oh yes. But that's true for every change: If you change it further you
have to cope for what is already there.

> > > This is not good solution generally speaking. Also this will
> > > diminish one of the purposes of _NS variants of MODULE*/EXPORT*, i.e.=
 make it
> > > invisible that some of the code may become an abuser of the API just =
by someone
> > > include the header (for a reason or by a mistake).
> >
> > Yeah, opinions differ. In my eyes it's quite elegant.
>=20
> It's not a pure opinion,

That's your opinion :-)

> it has a technical background that I
> explained. The explicit usage of MODULE_IMPORT_NS() is better than
> some header somewhere that might even be included by another and be
> proxied to the code that doesn't need / want to have this namespace to
> be present. Puting MODULE_IMPORT_NS() into a _header_ is a minefield
> for the future.

Well, for a deliberate abuser the hurdle to have to add the explicit
MODULE_IMPORT_NS() isn't that big. And a mistaken abuser won't explode,
just generate a few bytes overhead that can be fixed when noticed.

In my opinion that is an ok cost for the added elegance.

Best regards
Uwe

--ah6qgcyytq6i6rrs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmjKrdcACgkQj4D7WH0S
/k5EEgf8CdFx6+6iEV1AE4GeSJAKaBL6T9A2o7N08nLq8lg9b0873yxBoHXcU5fC
aJjF55sEwR98xGntE7kk39pH49RCG8ugwvBfJUnq75LJiKU4gyhg9P3OPFnLShiJ
I6m5bqGNDlAwq3dSuYSiDSr/4wi/Rq4mPKqRZoCT0WHQz9CWes6CdQPuRMSKYeJF
5VvswQqZGx5s73s0oi9UinWZ1/t/tX8KTjVeEgkmosNDtXb8rSwQbmfIUqnuCv0m
ZjvuFwKtei8Q90Ro1LSW+QP0R1bN1ydWluw6cGH65qE7Yqpb/P49Yupan3C0YEsr
nJJjRh4HIIADYdzeEZWvvrOcN8LC8Q==
=NvWc
-----END PGP SIGNATURE-----

--ah6qgcyytq6i6rrs--


--===============9098559691020018698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============9098559691020018698==--

