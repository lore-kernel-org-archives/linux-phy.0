Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD3C607E60B
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 10:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qixsJoOy;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=apqUghqM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wW/0rOSKas90dMM7YeAELWzzU4FmhXbzJGQb6t25+8s=; b=qixsJoOy0+WNx3srBbGgvwfg8g
	oFlJ1HFygpoN5Lg0lfrhS3w1hJS6fL+m4XiblHQrRiivveSY+3Hy7BfNy26eHY1dOaDQi83ReYGW3
	0jSAMBEhIXZDokQCQ7CajB2U3vjs8bibUNLlwauNrE1o6udUSjGajtDbCBgP/n6XIKf2hocMAJxHJ
	B0TjBuYUxjTzeJp6FJuTmI+Tn0VOanmLC7+JBFsHTBrA5tVwSY8kXXcWlWxr75rydfsc48LBcPh/J
	jypR18W004FP0oqonw7VkblfmCc3XPC6IDRu940LjnY/4Sy60LyWUnr/gRBAVkQiytMyK8ezq71/j
	XUa8wcOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBqX-000000021Rz-3S2n;
	Tue, 03 Nov 2026 10:34:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOBqS-000000021R0-1Ij6;
	Tue, 03 Nov 2026 10:34:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 50D7960621;
	Tue,  3 Nov 2026 10:34:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 547A81F00919;
	Tue,  3 Nov 2026 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793702063;
	bh=GSqdOUTAGBHqvRwhBajLTqyzAy7NJSRaodL2JaKq0Eg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=apqUghqMhsHN4Trpoky2ktzmBWOFMhBOIk800IfwMCUvM+YfUWZXmYmUIfWw0Ny8q
	 M4rGo1Ztuy1Z+7b2SlYoFKvB8WsLBl7xem30ZQqpKKJG+npgYcG6UN0FEGIE7saLzO
	 w49oM1hEO+mtzHrUuXqu/NBMwXxgmHscEggqPEEqRXWaZcpKAY0YSDmsSLAqn6j15Y
	 Q+Sth//qr0f+bdqlGX/3j2FZdUUv7toc1V4V/dbIwjMRF+7XVt3f+0Gnu6DwiRIwxo
	 h0mdUIafykms+4IIO7psb9WuQxayavIhgMhanT99pe5O25qzj973a6Dvw0pf74CbOo
	 mYCN0dAg2vwAA==
Date: Tue, 3 Nov 2026 11:34:20 +0100
From: Thierry Reding <thierry.reding@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vadim Fedorenko <vadim.fedorenko@linux.dev>, Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, 
	Jiri Pirko <jiri@resnulli.us>, Ivan Vecera <ivecera@redhat.com>, 
	Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Olivier Moysan <olivier.moysan@foss.st.com>, Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>, Lee Jones <lee@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>, 
	Ulf Hansson <ulfh@kernel.org>, Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Shawn Guo <shawnguo@kernel.org>, 
	Chanh Nguyen <chanh@os.amperecomputing.com>, Alistair Francis <alistair@alistair23.me>, 
	Julius Werner <jwerner@chromium.org>, Paul Cercueil <paul@crapouillou.net>, 
	Dmitry Osipenko <digetx@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Ray Jui <ray.jui@broadcom.com>, 
	Scott Branden <scott.branden@broadcom.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, chrome-platform@lists.linux.dev, linux-gpio@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-hwmon@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-sound@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-tegra@vger.kernel.org, mfd@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Use hex unit address patterns
Message-ID: <aum4oV6N8g32lr--@orome>
References: <20261102135330.2493332-1-robh@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261102135330.2493332-1-robh@kernel.org>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7126232178029845965=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============7126232178029845965==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="trphfeiv2dppwi7j"
Content-Disposition: inline


--trphfeiv2dppwi7j
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] dt-bindings: Use hex unit address patterns
MIME-Version: 1.0

