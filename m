Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7E9FC6FA83
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 09:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1sRpoPf8Sm6Hin3sP8uvCISCRjX4bQFzqYW7xRnsSko=; b=DbB3B1bvjd57fGdxKeiBfL0Q5c
	MB4M2Aid1jLRGXJNowf+Yb2ZTkYOYeTZam/VBm3iEUsOQwX8bCbcEB+peI+bHIcJmJBI+8frFr9or
	qZ8tJYmBwIJpXlTO0lRqs27ZuVUsSXCz1C5jNwHy4fJGqoA24DfO6aPzxmVZgr8wbvwmV06esw+ya
	F24hU7pxjxTswGW2YhkrfAfE4wx9VtWXrdTYiN/RiaHWbNu1muCfyYXPBw3LGCM2lcAHujTXt/zl2
	s45EkWVhBwiJ/1sPSM4BF3ldYkdUnmn3agoHMADtcGy0tmMYbX+zY7hDEmxT8RYHoFrTn4eR63jZU
	qkSgJr9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ockPx-003ddj-4z; Mon, 26 Sep 2022 09:28:49 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ockPa-003dQC-G7; Mon, 26 Sep 2022 09:28:28 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C714B1BF208;
	Mon, 26 Sep 2022 09:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1664184500;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=i4eAWY2bCZloQbtUvwHPDqDRZ7KYya4jLR9cP3JLjAs=;
	b=li4fsrvQKROc8CKyC+R4/UqgUDDRf5Pyf3nmR8WsGj2LsPjSm2DXYnriOdYqBtWaBzIEfJ
	aPpFUw0GNfdcsQFrEo2FekF7QUX2HElU4qThZXF49qqomyXti/u962WhJO4BGj0RLdne+D
	UifQsQSI4/je59Fszumgs/JjVROG/4mPjrv1Wt0PdcinEsgEkulCHooWwaZGyX6d8fel63
	snUGu35xFnH8vlZHAn/RB08j7h1oGS9cD8aGwaqOpgArhUbtcut/tNBAWpIvfE15XJ2aPA
	pDj1a+u2YgoAV1bopgP/rpdWwxHwdxvqiA6WhqIQx0tJc6X1RWcTL5KG8SX5sQ==
Date: Mon, 26 Sep 2022 11:28:18 +0200
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
Message-ID: <YzFwst0GpdRBx/9l@aptenodytes>
References: <20220812075603.59375-1-samuel@sholland.org>
 <20220812075603.59375-2-samuel@sholland.org>
 <c85ec3a3-fa6e-aa71-a847-22062b9683e9@linaro.org>
 <0d2bf232-8aa6-2dc1-121d-f0439bfd7b54@sholland.org>
MIME-Version: 1.0
In-Reply-To: <0d2bf232-8aa6-2dc1-121d-f0439bfd7b54@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_022826_868720_76C9E7E1 
X-CRM114-Status: GOOD (  19.27  )
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
Content-Type: multipart/mixed; boundary="===============4677746419227170615=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4677746419227170615==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RtKXtsMKKEGalrQn"
Content-Disposition: inline


--RtKXtsMKKEGalrQn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Samuel,

On Fri 12 Aug 22, 17:19, Samuel Holland wrote:
> On 8/12/22 5:45 AM, Krzysztof Kozlowski wrote:
> > On 12/08/2022 10:55, Samuel Holland wrote:
> >> The sun6i DPHY can generate several interrupts, mostly for reporting
> >> error conditions, but also for detecting BTA and UPLS sequences.
> >> Document this capability in order to accurately describe the hardware.
> >>
> >> The DPHY has no interrupt number provided in the vendor documentation
> >> because its interrupt line is shared with the DSI controller.
> >>
> >> Fixes: c25b84c00826 ("dt-bindings: display: Convert Allwinner DSI to a=
 schema")
> >=20
> > I don't understand what is being fixed in that commit. That commit did
> > not have interrupts in D-PHY, so what was broken by it?
> >=20
> > The Fixes tag annotates the commit which introduced a bug.
>=20
> The binding had a bug because it did not accurately describe the hardware.

[...]

Coming back to this series, I don't really get the point of introducing the
interrupt in the bindings and the device-tree sources if the interrupt is n=
ot
required for normal operation. I would just drop it.

I recall I was in the same situation for the MIPI CSI-2 controllers, which =
also
have a dedicated interrupt but only useful for debugging/error reporting.
I was asked not to introduce it back then, so I suppose the same should app=
ly.

What do you think?

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--RtKXtsMKKEGalrQn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmMxcLIACgkQ3cLmz3+f
v9F45QgAgRfNk3+SZO+L1kab89gYMzHlxi/cF34heKSAUZslSgtSK1TAlLPy3L5W
d6tKc1hk1xLdzi+lxA+Z+mR8giHn+7zbVRSCzsiRttdT8rBCZueqwHJrUSSXpwEp
MLN/2J5kNEM0lQeZSXOXUmB9FhjD+KFlHP3k7vTkTS/TaeuqjRZWtyn1339W6lU0
bN6cjE4c2caEqJE3u6lLMdSVMAZm4OVMXf8YWuwo+7IaTbKkyo30UFCXXubk0aRo
/L6SedS/uAl6xmYaCrOQvS1ooSFFKsy8hHvpt5JliG5xtblYw4P67FbEcdRlNsCI
Wgu0Ky5ajXx1ApZjDWfuVSOeITQwFQ==
=LwNy
-----END PGP SIGNATURE-----

--RtKXtsMKKEGalrQn--


--===============4677746419227170615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4677746419227170615==--

