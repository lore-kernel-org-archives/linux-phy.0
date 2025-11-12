Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 592C2CD343C
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 18:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xEYU0pRw4Cue0du0wBWQFOtsbpi17uY8uV9SE1Jebcc=; b=AN2+PasdliOQZ9wRcQiWDjsdOx
	Ec5hj2TUmwSmCYrTDdWDd+ccO3VE+s/8kqeHRuICVwEyU6Uj2L/ErKuBB43kXpxbYvw652XfSOokr
	rzXKo2o0DT500EWQi99zpCkRswbkX/3XnyTSRQwMKoDSzUstW8AKHOeGVwrYQUUH9z23TR+uf4iaX
	KrJlcOcegv5cMUxCedlDWHAFl6XySemxgp7Is8pR9MMkeXr97IRiitEsSKROb8l85dE8Kkxe5QPhx
	UEW6CPExMORGy6/XNGuGhZBPQXA2yU0YFFasabKDMRFjjkdeN2l1vXQ1rMW4meLKu/TQ3VsHKZG3k
	LEPY6BoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJFdX-00000009MD9-45mD;
	Wed, 12 Nov 2025 18:32:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJFdX-00000009MCd-08TI
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 18:32:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 220E9601AF;
	Wed, 12 Nov 2025 18:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAA60C4CEF1;
	Wed, 12 Nov 2025 18:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762972325;
	bh=rhYHIaDeRlqkfmPOJcKkkL6MWk98Yo8FHzQg9ppxXiw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XxgUJKucqwpnqFajquRl8Zd0vK+MfyA65TGjwcjY+tJlFdF3RFAk7NAAGp9567X+3
	 2f+we+WKmh3O3LlAxx3dlAGlzeCnLftFkwyfkCoQt24ZAqfn1wV5N+8xevaCWM/Qi0
	 rgNRzafPx7FZzdTOuUuy9S8b/lSz8bLksBHzXHtZvBfCJ7zXVc6Nij5fcJZn5UYEus
	 bEDdHhVu0rnWAZmXJQ/TEYxdV2YS2hlyq8lZdqZuWWDB9WCDQhk6GmY5eBfovjQKzf
	 d/MTO7p1tHRDeqwOtltFxZJ0pGz+JagVC5SVl07WrvlCyBy5iOFoI5i93P/64hli+I
	 NXOkZYD5QQoJA==
Date: Wed, 12 Nov 2025 18:32:01 +0000
From: Conor Dooley <conor@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: lan966x: Add optional
 microchip,sx-tx/rx-inverted
Message-ID: <20251112-junkman-buckle-31fcfcbfa3c5@spud>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110110536.2596490-3-horatiu.vultur@microchip.com>
 <20251110-unwound-award-a11d69b9da4f@spud>
 <20251111095831.lp4kvdfcahtwgrqc@DEN-DL-M31836.microchip.com>
 <58b0d712-48a4-4490-a63f-404716844557@kernel.org>
 <20251111-ploy-dispersal-164ae403df4d@spud>
 <20251112080235.c5iinfnketsunefy@DEN-DL-M31836.microchip.com>
MIME-Version: 1.0
In-Reply-To: <20251112080235.c5iinfnketsunefy@DEN-DL-M31836.microchip.com>
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
Content-Type: multipart/mixed; boundary="===============1470073930730368504=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1470073930730368504==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5ULl6H7+uUD9DWU7"
Content-Disposition: inline


--5ULl6H7+uUD9DWU7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 12, 2025 at 09:02:35AM +0100, Horatiu Vultur wrote:
> The 11/11/2025 17:39, Conor Dooley wrote:
> > On Tue, Nov 11, 2025 at 11:06:02AM +0100, Krzysztof Kozlowski wrote:
> > > On 11/11/2025 10:58, Horatiu Vultur wrote:
> > > > The 11/10/2025 18:43, Conor Dooley wrote:
> > > >=20
> > > > Hi Conor,
> > > >=20
> > > >> On Mon, Nov 10, 2025 at 12:05:36PM +0100, Horatiu Vultur wrote:
> > > >>> This allows to invert the N and P signals of the RX and TX Serdes
> > > >>> signals. This option allows the board designer to trace their sig=
nals
> > > >>> easier on the boards.
> > > >>
> > > >> Why can't this just be done in software, debugfs or something like=
 that?
> > > >> Maybe it's just your description is poor, but sounds like the inte=
ntion
> > > >> here is to just switch things around for debug purposes.
> > > >=20
> > > > I don't think it should be done through debugfs. As this describes =
the
> > > > board layout and I don't think someone will want to change it at
> > > > runtime to see how things behave. So maybe the description is poor.
> > >=20
> > > You said it is purely for hardware designer to trace signals, so sorr=
y,
> > > but that's not DTs purpose.
> >=20
> > If it is not purely some sort of debug helper, then please explain
> > better in your commit message.
>=20
> Yes, I will do so because I don't see how this is a debug helper
> functionality. I see it as changing the polarity of some pins and there

The word "trace" here might be problematic? Maybe you meant something
like "lay out", but all of the use of the word tracing in electronics
that I have ever seen refers to troubleshooting - be that physically
following signals to see if there's degradation or things like the
trace framework in linux.

> are few examples in the devicetree bindings where pins change the
> polarity. Why I see it as changing the polarity is because the
> N(negative) will become P(positive) and the P(positive) will become the
> N(negative), so we just invert the signals.

--5ULl6H7+uUD9DWU7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRTSoQAKCRB4tDGHoIJi
0imiAQCuvPVj5pCt0I4n4uPayM4eKjorWxB+tswfVsc6jE04EwEAusBqIYkcPuvM
u0XmSCHD6wSTz43Y5uWyQdojJ+Pqswg=
=t3BV
-----END PGP SIGNATURE-----

--5ULl6H7+uUD9DWU7--


--===============1470073930730368504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1470073930730368504==--

