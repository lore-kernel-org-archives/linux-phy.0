Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22224C88E75
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 14:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JkRVj/mmZKN5hP+cxf1QeckqgPjaVnyvhawnx9/TmWY=; b=BdMWAfLnql0fhl5qTmeMM+STH0
	q6em4zLRl9KO/Tk7yYNdUL4YiDN+0GCU3Os5ZLfD8k2Q1ONPpF2JFpiYgQQqptYK6vXGh2ntGtgX2
	sjdUk859EvzLKnE41zqTJh1Qvvz0jVESx147C63XOBuOD+XMXz+LXKjwoIBlQpSdpSZCdqGr1bVX9
	FiEjtKiCOx85XYAPaZA0CS3YV0tFeOfaHWLmLpQkNdx34r/PZFOFBLH28VYVuhvvZlRNA9skWjHoA
	6EOvNL5WI/E42WbDIfvIYw3UyqBQFc89hPnr/DxS/qGYsCrsp5CEDBOFsOcoC35P05y+A4XrDXoew
	7MgTfQIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x67WY-00000003xg6-2p44;
	Mon, 14 Sep 2026 14:19:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x67WV-00000003xe3-0HJs
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 14:19:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CEA9C43DAF;
	Mon, 14 Sep 2026 14:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A9CE1F000FF;
	Mon, 14 Sep 2026 14:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789395546;
	bh=EzqTXa7SaP6NeF5INJbdyRyJ6ujCTw8f2qQUFmbo6tM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nyc2avyMIFArIMKLwC2glg4o43iPhaFEvJ6FrMWl5Cz9T9xmTqAbw+KoHYQ5l7X28
	 H3Ib2I+Awwyr8cLwPYMqkM1vwYds/6UojyWhymHftXA/VrkKTYPsg+sXjMf92cPY+e
	 GJZLUQzYI+PN9z00pByHDos6YGL8XR9M5OgmJeoZhRQY+cuRMlQPIAnFZB5NkqrUCE
	 Ngw6zbc5FSuw7ysfRaMI8PJxOSKMI9rcyH+dIXjO6WcnshwORkLUEEDevOLu8ocCZO
	 zyPktlcHqbl7cwE5SnNgQFE69nYNdMhkxvkSGjOE7jxX7xcA1asVIOAsUKoPqUHOTA
	 yuG5nslDD65ew==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id EF06B1AC52F1; Mon, 14 Sep 2026 15:19:00 +0100 (BST)
Date: Mon, 14 Sep 2026 15:19:00 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: soc@lists.linux.dev, Arnd Bergmann <arnd@arndb.de>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Alexander Clouter <alex@digriz.org.uk>,
	"Jeremy J. Peper" <jeremy@jeremypeper.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Thomas Weissschuh <thomas.weissschuh@linutronix.de>,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rtc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-watchdog@vger.kernel.org, linux-sound@vger.kernel.org,
	Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>,
	Niklas Cassel <cassel@kernel.org>, Ulf Hansson <ulfh@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Gregory CLEMENT <gregory.clement@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v2 04/14] ARM: orion/dove/mv78xx0: remove all board files
Message-ID: <aqgCVDFsGOlGcryz@sirena.co.uk>
References: <20260914140821.1805449-1-arnd@kernel.org>
 <20260914140821.1805449-5-arnd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20260914140821.1805449-5-arnd@kernel.org>
X-Cookie: My vaseline is RUNNING...
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
Content-Type: multipart/mixed; boundary="===============6696468088333384503=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6696468088333384503==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1qyGSh2F9CZZuB0W"
Content-Disposition: inline


--1qyGSh2F9CZZuB0W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 14, 2026 at 04:08:06PM +0200, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
>=20
> The 'orion' platform is the predecessor to what linux now calls the
> 'mvebu' line of Marvell SoCs, and originally covered orion5x,
> mv78xx0, kirkwood, dove and a few others that do not have any
> upstream support at the moment.

Acked-by: Mark Brown <broonie@kernel.org>

--1qyGSh2F9CZZuB0W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmqoAlQACgkQJNaLcl1U
h9CoPwf+KNO70g+VRPu8p6pEZepGMgHnp0dH5l2DSpZ2Bs2z5OKSbKQ/h9GMf4X2
p9wqQKJMbRANOK/JnmEgdPFl0zRKjJA+I+4TkACtrQ+841E4a6caZZXXZc319FCU
Awaq/STGzAh+dNEN6p0hiqizuhRr6lWT/3RSyoMrrqEUPSDvoT37wpdO9lnZaPOS
+V6xcrMG+hsm/ZkRfPC63kCVIEepUUoQKX2F+7OsxSLyJNn7blpJQGKltCzNZiqU
d+QGgMod0xSRxbG8WSAGSU09gHudtBroQW/CARCHxg8ueXn2+uqbjx71BVQYP/Kf
c33KOIIwJQ02h1nO/yQgMmQpWEg7PQ==
=jVPv
-----END PGP SIGNATURE-----

--1qyGSh2F9CZZuB0W--


--===============6696468088333384503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6696468088333384503==--

