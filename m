Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B440FC77B70
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VeBUBYoOi/BKIkFNpYikEuG4hz8WqtgEPsYzUGrVQrE=; b=cPa6okN3dOAmWon/JxD98oBSqr
	WLlr7ccR+eGc/t856T6Ge45Uel1gzWvvufkz4ZDw+8kswajPnAlshWXbjErVODQ6LseTasnui66PX
	Bi+sADpuHmnhSWaMwfVIz5ZDCh6rURTGYkdZJKtf4PWqcFAEzuWWN4Q4m+Pi+jqOWv83Vf5CYN5m4
	4OQx4Jtez2fxRUJT4yG9TptL6HT4neVegy7Z4BVOUsgMpicl2oj8I1jSitwd4/fyM1ZbqF0Ngi3pF
	iAuQaxRATjHBnU5baDNI7FCLgbzrMlpoUrGmFHMn2B3bgC3qoEGKlzscOtRZDbaWpSPX1wCnPFQDU
	CvniXxlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEpZ-008iQH-13;
	Fri, 14 Apr 2023 08:30:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEpW-008iOZ-1N
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 08:30:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pnEp5-0004l4-Vm; Fri, 14 Apr 2023 10:30:24 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pnEp2-00B9ki-OF; Fri, 14 Apr 2023 10:30:20 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pnEp1-00D6uj-Ur; Fri, 14 Apr 2023 10:30:19 +0200
Date: Fri, 14 Apr 2023 10:30:19 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	matthias.bgg@gmail.com, p.zabel@pengutronix.de, airlied@gmail.com,
	daniel@ffwll.ch, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, jassisinghbrar@gmail.com,
	chunfeng.yun@mediatek.com, vkoul@kernel.org, kishon@kernel.org,
	thierry.reding@gmail.com, chunkuang.hu@kernel.org,
	ck.hu@mediatek.com, jitao.shi@mediatek.com, xinlei.lee@mediatek.com,
	houlong.wei@mediatek.com, dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, linux-pwm@vger.kernel.org,
	kernel@collabora.com, phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 01/27] dt-bindings: pwm: Add compatible for MediaTek
 MT6795
Message-ID: <20230414083019.cpomx37tax4ibe5u@pengutronix.de>
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-2-angelogioacchino.delregno@collabora.com>
 <aaeeb18d-f8e8-d6c1-1272-e5b797554b9e@linaro.org>
MIME-Version: 1.0
In-Reply-To: <aaeeb18d-f8e8-d6c1-1272-e5b797554b9e@linaro.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_013050_465925_9F3B6564 
X-CRM114-Status: GOOD (  20.46  )
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
Content-Type: multipart/mixed; boundary="===============7901364458634327355=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7901364458634327355==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="meuxombxxc4zwoxv"
Content-Disposition: inline


--meuxombxxc4zwoxv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 14, 2023 at 10:21:05AM +0200, Krzysztof Kozlowski wrote:
> On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
> > Add a compatible string for MediaTek Helio X10 MT6795's display PWM
> > block: this is the same as MT8173.
> >=20
> > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@co=
llabora.com>
> > ---
> >  Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.ya=
ml b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> > index 0088bc8e7c54..153e146df7d4 100644
> > --- a/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> > +++ b/Documentation/devicetree/bindings/pwm/mediatek,pwm-disp.yaml
> > @@ -22,7 +22,9 @@ properties:
> >            - mediatek,mt8173-disp-pwm
> >            - mediatek,mt8183-disp-pwm
> >        - items:
> > -          - const: mediatek,mt8167-disp-pwm
> > +          - enum:
> > +              - mediatek,mt6795-disp-pwm
> > +              - mediatek,mt8167-disp-pwm
>=20
> This does not look correct. You do not add compatible, you replace
> breaking all mt8167-disp-pwm. At least it looks like this from context.

I thought the old semantic to be:

	"mediatek,mt8167-disp-pwm"

and the new

	"mediatek,mt6795-disp-pwm" or "mediatek,mt8167-disp-pwm"

=2E What am I missing?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--meuxombxxc4zwoxv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmQ5DxoACgkQj4D7WH0S
/k4b0gf/XGg5FqG1Mgkx3HAKSgi3PZuY2KSNIop4uRKh9jD6sSxX8ZOB5wNtwFbz
OwOpF/4bmEy9R4vW++134sQENrXwVv2QR8aMaolP298zl6s+qqTm1/8USwc3TVep
kTXMWWKuKFTBbj2viZrKSJUBT7C7I+VPcblxqtQnYe9AUZYJRCtLalvkECL+FgiZ
EbKGM99/7nbD7NPk33LTt0uEiaBrWoe7p4ehasD9uVW/7dhZAs44xQLFOR+XiT4U
Upy4cMJQtRqfISF44KBNw0Bm2Rm+Tqw3NoKTtPOQ1C36xzTHBnC+hp8ZoPFR/dYo
T9uMy4x52AKlzE9EAH2T/lOj/Rs5uQ==
=6UO4
-----END PGP SIGNATURE-----

--meuxombxxc4zwoxv--


--===============7901364458634327355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7901364458634327355==--

