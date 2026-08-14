Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8742C5CFCF
	for <linux-phy@archiver.kernel.org>; Fri, 14 Aug 2026 17:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eLhh5JTFj/dF/0nYoiVPbVbIiSk1WdZ9AiYOtNiwZWU=; b=uMR9UC4u82Nv0bkVxx59RDw3l/
	37ngSIgmUx8yCpZMFKLBDqh/V2z3uQYFuFy0IUgRj2NNdeWgadnCAP96qmNzw8sM3F+0a2xRgFUf5
	e2Mu2Z04sBl7uuEQTg3Um705XY7r62OB+jC1ufJ/0oetaopW1KYrFd3UkMtT/73IyrhLV4f9tRnNY
	wYI3Rywo2K60qdvrfAAlZNP9TOLshRtxge74QwidEitNsfQs5nLZ0MxPeamYVSCHalhGnblSAzNHS
	phYDqFtsLZMpKyH+WhMn1vlGaliivddVy1Cfv40l04g5IGegm594vcknoNwhdKNahkx+tgeTzPodt
	aNMrpbcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuvzD-000000030Tl-0CkS;
	Fri, 14 Aug 2026 17:46:31 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuvzA-000000030Sv-32QF
	for linux-phy@lists.infradead.org;
	Fri, 14 Aug 2026 17:46:29 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-47fd66a094eso522726f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 14 Aug 2026 10:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786729586; x=1787334386; darn=lists.infradead.org;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=i1r2xPJfkJhEKLocmkcDET9WPaG8FwcMD2/2OeeTJFY=;
        b=NYjsuojqx/awVlXbWQbx9+J4VzNwpm33lIIZSm9klGKXxTs7rkW+7ZiCPwm7edOO3v
         PVP7lX5oFjLVNqOammhF8IHQ4/kuv3e6pOGz/t1d9OyYibIasdzJKvJU3BD7nCIRTRP5
         JKzmLn60vkAKmLCGY7eKHz3Z0wmSVgehr+BFXyQpzPuJkkTau0wm+YupktMzd6cZkndG
         dryOLsn+CIn9vh8t7B2TH97tPc3PuGpI+l1IIxO6yLK2odZLW/w3+B3low7S1MtsQDQj
         TZB805SyMDpm5ZDb0AKF825I++uOgj0TB+ixaTRAe4NZCJPCkFRn8RUECqiJ5ncQUVyp
         TjZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786729586; x=1787334386;
        h=content-type:mime-version:references:in-reply-to:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=i1r2xPJfkJhEKLocmkcDET9WPaG8FwcMD2/2OeeTJFY=;
        b=TDWkFo6se41iVhIfi6jhKZq3n42heuNd7B2MqbOQjzUhh288S0dlHO+9eVNTHMqPhJ
         BtLhWDHRJrW5iDviNHp5ZSdIMKub1FPCygUh/yKzEaVyi33BAP8dfJzOrkZq9QEU11V5
         t4TuM30mxxUZOx34XSkEHAhkGg0VrBIGS0X0IE6gkQlxyEU26JBTXWQNlaEV7nwgQnCO
         Sm3fGFNQL1Pyc5yHVj4WLohIIyrAakWCbNQE3aiS8qosr2QyaI/Wup30tWmNrg5xZNdI
         ReD6ImndjghcX88ZJgWi0sU+3G7hVqirMbuxsPIssgBIMiS9GnU+kemYwMyFBwfYnKXp
         4+PQ==
X-Forwarded-Encrypted: i=1; AHgh+RrJP0cVqrj8O95om6GvVR1AmIkVJjW9srzBB/JhR4rBwwfEGImGU1B9X7oM2lWraXIJfKlR7hYbw0Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YyuDHNdJ9fQCP1zusT3lTAvUzH5aE1DXvH7zC4FI4Gf6GChrQKE
	vmK5wTazpf51VAJMP70tscsiQFjGUpPODSQd8qlzChNrgGyLhjWKbdv+
X-Gm-Gg: AR+sD104ezALB4qmCzCA7KXeb7y6miDOC+x54NxZPCw8AoYg9SSCRu06Ta0PcH/8hGs
	9f9hImbTzsXw6/STPCPwas0iwriaSe38j4wP75hM1/xSJX+cavZ3OhVDKUit3+9+IEzEW1hMJ80
	tnqlGHIqljZdnpzzPeh56OKdNLA7yeog4RQAVverGGESGqPLqtxNRTDor6siK4jO+NFDmCXBueX
	DCKl+SQMO7NyHyhjUmswdftP8QhUTnHRVF95lB2bPd5Zpg8qmtaTVfzw5LdOdMzMOC/0FhryRAH
	mGHh8eE6Fv0d+qdgBv3EiT13kcD9Mw3NHXO2z2em/tqPJ4CWDN/B2I4vg/JnuCJWyPI8CJeP9zH
	9QpgsicVOGegM1YXWVIzir/Prt7PZkN06rZWG0LoQF4PBl0n/xsp/Fxu4puPRfuCz3+6VQ8FN/S
	lS968O9Ym8L4mg8F32+xsPsmoCDpZ6XW+dWzZzZYOw485AhzPKyWCHT0y5SheZX5yruao2UXUi+
	ulMqJS1m0E=
X-Received: by 2002:a05:6000:2087:b0:47f:96e6:70a with SMTP id ffacd0b85a97d-481606bcec4mr8999132f8f.0.1786729586010;
        Fri, 14 Aug 2026 10:46:26 -0700 (PDT)
