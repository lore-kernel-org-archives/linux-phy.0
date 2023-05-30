Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3E02C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 17:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D4RwpVtuIiMN6f3boZlBxo2fDJzBId/Kum43IYWEEeM=; b=TboX3dAPH6Lf76IpmfCGsQSYTT
	ZKnwc60M6iGnAADp6Oz0BrRH5ZSS2aBvFMjHYga8GZZXZxClsoMOuYVCcoeNx1RLAOL9jNtHgE5Ee
	US7TJKLEtYONqvvmafH6rP/cl0+x58AsgEYsbN8JOUmOSmXoSQXA/glOgeW3ilSer8yPD6//+4yrC
	zYt8vTQJWaCId1dJYna0QEa01dVvD9kgFevYVx3J1eiEriDYEd+zXkJ8YvKD0ZNxlPdu63yG28zGT
	mvzh4u8A8xYyuSQq0n1VFiMKSrDA9SGjG2yPK1hr2U+ZN8z5YHj+eSjxfUgcJg8wxPVpChJlCjwKF
	PfO9dl8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q42sP-00Ei01-1q;
	Tue, 30 May 2023 17:11:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q42sN-00Ehzc-07
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 17:11:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 65E9761403;
	Tue, 30 May 2023 17:11:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4A19C4339C;
	Tue, 30 May 2023 17:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685466673;
	bh=N6T7E2wPg+ksFvC4zTDbs7YVrQwcgW2P2fcGeKZjY20=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CFXovLHe2oCMksV5jMa1XRicI4ibzn2nGkPyGMPtRnC/y08Yp1GJGpfGxkDMnPjUD
	 qZYV3T982TxPaZJbNLbkVlsLxnwdoXIr1gMYRSbBBtmyb38QYNiI0vOaHqIPHSYlny
	 f7aHQpTFYKWKABhjocGyZKtjbwZx021cztTm/1LP472sZoPdfbJIF+fQowxr3luvtO
	 vFKZWc7TtHmcGsP8e7FivPGzTjYgomj+DAEhRquGGK4SNsoZI20AB0mYJmViyDGojr
	 OgochEVNk8ky0h6j2vMHGI169NU7lgIPPHKOPvuG8aH5roBKLrYsul0Y30Tl0lzs3E
	 vdCGDlBy+9FxQ==
Date: Tue, 30 May 2023 18:11:06 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Mark Brown <broonie@kernel.org>, Dipen Patel <dipenp@nvidia.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Dilip Kota <eswara.kota@linux.intel.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
	linux-rtc@vger.kernel.org, alsa-devel@alsa-project.org,
	linux-spi@vger.kernel.org, timestamp@lists.linux.dev,
	linux-watchdog@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH 0/7] dt-bindings: restrict node name suffixes
Message-ID: <20230530-banister-luxurious-d33a5d289749@spud>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_101115_173197_59420F39 
X-CRM114-Status: GOOD (  18.23  )
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
Content-Type: multipart/mixed; boundary="===============0876893504588158286=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0876893504588158286==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3drXRST+roPPVcQt"
Content-Disposition: inline


--3drXRST+roPPVcQt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 30, 2023 at 04:48:44PM +0200, Krzysztof Kozlowski wrote:
> Hi,
>=20
> Tree-wide cleanup of DTS node name suffixes "-N", e.g. "pwm-5", so we all=
ow
> only decimal numbers.  In few cases narrow the pattern to also disallow
> multiple suffixes, e.g. "pwm-5-5".

I figure there'll be quite a bit of stuff to fix up afterwards?
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

>=20
> No dependencies, can be applied by individual subsystems.
>=20
> Cc: Tony Lindgren <tony@atomide.com>
> Cc: Oleksij Rempel <o.rempel@pengutronix.de>
>=20
> Link: https://lore.kernel.org/all/20221127182232.GA128974-robh@kernel.org/
>=20
> Best regards,
> Krzysztof
>=20
> Krzysztof Kozlowski (7):
>   dt-bindings: phy: intel,combo-phy: restrict node name suffixes
>   dt-bindings: pwm: restrict node name suffixes
>   dt-bindings: rtc: restrict node name suffixes
>   dt-bindings: slimbus: restrict node name suffixes
>   spi: dt-bindings: restrict node name suffixes
>   dt-bindings: timestamp: restrict node name suffixes
>   dt-bindings: watchdog: restrict node name suffixes
>=20
>  Documentation/devicetree/bindings/phy/intel,combo-phy.yaml    | 2 +-
>  Documentation/devicetree/bindings/pwm/pwm.yaml                | 2 +-
>  Documentation/devicetree/bindings/rtc/rtc.yaml                | 2 +-
>  Documentation/devicetree/bindings/slimbus/slimbus.yaml        | 2 +-
>  Documentation/devicetree/bindings/spi/spi-controller.yaml     | 2 +-
>  .../bindings/timestamp/hardware-timestamps-common.yaml        | 2 +-
>  Documentation/devicetree/bindings/watchdog/watchdog.yaml      | 4 ++--
>  7 files changed, 8 insertions(+), 8 deletions(-)
>=20
> --=20
> 2.34.1
>=20

--3drXRST+roPPVcQt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHYuKgAKCRB4tDGHoIJi
0nXKAQDamcvDwarCjeG65qUN+fBYxaI+//cyJEQB1SuuBpUTGgEAy0ivPKjui6wX
d/shbUIhWWfohF1w8yRNuYfQATp+AAQ=
=EmEg
-----END PGP SIGNATURE-----

--3drXRST+roPPVcQt--


--===============0876893504588158286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0876893504588158286==--

