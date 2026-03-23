Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF2FCF483E6
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 19:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wgKwSUDHsnEAGYMWb7qTbfIL7jpJL+VdS/zvU2rrNhs=; b=ak5nmFvWwFgZ6O2uVPdOnne3x1
	tgfpaozF+F4mFd1hDZ8sOZ3eIqExd42+T47ii4Bu9p5jSi7lQ4i6trrBROKhAP2Rd67efeYrUO1Hw
	M5unt1ZQx5ObQOBmb5g2sK6jfjETMmiMEyzK0KQcHImEX03GaHDPbSWjfCpgTOZTZDEDyrYlwOLXk
	nqlL51ypFaYPZVCCFvGPXC9XUyIlZVc/OK4I3XNE/PKMwzbhdDYgX4BDIwXNhQgqaY2Dt0sRyCSmi
	65jtRzp6Vm6Jq5soOOHv4yychMXZS9id5OlB2+sxpxjzpHEsE7EpDecI415oc2BCeueSzmB39y54O
	Oy41NkJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4kaa-0000000HPeM-1sde;
	Mon, 23 Mar 2026 19:05:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4kaY-0000000HPdi-2KB3
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 19:05:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7026E60121;
	Mon, 23 Mar 2026 19:05:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 261DCC4CEF7;
	Mon, 23 Mar 2026 19:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774292721;
	bh=VK8zf88cWzLQQEyO5m2LxClsKajOayTmmbUa59w0yrU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kZcytg0t/0GQnQxOzIjNa6BOMIZQHOVbOghqaGVK00RX0XYe1uH8/XttMYpntSWCG
	 puy6uJ5WW2vwH7GfzzJRoiy47gpKbyP+CQdQz9dl86o6cZAol1ZaGhEX5qcA4FpwuN
	 hwJW1BhZ8nHxttypO3FuZHF5xXrf1OuXUBxot6yag1KDXAckrDftbqASzv+5RDdxUr
	 sMbTVsDeLwNAF6avDdkvfN/UPjIMiN9lrc2ltP7tuyBvG832K18N7Uc5BCU/YwVDE7
	 VZu+b7EED40/EHuw7bN1itg+CIODNdRebwrgscWHX8dBPBEOQTEMTl0B9gJM8m5h2h
	 ztYVhrk6TUR4w==
Date: Mon, 23 Mar 2026 19:05:13 +0000
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
Subject: Re: [PATCH 04/10] regulator: of: switch to using
 class_find_device_by_fwnode()
Message-ID: <7d46803e-b285-4e9c-8856-10100fa0ea85@sirena.org.uk>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
 <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
 <acGFksyx3SA0kJ5b@google.com>
MIME-Version: 1.0
In-Reply-To: <acGFksyx3SA0kJ5b@google.com>
X-Cookie: This is a good time to punt work.
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
Content-Type: multipart/mixed; boundary="===============1258092655638053942=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1258092655638053942==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EnLlSF+aDasvSOkc"
Content-Disposition: inline


--EnLlSF+aDasvSOkc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 23, 2026 at 11:28:27AM -0700, Dmitry Torokhov wrote:
> On Mon, Mar 23, 2026 at 02:00:43PM +0000, Mark Brown wrote:

> > The regulator API is very deliberately specifically using the OF APIs,
> > not the ACPI APIs, since ACPI really doesn't want to model regulators.

> For now? We also have software nodes and maybe we come up with something
> else in the future...

> I think we should use firmware-agnostic APIs as much as possible, and
> only use OF- or ACPI-specific ones when there is no generic equivalent.
> This makes the code most flexible.

I think this is a worrying idea for core code like this, we have
specific firmware bindings for specific firmware interfaces with the
different interfaces having very different ideas of how things should be
modelled.  The chances that firmware agnostic code is going to do the
right thing seem low, and encouraging the use of generic APIs that might
happen to run OK raises the risk that we'll get firmware vendors relying
on them and leaving us with a conceptual mishmash to sort through.

Software nodes are already a bit of a concern here TBH.

--EnLlSF+aDasvSOkc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnBjugACgkQJNaLcl1U
h9DGQQf+Mk0kzYDoB4rVGypXwOfdtMgCpkoWOzcoGOZoT5oIqbKWA2xKZp8YZ9lI
iN3X0Fsu/fIbEOD9FNjbJZ9qDqssjwF4J5C0jMRxwk08Suh9YRn+R/3pLvzepLs5
4P9aByiEU8BBGM3HPJ75vVTahxLy8ZqvrHJbX+/H5wlkCZVD2tdatnrnvNvjbQIo
S9NGzwZagxQkwkuw9BJ0DoZgRqiQH6xJi9kpr9uwdIzJMunmo/9FzMye6CHCEdgW
gWq8ynTVSPvQMbs81K7P1kKEyHMdrKW+SR9JsOb53ST2B6P9ErFaz33GFx6d6nr9
Q2enPr6UesV/0+0xDR+N8UmiycTfHA==
=/5RN
-----END PGP SIGNATURE-----

--EnLlSF+aDasvSOkc--


--===============1258092655638053942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1258092655638053942==--

