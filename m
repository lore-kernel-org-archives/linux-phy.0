Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8356C3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 18:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QGBPxImTPqiOPGa7NX4MUH73GBKxDcmjchRiwkCExys=; b=BGoePMguIIzvovB7sTxdlR8/2v
	2h+o+rhKrfjfsKcrqngg1+V0peCfWwxtBv+4Wlr2lmO+Iwo+0Se7ziA5HRvBI7vfEPHbIvh3CCuFt
	eBKOVR0ZvWi+cP8V940h3JYHW8aCmOLggvLIZAbI7CqXWraXJ8AVonOhgF757O7UVEPn3W0iu5ZHP
	OIgClwMPdeTwuAVa0t4nWuWuL3PHatnTMEQy0wgHSlBU0p9T0G7ttOnQcBvZaE+T1viNyKGm46Bod
	Ckj9IUij6bn1+kgtrXc46l/Ia0vv7/BrQnKPPPF3WNvThnxOP7qrdXFqxx+EhZAD7fmZzUPvFSfKu
	b3BU2djQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWKbF-0000000DHDt-1c4L;
	Tue, 23 Jul 2024 18:51:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWKbC-0000000DHDK-1Nkt
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 18:50:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3E83760E33;
	Tue, 23 Jul 2024 18:50:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E864C4AF09;
	Tue, 23 Jul 2024 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721760656;
	bh=vl1tL+qm9ouTAJDkwaDpLfLbUJBEPsRUkWIiVOPc7Wc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nB8cUGlBm+7B0YBAMUzn270OoFVh2zSQvYM8rML0FikCLram4h3liP6vGlF7eNgE7
	 WTGQvUbwx7zDhIMeSTAAvV0O9ZLXrwPYoJiphkQqJdgnM2L2J4GdKktDxC3jp94wbR
	 BAjTM2peIlfNZ3Ys7ge9+dJ5kTwktjKtmnyQVQ4IWLkYncU7DOTnwoIeRgIkuoySQe
	 YCUKgXEBpQnTmYHN7c8RHUhe3ANrssF8UzYO2SNYHrRXaZA2FQuMXlhseQdOI4CA6d
	 133CfwSQ/VJO21ViPGPbAXjgljHmRMg+W4umkreTQR5AgIh29Q5tUcMm02rg2udKwh
	 Acsu02hYpRokw==
Date: Tue, 23 Jul 2024 19:50:52 +0100
From: Conor Dooley <conor@kernel.org>
To: IlorDash <ilordash02@gmail.com>
Cc: geert+renesas@glider.be, mkl@pengutronix.de, mailhol.vincent@wanadoo.fr,
	vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, a-govindraju@ti.com, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
Message-ID: <20240723-dinginess-john-608d0b28293b@spud>
References: <20240718210322.37492-1-ilordash02@gmail.com>
 <20240718210322.37492-2-ilordash02@gmail.com>
 <20240719-ahead-kiwi-995e52bf3e74@spud>
 <CAGCz5HkF_WNZBVpY2SWVf071Pi896BvKFk0jnfNAYX5AKx2Zcw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGCz5HkF_WNZBVpY2SWVf071Pi896BvKFk0jnfNAYX5AKx2Zcw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_115058_524136_030EA042 
X-CRM114-Status: GOOD (  25.61  )
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
Content-Type: multipart/mixed; boundary="===============4496004276758979357=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4496004276758979357==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Sb1wt06qVRZp8fX7"
Content-Disposition: inline


--Sb1wt06qVRZp8fX7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 23, 2024 at 08:20:04PM +0300, IlorDash wrote:
> On Fri, 19 Jul 2024 at 18:07, Conor Dooley <conor@kernel.org> wrote:
> >
> > On Fri, Jul 19, 2024 at 12:03:21AM +0300, Ilya Orazov wrote:
> > > Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> > > It is pin-compatible with TI TCAN1042.
> > >
> > > Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> > > ---
> > >  Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.ya=
ml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > index 79dad3e89aa6..03de361849d2 100644
> > > --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > @@ -18,6 +18,7 @@ properties:
> > >        - nxp,tjr1443
> > >        - ti,tcan1042
> > >        - ti,tcan1043
> > > +      - microchip,ata6561
> >
> > Given that your driver patch has
> > | diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-=
transceiver.c
> > | index ee4ce4249698..dbcd99213ba1 100644
> > | --- a/drivers/phy/phy-can-transceiver.c
> > | +++ b/drivers/phy/phy-can-transceiver.c
> > | @@ -89,6 +89,10 @@ static const struct of_device_id can_transceiver_p=
hy_ids[] =3D {
> > |                 .compatible =3D "nxp,tjr1443",
> > |                 .data =3D &tcan1043_drvdata
> > |         },
> > | +       {
> > | +               .compatible =3D "microchip,ata6561",
> > | +               .data =3D &tcan1042_drvdata
> > | +       },
> > |         { }
> > |  };
> >
> > the driver patch is actually not needed at all, and you just need to
> > allow ti,tcan1042 as fallback compatible in the binding, so something
> > like:
> >
> >   compatible:
> >     oneOf:
> >       - enum:
> >           - nxp,tjr1443
> >           - ti,tcan1042
> >           - ti,tcan1043
> >       - items:
> >           - const: microchip,ata6561
> >           - const: ti,tcan1042
> >
> >    '#phy-cells':
> >      const: 0
>=20
> I tested the build with fallback compatible:
>=20
> compatible:
>   oneOf:
>     - items:
>       - enum:
>         - microchip,ata6561
>       - const: ti,tcan1042
>     - items:
>       - enum:
>         - nxp,tjr1443
>       - const: ti,tcan1043
>=20
> and modified compatible property in DTS:
>=20
> compatible =3D "microchip,ata6561", "ti,tcan1042";
>=20
> Build succeeded, phy-can-transceiver driver was used. So I would like
> to add a fallback compatible for both "microchip,ata6561" and
> "nxp,tjr1443" in this binding and modify other DTS files with
> compatible =3D "nxp,tjr1443". What do you think?

This is wrong on two counts. Firstly, were what you have correct, you
should
squash the two:
     - items:
         - enum:
           - nxp,tjr1443
           - microchip,ata6561
         - const: ti,tcan1042

However, that does not allow the TI compatibles in isolation, so you
still need to allow that for the actual TI devices, so you need:

   oneOf:
     - items:
         - enum:
           - microchip,ata6561
           - nxp,tjr1443
           - ti,tcan1043
         - const: ti,tcan1042
     - const: ti,tcan1042

There's probably some devicetrees that would need to be fixed up. I'm
just not convinced that this is worth retrofitting however.

--Sb1wt06qVRZp8fX7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZp/7jAAKCRB4tDGHoIJi
0kqmAQDbg7LV1E4pqgQO3NYNjah0s8scJYHyiLkSKEGkeV8vzgD/Vmkjp6MfrKVF
sb9sNoZYQ2y9gDZh9eTTxUkOP+9ibAI=
=oDmD
-----END PGP SIGNATURE-----

--Sb1wt06qVRZp8fX7--


--===============4496004276758979357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4496004276758979357==--