Received: from strix.localnet ([197.250.226.224])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815f219d3dsm10124274f8f.14.2026.08.14.10.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Aug 2026 10:46:24 -0700 (PDT)
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Brian Masney <bmasney@redhat.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 mfd@lists.linux.dev
Subject: Re: [PATCH v10 04/12] mfd: zx297520v3: Add a clock and reset MFD driver
Date: Fri, 14 Aug 2026 20:46:11 +0300
Message-ID: <gxF9XGmoS_qmWIfVagXDVQ@gmail.com>
In-Reply-To: <20260812131503.GR1072730@google.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-4-63846490712c@gmail.com>
 <20260812131503.GR1072730@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260814_104628_793514_F7C91CFD 
X-CRM114-Status: GOOD (  18.70  )
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
Content-Type: multipart/mixed; boundary="===============8297634878688348676=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============8297634878688348676==
Content-Type: multipart/signed; boundary="nextParthu9EI7NhQy6giXCUf6L9sg";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextParthu9EI7NhQy6giXCUf6L9sg
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Stefan =?UTF-8?B?RMO2c2luZ2Vy?= <stefandoesinger@gmail.com>
To: Lee Jones <lee@kernel.org>
Date: Fri, 14 Aug 2026 20:46:11 +0300
Message-ID: <gxF9XGmoS_qmWIfVagXDVQ@gmail.com>
In-Reply-To: <20260812131503.GR1072730@google.com>
MIME-Version: 1.0

Hi,

Thanks for your feedback!

Am Mittwoch, 12. August 2026, 16:15:03 Ostafrikanische Zeit schrieb Lee Jon=
es:
> > +config MFD_ZTE_ZX297520V3_CRM
> > +	tristate "ZTE zx297520v3 Clock and Reset Manager"
> > +	depends on ARCH_ZTE || COMPILE_TEST
> > +	select MFD_CORE
> > +	select REGMAP_MMIO
>=20
> Is this used?

Thinking about it: Not in the way the build system cares, so I'll remove it.

The MFD child drivers call device_node_to_regmap(dev->parent->of_node), so =
a=20
MMIO regmap gets constructed for the MFD parent. But since the calls are in=
=20
the child drivers, REGMAP_MMIO shouldn't be needed to build and run this=20
particular driver, and the child drivers enable REGMAP_MMIO on their own.


> > + * Copyright (C) 2026 Stefan D=C3=B6singer
>=20
> Personal copyright, are you sure?
>=20
> Is that okay with ZTE?

I'm not affiliated with them. This work is my personal hobby project to hav=
e=20
some fun and learn things.

I'm not copying code from their kernel dumps either, the quality of the=20
drivers there is pretty atrocious.

If ZTE wants to have copyright of the upstream drivers I won't stop them fr=
om=20
doing the work themselves :-)

> > +enum zx297520v3_parent_type {
> > +      ZX297520V3_INVALID =3D 0,
> > +      ZX297520V3_TOPCRM,
> > +      ZX297520V3_MATRIXCRM,
> > +      ZX297520V3_LSPCRM,
>=20
> None of these are readable.  I suggest you improve the nomenclature.

I saw that most existing drivers use "undecorated" device names, i.e.=20
"TOPCRM", "MATRIXCRM", "LSPCRM" in this driver's case. I am concerned that=
=20
"TOPCRM" is generic enough that a (future) global header might define a mac=
ro=20
or enum value with that name, so I opted to semi-namespace them with the So=
C=20
name.

=46ollowing the example of max*.c, what do you think of TYPE_TOPCRM,=20
TYPE_MATRIXCRM etc?

The rest of your comments are clear to me, I'll implement them in the next=
=20
submission.

Cheers,
Stefan

--nextParthu9EI7NhQy6giXCUf6L9sg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEEQxb0tqoFWyeVMl1sPRO8yFRPGiIFAmp/VGMbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJED0TvMhUTxoiPokP/iptbRf3/QgYkQF1HNMx
5pOuSmrcFnzvT8WG+mpgA+2uorsOmUfPhxRF+BA9CgOgazibEyWWETdrkvPHy+/f
See03pTw5mH4LSt90AOqFDCck47OmmAfzY3AP48o61IR47EiB5eFxf0r1S35tYuE
ms1C/2a98Rw60mw+eFUz3iBHWOI5fX2+DXZjOaEf/Q7d5KsZyiHOg5QUop8bsmCh
YRKrMdRwLIbT8nZQyEwLiMJlFGvzdDrZc2Vo39rsPFrRjP+FZGvUc7YIymjWXYi0
m/GfFV6RQSmxxph+zLCnYfoG2MeHDc+ihgBRACTeYXy3B6FbOUNVfsCB3ENvw/4K
P+OhBdxhxSIswe5KMDR1zUAeCQfNCsnrzXlLyhMxuFm1VwgzA/DJOucR96rj69hl
Cne8/8AqirlMgKLNek1Fsze0DkKuxOLMsrDVHYTvlMMt/giA0EtsoQT9iNp7z0Q0
/dqmTve95/f18m4sorji135TkTiEpmYTdtn1FZVY/2/aUD4z907S7mAomm7kYviq
jIesXSWzh9SFfRugYKDWsk9AqiP7Av77bafFuLzpgQ5MBnsDPpYTdCZR0ngLaP3F
phrCAX4IayRFni2+kBYkRMgaGosJolehc+mC04px0CwobqERnJGQGlVbRvuPYVJv
jL7hUaUKDj90M7cPPNEtjQf9
=kRv0
-----END PGP SIGNATURE-----

--nextParthu9EI7NhQy6giXCUf6L9sg--





--===============8297634878688348676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8297634878688348676==--




