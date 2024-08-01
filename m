Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40396C3DA64
	for <linux-phy@archiver.kernel.org>; Thu,  1 Aug 2024 15:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wr8pUeuNlza4amCmHqoslyTGxMnF//KEe7+GpVNYbMc=; b=Z1dGBmZk6d2L6fJUmU/r1/pEBY
	j9MPLXTym2ZsUOlwM9deV85RDSXqaPovPJFolInTipryPEyAFPCKIO+gAWxml6kM+7GY51f9YB+T9
	0nsGwWgoNwB9eI1ua2mxzPG+FBNQtwGEnJV+EJF1IC3RIdUchqpohuVTDIXpoZBfxYa8CZpVL/cT/
	iEqwZUnziZmnEJcoSBgxRlKxfZoe5cOqkbN2vHvflI0q/OvhFT+TDr42L27afEoSjl8fhkpw7ppWW
	h1/A/yUfH3mrJQlsCcEzmHyTIE84+Sep17DIfYAJSzXtahu2jRNvPk9AMWWsU5e0LxYOm6Xx7l8ZE
	EfHdNvlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZXUE-00000005oOK-3ySF;
	Thu, 01 Aug 2024 15:13:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZXUC-00000005oNo-0BWk
	for linux-phy@lists.infradead.org;
	Thu, 01 Aug 2024 15:13:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5E82A628E0;
	Thu,  1 Aug 2024 15:12:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A86C1C32786;
	Thu,  1 Aug 2024 15:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722525179;
	bh=MgNLHjJvnDe0EuUg81NvPG2LQI8S/TfbtVY9t/RZ/wQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mCwaaZSZWOik+AbxKZ+zpMU9p0teppstVuMfMtbyed/cC19ANBBdY2cB41fpUAx6Y
	 5cyhKCRjEB+xKVjmhVjJ0T7MOUMVh7Bqkt/8U4eDqovGi2bDmMiV6xnzPGQT0wPVhD
	 HKPv20pk5IoRcyf6qw2lxHMSI05l2QYzy3xTwL0cB9i3lSI637Oz1/hRk3zbg8NUHF
	 OVwKICwHl+I91CyAqcgLl9hz8N6lrBRjqqWA5w9fKaIoPf+h574pq8bMkrxMrG2MUb
	 92QvJeKeaqLlty5b9BLx9Skuurn29/3nqFDrM56j9ie+ibDrh/XZ7Pj7jCSdHGQJ3b
	 H+F43gLlvCT+g==
Date: Thu, 1 Aug 2024 16:12:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Ilya Orazov <ilordash02@gmail.com>, mkl@pengutronix.de,
	mailhol.vincent@wanadoo.fr, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, a-govindraju@ti.com,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
Message-ID: <20240801-disarray-gesture-ebad121272b0@spud>
References: <20240718210322.37492-1-ilordash02@gmail.com>
 <20240718210322.37492-2-ilordash02@gmail.com>
 <20240719-ahead-kiwi-995e52bf3e74@spud>
 <CAGCz5HkF_WNZBVpY2SWVf071Pi896BvKFk0jnfNAYX5AKx2Zcw@mail.gmail.com>
 <20240723-dinginess-john-608d0b28293b@spud>
 <CAGCz5H=Gncw+Tr0XaQQhhGWQER5Rs1BcxbkPaJwx9jJ-8j7LGQ@mail.gmail.com>
 <20240723-municipal-snowy-136b08b6db90@spud>
 <CAGCz5HnJKjNj7A0YD2fw20m-NrEs3MoCLwox86mC11Kudq8xbg@mail.gmail.com>
 <CAMuHMdUf=McxMLqb1hgu_-4QkSFJkdWrdtbwiwn9yJoMSi3YWA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUf=McxMLqb1hgu_-4QkSFJkdWrdtbwiwn9yJoMSi3YWA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_081300_245501_B796625D 
X-CRM114-Status: GOOD (  52.37  )
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
Content-Type: multipart/mixed; boundary="===============3720815158414224166=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3720815158414224166==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2u/IhLrXAClqQ7yY"
Content-Disposition: inline


