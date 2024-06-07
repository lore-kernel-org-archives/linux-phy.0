Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA795C27C53
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jun 2024 16:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nLv4RoGHR2uFVJ9ZdtZ3lgmPehfRjxUZyFRI6LVyZK4=; b=1VfroPZVprLpajiK8ByBE/b8Ta
	EI5J7QmKv6Zpjj3djD0F/nslW4wGR2te9ZMzpy0CftR1r1W6qf/Zzey/Az9oDRA2pFtCrisFyL7k3
	cPKGjprGMwO8maPjB8aCZ3QT6skh3IucLBRZFQC0rStBEEJe/VU6SY1XD8rkSCMNDVZgF/bWWVu0w
	1/es5jbF7nXHzjWlN3Ewia+U3kkNwXDaJxmThmWNX6yMT3obw0RQWeAbFG+uNAoeBUfq0JUKEod2f
	U04gCgjq2bn0QYwaLSs0vnDIo9c2KHD4YruuM9gz6fMTUfyjlVnSUzrlGDjstZfWESVqACD6CoN39
	chUebmGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFcku-0000000EziX-1f3c;
	Fri, 07 Jun 2024 16:47:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFckr-0000000EzhQ-1FOB
	for linux-phy@lists.infradead.org;
	Fri, 07 Jun 2024 16:47:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 73DD361EBE;
	Fri,  7 Jun 2024 16:47:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9329AC2BBFC;
	Fri,  7 Jun 2024 16:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717778872;
	bh=svWhuSe6Hrl0eXx4SJrwTVnmUobplmwTGkLB4/Na6KM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R8S0AVWrPFHSgXJJ739HJDnv2EMybJ5gls1mXjix5kVjAXtv+CV7OEuufsOhcMYzf
	 vVHn3Lb6psLzQatma7AURo2AtX5Yp5BUzQJPfC6O/XHO0swL0Z1sz51MQZcJX++mmh
	 bNXHTvmHS3ptIBgfXbpbPhlXfWJa2ymqdm7d+ZlFeJBo78HmS4ohqtmzMrMZzXoCrw
	 IIhsR0YYoWV9i+qjqzy+qMyO+dsVtdPh6dd4YtMXVK8RTOZqRvt+F2joXXyHf273bV
	 1mpqNVAWzCy2ujHms5AqPA2JHn9dFmSMI19P+YaEBuy+EumSUX6WzkncBj5SQt3LV4
	 hcU41cEXkKkSQ==
Date: Fri, 7 Jun 2024 17:47:48 +0100
From: Mark Brown <broonie@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	"biju.das.au" <biju.das.au@gmail.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC v2 2/4] regulator: Add Renesas RZ/G2L USB VBUS
 regulator driver
Message-ID: <ZmM5tL1SaO-mOEpd@finisterre.sirena.org.uk>
References: <20240607113745.73934-1-biju.das.jz@bp.renesas.com>
 <20240607113745.73934-3-biju.das.jz@bp.renesas.com>
 <ZmMntvriR32aqI-m@finisterre.sirena.org.uk>
 <TY3PR01MB1134695C9D89C84EABF7B2E2E86FB2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <TY3PR01MB1134695C9D89C84EABF7B2E2E86FB2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-Cookie: Your love life will be... interesting.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_094753_418073_4670C814 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============8315602146713034913=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8315602146713034913==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JlAvTLCTi6tEcdAx"
Content-Disposition: inline


--JlAvTLCTi6tEcdAx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 07, 2024 at 04:20:10PM +0000, Biju Das wrote:

> Is there any atomic regulator API's I can make use of enabling it?? VBUS detection
> happens in interrupt context.

There are no atomic regulator APIs at all at the minute.

--JlAvTLCTi6tEcdAx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZjObEACgkQJNaLcl1U
h9BVzwf/XOiV6LYyk5220RvYSefkL8UfteoyuuG1vMIoPKlEjHvlhwmTZI/rX/lN
8Ttekx1UYFlnJlApvc2oHJS97g53NQwpswHWEYzeU1TaAI7YflM+rIEqd5TQAIRV
1en5LUdIzSK9KY2F5cwkWfiNA31wC+9+4lTNdT8BPiggzZgkezrYMJSt3FFoxzDC
Es7pIv6HPKe+xorFwoktNn3yJ4nf+d7Bkzwm9xu6HwL+r3sDB/EoiUOp9trJ8y5A
fJ0A1kdnIjWEOJXQQQdjjGzNgbi4rFT0NbFnkRgq3HnYHHtYPoE3zvY5h3m5TWDn
pQGKcNZUsSFpmk4t7t/0yFlzyppWhw==
=yMzJ
-----END PGP SIGNATURE-----

--JlAvTLCTi6tEcdAx--


--===============8315602146713034913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8315602146713034913==--

