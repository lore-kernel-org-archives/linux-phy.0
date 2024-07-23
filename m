Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D41A2C3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 20:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BYySD/+0zZkuaIzDlwFKwIPFKv4ArnULSrk3iPoL6bU=; b=azVHoDOs5YD+wEtHXSKXJj3dU6
	EEmyztqM8YLxCiolXmwt/aNmwXZ+fsrlFk/IGcFV6gFkYB84YL00ezLvc6JXIr4I1CdJFlwIlXXPK
	uyknQoxoz2zypF8wlpRwGnEFqSefcXRoSR/Au9wVNV8Ojes4dOvhwht25Dvysk0nwVoEmMrRp63q5
	UTPSqAWfAb2KU266r6dtwYpCq7yC3Dwb9vO6v6nb6AeLNVttdNRE6voVhfThx3JInq67gNKJTELGp
	cLMJHikmVXMerFUDKPioWuWWjlutLrIggOffTRF4quv49BFFgopd30l1upPk3mO+9wdjGchCLOD27
	BzjqxyQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLtq-0000000DQyl-1yNB;
	Tue, 23 Jul 2024 20:14:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLtn-0000000DQyM-2fPs
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 20:14:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 161C160DD7;
	Tue, 23 Jul 2024 20:14:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59688C4AF0A;
	Tue, 23 Jul 2024 20:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721765653;
	bh=90qCsmRc/KyIcHIjkewyjqSMR6l+O5gromMuJ21lzjM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BSAWGQDjaFBMhHzuVyukfj/KRAtf99leF3Ay98Q5TFlOm7PdLYc3c5L7Jp10SPDQf
	 ksIA169fWEVkEMXnBbTdbvH1ETzuMUcZE8pT3uuhpf0L29J/Fp8xT8kiVy4rzolF/l
	 WBTFy3HW/5rrY/rk8ChIU1MWQpRbudGJvRnujOi0ltmcwxjYNfHTpodXfDJW0u+lNQ
	 Swq6OdOfYvQkToj2bFcOtAI+2qlLeGcG2fwKDJn+c6VejlKjPxK7U81CUGhTzABaYt
	 QVPYKV6/ZAVuHZN5SYMFXcUR2kYSy5Zeh7hOSthf1hUjEujdkH5v3oZhKOLn6kTXfT
	 mf7flZobri0iw==
Date: Tue, 23 Jul 2024 21:14:09 +0100
From: Conor Dooley <conor@kernel.org>
To: Ilya Orazov <ilordash02@gmail.com>
Cc: geert+renesas@glider.be, mkl@pengutronix.de, mailhol.vincent@wanadoo.fr,
	vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, a-govindraju@ti.com, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
Message-ID: <20240723-municipal-snowy-136b08b6db90@spud>
References: <20240718210322.37492-1-ilordash02@gmail.com>
 <20240718210322.37492-2-ilordash02@gmail.com>
 <20240719-ahead-kiwi-995e52bf3e74@spud>
 <CAGCz5HkF_WNZBVpY2SWVf071Pi896BvKFk0jnfNAYX5AKx2Zcw@mail.gmail.com>
 <20240723-dinginess-john-608d0b28293b@spud>
 <CAGCz5H=Gncw+Tr0XaQQhhGWQER5Rs1BcxbkPaJwx9jJ-8j7LGQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGCz5H=Gncw+Tr0XaQQhhGWQER5Rs1BcxbkPaJwx9jJ-8j7LGQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_131415_835373_E9E2AF2D 
X-CRM114-Status: GOOD (  38.78  )
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
Content-Type: multipart/mixed; boundary="===============0157284595347033822=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0157284595347033822==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Z63R+4Oqxis0CS5a"
Content-Disposition: inline


