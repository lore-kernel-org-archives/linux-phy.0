Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D2FAF46120
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 13:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=87t/uFc4F6F7tyGZH+Y8e17AcHcf6Hhj5T1oTOL4RmM=; b=AOsvSC3sL/9pSpVWZHLih/JqXN
	400obqwsYhREJmzAwz0dQ6Hl4ALF9NsSslIe0KKjmoPBTmcnbm0wqC8+lUcpwSbzMNYvDudNFHNZB
	dHGhULyBO38jC/Mg+3qQD3pMbvY1CNx350sQrPcykRXXHu5hNDjEVZnZPRc0m++bUdgZC23QpWEaK
	CjagGqxfl7BUHPdxxu7AGnLqm2+LXPksbV3Gtsv7IVYiFjEF4TD3bTzQtjUxwSFsd1cKl9Z2d4Gyn
	9NsJRC/kg5lXF5h6NMuT1+cPJ50lweOj3AQ64WCZU3ZOe9+rlqByqxrS6GWRjVJ2uP4ZTDUrYib64
	+NGQ/Dgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4fnS-0000000GsPb-4Bii;
	Mon, 23 Mar 2026 13:58:23 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4fnQ-0000000GsPI-2KHu
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 13:58:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9ED4F41AB1;
	Mon, 23 Mar 2026 13:58:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A146DC4CEF7;
	Mon, 23 Mar 2026 13:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774274299;
	bh=DqfWL4BSTBiaLqTmikifLZdJR1EIole67SS90j6+wPs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ug7FqFPOxtjqtkSadBjpkd4bQYSehH4p2u3pHmJk9tmOoZu6fr0+vdVBUekcgA6/A
	 QnXwgH5xZaTtuisppuO7Isa5gwywmd5oZCkMmzQqAUk1xRyPfjBZkWYdt4jDFLtgce
	 jG6/HZKk7u6DP1SsWQWgCLGs3au+Dh/HpT8FZ5a9XULG7e+Ot4MU70ST2AC/mB472J
	 3WU43zruM06Q0aL1wgWvCiWoxpf7uin9XCKjJQhFzvY9Ij7zDpAAa1hWZGfhn/HuWA
	 TzEF+P8h5nrJG5gDl+i34duuOTOggqENQN21Fhq30HCbMyyNAklfwWsCb2t5CgQ7yX
	 cGR0rCKZ3nXrg==
Date: Mon, 23 Mar 2026 13:58:12 +0000
From: Mark Brown <broonie@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-spi@vger.kernel.org, linux-leds@vger.kernel.org,
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH 03/10] spi: switch to using class_find_device_by_fwnode()
Message-ID: <03c80468-b097-47ac-b7b5-4170eb782772@sirena.org.uk>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-3-b72eb22a1215@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-3-b72eb22a1215@gmail.com>
X-Cookie: Avoid gunfire in the bathroom tonight.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_065820_636903_333FF29D 
X-CRM114-Status: UNSURE (   9.02  )
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
Content-Type: multipart/mixed; boundary="===============6490282320816605590=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6490282320816605590==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/Y4JH2eUDT/w1Qo1"
Content-Disposition: inline


--/Y4JH2eUDT/w1Qo1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Mar 22, 2026 at 06:54:21PM -0700, Dmitry Torokhov wrote:
> In preparation to class_find_device_by_of_node() going away switch to
> using class_find_device_by_fwnode().

Acked-by: Mark Brown <broonie@kernel.org>

--/Y4JH2eUDT/w1Qo1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnBRvMACgkQJNaLcl1U
h9CsIgf/RCKdllt9YwSLySimmbBJtkTLmhOS6EPJCqGv19zWp+V0LMQR7m+UNTGr
FnR+LwzGc6hEHm/6jhjD198BnnVCOW82zCI8Bs+E6y5/EdupkUDZ+b3g3SeURJAF
+QJq5bdoCW1CTTRSIGfA5rvSFcvntN7Zq8M1wxHw3tCGu9nFjd6zgDl89+AftFxf
y229F5tEErnywkxr7uTfooW7t6VMKlhRVBg4yrPvoa6Uya8sSLjcXMPA/rF9358P
K9Rq1TRyca20qXzUtriw7Az+/rk7ZBkCZoYVUBcihEdjyfxrORCd5RqlM6pxH80i
lcMvh6jcdGoRkTwa6/zxTPScelZsuw==
=oQMa
-----END PGP SIGNATURE-----

--/Y4JH2eUDT/w1Qo1--


--===============6490282320816605590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6490282320816605590==--

