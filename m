Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B392AC7EE2F
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 17:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a3Q6INKK95IDIba9aBjhzq3J+1m0seghlGB/5wULJpc=; b=tqkkx0J9Nwa6gT57kOiv0j/Jys
	EXKOrwMfv9lSujCHDiZc7gJ3gEuD8AVpUK/Btx4zqFdSpZ3m521+NfTuRcOFqqzS4udiH1mzr2RpW
	jiUuA5Xk2W7i4PkTwxVNsUl/tZZvc2+0aDMT7MwZ5ijHwTnCD36wHQEqVo67gtB/s/8k1s2okKN7p
	x6clgFb1e9Nkgl454AJWUsRqAKbOVFfONU80Io55j8S9qCN2jYokpiWznBIFqKsmH0C9rI+Hrm8eV
	r3enrfWibsWClM4aurKXgfUPb5D/8xwd6u/rvXg+8IPTFfpYUb4EzwCRQ9ZkrI/glhv25NlJGA6Z/
	kHHfIdEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q434e-00EjX5-0S;
	Tue, 30 May 2023 17:23:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q434a-00EjVy-0d;
	Tue, 30 May 2023 17:23:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9047863114;
	Tue, 30 May 2023 17:23:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6A21C433D2;
	Tue, 30 May 2023 17:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685467431;
	bh=UzR1fj++02HkyWwFEbtMSGXQjQFGcPmg+nk6CBoorTQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XRVqqSg7l3gtvrJQiZxWUs3sW3dpPsMZeLs0xK9uSL6mJjYdIfftdEHjGyAasA93F
	 vp0gLpUnS8qcpk9a3/voHcP+fe0HcgZAQiKxsgSvam2RRuNhrt3VDiHL2skxmXmfz0
	 UHgEUyQ6JGLAJM989kYc/NlVsmrAxHCIIr/mJrjU+z/jyfCIDmpYobEEaG7Jdff0aL
	 ptUgFtjkatqQWlWJzTIrFj/ck17aguEcEqHWg/QiVbq37aW3cLY4mOtG4O/KNC2yLK
	 zZBBLpYcKu8Wous2xnJ4zlBIq3hDm3aDhdBZB4h0Yjhi4MLkcdhGk2cSj+YnhXzP9N
	 A6/p2tUZSaTqw==
Date: Tue, 30 May 2023 18:23:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	"Lukas F. Hartmann" <lukas@mntre.com>,
	Nicolas Belin <nbelin@baylibre.com>,
	linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 16/17] dt-bindings: arm: amlogic: Document the MNT
 Reform 2 CM4 adapter with a BPI-CM4 Module
Message-ID: <20230530-switch-riverbank-8a2ae8e5ea4a@spud>
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-0-56eb7a4d5b8e@linaro.org>
 <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-16-56eb7a4d5b8e@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-16-56eb7a4d5b8e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_102352_298669_097273C2 
X-CRM114-Status: GOOD (  10.74  )
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
Content-Type: multipart/mixed; boundary="===============5127247694053485797=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5127247694053485797==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="U7YSC210J2lnKh/+"
Content-Disposition: inline


--U7YSC210J2lnKh/+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 30, 2023 at 09:38:17AM +0200, Neil Armstrong wrote:
> The MNT Reform 2 CM4 adapter can be populated with any Raspberry Pi CM4
> compatible module such as a BPI-CM4 Module, document that.
>=20
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--U7YSC210J2lnKh/+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHYxIAAKCRB4tDGHoIJi
0jYwAQCUXtrTR7MIODftWUrB77h5/mo+g9I8GUIGCkjmSOVnAwD/fepTgXRQjx2p
dKfe5rmv2Fw9D0GFz7KPFbFjaNP3Wgc=
=vEeV
-----END PGP SIGNATURE-----

--U7YSC210J2lnKh/+--


--===============5127247694053485797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5127247694053485797==--

