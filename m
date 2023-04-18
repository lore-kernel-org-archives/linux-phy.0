Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 430CDC77B76
	for <linux-phy@archiver.kernel.org>; Tue, 18 Apr 2023 21:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PR3n5/p5Cj3fSxa0wBtO5g1bz8noHEVmJZIpiBhNsdw=; b=cJ3dn0PMtyIu/AxPdgDdD8Zc5/
	LmIC3+713Qa5sWAOvF8aDvUr6LpUga+FTXTZzmomBQ3NOknn2oVtAQ18XBiB0xAIvbmxfEM7RstvL
	u4biUjw48x2kdqw4aJbTctv1S0Cl5wjCcY4LrljA+8rXfNmJ/sNI/sR1V/rqihfz3FZOl0yR/1l+v
	CLDJZUSfPlIF9WLMnVhT6PjTHp/Se5VclSnOX08qPq2UBnH+FwV5pdQAeE/nRJCXXfu0XOrU9Jkv6
	LHemZZZ/XPe6bjMgtHf4fpkaRaMiNdQv5U0DK2A8SuApCCa7HxtyiF7G/VG/ke0ixcsUb2fgddJP0
	OEDwiXHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pot8K-003QoS-2b;
	Tue, 18 Apr 2023 21:45:04 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pot8H-003Qn7-1R;
	Tue, 18 Apr 2023 21:45:03 +0000
Received: from mercury (unknown [185.209.196.239])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6BE9D6603217;
	Tue, 18 Apr 2023 22:44:57 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681854297;
	bh=sdgXZWB61ikcdoR6k+DOEhzGhE10wgrKBIzUUFMlXMA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aIQAGMUCzN7JKN6FIKofs07efe157XyVCT0+2FpttWZsPrC789sJpi5y/Ghr3/Raw
	 8Yl7znactE6Epm4o0O7eXb2emquphikOgt1FR/d2evggCQmNXvfCtWzRtRnm7/tiEB
	 pUrS1yPfIrZVDzJGEzdH2fwqX2i1Q40Z7ek/+vSCzK8dueHfpw97/4yP1BnSOm2OPD
	 5a4IsV8GypyuTPi3R/f4EgAsAxBh8/p9+uN5EVhOgM+NZiqwzBCxFdvGJvd1F/ZT8Z
	 uFAPRLNgDIq54KLvBKFF2FFnYnhAG/Ql1TDRUdNlLGInyvDvLhFPznWQEwWBPP+lIE
	 rP/rYgDesrySQ==
Received: by mercury (Postfix, from userid 1000)
	id D9F201066F5D; Tue, 18 Apr 2023 23:44:54 +0200 (CEST)
Date: Tue, 18 Apr 2023 23:44:54 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv1 3/5] dt-bindings: phy: rockchip: rk3588 has two reset
 lines
Message-ID: <20230418214454.m24t2s3lnsukwppn@mercury.elektranox.org>
References: <20230413182345.92557-1-sebastian.reichel@collabora.com>
 <20230413182345.92557-4-sebastian.reichel@collabora.com>
 <20230418204136.GA2299798-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230418204136.GA2299798-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_144501_723427_78840585 
X-CRM114-Status: GOOD (  21.38  )
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
Content-Type: multipart/mixed; boundary="===============0294211890459039127=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0294211890459039127==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s6ptsftpn4p7qth6"
Content-Disposition: inline


--s6ptsftpn4p7qth6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Rob,

On Tue, Apr 18, 2023 at 03:41:36PM -0500, Rob Herring wrote:
> On Thu, Apr 13, 2023 at 08:23:43PM +0200, Sebastian Reichel wrote:
> > The RK3588 has two reset lines for the combphy. One for the
> > APB interface and one for the actual PHY.
> >=20
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  .../bindings/phy/phy-rockchip-naneng-combphy.yaml          | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-=
combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-co=
mbphy.yaml
> > index 9ae514fa7533..bac1aae07555 100644
> > --- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy=
=2Eyaml
> > +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy=
=2Eyaml
> > @@ -31,8 +31,13 @@ properties:
> >        - const: pipe
> > =20
> >    resets:
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  reset-names:
> >      items:
> > -      - description: exclusive PHY reset line
> > +      - const: phy
> > +      - const: apb
>=20
> This will fail on any existing users with single entry. You need to add=
=20
> 'minItems: 1' here.
>=20
> It also fails if they didn't use 'phy' as the name, but names should be=
=20
> defined.

My understanding is, there there currently are users with one entry
and no reset-names. I suppose its sensible not to provide a
reset-name, iff there is only one line. As far as I can tell that
should still work after my changes.

-- Sebastian

--s6ptsftpn4p7qth6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmQ/D00ACgkQ2O7X88g7
+pq29w//Q5Slb98DCTi7eVp+a3iZCQ7kw1XvBK/cvgJLcPFl2ZT79eUY7JQon9pq
DJs/ln/d65z4AmEX4MNqJU7k3lnv6cX2P2CtjR9oS32WPgxxkmT/kyY/d9yz/Ext
kD5/QnZ30czThOPar6MWXMHhpXPnzFLBNjHexWU3mU0Qztdf3l8F5dwEhaG3hhnP
yyuoolfYUHZRoOqCKF83Y/jCUOlpdLt1OB781DuxzVXqFO3r1dvbHTa2gH6vyr38
clLOSRJ941nMNGxsT5h1QuEd91btcjcuAyPXLAiWfC8ofx9gx2GEApSBIMwlesKm
/B2OYA2H2u/nKF/+uOld39p2Kf7fvSxZr+WDlc2rUqhMnBhTAMa+loOVfi0ENNOp
DK+ya0xnJWalRn6v2qYz4vj8yu7nj20njNVgfotw2X2cPfufHOF4HWB19qNmpZmA
H78RJJrmvZHBdrqwkyufscTaUsJKUjlNk1X1MflBFrl3LzuaIzO2AJ3sbC4q6pXV
FeOp2ozw9ovlgj0RMUKEb/K62jGwM4RaufZAlzps3FRX35mJ1QhHH4Ro+bd+eja+
kBAI6Ra69Tz+vn/FAN5zc39IKBZUtJ0tM9uZgwLbHZD/IAx0SicHYtKNYhLD2Cm0
yc4EQhaCRQKo8k4BgCvxfShpyxJyHBrDQVA5IfWHz31ZP7vg2lM=
=vQoE
-----END PGP SIGNATURE-----

--s6ptsftpn4p7qth6--


--===============0294211890459039127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0294211890459039127==--

