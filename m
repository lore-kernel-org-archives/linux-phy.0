Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BDC5CCFA13
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 19:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E5rJUJ6BfDo5UoUOXahnZer3B7X1u0rT5RrxxJhXdNg=; b=E4D1ImbobXbzyld+wXY33rUrYT
	iBbckb8mTAtN7+Ej+bjYn3K5wheFscKrEFEmsyGl1n18mBPzSBi0+7zmpDYa7gyVvvB/pj1SdgpDW
	zookN5Na2lQdOTFvz5Cj94+UhBMHA/D3Xfq5nckB5PYFvdn70uWmhfHGnxRJ4BvH7GzYreYg7ufYv
	ZazQweVl89cBRUInIm1otR7zj4mRhYR5T9b3yvUCKJ2LU7VQ56E0rxTSAL1dBVpqgV8iJ3CnJkBym
	VXcrlFyxyoUEjqRDEV/uaPJqKT0Z+ATZrNIyL8rLmqxZyXG49BAJ8Tum8HCcRAMAqzvlnoiPrqqiB
	ScksNi1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXWE-000000061Yt-3fOy;
	Mon, 10 Nov 2025 19:25:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXWC-000000061YF-093W;
	Mon, 10 Nov 2025 19:25:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 38DEA4097F;
	Mon, 10 Nov 2025 19:25:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17E9CC16AAE;
	Mon, 10 Nov 2025 19:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762802735;
	bh=GrymXJeErTy9u70PVzPmfw43ubyTayEwBn+LiCzgBE4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cpqC+x8V3BJ6v7fmFkIt+t3dVhDH0GKKdgDZh1nM0OX818sGDugtU8rjaIBwPdmKF
	 QiEAvjcAlzFdMnYeBsYbJXlzbd53uuAdTpD+Si2EO8CF5/l2w6IkrAGj7h0drqhYHk
	 zhs/qLZU8Ti3aUUAB6VDwUTDs4Yc2BpZCv3bMcgTEKKeKpHHPWiGfrGv1HUUY6bbaa
	 8eiRsMGt3WbjCUNz2oUWjf+1KVcEWr4yHx07JgpWdX5GZ2IBw0Wn0s6pCx+ubse27h
	 ay/YPZh79ewOXvUjiJMCAOmnLNtXfMj0c/YXq+74ER4kBPBH6xuu+hsRw8IefMlFcX
	 kRcF6RUdPZdug==
Date: Mon, 10 Nov 2025 19:25:25 +0000
From: Conor Dooley <conor@kernel.org>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Hal Feng <hal.feng@starfivetech.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Xingyu Wu <xingyu.wu@starfivetech.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Lee Jones <lee@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Icenowy Zheng <uwu@icenowy.me>,
	Maud Spierings <maudspierings@gocontroll.com>,
	Andy Yan <andyshrk@163.com>, Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-phy@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH RFC 08/13] soc: starfive: Add jh7110-vout-subsystem driver
Message-ID: <20251110-acetone-slinky-0f8e81291371@spud>
References: <20251108-jh7110-clean-send-v1-0-06bf43bb76b1@samsung.com>
 <CGME20251108010504eucas1p26e8ee9aa88ab75bebd832eaea81720e9@eucas1p2.samsung.com>
 <20251108-jh7110-clean-send-v1-8-06bf43bb76b1@samsung.com>
MIME-Version: 1.0
In-Reply-To: <20251108-jh7110-clean-send-v1-8-06bf43bb76b1@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_112536_137546_802A8C18 
X-CRM114-Status: GOOD (  18.74  )
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
Content-Type: multipart/mixed; boundary="===============2667716243680377108=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2667716243680377108==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d6w1nrcqngNa0tVG"
Content-Disposition: inline


--d6w1nrcqngNa0tVG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 08, 2025 at 02:04:42AM +0100, Michal Wilczynski wrote:
> Add the wrapper driver for the StarFive JH7110 VOUT subsystem.
>=20
> This driver is responsible for managing the shared resources for all
> video output devices. It enables the PD_VOUT power domain, enables the
> top-level NoC bus clock, and deasserts the main bus reset.
>=20
> Once these resources are active, it calls of_platform_populate() to
> create and probe the child devices (DC8200, VOUTCRG, HDMI MFD) that
> reside within this subsystem.
>=20
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  MAINTAINERS                                  |   1 +
>  drivers/soc/Kconfig                          |   1 +
>  drivers/soc/Makefile                         |   1 +
>  drivers/soc/starfive/Kconfig                 |  25 ++++++
>  drivers/soc/starfive/Makefile                |   2 +
>  drivers/soc/starfive/jh7110-vout-subsystem.c | 117 +++++++++++++++++++++=
++++++
>  6 files changed, 147 insertions(+)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 052876c6538f980f75ff64e78b6ebea460307904..74e562a6b57ac9f776c4be2d6=
f0977c62bc03d46 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -24051,6 +24051,7 @@ F:	Documentation/devicetree/bindings/display/brid=
ge/starfive,jh7110-inno-hdmi-co
>  F:	Documentation/devicetree/bindings/mfd/starfive,jh7110-hdmi-mfd.yaml
>  F:	Documentation/devicetree/bindings/phy/starfive,jh7110-inno-hdmi-phy.y=
aml
>  F:	Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-vout-s=
ubsystem.yaml
> +F:	drivers/soc/starfive/jh7110-vout-subsystem.c

The parent directory that you've created here for the driver (or created
in a different patch) should probably be added to the "RISC-V MISC SOC
SUPPORT" entry, along with the binding directory. Otherwise I'm probably
not going to see the patches for the former (Emil maintains the
plarform, but for $reasons I'm the one who applies patches and sends the
PRs to Arnd). Think it used to be there, but got removed when the last
(only?) driver was moved out.

--d6w1nrcqngNa0tVG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRI8JQAKCRB4tDGHoIJi
0iL7AQCiyLJiCSE3NKVn/dTVaRDq4/xjTR7nxORX6exO8YKwTAD/f4qo7cSk4n8+
BG25eAfUyQihtYUjB8FnpYKCw2j6mQ8=
=kAFU
-----END PGP SIGNATURE-----

--d6w1nrcqngNa0tVG--


--===============2667716243680377108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2667716243680377108==--

