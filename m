Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54472C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 09:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7tiYG6m6fKfKuRFUipLnhBsXNiD0kxBfwt8M0UzSf6E=; b=vRU6YmrJcIflqOjF772TzGh19K
	IrRQGtJNriHg5hio5pllJ32KnpK7Lm9b8S+js6Dd1OMa+iC/TQjp1VKWEzhg4XGetGk4zWtDfIHtn
	uAhElTJGKREuioUMyThXYfWyq2kYGzPECyrTBydYc/flmZC3K+OxBXMbWcfdJI8BUgEbfDeSi+ISw
	fQB26z9mFdN0SJunEFiSYt1q1Z7y1Cm9HPfXseP4peS8qypbYosWqZxV3pEyFOJ3V25xC4JjpjL9N
	g+iABlIwsaELAy/0hVCbk/Q+tJL46vsMHeiPTcBpIeHZRlW0CDLVfeTo+4UHUykmdHkp/lFN2bZ82
	Ocp7Xd8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJuZm-0029YQ-QI; Tue, 15 Feb 2022 09:56:50 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJuZX-0029Se-Ff; Tue, 15 Feb 2022 09:56:38 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 741E31BF20F;
 Tue, 15 Feb 2022 09:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644918992;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=K4eFwye/okRxi/68ri8yTsBWvX0g8mH2JLrxCqUzQBc=;
 b=Pkgq0hGmhZqbfwp1twud8hwRV3Xuarr8FHjsMyWaqUwul9fbk3t4vO12uPMdpnKoqB3lXK
 HQIbML8TtlXXedlVag+9NJlfaflzKTnv9pqzoZsTdj7Vnz9/ZJKYAJlFgbjKYqIaCA7Q0A
 a3QcjuVTrAKiDj0s67KrOgfSKnGQP50Vb8qRoJhrmO22RHhav6FQJLFhEy53bVmhts29Lz
 3sF7W6vwVVzjBAiw5HzgGZ42tvgIx1FCl9vQpEZvnQCQQucXS60ydZZcvDuKTUdP5RdFom
 E/3L6/QjdSOJYb6Xv7FzfDMR5HejitXXdQKH0Qqao4ClUDYzlCWSNU4ysNQYVQ==
Date: Tue, 15 Feb 2022 10:56:22 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 37/66] media: sun6i-csi: Move power management to
 runtime pm in capture
Message-ID: <Ygt4xh2Mq0qStyKs@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-38-paul.kocialkowski@bootlin.com>
 <YgqftcDgfrsZfTdF@paasikivi.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <YgqftcDgfrsZfTdF@paasikivi.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_015635_983711_314E5435 
X-CRM114-Status: GOOD (  17.40  )
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
Content-Type: multipart/mixed; boundary="===============0113933904380009655=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0113933904380009655==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tOB2i1/qfUMuc0i4"
Content-Disposition: inline


--tOB2i1/qfUMuc0i4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Sakari,

On Mon 14 Feb 22, 20:30, Sakari Ailus wrote:
> Hi Paul,
>=20
> On Sat, Feb 05, 2022 at 07:54:00PM +0100, Paul Kocialkowski wrote:
> > Let's just enable the module when we start using it (at stream on)
> > and benefit from runtime pm instead of enabling it at first open.
> >=20
> > Also reorder the call to v4l2_pipeline_pm_get.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>=20
> Nice patch!

Thanks!

> Do you still need v4l2_pipeline_pm_put()? Removing it would be a separate
> patch of course.

My understanding is that this is still useful if there are drivers in the
pipeline that rely on s_power instead of rpm (a typical case could be an
old sensor driver). So that's why this is kept around, but all other compon=
ents
of the pipeline (isp/csi/mipi csi-2) are using rpm now.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--tOB2i1/qfUMuc0i4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmILeMYACgkQ3cLmz3+f
v9E5sAf/akvNvNPsCxPYxGv+fJr3ZwwX2cWQuFu6Am+wwNsKyXuxoMHRnyG1rANG
OVaJVCgFR3vPnDKUsTC/grEH/PdeNUHy9DT+gnEnjsIepnMV5/VAG4YBgonHBDoC
Nk1fMad5oTd+W+kpLqdQ7JEABUhW+TZL9TAv2C24Xg4DupIwH2HDcYCepM83ySy8
q5Q6Jo8gYGAWzdWJLr5u3Xexgd2W7n4kQ7VBXVNesTQOgvihW8xTFcAft/Sf4Qig
FHhb+EWRL6Pl9v74gev2rUQMWABOgVFHlcPmHQgrFIHC/u9fHP0auvZzS09i6A0C
hcYntRVNBMGqmJTHoPZjIucw/JtAgw==
=CYCh
-----END PGP SIGNATURE-----

--tOB2i1/qfUMuc0i4--


--===============0113933904380009655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0113933904380009655==--