--2u/IhLrXAClqQ7yY
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 29, 2024 at 10:51:50AM +0200, Geert Uytterhoeven wrote:
> Hi Ilya,
>=20
> On Sun, Jul 28, 2024 at 10:52=E2=80=AFAM Ilya Orazov <ilordash02@gmail.co=
m> wrote:
> > On Tue, 23 Jul 2024 at 23:14, Conor Dooley <conor@kernel.org> wrote:
> > > On Tue, Jul 23, 2024 at 10:55:17PM +0300, Ilya Orazov wrote:
> > > > On Tue, 23 Jul 2024 at 21:50, Conor Dooley <conor@kernel.org> wrote:
> > > > > On Tue, Jul 23, 2024 at 08:20:04PM +0300, IlorDash wrote:
> > > > > > On Fri, 19 Jul 2024 at 18:07, Conor Dooley <conor@kernel.org> w=
rote:
> > > > > > >
> > > > > > > On Fri, Jul 19, 2024 at 12:03:21AM +0300, Ilya Orazov wrote:
> > > > > > > > Microchip ATA6561 is High-Speed CAN Transceiver with Standb=
y Mode.
> > > > > > > > It is pin-compatible with TI TCAN1042.
> > > > > > > >
> > > > > > > > Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> > > > > > > > ---
> > > > > > > >  Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml=
 | 1 +
> > > > > > > >  1 file changed, 1 insertion(+)
> > > > > > > >
> > > > > > > > diff --git a/Documentation/devicetree/bindings/phy/ti,tcan1=
04x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > > > > > index 79dad3e89aa6..03de361849d2 100644
> > > > > > > > --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can=
=2Eyaml
> > > > > > > > +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can=
=2Eyaml
> > > > > > > > @@ -18,6 +18,7 @@ properties:
> > > > > > > >        - nxp,tjr1443
> > > > > > > >        - ti,tcan1042
> > > > > > > >        - ti,tcan1043
> > > > > > > > +      - microchip,ata6561
> > > > > > >
> > > > > > > Given that your driver patch has
> > > > > > > | diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/ph=
y/phy-can-transceiver.c
> > > > > > > | index ee4ce4249698..dbcd99213ba1 100644
> > > > > > > | --- a/drivers/phy/phy-can-transceiver.c
> > > > > > > | +++ b/drivers/phy/phy-can-transceiver.c
> > > > > > > | @@ -89,6 +89,10 @@ static const struct of_device_id can_tra=
nsceiver_phy_ids[] =3D {
> > > > > > > |                 .compatible =3D "nxp,tjr1443",
> > > > > > > |                 .data =3D &tcan1043_drvdata
> > > > > > > |         },
> > > > > > > | +       {
> > > > > > > | +               .compatible =3D "microchip,ata6561",
> > > > > > > | +               .data =3D &tcan1042_drvdata
> > > > > > > | +       },
> > > > > > > |         { }
> > > > > > > |  };
> > > > > > >
> > > > > > > the driver patch is actually not needed at all, and you just =
need to
> > > > > > > allow ti,tcan1042 as fallback compatible in the binding, so s=
omething
> > > > > > > like:
> > > > > > >
> > > > > > >   compatible:
> > > > > > >     oneOf:
> > > > > > >       - enum:
> > > > > > >           - nxp,tjr1443
> > > > > > >           - ti,tcan1042
> > > > > > >           - ti,tcan1043
> > > > > > >       - items:
> > > > > > >           - const: microchip,ata6561
> > > > > > >           - const: ti,tcan1042
> > > > > > >
> > > > > > >    '#phy-cells':
> > > > > > >      const: 0
> > > > > >
> > > > > > I tested the build with fallback compatible:
> > > > > >
> > > > > > compatible:
> > > > > >   oneOf:
> > > > > >     - items:
> > > > > >       - enum:
> > > > > >         - microchip,ata6561
> > > > > >       - const: ti,tcan1042
> > > > > >     - items:
> > > > > >       - enum:
> > > > > >         - nxp,tjr1443
> > > > > >       - const: ti,tcan1043
> > > > > >
> > > > > > and modified compatible property in DTS:
> > > > > >
> > > > > > compatible =3D "microchip,ata6561", "ti,tcan1042";
> > > > > >
> > > > > > Build succeeded, phy-can-transceiver driver was used. So I woul=
d like
> > > > > > to add a fallback compatible for both "microchip,ata6561" and
> > > > > > "nxp,tjr1443" in this binding and modify other DTS files with
> > > > > > compatible =3D "nxp,tjr1443". What do you think?
> > > > >
> > > > > This is wrong on two counts. Firstly, were what you have correct,=
 you
