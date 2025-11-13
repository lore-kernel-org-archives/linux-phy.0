Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54EA4CD98D0
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 19:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ip+/B1rX66TyJQrgGEMm5qvGyix2yJVccXAij7qu7Yc=; b=KorlRGiSnD8iFYqZ1jBD4u0A5D
	K84UyhtQk0jvakwq6V8fJ05YoTGo/e0kK3fI+Gg6oA08TQfNh2Jutrg9aVYxcvL6SdbJfikUBJy+7
	/VGw0eFDqnHAgl4FiyiUgNiYcv6dLXC+tZ0aNCcPMl1uXDiTXx53SvnvfGu3X0JgIjrvYu7tunTU9
	NbYCOPVKstTLP0MGh0QZu0Ml+8iwkPpgNfHiWqPvfABrIiDXD8aJTicvzcJWAbTZXYxKc22IsXLep
	2mQYJyOKXqup1zfmtnFm0ZGct7JtMGa5kBOCxEZk98XgB9oWryi2r0/QVmejK3jmred0O5dvPKIcb
	LKzyZDdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJcl8-0000000Ayuq-3MNO;
	Thu, 13 Nov 2025 19:13:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJcl7-0000000Ayue-0xu3
	for linux-phy@lists.infradead.org;
	Thu, 13 Nov 2025 19:13:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A855C600C4;
	Thu, 13 Nov 2025 19:13:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59B36C4CEF8;
	Thu, 13 Nov 2025 19:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763061208;
	bh=I6xhqhMdRajfMoTrmdkSIqvVlRCirzuUNoIRZGl7wsk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P7fDF2lXMqLuennG1xp/tHqFXg8tudzX+mj4uRM8pvIWVpTGNoHdfFr2g7x3E89qq
	 xrOy1Z6scA4QuuMVR7j3NcDSM99SZCOXm7gaihi7B+WVmtFDq74tnUQOGfJiIzkWdP
	 g+TqgfcgLB8nIOjruEgIRWjL2jfLgCK5YYV0PJ6HcPPG71aA5OGdZsegkPwKWO0Ke3
	 bF6/KVFGv4L8mUEip2gymcyM6gqZsD28CNH9kigzH/ZG9SWaCvKF4fI4CW226xuQ2u
	 PRW1QRrCRO9Jr2YwOGvBk9T4RRTc9GJqHMRpUodow39F3+ZkndbqfV0Bg4NO5wxZ8S
	 PpV5zId9kNUNg==
Date: Thu, 13 Nov 2025 19:13:24 +0000
From: Conor Dooley <conor@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: lan966x: Add optional
 microchip,sx-tx/rx-inverted
Message-ID: <20251113-sassy-slicer-5a1be0d99aa9@spud>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110110536.2596490-3-horatiu.vultur@microchip.com>
 <20251110-unwound-award-a11d69b9da4f@spud>
 <20251111095831.lp4kvdfcahtwgrqc@DEN-DL-M31836.microchip.com>
 <58b0d712-48a4-4490-a63f-404716844557@kernel.org>
 <20251111-ploy-dispersal-164ae403df4d@spud>
 <20251112080235.c5iinfnketsunefy@DEN-DL-M31836.microchip.com>
 <20251112-junkman-buckle-31fcfcbfa3c5@spud>
 <20251113115650.lxsvkbrwnrwj7ysd@DEN-DL-M31836.microchip.com>
MIME-Version: 1.0
In-Reply-To: <20251113115650.lxsvkbrwnrwj7ysd@DEN-DL-M31836.microchip.com>
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
Content-Type: multipart/mixed; boundary="===============6214590274965397256=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6214590274965397256==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="V6Iy3obSvLMwStRt"
Content-Disposition: inline


--V6Iy3obSvLMwStRt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 13, 2025 at 12:56:50PM +0100, Horatiu Vultur wrote:
> The 11/12/2025 18:32, Conor Dooley wrote:
> > On Wed, Nov 12, 2025 at 09:02:35AM +0100, Horatiu Vultur wrote:
> > > The 11/11/2025 17:39, Conor Dooley wrote:
> > > > On Tue, Nov 11, 2025 at 11:06:02AM +0100, Krzysztof Kozlowski wrote:
> > > > > On 11/11/2025 10:58, Horatiu Vultur wrote:
> > > > > > The 11/10/2025 18:43, Conor Dooley wrote:
> > > > > >=20
> > > > > > Hi Conor,
> > > > > >=20
> > > > > >> On Mon, Nov 10, 2025 at 12:05:36PM +0100, Horatiu Vultur wrote:
> > > > > >>> This allows to invert the N and P signals of the RX and TX Se=
rdes
> > > > > >>> signals. This option allows the board designer to trace their=
 signals
> > > > > >>> easier on the boards.
> > > > > >>
> > > > > >> Why can't this just be done in software, debugfs or something =
like that?
> > > > > >> Maybe it's just your description is poor, but sounds like the =
intention
> > > > > >> here is to just switch things around for debug purposes.
> > > > > >=20
> > > > > > I don't think it should be done through debugfs. As this descri=
bes the
> > > > > > board layout and I don't think someone will want to change it at
> > > > > > runtime to see how things behave. So maybe the description is p=
oor.
> > > > >=20
> > > > > You said it is purely for hardware designer to trace signals, so =
sorry,
> > > > > but that's not DTs purpose.
> > > >=20
> > > > If it is not purely some sort of debug helper, then please explain
> > > > better in your commit message.
> > >=20
> > > Yes, I will do so because I don't see how this is a debug helper
> > > functionality. I see it as changing the polarity of some pins and the=
re
> >=20
> > The word "trace" here might be problematic? Maybe you meant something
> > like "lay out", but all of the use of the word tracing in electronics
> > that I have ever seen refers to troubleshooting - be that physically
> > following signals to see if there's degradation or things like the
> > trace framework in linux.
>=20
> I understand, by trace I meant "lay out" the signals on the board.
> What do you think if I say something like this:
>=20
> ---
> dt-bindings: phy: lan966x: Add optional microchip,sx-tx/rx-inverted
>=20
> The lan966x has 3 integrated SerDess and for each of them it is possible
> to change the polarity of the P(possitive) and N(Negative) pins Serdes.
> By changing the polarity of both pins then the functionality of the pins
> will be inverted.
> ---
>=20
> I have tried not to mention any 'lay out' or 'trace' not to make it
> confusing.


Yeah, I think that that is substantially better.

--V6Iy3obSvLMwStRt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRYt0wAKCRB4tDGHoIJi
0uzxAQDEQalB/WeEpQC7+j9waOPXA+TT11l5l6m1ttvSTYcO4AD+O9VmS6e48uVu
AE2wnZg5k4eM9HhlV4OD4muhvAksAQs=
=DKfy
-----END PGP SIGNATURE-----

--V6Iy3obSvLMwStRt--


--===============6214590274965397256==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6214590274965397256==--

