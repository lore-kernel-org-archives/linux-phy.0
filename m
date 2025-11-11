Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02711CCFA1A
	for <linux-phy@archiver.kernel.org>; Tue, 11 Nov 2025 18:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uZTJdudfYUoHzWMiT2yngfmkJaW96RykXDX0idGyN6Q=; b=FwYW/Wyf1j1p6WpW2dym3oCqHK
	Cbo7X9Jt0JxPNBkxmr4/d8xHxBGxEIOd1zSVE947YvvLa3DwD0zznx8znqee5ZTaRxXmbnTV+s34m
	dEg3xQwNkAPjnKDrktyU5QYDu8yxbpm67DzoIk4jhgc9vEeQ1XOimdH6cK/CEANBGsvm18fprXMJH
	VZHUw46cuxRMHCaRBAk1Rikb79RcEI80doIZTjTVb3p4V8LYFjYZ7Cr7+wXtn06tjRhwTOx80INTq
	Ia02FtHRl3boQXRtlDRRT9ZqG8AVyjqcVWTjyqcIbYcb8y0GGswO5g4FuulLtdv7VZ0MPy32CfjlR
	FQ0SK4Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIt4s-00000007bkA-2YPh;
	Tue, 11 Nov 2025 18:26:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIt4r-00000007bjx-36NE;
	Tue, 11 Nov 2025 18:26:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C80CF60202;
	Tue, 11 Nov 2025 18:26:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F9E1C19425;
	Tue, 11 Nov 2025 18:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762885608;
	bh=4blQyKrzAkck3w71C86EM4tTASTGHoqXfv8ZZdP8GD4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EB2mwsKZOt26mhFmlqmAt9TTcx7m6KIb/2WmEWg5hTkTbVNjMZ68QCkYgdgAbKGaI
	 SCUt+TbxjpFPqboSNBYoirqVLfH+IZOo4cEr62NOv0oTgrlMfn6xbWsJhnuvXeFLP6
	 pv3/NlemTf6Woija8Glpv8xiia4HhybsEihrAeVOvKHggrgJ+l4moLeNc1dorNyypH
	 CkTe4MkpfDXHl0UtVXcbUKBelzOp38ocz7DiPMTLpo941vemDQAxR+uKJbJhGIIosV
	 YOmKRqVAh6U6SN5/qfjjLKdrNAWwd2wAIx2uwkS3DyVZxwmgiANwyOOftdkrNT4bdx
	 ujiA35zkLOvug==
Date: Tue, 11 Nov 2025 18:26:39 +0000
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
Subject: Re: [PATCH RFC 02/13] dt-bindings: clock: jh7110: Make power-domain
 optional
Message-ID: <20251111-brim-circling-0d5a364519a8@spud>
References: <20251108-jh7110-clean-send-v1-0-06bf43bb76b1@samsung.com>
 <CGME20251108010454eucas1p103697b195125d853bd9f4d40662b681e@eucas1p1.samsung.com>
 <20251108-jh7110-clean-send-v1-2-06bf43bb76b1@samsung.com>
MIME-Version: 1.0
In-Reply-To: <20251108-jh7110-clean-send-v1-2-06bf43bb76b1@samsung.com>
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
Content-Type: multipart/mixed; boundary="===============2595074286492667425=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2595074286492667425==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EoykeO/vcnmrhIyh"
Content-Disposition: inline


--EoykeO/vcnmrhIyh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 08, 2025 at 02:04:36AM +0100, Michal Wilczynski wrote:
> The voutcrg (Video Output Clock Generator) hardware resides within
> the PD_VOUT power domain. In the new display subsystem model,
> this power domain is managed by the top-level 'vout-subsystem'
> parent driver.
>=20
> Because the parent driver now handles power management, the voutcrg
> node in the device tree no longer needs a 'power-domains' property.
> This patch updates the voutcrg binding to reflect this by removing
> 'power-domains' from the list of required properties.

I don't like how driver-centred your commit message is, but I think you
can just explain this by saying that the appropriate place for this
power domain is in the node that uses it, not some other supplier to the
vout subsystem.

>=20
> This fixes a dtbs_check warning that would be triggered by the
> updated device tree.
>=20
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  Documentation/devicetree/bindings/clock/starfive,jh7110-voutcrg.yaml | 1=
 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/clock/starfive,jh7110-vout=
crg.yaml b/Documentation/devicetree/bindings/clock/starfive,jh7110-voutcrg.=
yaml
> index af77bd8c86b12e667b79ffbaeae5f8a82e6d3f37..deff69037e5072002e06aa5a8=
99f4488b7264f47 100644
> --- a/Documentation/devicetree/bindings/clock/starfive,jh7110-voutcrg.yaml
> +++ b/Documentation/devicetree/bindings/clock/starfive,jh7110-voutcrg.yaml
> @@ -61,7 +61,6 @@ required:
>    - resets
>    - '#clock-cells'
>    - '#reset-cells'
> -  - power-domains
> =20
>  additionalProperties: false
> =20
>=20
> --=20
> 2.34.1
>=20

--EoykeO/vcnmrhIyh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRN/3wAKCRB4tDGHoIJi
0jcGAQCm8zdZi4Rj0XsEx0Qzj/K0aGmz4WEQWzpBc5W/wiIwsQEAx+y3uu9T8sp/
Aamgu97ttBdRylrGg+l4YxZE4C+V2wY=
=l4qk
-----END PGP SIGNATURE-----

--EoykeO/vcnmrhIyh--


--===============2595074286492667425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2595074286492667425==--

