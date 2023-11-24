Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06DEBC61D97
	for <linux-phy@archiver.kernel.org>; Fri, 24 Nov 2023 10:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qw3hsj6HN3WfC7p6xdrIWLcrIRf7i15RZxiQEuyEOcA=; b=yZaverugl7lxezqGevp5X0cFkz
	1RaI4z+M4cMOsi5yU79Ujy+M+6rqmMtPfO6WCUH9v099ROuPVQMIx+Y5rWADx2Fa5gh7vyuNooJpy
	bmiRwtiV8VHdbkaqgNMH7/aDLcRfx66JQhkSG7WUEdd6mFs+HxDJH63wJyWpmOKrAp4sRqRFEqFsX
	1oTSqamju0oYDwwkDmle/MaFGs4yzJVrxCQyCzEjnLllXXY4o22U3UMiBsHo9/af79xb/cCneJudb
	fZ8ZlPrFNzDOb4raDp/FtyO6bYFuJirS3XUtRRwtn81oOHCYTXrx2w+HpsAPJ1oW4Caf7YHELYlNj
	agv58P9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Tnr-006v6B-2A;
	Fri, 24 Nov 2023 10:52:55 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6Tnn-006v5Y-35;
	Fri, 24 Nov 2023 10:52:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A4EA8CE28D5;
	Fri, 24 Nov 2023 10:52:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F995C433C7;
	Fri, 24 Nov 2023 10:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700823168;
	bh=eEX4tBGuafbo1X94/+okj0mvehs96kjdE/PmoG3Gt40=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TWNnJzORCs/6+M4b46F3hx+3/IWccwtPeWfYeltqWKFXDpcpipaQX9WAyRPio/iW6
	 dT7asdlQ3YGaL9ZhZNAVMAD9vf/Fm2tpYAc2Dw81kZZhSy6eh8qdMsHWVpJKS8rKW8
	 LrHBjfrRHBcy1epv3XqKr/bPIt+6Kh6H9aCeWD2WuVvvOGe3++GJYZyUXzes3/oYgV
	 hwwvDOXJ01mgZjRMHRXdl9+iiry6ZbL+Hg3hwJTmi8BAYefWUqLBrz/qGPQILpO3Wi
	 ss2kaIOsVnHMNP3NwswRovinHhmhs/biEjG9PYb2zfXRKnAy6DclYLFrxrPz0SqG4e
	 COia8kKbBFP2A==
Date: Fri, 24 Nov 2023 11:52:46 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jagan Teki <jagan@amarulasolutions.com>, 
	Nicolas Belin <nbelin@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Remi Pommarel <repk@triplefau.lt>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v9 11/12] DONOTMERGE: arm64: meson: khadas-vim3l: add DSI
 panel
Message-ID: <bn5tpzvohmgac4m46fruxbi6quja624tm2fefyj7f3ngo3enno@2ueiodd6qxbd>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
 <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-11-95256ed139e6@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-11-95256ed139e6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231124_025252_193824_801B4125 
X-CRM114-Status: GOOD (  11.71  )
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
Content-Type: multipart/mixed; boundary="===============3123637495599330165=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3123637495599330165==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4j755csbj5bgclkr"
Content-Disposition: inline


--4j755csbj5bgclkr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Nov 24, 2023 at 09:41:22AM +0100, Neil Armstrong wrote:
> This add nodes to support the Khadas TS050 panel on the
> Khadas VIM3 & VIM3L boards.
>=20
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi   |  2 +-
>  arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi | 74 ++++++++++++++++=
++++++
>  .../boot/dts/amlogic/meson-sm1-khadas-vim3l.dts    |  2 +-
>  3 files changed, 76 insertions(+), 2 deletions(-)

Generally, those kind of patches still have value. Now that we are
accepting overlays, could this be converted to one and merged maybe?

Maxime

--4j755csbj5bgclkr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZWCAfgAKCRDj7w1vZxhR
xS+jAQDMt1rk04cC2Xg84EGUExSHFlcX9BTotBbFO5Zv9W4P/AD+PP2oNqHk906G
kwuJWtCVvyW0H04jWPVuknzUNcmmiQs=
=YClS
-----END PGP SIGNATURE-----

--4j755csbj5bgclkr--


--===============3123637495599330165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3123637495599330165==--

