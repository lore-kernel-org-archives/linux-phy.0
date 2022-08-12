Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6394CC00140
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 12:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4s7YtUvVaSd1P91aLEbrbT6XNf0RypJBFpjN9zQrGXE=; b=FPQvOC2XGQxk9pffePYf3/di2a
	wcO/Q8/QwbKpa1K9qy4770WlHCngsAG1MEzxEbWs3OHDedsPJyWLAEdUO+IU+WgP+UIotCZ5GOPyK
	6CXspHIftxwLlW4YDC7i9aFBlAl/6f+ewMRyFtW24fXNk20NswegA4OQoF/jwA47T2eazZmuULFtV
	i5x0gMgC3MVumU2Fe137ByGFyd1XhAfqtgGYPVN/kfT8t1n8mYVvLDHnBQRXYXYro7M/cubnoZP1l
	ffYhKNrAPlToVatogjL3R6M5+qzhF/acTAEkz/EvEsqPVNOv+U2wrwArYDYQRfKAPTH4YEetLnOkJ
	GxTRhlMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMTgZ-0079Ia-J3; Fri, 12 Aug 2022 12:22:43 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMTgO-0079DC-8O; Fri, 12 Aug 2022 12:22:34 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 8730DC0010;
	Fri, 12 Aug 2022 12:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1660306947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=24bKiqU55JXRuVlkYegpaqJ9og5C48IeVZvaeDQry2M=;
	b=Hv0YvjVZadPNGue6A/WQsAZQfBtEXiAYedGoDH36AbycZTxH5OSk9lJrz+Uvt9lB7o3lik
	9sJOQAsAKAScXMgOQti3u4SzvK14cOpXcc4kcYEeuP3XD2YmJGMbSX2nv0G3yi0WkznDpV
	iOJL+vI3nvGck2HkVtkVJzgeQvZsGMX+3Nj3/eSXP4bni36Dc09smaOrJX2b/2QKysJRLe
	Mkd56fjrYzCDdjs/LFm2NWGpjENLmNLCVCKpE3WRCqfQplFa8fNyOXlhxgCoTFjKMyTUcb
	5xDL/VkuoiVPwi24eEhcsogqCvsrIGs1mVzuQNEgx6hjliHgr5hE6i19jN5OfQ==
Date: Fri, 12 Aug 2022 14:22:24 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Samuel Holland <samuel@sholland.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
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
Message-ID: <YvZGAEM4B8SdDjwJ@aptenodytes>
References: <20220812075603.59375-1-samuel@sholland.org>
 <20220812075603.59375-2-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20220812075603.59375-2-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_052232_590642_640BA6B7 
X-CRM114-Status: GOOD (  19.50  )
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
Content-Type: multipart/mixed; boundary="===============0299052238214480953=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0299052238214480953==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KjPeSdJ+GXZUw4K/"
Content-Disposition: inline


--KjPeSdJ+GXZUw4K/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Samuel,

On Fri 12 Aug 22, 02:55, Samuel Holland wrote:
> The sun6i DPHY can generate several interrupts, mostly for reporting
> error conditions, but also for detecting BTA and UPLS sequences.
> Document this capability in order to accurately describe the hardware.
>=20
> The DPHY has no interrupt number provided in the vendor documentation
> because its interrupt line is shared with the DSI controller.

Interesting! I do see DPHY_INT_EN*/PD* in the Allwinner BSP's
drivers/media/video/sunxi-vfe/mipi_csi/dphy/dphy_reg_i.h

Maybe it would be useful to import the fields in the driver so that the
next person who'll try to debug DSI can use them directly?

You might also want to submit a patch as [PATCH NOT FOR MERGE] that
adds an interrupt routine and some useful debugging.

Do you think this is also available without a DSI controller?
I could just give it a try on V3/A83t here and find out :)

Cheers,

Paul

> Fixes: c25b84c00826 ("dt-bindings: display: Convert Allwinner DSI to a sc=
hema")
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>=20
>  .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml           | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mi=
pi-dphy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mi=
pi-dphy.yaml
> index 22636c9fdab8..cf49bd99b3e2 100644
> --- a/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy=
=2Eyaml
> +++ b/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy=
=2Eyaml
> @@ -24,6 +24,9 @@ properties:
>    reg:
>      maxItems: 1
> =20
> +  interrupts:
> +    maxItems: 1
> +
>    clocks:
>      items:
>        - description: Bus Clock
> @@ -53,6 +56,7 @@ required:
>    - "#phy-cells"
>    - compatible
>    - reg
> +  - interrupts
>    - clocks
>    - clock-names
>    - resets
> --=20
> 2.35.1
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--KjPeSdJ+GXZUw4K/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmL2RgAACgkQ3cLmz3+f
v9EJmAf/RUjmCJrqT+VVsenrzACFjYYacE4PB9OUct0QvopV8HTeQ4cpP5PxQ7Hq
Z7EDMun2tudD2q3tgqtIMRIjtikuL/VYQuBh+rCTEdxj+BUsRVFU6bXR3/CH4gp8
dJcZuMc3pXWDq74sLz5JscdEaUAGTUJqqkl5TsSR/Kt0BVEKP7sHTg1xEVfJ0N6K
OPP5oxJYMR3WSEiPpN7Vy3jeCpijm8hJJTHrbY6un7PfddvTXiBm0AU02RJ1PD2+
nJwVDo+AO+E8WJsKoa+5BWCCPF+it7dVcyPLZszuYxYGC0B5+Yv+hjOeBw/Ouggf
vuufwYdETc2xCdlsjvAp90wcwj1F0g==
=A0Yv
-----END PGP SIGNATURE-----

--KjPeSdJ+GXZUw4K/--


--===============0299052238214480953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0299052238214480953==--

