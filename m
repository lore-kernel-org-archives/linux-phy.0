Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35755C6FA86
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 09:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M5j7nSathOdKGPWJ6FKYFAGW9BHae78r1V/rT60nPFI=; b=4BZtf1+/24MNzTdDdr4GUDxA5R
	LyGOTQKGrwP63qy4YoVwgVe+FGPQ/EbF7PN/uTtr1S97AtNktCvpdOE3uw75GPVkt3Nq6G9fcK/xw
	aGRkmNKPa56DmIJjjlHN/KCrBEvRRNnECAIsCoqWmMwPlZtO/2SiBA1Z4AFC3K9obD9kD6/d1YAED
	EIFgjPBy/bWSfpb9wFJrpit7KIyrfXDH4Rm3UM3Fof6eD51U7l284g0hG8IqziiHd4okqYZVt5Xpa
	ED/W5t646/7LR3NQb30e0ld10jjrnucfZ6IwhmNIvPLKxh+H4jp4Jm9z74PmHdmSka8i+7wScaDMW
	4Ox4TjDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od71W-009bPp-58; Tue, 27 Sep 2022 09:37:06 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od70l-009azb-PT; Tue, 27 Sep 2022 09:36:22 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C7D6410000B;
	Tue, 27 Sep 2022 09:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1664271373;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lztctaXpuBh23+RJMFSBb8KRhYG7OptTx91tvx4/3kk=;
	b=iXC2/jH+tpxbpJ3YGexQykGVbYGfOQ1qtFA8gzE8O6LntvgnmBum8FmgxImkSNDCME4ME/
	LhB4PXeGlQ6T0Dv67wBbuU1JyTAEVIZK9+6dwUeaXizW2pMJYRA46xh3a1BknMPl7e1/CE
	tss8HJBzyax0/dJCQk0Djk3bYXyX5UDHu4oxn04t1gdtNgFrU8GmzJy46K7YhjKXe7PGoR
	N8hZFQwixvw5fDmwoZL83zvkvj0am66kV92BOVUv68j7ek3iFN+8bm8dBvCAK0pPvrL1kH
	AbDoDnEyAJBkAz/IG69ULOhioern06HvZjAr4nzFoNMe6v945CUHjrrUmhsVcA==
Date: Tue, 27 Sep 2022 11:36:02 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Ripard <maxime@cerno.tech>, Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts
 property
Message-ID: <YzLEApjzpGaDxKni@aptenodytes>
References: <20220812075603.59375-1-samuel@sholland.org>
 <20220812075603.59375-2-samuel@sholland.org>
 <c85ec3a3-fa6e-aa71-a847-22062b9683e9@linaro.org>
 <0d2bf232-8aa6-2dc1-121d-f0439bfd7b54@sholland.org>
 <YzFwst0GpdRBx/9l@aptenodytes>
MIME-Version: 1.0
In-Reply-To: <YzFwst0GpdRBx/9l@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_023620_175637_2F91DF7F 
X-CRM114-Status: GOOD (  24.73  )
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
Content-Type: multipart/mixed; boundary="===============7218290008792193532=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7218290008792193532==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PiLFU6KiWb8KPWLq"
Content-Disposition: inline


--PiLFU6KiWb8KPWLq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon 26 Sep 22, 11:28, Paul Kocialkowski wrote:
> Hi Samuel,
>=20
> On Fri 12 Aug 22, 17:19, Samuel Holland wrote:
> > On 8/12/22 5:45 AM, Krzysztof Kozlowski wrote:
> > > On 12/08/2022 10:55, Samuel Holland wrote:
> > >> The sun6i DPHY can generate several interrupts, mostly for reporting
> > >> error conditions, but also for detecting BTA and UPLS sequences.
> > >> Document this capability in order to accurately describe the hardwar=
e.
> > >>
> > >> The DPHY has no interrupt number provided in the vendor documentation
> > >> because its interrupt line is shared with the DSI controller.
> > >>
> > >> Fixes: c25b84c00826 ("dt-bindings: display: Convert Allwinner DSI to=
 a schema")
> > >=20
> > > I don't understand what is being fixed in that commit. That commit did
> > > not have interrupts in D-PHY, so what was broken by it?
> > >=20
> > > The Fixes tag annotates the commit which introduced a bug.
> >=20
> > The binding had a bug because it did not accurately describe the hardwa=
re.
>=20
> [...]
>=20
> Coming back to this series, I don't really get the point of introducing t=
he
> interrupt in the bindings and the device-tree sources if the interrupt is=
 not
> required for normal operation. I would just drop it.
>=20
> I recall I was in the same situation for the MIPI CSI-2 controllers, whic=
h also
> have a dedicated interrupt but only useful for debugging/error reporting.
> I was asked not to introduce it back then, so I suppose the same should a=
pply.

Coming back to this, my memories were wrong and the interrupt was in fact a=
dded
to the binding and the dt description.

Nevermind my previous comment, I guess it does make sense to have it in the=
 dt
hardware description even if the driver does not use it.

Sorry for the noise,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--PiLFU6KiWb8KPWLq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmMyxAIACgkQ3cLmz3+f
v9HwAgf/duJh5AF/wrOPWoxEDWSWSf/54+O5EtPf1cpHo1tW2RMzwVgVNSiFXlUW
Wef8LOxHWLSYdC+Aq7EmPa8t/3PW0t3j2leA4FPIUY6LArocr2HUFzoh90ivZxJE
r8VR1P1ZbubureBZQJwFhDflDqR67qnUwEM9be++4LcBUM0RWZzYKhD1YmR6GxbV
OVn+VWkeDSdb3fK4Prmh3ogRivMorGs7GvyFM3QJFv+arKCDBSG9/NVmVIbzgr1k
Xa+M/cWNMfxvSuyTltrI0kAeQPpqjEDnaL6unrG/le9MZsducKOSOyGOlxPDYHqm
lu1MFlBQGEhhcv/hIQFmJhI2e8JkTA==
=3Zbu
-----END PGP SIGNATURE-----

--PiLFU6KiWb8KPWLq--


--===============7218290008792193532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7218290008792193532==--

