Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B4EFC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 14:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RmT9JBvV/ZrVce4fKtr+BhuhVVaONPL5NBYRuGgZNV8=; b=F+KB7577cexHZAWuOJlgZSZ90f
	9FTGFYU66YVxBcOxp1goluif74sj8UWGmEpLQoQY4dzCHWKONTZ/9tsVxI+jZSJLbDaBmmedce8U/
	7HF2sieC+MSqp4z2ya4K5wXMsirzwEl4Wh+/nixe0EceyarNzEeluhS0cxt/JyiuJKyN787fDJk4c
	CwWHxATpNqrglHcC8IZaP3I1LwpPBOOWKfM8+Y3vrT8QwELHbeLAb9nYu5aET9/MlbZKwlp62juKS
	RlrPUTzkYLSP2NV6f7SoUxqVRjWLjyGFvEz3AK6/mD8zpkaaaf2R3m91QgNBka20cImzmsMK2xaJT
	sF6mRw3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2Ed-004Nuy-H7; Fri, 18 Nov 2022 14:20:51 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2Ea-004Not-D8
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:20:50 +0000
Received: by mail-ej1-x633.google.com with SMTP id t25so13362097ejb.8
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HqO8WFSshBMkjXkcialpneR9kVHk43Qp5SJjCt/IKGM=;
        b=PuofVgEliOALs45eF58K0C+9lrqtt91542lUDiSmRYZcpwKipzsLnajAE+z+00JR3U
         2EI2xIyGju04G1QUEAEAwHUATHMe9ymTdPZkzNUv2R4asOERtb77BjBySb2fNm4F3v7R
         bq7qxdunmHzR5KvmyVj5JDLBxejXVdU+RrXAvSt5USlVMXDlyaKDxjK4ua91VBRkSuRG
         pi+uTjxgiHD+Boi8ulbqlsMXCN8cWkhj6tv5w3iluvDCdp1MVyeImfX43SdLByNPWejm
         KykOSjSb2gEXkfpPx4dv1JpzMO2Db/zzTB1djCJ04T34zPrAwaA08t9p7aeuLlpSNeFR
         wKMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HqO8WFSshBMkjXkcialpneR9kVHk43Qp5SJjCt/IKGM=;
        b=qeefDurcaBbxGQ5YGIDaPFISM7bG22cXIfE/kOfUsTJh7cO+WAts37xuMSIeP4jWLn
         KWuIx+DnPnSlk1CcGq3Oi0GHEfnUR3fNqxUyXjzlbgSQ/fbUvc5LxzXO4wSuwGYaWk/y
         tKT88Db7hToSdmjclHDyCTwYnvjycCny2utiM8EzhmhONCh5COrmJwZiV8kyc6XlRJr9
         5rtQ3rRJtBKPYlW/i8WHuo5blXwDewl92qvxyvEDwOwzN20gkw5cu9Ilb35sj4OPGbkg
         +msOl5WmUYqBVkpm6+7g5O98wi5zuDsLIURe4nUFWiKcXT2NC/luPtkFaFLW4XD+AZe6
         A9DQ==
X-Gm-Message-State: ANoB5pnn5SyeBl2PToZE9zBGBXlwypuAbvzhg4QsomD2ucYU0XwFulZ6
	lc8g7uPt/BHxgJESZBllRsM=
X-Google-Smtp-Source: AA0mqf7uvhm2aNgthNgCcY5+AGySJhW70Hzu/XYgRKjVGoo3Fa74La9hGCDgVLQbcDK+HMMTMQaZvQ==
X-Received: by 2002:a17:906:4090:b0:7ae:fbe8:a92e with SMTP id u16-20020a170906409000b007aefbe8a92emr5968724ejj.369.1668781238287;
        Fri, 18 Nov 2022 06:20:38 -0800 (PST)
