Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA7ECCCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 11:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ev7n4izg3uZiHcOqClGIQSDQHZ5eyDWS0MDSzF51MP4=; b=jq6Sak3Xj1nFfRNPq0oPJHP6xX
	BHflF2pjMGjUVNUfDFCZaf+Pj+22Fnx4xk9fAssBMuCO0J1iPGBe9TGEY1D8bKKdgTH/pFJC5/yIY
	Y0VygmNs6grapZSVPEQMHRPcSaWTlrPpvT36YA/G3bAq3AeB5BTeKn73bfr0NIqkIfbnB6erGXvhn
	FDc/QUhgwRCZa4vkDrsT8b2+lAfsznGLz2Lx4hurK8YrNXweo8hSvnA/VBKyYxs40USMNMazgqZkY
	TZz6FiXSYhX9lpyuni5Z6VkMXC506VkFsNX3ko60eM7CjLRoGEB5zhySt2j/ZMadBobw8q7vzqbu/
	xvlt8iZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jlc-0000000HWep-2TME;
	Mon, 06 Oct 2025 11:52:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jlb-0000000HWej-2DGd
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 11:52:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DD2AC6047E;
	Mon,  6 Oct 2025 11:52:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DB21C4CEF5;
	Mon,  6 Oct 2025 11:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759751554;
	bh=WDNHLYL18ruyuqTniL/2wHqBfq20g9ibBHtE5bc4e8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u2o3Y0+d71ZQ+1KEXaDJtJ1wdYD7xpwNVYFyIPb8AuA43hsAOROT5SHvG/ewopGj4
	 ysikdtXKxxdWMmetePkp66bEG8sIExFHJCkSolSFnfxldkLpUfzQfi5pPx6QDR5VHF
	 SM9ceoCIS0dDzXu3oByHxhxZnscwVJfvcNCYKpTvDbvfhB5mihnGzUP5pMZEH0vLsP
	 eDTJmoSdvgVyJ2b0gt00b0hcamZSM82LbzHZmQh7ri6lDCgcqmXvnCrUrnDZ1/OVlD
	 bk0xi8tOqPKw7cQi0uPWZiCEFsEPJLgJMp8vaOnY+v12YSzYCEH3YHFlJxH4PrNXx/
	 V1wvOT7VF5voA==
Date: Mon, 6 Oct 2025 12:52:29 +0100
From: Mark Brown <broonie@kernel.org>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org,
	biju.das.jz@bp.renesas.com,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 07/18] regulator: devres: Disable exclusive regulator
 before releasing
Message-ID: <ffc7b0f7-edc0-4e26-ab43-e2010ec58819@sirena.org.uk>
References: <20251001212709.579080-1-tommaso.merciai.xr@bp.renesas.com>
 <20251001212709.579080-8-tommaso.merciai.xr@bp.renesas.com>
 <ae2701a5-8662-47d3-81fa-30e832600423@sirena.org.uk>
 <aOAI5cfA1HmEc7Rv@tom-desktop>
MIME-Version: 1.0
In-Reply-To: <aOAI5cfA1HmEc7Rv@tom-desktop>
X-Cookie: You must be present to win.
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
Content-Type: multipart/mixed; boundary="===============8787051889221619225=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8787051889221619225==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="H9n71XiYCQw6Wbk/"
Content-Disposition: inline


--H9n71XiYCQw6Wbk/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 03, 2025 at 07:33:25PM +0200, Tommaso Merciai wrote:
> On Thu, Oct 02, 2025 at 05:29:19PM +0100, Mark Brown wrote:

> I will need to move the refcounting handlingfor the exclusive regulator
> at USB driver lvl.
> The drivers/phy/renesas/phy-rcar-gen3-usb2.c is using
> regulator_hardware_enable() for some USB otg channel. I think this is
> the reason why I need this patch to handle multiple unbind/bind.
> Without this I'm getting some WARN_ON(regulator->enable_count) doing
> multiple unbind/bind.

Are you sure it's not just that the driver doesn't always disable the
regulator before unbinding?  It only disables in the power off callback
so might leave a dangling reference behind.

--H9n71XiYCQw6Wbk/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmjjrXwACgkQJNaLcl1U
h9BqGQf+IHJjvI87K9Wy9/VYnI9CsGMrZ4yrHPyF23yCetEbfiUiwl7vytDJW3lK
0lvgL19TpGbshQUehlF34U0tJdC3l/pwZz7ao5r7QTV1b5x8QEtQeXH9876z1605
lrycald/cfrtPbtNdoqYAHXwzPf5AchzZIjQw//xfoEBAR3Ui2LBYCuVoyQMJ7Hb
C9VvLBrqOAJCzWMuc5SWoCxJNGmSs3PHHzdGz/W1KcmQC+l/5653uywN6WkgZ6Sd
d6X3vXOI4kkXicnayiCcZcQ8gLI48mf7G1W3+5/2fy3Lzwi6OgFnVLqbs5uLS9Xi
9OqIfynOPFU/atbjjE5qfEdHxapXgQ==
=IXVb
-----END PGP SIGNATURE-----

--H9n71XiYCQw6Wbk/--


--===============8787051889221619225==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8787051889221619225==--

