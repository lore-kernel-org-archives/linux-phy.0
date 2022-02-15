Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1EB4C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 10:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dYD/gdC/jIMDcRH9ynWeiMo8VcRpDnCpOhmsjvNZ//4=; b=d258TJJyx9ENaNVt5TbZJkLTaU
	NYLGWf+UWtEHv+3QEWOM4F7xjqEZgX5E47rpcDr5Jh5kUpXcZis0aXjEHORoFbgJbE2FTsiks81At
	fmNTLPG3s+mj9TirqUJoL+Ft1d+5OrLVxbpSHQjqDZ/8LR3HthMwcK9lhuQXcFAp8S3zEkGAadPz/
	ALyN8BiJV7CfkrStUpOovNO07w2JXC5gGsl0MqX04EOx2KKjOoIb9Gf775aEa3nTRUvFAiDidMuIZ
	nPCKw7IX1n4rCbiydMGqW8aqpP+U0W7+DfF5XFHuP+hRWkmQyjxcmn3Cz3QPeokFceEguJhU0low1
	YIVE+qnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJuxm-002Htp-73; Tue, 15 Feb 2022 10:21:38 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJuxV-002Hpm-Jt; Tue, 15 Feb 2022 10:21:23 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 7C24D240006;
 Tue, 15 Feb 2022 10:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644920479;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LLuRTwKMKPpkSVGsT7HVqc5YDmNB2qRgXNbTQnh8ZQ8=;
 b=T9eefH1khM1C9SPie7G6ia1yNtnvILoerbDmEcmSUNtl3vgx7ThQlv6pLqBpK7Ogfl4hN9
 k6a7oSOyFGXRlVFmK8PuXZxsc+eFYyt4NQCVtadhr7Bt1BcRxnI6BKZ/6F37AOIAmS4I+4
 G/ozpQgijSvt1Xcng0MJcRT0IMO82I12iVxX8++yvAr2wB7rmShDmWB7vBppSFWtKhHDUa
 a/iBd+1Tgdew3Ho4c5u4NQVwd1HP0tzBTT50uAG13vi/LdntjO7dM8l+P+8NlzEN6ET2SW
 vLM9FHJDG21EfrmdWDYmTNNVrVB4T26FKOgunJY0V/bSuhn7nfT352LHMNmzZA==
Date: Tue, 15 Feb 2022 11:21:17 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 37/66] media: sun6i-csi: Move power management to
 runtime pm in capture
Message-ID: <Ygt+nZJrZMNXV4Cl@aptenodytes>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-38-paul.kocialkowski@bootlin.com>
 <YgqftcDgfrsZfTdF@paasikivi.fi.intel.com>
 <Ygt4xh2Mq0qStyKs@aptenodytes>
 <Ygt6vwydxg9/WuDH@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <Ygt6vwydxg9/WuDH@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_022122_061934_20DC5FB2 
X-CRM114-Status: GOOD (  29.94  )
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
Content-Type: multipart/mixed; boundary="===============0258179271649785706=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0258179271649785706==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x0S1xJjs6wRADgc6"
Content-Disposition: inline


--x0S1xJjs6wRADgc6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

On Tue 15 Feb 22, 12:04, Laurent Pinchart wrote:
> Hi Paul,
>=20
> On Tue, Feb 15, 2022 at 10:56:22AM +0100, Paul Kocialkowski wrote:
> > On Mon 14 Feb 22, 20:30, Sakari Ailus wrote:
> > > On Sat, Feb 05, 2022 at 07:54:00PM +0100, Paul Kocialkowski wrote:
> > > > Let's just enable the module when we start using it (at stream on)
> > > > and benefit from runtime pm instead of enabling it at first open.
> > > >=20
> > > > Also reorder the call to v4l2_pipeline_pm_get.
> > > >=20
> > > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > >=20
> > > Nice patch!
> >=20
> > Thanks!
> >=20
> > > Do you still need v4l2_pipeline_pm_put()? Removing it would be a sepa=
rate
> > > patch of course.
> >=20
> > My understanding is that this is still useful if there are drivers in t=
he
> > pipeline that rely on s_power instead of rpm (a typical case could be an
> > old sensor driver). So that's why this is kept around, but all other co=
mponents
> > of the pipeline (isp/csi/mipi csi-2) are using rpm now.
>=20
> If that's not the case on your test platforms, I think it would be
> better to drop support for this old API, and convert drivers that still
> use .s_power() if someone needs to use one on an Allwinner platform.

I agree this is the path to follow but it feels like we're not quite there
yet and a bunch of driver were not converted at this point, including some
popular ones like ov5640, which I know for sure is used with Allwinner devi=
ces.

Honestly I'd be happy to get rid of these legacy functions as soon as the
transition is done, but doing it now would mean breaking a significant numb=
er
of use cases (which I'm trying to avoid here despite all the changes).

I definitely wouldn't be confident making that transition here and it
probably wouldn't be a good idea to make that a requirement to merge this
(already quite big) series.

What do you think?

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--x0S1xJjs6wRADgc6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmILfp0ACgkQ3cLmz3+f
v9Gm2Qf/W/ZTXFzamMW7hvV8qcmAZpXwCKekASY4Lpa4JwvvhyI4DtfX2n+AvXQV
w4y54EHfcIAFtOkEIOsj4zirpI4p4tgA/uvgLyHmEu9CcbzvuwYe9zd/Ozeo/AEG
OlwSWF+MhD1kawGki9ikCPG5QwDLt/rzeJHUPh0aT5Oxae3NMBSgcCizJVoN2Inh
4j5Zkj99rX2h2ed0e+TjPsB76WuSJaJVNoyAgD1w3PB7YueruHIkq+s7CTHtaQKj
KtAoegyMomsRUSp20VUJiPdqouUox5HLU5cvxrh4enbYDqNaZelVFp2/R+wghUVi
XwIhQQwXYZ2hmsCFJ/pjIAM4JgYblw==
=tEm8
-----END PGP SIGNATURE-----

--x0S1xJjs6wRADgc6--


--===============0258179271649785706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0258179271649785706==--