Received: from orome (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 2-20020a170906210200b0078c47463277sm1738499ejt.96.2022.11.18.06.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 06:20:37 -0800 (PST)
Date: Fri, 18 Nov 2022 15:20:35 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Rob Herring <robh@kernel.org>, Wayne Chang <waynec@nvidia.com>,
	linux-kernel@vger.kernel.org, ajayg@nvidia.com, singhanc@nvidia.com,
	devicetree@vger.kernel.org, treding@nvidia.com,
	linux-tegra@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org, robh+dt@kernel.org, jckuo@nvidia.com,
	heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
	vkoul@kernel.org, balbi@kernel.org, p.zabel@pengutronix.de,
	mathias.nyman@intel.com
Subject: Re: [PATCH v3 02/13] dt-bindings: usb: Add NVIDIA Tegra234 XUSB host
 controller binding
Message-ID: <Y3eUs1pWRHJGkeTo@orome>
References: <20221114124053.1873316-1-waynec@nvidia.com>
 <20221114124053.1873316-3-waynec@nvidia.com>
 <166845336035.3185553.484885991952704522.robh@kernel.org>
 <ff85d925-cd5a-6f44-4a15-ae5368c7b833@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <ff85d925-cd5a-6f44-4a15-ae5368c7b833@nvidia.com>
User-Agent: Mutt/2.2.8 (2022-11-05)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_062048_478604_3366026C 
X-CRM114-Status: GOOD (  31.61  )
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
Content-Type: multipart/mixed; boundary="===============7029960640230906073=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7029960640230906073==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MzsUP1QYYvDdDQzK"
Content-Disposition: inline


--MzsUP1QYYvDdDQzK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 18, 2022 at 11:47:48AM +0000, Jon Hunter wrote:
> Hi Rob,
>=20
> On 14/11/2022 19:16, Rob Herring wrote:
> >=20
> > On Mon, 14 Nov 2022 20:40:42 +0800, Wayne Chang wrote:
> > > Add device-tree binding documentation for the XUSB host controller pr=
esent
> > > on Tegra234 SoC. This controller supports the USB 3.1 specification.
> > >=20
> > > Signed-off-by: Wayne Chang <waynec@nvidia.com>
> > > ---
> > > depends on the following change
> > > https://lore.kernel.org/all/20221003125141.123759-1-jonathanh@nvidia.=
com/
> > > V2 -> V3:nothing has changed but added the dependency here
> > > V1 -> V2:new change for adding nvidia,tegra234-xusb.yaml
> > >   .../bindings/usb/nvidia,tegra234-xusb.yaml    | 159 +++++++++++++++=
+++
> > >   1 file changed, 159 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/usb/nvidia,teg=
ra234-xusb.yaml
> > >=20
> >=20
> > My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_chec=
k'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >=20
> > yamllint warnings/errors:
> >=20
> > dtschema/dtc warnings/errors:
> > Error: Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.examp=
le.dts:36.27-28 syntax error
> > FATAL ERROR: Unable to parse input tree
> > make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindin=
gs/usb/nvidia,tegra234-xusb.example.dtb] Error 1
> > make[1]: *** Waiting for unfinished jobs....
> > make: *** [Makefile:1492: dt_binding_check] Error 2
> >=20
> > doc reference errors (make refcheckdocs):
> >=20
> > See https://patchwork.ozlabs.org/patch/
> >=20
> > This check can fail if there are any dependencies. The base for a patch
> > series is generally the most recent rc1.
> >=20
> > If you already ran 'make dt_binding_check' and didn't see the above
> > error(s), then make sure 'yamllint' is installed and dt-schema is up to
> > date:
> >=20
> > pip3 install dtschema --upgrade
> >=20
> > Please check and re-submit.
>=20
>=20
> I am very much responsible for this because of my patch [0] to get all the
> necessary headers for Tegra234. I was hoping this would be a good thing, =
but
> now I see this is a bit of a headache for maintainers.
>=20
> So I am not sure what is a good way to handle this. We would like to get
> this merged for v6.2, and so please let me know if this is OK with you?
> Please note that this is similar to the other Tegra USB bindings you have
> reviewed for v6.2.

I think it'd be best for me to pick these up into the Tegra tree where
the dependency exists and where I already have the XUSB bindings
conversion patches for earlier chips. Looks like this is also not very
different from, say, the Tegra194 XUSB bindings, so should fit right in
there.

Thierry

--MzsUP1QYYvDdDQzK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmN3lLEACgkQ3SOs138+
s6EXVxAArYb2tzmvGNQngQFUF8v6pI5aZz8bbKqpwXTHYwAD4UEHgqWhYGXNosFi
j3z0zADAD/JYylM8/RPkpjyopsb0A054vyLlgLuxhyBlt8HYDUAPIQHxJiU8UZP7
5Y6Wt4h0y9qs1NZrP5WHMjYWsXBcFqOjIIfPGv56hkCMJ3346hblTWDwNjgARXwH
jtLfkcBgmUMrYreqTqvLQYvL/6FF28IRYXDLweqXxMEivrv9vWqc4oqs28vCERs+
NuoYp12UW/DGzFWITE6QPbY9sTovqQ3dDdfo5kObYGoMlqtOTvk6SkbjSsXINZAN
ewJA54+XKLtk0Fr9faaseW6MutkX0JAjlD3HX7qLre9ZgwJJbBgdemj/0XU6gNGN
gOpKiVIHTcQbevjq9Hx3qgzvHHWPH0tP2H36cKaISLEsL0vRiVJqGZasoJku22Ey
UbbzLD3VJ2MSIjTyiJmI4uF3Opp3aVtD4r3o4i54ZPTjUWBXB45zhh4NYPG6KHwe
Vu6yvqg2ovp7ngSAoRtGuqeL2msap+nR3UeNKYL3ZnYkvz4Rjr+h/Qdp1AvLIuAo
4VADE15avZE4oTvYKNPzxItnBqj0LsnK+wbi54k8yzRDF3so+NA0u39mbYcUL9DV
wx9LwsPjoKTwCQGkQxFEVe798XSSDZcI0KibcAvRbZXZA1SNYSU=
=E60l
-----END PGP SIGNATURE-----

--MzsUP1QYYvDdDQzK--


--===============7029960640230906073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7029960640230906073==--