On Mon, Nov 02, 2026 at 07:53:22AM -0600, Rob Herring (Arm) wrote:
> Unit-addresses by default (and most commonly) are hexadecimal. There's a
> number of cases using decimal patterns. Fix all of them, limiting the
> pattern to match the 'reg' limits if there are any.
>=20
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/display/xylon,logicvc-display.yaml      |  2 +-
>  .../devicetree/bindings/dpll/dpll-device.yaml        |  2 +-
>  .../bindings/embedded-controller/google,cros-ec.yaml |  4 ++--
>  .../intel,ixp4xx-network-processing-engine.yaml      |  2 +-
>  Documentation/devicetree/bindings/gpio/gpio-mxs.yaml |  4 ++--
>  .../devicetree/bindings/hwmon/maxim,max31790.yaml    |  2 +-
>  .../devicetree/bindings/iio/adc/st,stm32-adc.yaml    |  2 +-
>  .../bindings/iio/adc/st,stm32-dfsdm-adc.yaml         |  6 +++---
>  .../bindings/input/touchscreen/cypress,tt21000.yaml  |  2 +-
>  .../memory-controllers/ddr/jedec,sdram-channel.yaml  | 12 ++++++------
>  .../bindings/memory-controllers/ingenic,nemc.yaml    |  2 +-
>  .../memory-controllers/nvidia,tegra20-emc.yaml       |  4 ++--
>  .../devicetree/bindings/mfd/st,stm32-lptimer.yaml    |  2 +-
>  .../devicetree/bindings/mfd/st,stm32-timers.yaml     |  2 +-
>  .../devicetree/bindings/misc/qcom,fastrpc.yaml       |  2 +-
>  .../bindings/mmc/mmc-controller-common.yaml          |  2 +-
>  .../bindings/net/cortina,gemini-ethernet.yaml        |  2 +-
>  .../bindings/phy/brcm,cygnus-pcie-phy.yaml           |  2 +-
>  .../devicetree/bindings/phy/brcm,sata-phy.yaml       |  2 +-
>  .../bindings/phy/socionext,uniphier-usb2-phy.yaml    |  2 +-
>  .../devicetree/bindings/sound/qcom,q6asm-dais.yaml   |  2 +-
>  .../bindings/sound/qcom,q6dsp-lpass-ports.yaml       |  2 +-
>  .../devicetree/bindings/thermal/sprd-thermal.yaml    |  2 +-
>  23 files changed, 33 insertions(+), 33 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--trphfeiv2dppwi7j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmrpuKwACgkQ3SOs138+
s6GdNA/+IZX8Lk6Z0c9f09SsgYk1VvnUVRFPU0WGT4gY2GcvOdD9A5ow9mPdHAAc
EtBw40T/7BL3Fhk7+uhlr+V7FyVZUy0G5N/4tfMdekpeSl0hmPk6eNUZ3T6URtgO
dU6lC8r8USCEW3cN8XYrzm82EiRcUX6Pb+RLX4p4C1WruvonZi8XvwZFIKyD920z
XLF+bH/tVACkaHRY8G7btnFl/DKx31gutQbBPn1RuwO5CjpL0XqWowIgev7f7eRd
lOK1XJ3GITOI5t++ITd75skGT8DQvmJIbLnN1AIrdaTvua0qsbwIe7isv8fhkiwL
WcqzIJlLXxItYk3WIqMVtdis5wfA0rWHX0kCOYSDQhuuDx1cgxE5qy/S6UJwc22z
SlMtdhaJ2gotTfdWL/3/wHgf5dVcYCCGZToG3/JzMfZDxjC/bmL7YEJ4Os/Ywm2R
mG8PqJy88keVzu5pXohMH1tUyBS7AYXTLIOG9tKRGv37w8l2qILJAExv0GrT2bzd
bV3fMenc2qrgvCvgHxlE19oMzk/6BVP6Tw6jDKD5n5++y6qdZk/y0jadd3Aa79HZ
erpcvYYDqZpLqZNGgsqNjq+7LDIsiUnUJyXeWutYkkfejvToDBVoNfiwTpcIC9RF
z1tGodjD4b8kT4/zSnZ/wB4D8GV5H0Ep57UeyMjnWGLftrC1CzE=
=oYMU
-----END PGP SIGNATURE-----

--trphfeiv2dppwi7j--


--===============7126232178029845965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7126232178029845965==--