> > > > > should
> > > > > squash the two:
> > > > >      - items:
> > > > >          - enum:
> > > > >            - nxp,tjr1443
> > > > >            - microchip,ata6561
> > > > >          - const: ti,tcan1042
> > > > >
> > > > > However, that does not allow the TI compatibles in isolation, so =
you
> > > > > still need to allow that for the actual TI devices, so you need:
> > > > >
> > > > >    oneOf:
> > > > >      - items:
> > > > >          - enum:
> > > > >            - microchip,ata6561
> > > > >            - nxp,tjr1443
> > > > >            - ti,tcan1043
> > > > >          - const: ti,tcan1042
> > > > >      - const: ti,tcan1042
> > > > >
> > > > > There's probably some devicetrees that would need to be fixed up.=
 I'm
> > > > > just not convinced that this is worth retrofitting however.
> > > >
> > > > But nxp,tjr1443 is pin compatible with ti,tcan1043, so it should
> > > > fallback only to ti,tcan1043 and not ti,tcan1042. That's why I deci=
ded
> > > > to split them into different enums.
> > >
> > > Ah, sorry I missed that. I misread the match data. Then you need:
> > >   compatible:
> > >     oneOf:
> > >       - items:
> > >         - enum:
> > >           - microchip,ata6561
> > >         - const: ti,tcan1042
> > >       - items:
> > >         - enum:
> > >           - nxp,tjr1443
> > >         - const: ti,tcan1043
> > >       - enum:
> > >           const: ti,tcan1042
> > >           const: ti,tcan1043
> > >
> > > because the TI devices exist and we still need to be able to
> > > differentiate the TI and NXP devices. If you have
> > >   compatible =3D "nxp,tjr1443", "ti,tcan1042";
> > > that means the device is an nxp,tjr1443. If you have
> > >   compatible =3D "ti,tcan1042";
> > > then that's a tcan1042.
> > >
> > > > I made my patch according to a similar one that adds support for
> > > > nxp,tjr1443. You can find it's conversation on
> > > > https://lore.kernel.org/all/6ee5e2ce00019bd3f77d6a702b38bab1a45f3bb=
0.1674037830.git.geert+renesas@glider.be/t/#u.
> > >
> > > > I thought we want to hold all PHY chip names in one compatible enum
> > > > and each in its own of_device_id struct in driver and extend them
> > > > where appropriate.
> > >
> > > Nah, fallbacks are preferred when the programming model is either
> > > identical or a "compatible superset" of an existing device. New
> > > of_device_id structs should only be used where we need to account for
> > > differences in the programming model.
> >
> > However, I am curious as to why the NXP CAN PHY transceiver was not
> > included as fallback compatible. Geert, could you please share your
> > thoughts on this matter?
>=20
> The TJR1443 looked sufficiently similar to the TCAN1043 to use the
> same driver configuration (which is limited to having standby and/or
> enable signals or not).  However, I'm not sure it behaves exactly
> the same, e.g. in case of reporting an error condition (which is not
> yet supported by the driver). The part numbers are also different,
> so this is not a simple case of SN74HCxx vs. CD74HCxx.
>=20
> Summary: I don't know if they are identical, or if TJR1443 is a
> compatible superset of TCAN1043, or vice versa. Hence I went for the
> safest way....

If we don't know for sure what the craic is with compatibility, then we
should leave the existing tjr1443 compatible as-is I think.

--2u/IhLrXAClqQ7yY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZqul9gAKCRB4tDGHoIJi
0ihGAP9ycLYTw4OBALYRGnPOgdIt80DioV5tkzE3ZMnbzlDyUQD/ddqPhRdRL6BW
4hQVPcQtVHP4d8p76tUJ59Dyz6rY5gg=
=n1kR
-----END PGP SIGNATURE-----

--2u/IhLrXAClqQ7yY--


--===============3720815158414224166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3720815158414224166==--

