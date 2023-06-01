Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9162CC7EE23
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jun 2023 20:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eaFQkomDnK3A/7+1Eu/wTTXZ3BKUxD1aX0QVbkiF+Qg=; b=zxGPGZBDcssSEvMtmP4NiU18Mi
	wBlfE50jPWA8YFlIh1M3UJy+V/HoPrWUhYJXzOlS0uT7TmlLskuX3zstEzkQaRgckgi8Zw4Pd+wn7
	L3/Kx7ERcRh/o5uz1FerYLBuePkcohUVsnYKRp8ZECRLFBbj0OwfMJ7pvgDDXttoOB+oTNbqyusc1
	Y5zSSMGcJuDZO1Zcf9tURj6bERakRF7Eh2iT1KwJBsJn/nwblS03hXkrYeGmFs5I8K68Tcpk8KHT1
	ii9fyDJppDKSae7VIvcrZqSESX6kxeOPqZ6TaZyA/54e5nFGCBkKo2gavWl9ck41IxJOvi43KJkuU
	xaaA2cNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4og4-004pki-0e;
	Thu, 01 Jun 2023 20:13:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4og0-004pjo-3B
	for linux-phy@lists.infradead.org;
	Thu, 01 Jun 2023 20:13:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 85E466478E;
	Thu,  1 Jun 2023 20:13:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51289C43443;
	Thu,  1 Jun 2023 20:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685650420;
	bh=DCSJXIhqlYYsF0jNkPfKzV5MfwJ9SAulhFSDDwt8Qu0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UVty/LniZ4Eoxr0CcFWpQoP2bAkQ1mhsCOQqj4ha1ew5zBwoHHjDYmCdN/Ak2d/dJ
	 cjMdf+VqC2k8mlHM97czldDGclv4vyblevvuCSZdMiF5oBc0G0ehqJArE/0N6gl6Hb
	 H7EeaAkIY1SDGnH5Qh8VLw8i3mj2MRMIGw41D2HAuIciKuMBHWBKcvYi+ctUaO7Mpx
	 d3fsqN8NZ0H+z4Ruz7X9YhWYVS4qKEX5/SqVNxi4lSO+Cgb3/XpdwvKZ+KHGctcOqV
	 l4+uHUlRWAHFh2fLi7C7p2XCoAh1kyI2Birw2cGQu/wwzivUTcIpJwAg9rSVgnSzxN
	 8tFGadTrIX/DA==
Date: Thu, 1 Jun 2023 21:13:33 +0100
From: Conor Dooley <conor@kernel.org>
To: Stanley =?utf-8?B?Q2hhbmdb5piM6IKy5b63XQ==?= <stanley_chang@realtek.com>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Flavio Suligoi <f.suligoi@asem.it>,
	Mathias Nyman <mathias.nyman@linux.intel.com>,
	Douglas Anderson <dianders@chromium.org>,
	Matthias Kaehlcke <mka@chromium.org>, Ray Chi <raychi@google.com>,
	Michael Grzeschik <m.grzeschik@pengutronix.de>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH v2 3/3] dt-bindings: phy: realtek: Add the doc about the
 Realtek SoC USB 2.0/3.0 PHY
Message-ID: <20230601-starry-nurture-5aecf1f332ac@spud>
References: <20230525022617.30537-1-stanley_chang@realtek.com>
 <20230525022617.30537-3-stanley_chang@realtek.com>
 <20230529-impurity-dismount-bca5c9100c9b@spud>
 <44015844858c42a79e0e7f9207d01496@realtek.com>
 <202305310146.34V1kevI7026106@rtits1.realtek.com.tw>
 <96a7905208c148debe3791636034a038@realtek.com>
MIME-Version: 1.0
In-Reply-To: <96a7905208c148debe3791636034a038@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_131341_111704_14A4EE09 
X-CRM114-Status: GOOD (  32.38  )
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
Content-Type: multipart/mixed; boundary="===============5709806023828294781=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5709806023828294781==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oafWaJor0Kq+VBSZ"
Content-Disposition: inline


--oafWaJor0Kq+VBSZ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 01, 2023 at 02:24:28AM +0000, Stanley Chang[=E6=98=8C=E8=82=B2=
=E5=BE=B7] wrote:
> Hi Conor,
>=20
> > > > You have device-specific compatibles, which is great, but you also =
allow
> > > > only those two generic ones. I had a _brief_ look at the driver, an=
d it
> > > > seems like there is no decision making done based on the compatible=
s,
> > > > only on the properties. Is that correct?
> > > > If it is, I would understand having "realtek,usb3phy" as a fallback
> > > > compatible for "realtek,rtd1619-usb3phy", but I do not get the curr=
ent
> > > > setup.
> > >
> > > This driver is compatible with all Realtek RTD SoCs without specifyin=
g different settings.
> > > So use "realtek,usb3phy" as fallback compatible for all SoCs.
> > > This is the compatible name we use.
> > > Other compatible names simply indicate that the driver supports the S=
oCs.
> >=20
> > Then you should write the binding such that having fallback compatibles
> > is permitted. Try plugging
> > compatible =3D "realtek,rtd1295-usb2phy", "realtek,rtd-usb2phy", "realt=
ek,usb2phy";
> > into your example below and see what happens.
> >=20
> > > The name "usbNphy" and "rtd-usbNphy" seem to be more generic for all =
RTD SoCs,
> > > but they are not device-specific compatible.
> > > Do you have a better suggestion?
> >=20
> > Write the binding so that having fallback compatibles in the DT actually
> > works, don't add the SoC-specific ones merely as indicators that those
> > SoCs are supported and don't permit "realtek,usbNphy" or
> > "realtek,rtd-usbNphy" in isolation ;)
> >
>=20
> As far as I understand what you mean.
> I should follow other docs to define compatible.
> Reference:
>   Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
>   drivers/phy/mediatek/phy-mtk-xsphy.c
>=20
> For example:
>=20
>   compatible:
>     items:
>       - enum:
>           - realtek,rtd1295-usb2phy
>           - realtek,rtd1395-usb2phy
>           - realtek,rtd1619-usb2phy
>           - realtek,rtd1319-usb2phy
>           - realtek,rtd1619b-usb2phy
>           - realtek,rtd1312c-usb2phy
>           - realtek,rtd1319d-usb2phy
>           - realtek,rtd1315e-usb2phy
>       - const: realtek,usb2phy
>=20
> examples:
>   -
>     dwc3_u3drd_usb2phy: dwc3_u3drd_usb2phy@98013e14 {
>         compatible =3D "realtek,rtd1319-usb2phy", "realtek,usb2phy";
>  =20
> And use only "Realtek, usb2phy" in the driver.
> static const struct of_device_id usbphy_rtk_dt_match[] =3D {
>         { .compatible =3D "realtek,usb2phy", },
>         {},
> };

Yes, this would be a vast improvement, thanks.

--oafWaJor0Kq+VBSZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHj77QAKCRB4tDGHoIJi
0rr9AQCJvO7utcVmJn6jLUWkmuB24q/OS1WxIkdUIU9nFqMwCAEAjyvUtBKHzjkE
0gbFxWfaaRIrhWYzxPppdQHgaYpl2QU=
=mWjQ
-----END PGP SIGNATURE-----

--oafWaJor0Kq+VBSZ--


--===============5709806023828294781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5709806023828294781==--

