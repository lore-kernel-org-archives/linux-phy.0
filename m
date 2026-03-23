Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B68D58CBF
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 21:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bZF9PGHFp9zkXk/Z8lzKQ4l7nvs/ErBw7xshb7l+5Js=; b=D3klF50eOZj1YgSbTgHn0ANSr/
	W7JB5FetXp8fyy5Mnmuibbn+Ffrqt4jB0o4BKbFWeptNrtu1HHt3rDJmJfGnl2uN7/citLY0raodv
	snHkqBsj/aNuTP2GINg2B1V9ZnDzuFGzaGZ1E2hTA8IpO/QJDEU/YmD+7ycIbDiaEy7sOHB1f10+y
	jHoew/ddk0t5kOWN0rEAHKn56dWeZYDAFbKI2UOJOQGJ8SqIkNEhCrSCl6iJeVZgfX7nVuk4POzRL
	rDl2YTySnj9WXg3+mt5jRuV1nuU8sF0OzXAr+BPndxhkhoKhuPUsRG5qo1NWnNAhwuxyUZxC41/7d
	T34baWjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4mwd-000000001YW-0pkz;
	Mon, 23 Mar 2026 21:36:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4mwa-000000001Xp-1wSj
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 21:36:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8048D41803;
	Mon, 23 Mar 2026 21:36:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10169C4CEF7;
	Mon, 23 Mar 2026 21:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774301775;
	bh=IB+9SlAOh5ptPp2tmgKX5NSgSAr8HddPvomWcKvihkE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DMPpBa6P1TVWJ/aODdQdk67ShVHljEdYRxQQBwcoWKnIkT7yrOmARPxv9PXkbWrhO
	 h+ZMfMNkMGTyGPEkEOCKRMYGZ3CHAp/bvMt/wbipsiYRf33bbMr3mp9ifuB8lfQxiD
	 pEVuCAEc7ex6q53vi4NwzV6onQ7sZbEnnuFLBIkPtQW0Ua+wnVCKqw66kf7HgIOtoR
	 lFgqnQfJp8OXgkTkMI/m5CXJRcFQYlBZOhSMXjPNdfyFye7fkLqtq2CPKEPb/lAr4Q
	 FLMN7uQAKHu5TzS3ERpAn99i49HgiT4esMjFjFklZQNG8Bc+W36bH8OyKLn6Ey5lTN
	 nZDZHNELtFYoQ==
Date: Mon, 23 Mar 2026 21:36:07 +0000
From: Mark Brown <broonie@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>,
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
Subject: Re: [PATCH 04/10] regulator: of: switch to using
 class_find_device_by_fwnode()
Message-ID: <193e194a-498f-464f-b22c-c283c16db6c1@sirena.org.uk>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
 <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
 <acGFksyx3SA0kJ5b@google.com>
 <7d46803e-b285-4e9c-8856-10100fa0ea85@sirena.org.uk>
 <cf92122d-6b15-458a-bf89-189a0a6874f7@lunn.ch>
MIME-Version: 1.0
In-Reply-To: <cf92122d-6b15-458a-bf89-189a0a6874f7@lunn.ch>
X-Cookie: This is a good time to punt work.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_143616_525970_A8608B4D 
X-CRM114-Status: GOOD (  10.80  )
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
Content-Type: multipart/mixed; boundary="===============7330207527087962088=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7330207527087962088==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GoAgIAlGDIVYM8ig"
Content-Disposition: inline


--GoAgIAlGDIVYM8ig
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 23, 2026 at 09:01:47PM +0100, Andrew Lunn wrote:

> How do you handle deprecated OF properties? This is a problem i've run
> into before. A developer needs an ACPI binding, so they blindly
> convert from of_ to device_ without engaging brain. As a result, they
> bring all the deprecated OF properties we want to die into the brand
> new ACPI bindings.

Honestly that one hasn't really come up much for me - not too many
deprecated properties.

--GoAgIAlGDIVYM8ig
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnBskYACgkQJNaLcl1U
h9DUSwf9F2FhSCxRuGru0SblHA7RaerEEaw1yqAtRLt1txCS0WV8BPpB/DVZnGJ5
lMyagkdO4FZ4WQfp5unRTjX88YTdwnWCbAFUREHpAeC2Z6+WLDleD0oU8PQets1E
lWAcKNiWdIg82KhBI30iXmV9TrZjTr7DyDcFOxqkif2c2vI1kZOFjuf8arHmoyDw
i2sk9XKVUS4ImKWAnMNkOr74j6MtAjXlRdx23/gCXK6uzUeVr0M6r2MeKolcRNQA
H6CD0VGgilwNYVZWE1rvF+WrkkNQPYe4uIRUAHw9+WNufZ4vYzC82qFTXBbYkDUL
sLwVvX9kD7NrSEiQkeEuIcjrsTUtmw==
=3anU
-----END PGP SIGNATURE-----

--GoAgIAlGDIVYM8ig--


--===============7330207527087962088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7330207527087962088==--