--Z63R+4Oqxis0CS5a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 23, 2024 at 10:55:17PM +0300, Ilya Orazov wrote:
> On Tue, 23 Jul 2024 at 21:50, Conor Dooley <conor@kernel.org> wrote:
> >
> > On Tue, Jul 23, 2024 at 08:20:04PM +0300, IlorDash wrote:
> > > On Fri, 19 Jul 2024 at 18:07, Conor Dooley <conor@kernel.org> wrote:
> > > >
> > > > On Fri, Jul 19, 2024 at 12:03:21AM +0300, Ilya Orazov wrote:
> > > > > Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> > > > > It is pin-compatible with TI TCAN1042.
> > > > >
> > > > > Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> > > > > ---
> > > > >  Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 1 +
> > > > >  1 file changed, 1 insertion(+)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-ca=
n.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > > index 79dad3e89aa6..03de361849d2 100644
> > > > > --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > > +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > > @@ -18,6 +18,7 @@ properties:
> > > > >        - nxp,tjr1443
> > > > >        - ti,tcan1042
> > > > >        - ti,tcan1043
> > > > > +      - microchip,ata6561
> > > >
> > > > Given that your driver patch has
> > > > | diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-=
can-transceiver.c
> > > > | index ee4ce4249698..dbcd99213ba1 100644
> > > > | --- a/drivers/phy/phy-can-transceiver.c
> > > > | +++ b/drivers/phy/phy-can-transceiver.c
> > > > | @@ -89,6 +89,10 @@ static const struct of_device_id can_transceiv=
er_phy_ids[] =3D {
> > > > |                 .compatible =3D "nxp,tjr1443",
> > > > |                 .data =3D &tcan1043_drvdata
> > > > |         },
> > > > | +       {
> > > > | +               .compatible =3D "microchip,ata6561",
> > > > | +               .data =3D &tcan1042_drvdata
> > > > | +       },
> > > > |         { }
> > > > |  };
> > > >
> > > > the driver patch is actually not needed at all, and you just need to
> > > > allow ti,tcan1042 as fallback compatible in the binding, so somethi=
ng
> > > > like:
> > > >
> > > >   compatible:
> > > >     oneOf:
> > > >       - enum:
> > > >           - nxp,tjr1443
> > > >           - ti,tcan1042
> > > >           - ti,tcan1043
> > > >       - items:
> > > >           - const: microchip,ata6561
> > > >           - const: ti,tcan1042
> > > >
> > > >    '#phy-cells':
> > > >      const: 0
> > >
> > > I tested the build with fallback compatible:
> > >
> > > compatible:
> > >   oneOf:
> > >     - items:
> > >       - enum:
> > >         - microchip,ata6561
> > >       - const: ti,tcan1042
> > >     - items:
> > >       - enum:
> > >         - nxp,tjr1443
> > >       - const: ti,tcan1043
> > >
> > > and modified compatible property in DTS:
> > >
> > > compatible =3D "microchip,ata6561", "ti,tcan1042";
> > >
> > > Build succeeded, phy-can-transceiver driver was used. So I would like
> > > to add a fallback compatible for both "microchip,ata6561" and
> > > "nxp,tjr1443" in this binding and modify other DTS files with
> > > compatible =3D "nxp,tjr1443". What do you think?
> >
> > This is wrong on two counts. Firstly, were what you have correct, you
> > should
> > squash the two:
> >      - items:
> >          - enum:
> >            - nxp,tjr1443
> >            - microchip,ata6561
> >          - const: ti,tcan1042
> >
> > However, that does not allow the TI compatibles in isolation, so you
> > still need to allow that for the actual TI devices, so you need:
> >
> >    oneOf:
> >      - items:
> >          - enum:
> >            - microchip,ata6561
> >            - nxp,tjr1443
> >            - ti,tcan1043
> >          - const: ti,tcan1042
> >      - const: ti,tcan1042
> >
> > There's probably some devicetrees that would need to be fixed up. I'm
> > just not convinced that this is worth retrofitting however.
>=20
> But nxp,tjr1443 is pin compatible with ti,tcan1043, so it should
> fallback only to ti,tcan1043 and not ti,tcan1042. That's why I decided
> to split them into different enums.

Ah, sorry I missed that. I misread the match data. Then you need:
  compatible:
    oneOf:
      - items:
        - enum:
          - microchip,ata6561
        - const: ti,tcan1042
      - items:
        - enum:
          - nxp,tjr1443
        - const: ti,tcan1043
      - enum:
          const: ti,tcan1042
          const: ti,tcan1043

because the TI devices exist and we still need to be able to
differentiate the TI and NXP devices. If you have
  compatible =3D "nxp,tjr1443", "ti,tcan1042";
that means the device is an nxp,tjr1443. If you have
  compatible =3D "ti,tcan1042";
then that's a tcan1042.

> I made my patch according to a similar one that adds support for
> nxp,tjr1443. You can find it's conversation on
> https://lore.kernel.org/all/6ee5e2ce00019bd3f77d6a702b38bab1a45f3bb0.1674=
037830.git.geert+renesas@glider.be/t/#u.

> I thought we want to hold all PHY chip names in one compatible enum
> and each in its own of_device_id struct in driver and extend them
> where appropriate.

Nah, fallbacks are preferred when the programming model is either
identical or a "compatible superset" of an existing device. New
of_device_id structs should only be used where we need to account for
differences in the programming model.

Cheers,
Conor.

--Z63R+4Oqxis0CS5a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZqAPEQAKCRB4tDGHoIJi
0kUtAQCD4m5JpvCin6NoTN7R88b/5D2xMXjRcMXCbKfv3R5+2AD+P2ctpV4F6zrF
A+Iu8ksIp0p58jPpj6u/fU5EQe+iawE=
=jKJ5
-----END PGP SIGNATURE-----

--Z63R+4Oqxis0CS5a--


--===============0157284595347033822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0157284595347033822==--

