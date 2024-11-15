Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9920D68BCF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 18:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f4owhitHaJqSHOdO9IC/ujjAdg9yLUUlEQu3FvdBGwc=; b=GevGYxKVwfLO825eJvLjRcS2aG
	xciatNcBIJjT+WdtIMxsdWRfidnDjDC5iVk+cpW64IC9ArIOseLDQgmHyZ/hbxnivhIf3d15OkfnS
	T3IUKJlwm7XSViUbq1N8RpcAvYaZk+nGdir8urSOhcbtQoEVo1i40MchwOpSUGxQGB2AUEPDE8cd6
	tu8wt6aPG6BAlErXSkvFAYd3SyRgM0ZllWjGvT8O0YNrue2yE9I8IeBlOU75hEpH5Nd94mVXfD12Z
	y6VOqxZqEa2JmxPtV120nXoAlrnDmmYfu7/1uzSv5ru/upg7kr8MCsaCyg0Y28vvL87kWEHZIbYQB
	RF8S0LBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC1Ai-00000003igz-1nE6;
	Fri, 15 Nov 2024 18:35:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC19l-00000003iTF-3wj4;
	Fri, 15 Nov 2024 18:34:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EB8225C64DD;
	Fri, 15 Nov 2024 18:34:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02047C4CECF;
	Fri, 15 Nov 2024 18:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731695695;
	bh=X9vWYFVz8BcjMAxz3u0utMXx6m8g2WY5vbDXySCXt6A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tTTcZkCTMkcgCbLKF12B7wo9jFmgkOedDi1F09VwVuBVzlALusVFrk9ZzxpWco/WM
	 gWn5QYPE+lL5V3uclzDbF+96nts3psn/sE2s8g2YRHwbKAWXgJI2n4lqFLTmKAQYv3
	 0Xww5hv/Hgm5rps8193SwsiebhD6eCVqz2Kf5CUD5hfcl3+d+qnyapyvr4dbeJ9V+5
	 pqsEc074oOuVWjcZAT7lJiKgo2nDvEyHEuaMus/sRALo3jsJIShF1mJOFlnYgBSPwC
	 ABvX8DXAIpbm6Acb3Yd7ZWUuuKaZNAdxZxBucyW1sGy1ROJwJvAvZS8xRKzfJ5EHPv
	 OPj5vnrW0ZF8Q==
Date: Fri, 15 Nov 2024 18:34:50 +0000
From: Conor Dooley <conor@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	jun.li@nxp.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: imx8mq-usb: optionally refer to
 usb-switch.yaml
Message-ID: <20241115-bladder-legislate-7daef7a750ad@spud>
References: <20241114102203.4065533-1-xu.yang_2@nxp.com>
 <20241114-marmalade-bottling-8fe656515ee7@spud>
 <20241115020045.qlrkyrelpgdwpxxk@hippo>
MIME-Version: 1.0
In-Reply-To: <20241115020045.qlrkyrelpgdwpxxk@hippo>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_103458_067692_5198AD06 
X-CRM114-Status: GOOD (  26.20  )
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
Content-Type: multipart/mixed; boundary="===============5424365758227293001=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5424365758227293001==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qWspPwlOiJv9Bk4P"
Content-Disposition: inline


--qWspPwlOiJv9Bk4P
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 15, 2024 at 10:00:45AM +0800, Xu Yang wrote:
> On Thu, Nov 14, 2024 at 05:45:07PM +0000, Conor Dooley wrote:
> > On Thu, Nov 14, 2024 at 06:22:03PM +0800, Xu Yang wrote:
> > > The i.MX95 usb-phy can work with or without orientation-switch. With
> > > current setting, if usb-phy works without orientation-switch, the
> > > dt-schema check will show below error:
> > >=20
> > > phy@4c1f0040: 'oneOf' conditional failed, one must be fixed:
> > >         'port' is a required property
> > >         'ports' is a required property
> > >         from schema $id: http://devicetree.org/schemas/phy/fsl,imx8mq=
-usb-phy.yaml#
> > >=20
> > > This will add a condition to optionally refer to usb-switch.yaml.
> > >=20
> > > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> >=20
> > $subject is not what the patch does.
>=20
> I look through other yaml and find below format could achieve the
> restriction on one property:
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/tree/Docum=
entation/devicetree/bindings/usb/gpio-sbu-mux.yaml?h=3Dusb-testing#n54
>=20
>   - if:
>       required:
>         - mode-switch
>     then:
>       required:
>         - enable-gpios
>=20
> If mode-switch is present, then enable-gpios is required. If not, then
> enable-gpios is not required.
>=20
> For my case, if compatible contains "fsl,imx95-usb-phy" and orientation-s=
witch
> is present, then this schema needs to refer to usb-switch.yaml. If not. t=
hen
> this schema will not refer to usb-switch.yaml. So the subject could refle=
ct
> the thing this patch does.
>=20
> Is this feasible? If not, could you give some advices?=20

Hmm, I guess I can now see an interpretation of the wording that
reflects what the patch contents contains. However, you need a hardware
based justification for the condition you're adding since it disables
mode-switch and defining port nodes etc if orientation-switch isn't present.
That's fine if that hardware doesn't support mode switching or ports
without orientation switching, but not if it does.

Cheers,
Conor.

>=20
> Thanks,
> Xu Yang
>=20
> >=20
> > > ---
> > >  Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy=
=2Eyaml b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> > > index 6d6d211883ae..1238792157f8 100644
> > > --- a/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
> > > @@ -118,6 +118,8 @@ allOf:
> > >            contains:
> > >              enum:
> > >                - fsl,imx95-usb-phy
> > > +      required:
> > > +        - orientation-switch
> > >      then:
> > >        $ref: /schemas/usb/usb-switch.yaml#
> > > =20
> > > --=20
> > > 2.34.1
> > >=20
>=20
>=20

--qWspPwlOiJv9Bk4P
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZzeUSgAKCRB4tDGHoIJi
0nmLAP41b2HVcBe/oDDoqT3FelaZ+a2IvuVeK6Hmd+l+FjRdbAD+NvRvcHrjfcUp
l7LuK5Nnt6oS3qIiOHl2p00S970odgw=
=TUzT
-----END PGP SIGNATURE-----

--qWspPwlOiJv9Bk4P--


--===============5424365758227293001==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5424365758227293001==--

