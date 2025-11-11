Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85A4CCCFA1A
	for <linux-phy@archiver.kernel.org>; Tue, 11 Nov 2025 17:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tDk5NKCrHFeyB08mLNTa+VGhhmpMV7NOEKel82+49J8=; b=d3A1/5hI7suAO1N9pB5P018da2
	aQS/qOHNvLO+CfGN3NyGfmkwzh2Vrh9U/UNQGrlUax608JbyjbICb0Sm5m3TZaVqPwFy0kk6wdZS2
	jgKm81ys4OL6+C8+FMTIBCDw9LaWuRVxF7JyLpg6F0z+waHQWd2o3H8ZiB2ss2lX7Dy01GsBlMfHA
	tMhvQNaFxzANP+huX2cpjStclI2BajZ1vfT0+rfvZ6l8sg4pQti31oYOMizJ9FOgleLmswiaT5EWD
	vJMhc2ymzYk7TQpJtLoCdQu85PS4Cj5TgOc033DJM588RzW5vwLkWO0BEo/vNDj7aQU62D02k0RtI
	Iva2nh9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIsLH-00000007YCw-1J9R;
	Tue, 11 Nov 2025 17:39:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIsLF-00000007YCa-3vMS
	for linux-phy@lists.infradead.org;
	Tue, 11 Nov 2025 17:39:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 16B67437E5;
	Tue, 11 Nov 2025 17:39:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBED7C4AF09;
	Tue, 11 Nov 2025 17:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762882781;
	bh=sseQu7nEnCDYeW52KYqIspyMDbjPaOYXv8zmuvR97Oc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j3X81y3t3PaO98JTZFp4iznbfvlF++ownPmqswSJk4zRn457qMOpFJbmDRUtIL6NK
	 2kFMgd/vm2S+qwDNe2cw3xN1ysTcAy2YewYBcvh5llUJyFAHEBeXVpi4n5uU54jzLG
	 2hs6rb8Wpfhdv4uWIUh5A8QCKFYbYM+JsJVuikzTa2B67xzkAj+BW2AE6tk/NhoLiE
	 MGgzDf9FdNGo2zizIl0T9345ljSVQbx3j+ubtSsk5jnvtoS/Yyds//K6c1ohU+mWts
	 xq2LhorxwXt13x8u+sDQqQyezmEuBNWKrb2d/Lzc2yw6x6La5vghfyLxvhGFgpUqSj
	 ldXqeobgZaslQ==
Date: Tue, 11 Nov 2025 17:39:36 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Horatiu Vultur <horatiu.vultur@microchip.com>, vkoul@kernel.org,
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: lan966x: Add optional
 microchip,sx-tx/rx-inverted
Message-ID: <20251111-ploy-dispersal-164ae403df4d@spud>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110110536.2596490-3-horatiu.vultur@microchip.com>
 <20251110-unwound-award-a11d69b9da4f@spud>
 <20251111095831.lp4kvdfcahtwgrqc@DEN-DL-M31836.microchip.com>
 <58b0d712-48a4-4490-a63f-404716844557@kernel.org>
MIME-Version: 1.0
In-Reply-To: <58b0d712-48a4-4490-a63f-404716844557@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_093942_020927_53150A4F 
X-CRM114-Status: GOOD (  18.81  )
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
Content-Type: multipart/mixed; boundary="===============2701254974199585010=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2701254974199585010==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5voBWClPfG+Dchvf"
Content-Disposition: inline


--5voBWClPfG+Dchvf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 11, 2025 at 11:06:02AM +0100, Krzysztof Kozlowski wrote:
> On 11/11/2025 10:58, Horatiu Vultur wrote:
> > The 11/10/2025 18:43, Conor Dooley wrote:
> >=20
> > Hi Conor,
> >=20
> >> On Mon, Nov 10, 2025 at 12:05:36PM +0100, Horatiu Vultur wrote:
> >>> This allows to invert the N and P signals of the RX and TX Serdes
> >>> signals. This option allows the board designer to trace their signals
> >>> easier on the boards.
> >>
> >> Why can't this just be done in software, debugfs or something like tha=
t?
> >> Maybe it's just your description is poor, but sounds like the intention
> >> here is to just switch things around for debug purposes.
> >=20
> > I don't think it should be done through debugfs. As this describes the
> > board layout and I don't think someone will want to change it at
> > runtime to see how things behave. So maybe the description is poor.
>=20
> You said it is purely for hardware designer to trace signals, so sorry,
> but that's not DTs purpose.

If it is not purely some sort of debug helper, then please explain
better in your commit message.
pw-bot: changes-requested

--5voBWClPfG+Dchvf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRN02AAKCRB4tDGHoIJi
0rtuAP4stxlbERYZwunofMFT0CVT0k9d3WxbTURjHCnGuuIivAEAgt0wZFJVzyEE
m31MhjAt4FgLLZa2KMXLuaQ/YLV9nA0=
=HEIc
-----END PGP SIGNATURE-----

--5voBWClPfG+Dchvf--


--===============2701254974199585010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2701254974199585010==--

