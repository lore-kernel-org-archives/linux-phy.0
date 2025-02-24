Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E06A3C021A4
	for <linux-phy@archiver.kernel.org>; Mon, 24 Feb 2025 18:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8nWOKiZmUTNOSE7I2OGJIHJLwCjjBeROpufxVdrI8Sg=; b=1xH2MXgXSjzmUyqV7fnlnPysnj
	EAi05xtTuql5FXce3IVCbp8rrpV8GDHA2eCuzOfz2A0KF+FeMKmympLX4e9uGsSYWLTejPDM0pzod
	b6E6coT61WwHyjGbwxCaGHGe93AHlX66U1QrrW4WC9Gk1vgp42ToQ9I6uPiKlPLhDhJoyCobYKBVq
	KYhY9Q9xN9Eovq11j+EK18voxEktP246uYFwhWDFnwMjIaI3Bwlfi49vRMo2+YQfFfUdmglvEfObs
	Qatnz729tYdvMtSTGg4ZAf0dr8ZE6UU3Ytm6YtiP3f5QscWN6RuLI9l+q2Sww2GTU4JrA69nmpJp9
	BG8HIY0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmdbf-0000000EtNQ-45MI;
	Mon, 24 Feb 2025 18:55:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmdXW-0000000EshJ-1be2;
	Mon, 24 Feb 2025 18:50:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DFE725C0FDA;
	Mon, 24 Feb 2025 18:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F60AC4CED6;
	Mon, 24 Feb 2025 18:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740423047;
	bh=BMUBPArP+Wl2MP2yf1DUU0DLgumvDFlAgy2cIovaSdU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DLp9aHZmrmhcv76Q/FrZjRvhZSxXxZzzZ+0Bdykswdbr2pqZL09LHdgkyME8/Y8vq
	 gMcnCIT0imkdUYcqdg7rTnRY7WSNfIYmd+TnCkQHWIE/QDIcvlN3asT6dpL3HFIViN
	 SOuXykIr77gK2H5pjdA5GE6UqiFatK53qLgx3owAi//JDOX+3nGVOqgyHHEvWC51Gg
	 WJwW38aqpIohQ7pKubT4bXDFchWcv+nZItVpCJKvcN4KYHdy3G+wakzOXCh7jHZnNX
	 FJwZVHzikteRv3ZPWTT0Vt0CXrLmYR3f4qv3W+h5m7IX6FGfivlJq+FWtsaif2hN2R
	 5BM66KAb5g5Iw==
Date: Mon, 24 Feb 2025 18:50:42 +0000
From: Conor Dooley <conor@kernel.org>
To: Chunfeng Yun =?utf-8?B?KOS6keaYpeWzsCk=?= <Chunfeng.Yun@mediatek.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [RESEND PATCH 1/2] dt-bindings: phy: mediatek,xsphy: add
 property to set disconnect threshold
Message-ID: <20250224-ranger-bobbed-68bc8b1f7386@spud>
References: <20250111141542.5007-1-chunfeng.yun@mediatek.com>
 <20250113-aerobics-tall-e570d8bbcf2c@spud>
 <e61b61574bd58c1bbc0648257fb4ab23ed582de0.camel@mediatek.com>
 <20250211-destiny-crablike-ab17a2814b7a@spud>
 <8eefe9902c884fe7a4a0d1f34c7b13c351b191e5.camel@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <8eefe9902c884fe7a4a0d1f34c7b13c351b191e5.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_105050_530356_A0EFCA11 
X-CRM114-Status: GOOD (  24.67  )
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
Content-Type: multipart/mixed; boundary="===============8803102455184460205=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============8803102455184460205==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9EAQEvPKoLp90x1U"
Content-Disposition: inline


--9EAQEvPKoLp90x1U
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 22, 2025 at 08:30:00AM +0000, Chunfeng Yun (=E4=BA=91=E6=98=A5=
=E5=B3=B0) wrote:
> On Tue, 2025-02-11 at 18:30 +0000, Conor Dooley wrote:
> > On Sun, Feb 09, 2025 at 03:34:12AM +0000, Chunfeng Yun (=E4=BA=91=E6=98=
=A5=E5=B3=B0) wrote:
> > > On Mon, 2025-01-13 at 18:30 +0000, Conor Dooley wrote:
> > > > On Sat, Jan 11, 2025 at 10:15:41PM +0800, Chunfeng Yun wrote:
> > > > > Add a property to tune usb2 phy's disconnect threshold.
> > > > > And add a compatible for mt8196.
> > > > >=20
> > > > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > > > ---
> > > > > based on kernel 6.13-rc1
> > > > >=20
> > > > > this property is porting from t-phy driver, due to the u2 phy
> > > > > are
> > > > > similar.
> > > > > ---
> > > > >  Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml | 8
> > > > > ++++++++
> > > > >  1 file changed, 8 insertions(+)
> > > > >=20
> > > > > diff --git
> > > > > a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> > > > > b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> > > > > index a9e3139fd421..2e012d5e1da1 100644
> > > > > --- a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> > > > > +++ b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> > > > > @@ -49,6 +49,7 @@ properties:
> > > > >        - enum:
> > > > >            - mediatek,mt3611-xsphy
> > > > >            - mediatek,mt3612-xsphy
> > > > > +          - mediatek,mt8196-xsphy
> > > > >        - const: mediatek,xsphy
> > > > > =20
> > > > >    reg:
> > > > > @@ -129,6 +130,13 @@ patternProperties:
> > > > >          minimum: 1
> > > > >          maximum: 7
> > > > > =20
> > > > > +      mediatek,discth:
> >=20
> > Just make it "disconnect-threshold" please.
> Ohhh, Ok, I'll modify it
> >=20
> > > > > +        description:
> > > > > +          The selection of disconnect threshold (U2 phy)
> > > > > +        $ref: /schemas/types.yaml#/definitions/uint32
> > > > > +        minimum: 1
> > > > > +        maximum: 15
> > > >=20
> > > > What unit is this? Unitless? How are the values determined?
> > >=20
> > > No unit, it's a level, may be treat it as an index to select
> > > different
> > > threshold.
> >=20
> > So this is a register value of some sort?=20
> Yes, the big value means higher threshold.
> > What is the actual threshold
> > measured in?
> I think that is mV in fact.

Can you put it in terms of uV then? The -microvolt suffix is standard in pr=
operty-units.yaml

--9EAQEvPKoLp90x1U
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ7y/ggAKCRB4tDGHoIJi
0o1SAP9lIYEztB/rF2WzpkSupF3l9zLozDGFDrs2V4XbkbJSsQD/c4lEOj5vxaHu
CK8IxbzXKINxqPhMdaZ+sbxCSAzccQA=
=ux7y
-----END PGP SIGNATURE-----

--9EAQEvPKoLp90x1U--


--===============8803102455184460205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============8803102455184460205==--

