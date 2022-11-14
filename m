Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DEC3C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 10:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NEEe0aQbwu8e+2K8GeVnwQUYc9MsIJkQEmt64uDVEjo=; b=NHZQQ7n4VCHwuC15IU9eb8omWz
	AMarigb1/mGO0/Uvc9kpTVGMqSJfm1ngi1y8WHmuce49fz/TIpHQWhdtjk0X5aZkHXANwOlS0hjSY
	W4948qFplMWdDZt4uEup3Ng9y4vLmY3BSdhO9NJwcrFMkW4RgE3+B1PRwEwvi/r9bz7hDjpEsPiev
	TzfkRP+pUYhsrhrxJ/+wRroMp3WlCAV5JxfwRyTOS+Rhbb3FXzi/cj+HET32sA/6RbJpFAlYjsObC
	yQl6ViX6ibhpHRACk3/CqI6E3VMbrfUhSIfKaFltn15hrkf/rF1KqXfbCcxoqesbArU7cLvDo4Y3+
	ooqA6tmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouWVB-00HT1r-Vb; Mon, 14 Nov 2022 10:15:41 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouWV9-00HSxo-CQ
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 10:15:40 +0000
Received: by mail-ej1-x62b.google.com with SMTP id n12so26993211eja.11
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 02:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N7U98HqvMeOnm6Eh8maT1EIBJe9LLM6lCpqSN06lRLY=;
        b=dFK25eTLa0eWqTq1hV4xDddW+/ZFK5/w/Ztv+doP2F4WDUT3jf8llh8klwE/Y8E2ig
         RDsdFX6YnKJhYxy7ECgmW03rZwxArQNpNNKkBIkUx4jW7TABIWHEkFtW4MzWUrWpCwRU
         xK40/VNf4ckptopeDK4FkDVOXX6H1iVuXygjbZzfjSmBY62Etib5peawv+huwDUYt+z4
         1/Tw1xEu18Xx29/sH4DyBDHaDfv5nL7eVoDvborW45TDxohlGejZdsgUieNu02XYlCID
         oxpu5vhxQFUVUsiOX6B9MS6le+KpUOtmG7u0n58uHzHlgaTnJBhbdL/mEjxY0uJDuvkd
         53aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N7U98HqvMeOnm6Eh8maT1EIBJe9LLM6lCpqSN06lRLY=;
        b=zQ0lb73mlzGq7pn2BeznkKqLY9bCMKGXuRjdEtURQ1u9EA9TetLO2kn0trXbYnQ4XO
         48SFMQSST+GXFixzNYGPhJ6SBL9RvHuaycVG9KTBFpkjUjqMaRMUqH25yvrTJ/Ti5eiL
         EJ2I7/y4OJy0nDYCe6suKZLCI5oAT/UyAefYABdTLxNa2n5rUqXyWcsbiSVltodxIFPi
         hZap0Jrad3XdU2Co28Rl9W+NRDRnHyeX7OF4s35SBGIuOF4Kxrt7JBA/TF8yY0aqV8lG
         gqtfwngcES5IXKuNNJE3JwB9Ib6O1w/cyvFla9t6UPEwNeAtnhWa9S1+9qdtwdKlLK3x
         Xrlg==
X-Gm-Message-State: ANoB5pn2gULULSITZW7z5bXOfP+Tp5R6oGCmHw0DiENiTW6C3GoI7VB2
	H1THPiWpG9nyuep008r/VNE=
X-Google-Smtp-Source: AA0mqf5Zqswe5wI3zWZCj5Gwtm8okjT9rxQpGuiMZDc/XmRpoxHc5/yiMagpgyssM4IcKzqjCFvXXw==
X-Received: by 2002:a17:906:c251:b0:7ae:1874:3e09 with SMTP id bl17-20020a170906c25100b007ae18743e09mr9194067ejb.534.1668420933118;
        Mon, 14 Nov 2022 02:15:33 -0800 (PST)
Received: from orome (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ky14-20020a170907778e00b0078afe360800sm3948522ejc.199.2022.11.14.02.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 02:15:31 -0800 (PST)
Date: Mon, 14 Nov 2022 11:15:30 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Jon Hunter <jonathanh@nvidia.com>, Wayne Chang <waynec@nvidia.com>,
	mathias.nyman@intel.com, p.zabel@pengutronix.de,
	devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
	linux-tegra@vger.kernel.org, singhanc@nvidia.com, balbi@kernel.org,
	linux-phy@lists.infradead.org, vkoul@kernel.org, ajayg@nvidia.com,
	heikki.krogerus@linux.intel.com, linux-usb@vger.kernel.org,
	treding@nvidia.com, jckuo@nvidia.com, linux-kernel@vger.kernel.org,
	gregkh@linuxfoundation.org, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v2 02/13] dt-bindings: usb: Add NVIDIA Tegra234 XUSB host
 controller binding
Message-ID: <Y3IVQtY94GenVpGL@orome>
References: <20221111101509.999589-1-waynec@nvidia.com>
 <20221111101509.999589-3-waynec@nvidia.com>
 <166817308790.3060162.14990231448404857914.robh@kernel.org>
 <5782d31a-9a0c-33da-ff84-20cae29f977e@nvidia.com>
 <20221111173236.GA3561612-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20221111173236.GA3561612-robh@kernel.org>
User-Agent: Mutt/2.2.8 (2022-11-05)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_021539_448600_9E0B2448 
X-CRM114-Status: GOOD (  21.52  )
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
Content-Type: multipart/mixed; boundary="===============3246176708622994775=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3246176708622994775==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2hyjIjtsn0nH3kf8"
Content-Disposition: inline


--2hyjIjtsn0nH3kf8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 11, 2022 at 11:32:36AM -0600, Rob Herring wrote:
> On Fri, Nov 11, 2022 at 02:38:21PM +0000, Jon Hunter wrote:
> >=20
> > On 11/11/2022 13:30, Rob Herring wrote:
> > >=20
> > > On Fri, 11 Nov 2022 18:14:58 +0800, Wayne Chang wrote:
> > > > Add device-tree binding documentation for the XUSB host controller =
present
> > > > on Tegra234 SoC. This controller supports the USB 3.1 specification.
> > > >=20
> > > > Signed-off-by: Wayne Chang <waynec@nvidia.com>
> > > > ---
> > > > V1 -> V2: new change for adding nvidia,tegra234-xusb.yaml
> > > >   .../bindings/usb/nvidia,tegra234-xusb.yaml    | 159 +++++++++++++=
+++++
> > > >   1 file changed, 159 insertions(+)
> > > >   create mode 100644 Documentation/devicetree/bindings/usb/nvidia,t=
egra234-xusb.yaml
> > > >=20
> > >=20
> > > My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_ch=
eck'
> > > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > >=20
> > > yamllint warnings/errors:
> > >=20
> > > dtschema/dtc warnings/errors:
> > > Error: Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.exa=
mple.dts:36.27-28 syntax error
> > > FATAL ERROR: Unable to parse input tree
> > > make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bind=
ings/usb/nvidia,tegra234-xusb.example.dtb] Error 1
> > > make[1]: *** Waiting for unfinished jobs....
> > > make: *** [Makefile:1492: dt_binding_check] Error 2
> >=20
> > This compiles fine on top of -next. We are just missing the change that
> > populates the required definitions.
>=20
> Where exactly is that mentioned in the commit msg?
>=20
> No maintainer can take patches which apply against linux-next, so not a=
=20
> good dependency to mention either.

It would probably be easiest for me to pick this up into the Tegra tree
since that's where the dt-bindings header file change is that adds these
symbols. Alternatively we could strip the symbols from the example and
use literals instead.

Thierry

--2hyjIjtsn0nH3kf8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmNyFUIACgkQ3SOs138+
s6H1Uw//WLqL8StUoYtObkq8iiJpsfdxOjQvDdyaW0F4virLoWtaqoLEFVpbja40
YjX08K9B0iNoo58bTXGyUrgTKPsrj4GxOFqD13ons2T7NkjDGd+k0MHhoe/5dY02
rshoIdDbqd+ZjQMyrtPCyWgHfgcKeMVd0xmBhJKF7eBUljX6mhZTboCmWTKvFake
wWCQQs+5m83Zm5oFOQyu2zcl7Y+127zrofOluMv1l5pRYESmmzndykB5ZTGBmWJm
IE3NExzLNoAjRn0v/0fC9yaPi8GCYVDxmuKYZYuYXKGUioesTOHpeu29iEVcfVLI
e1+Et89Z+Sot37r4qenXlZmLcXMu29UvC5mrckAGxynu8eB7LgfRUMDoXr+2/teg
sOUltlxbzw4wdQsh2sf+aRZZdDtFUlpIZpxkijsHsO1Rhz/q8e4kkOab5VUx6jCe
VmEcjSlsiQkYSNzyFilJhx7t14AIqLIcmW0M9086JbcFulyJdojZjov/9iP9xPZa
NVVTrlvhskA6ouRJYmtS6bp5/RRfEVMHV+rKjjU+gkWW5mE5gC3uwJWtFR/qDCjq
nbPXWgj2OOZJVQovD5ahbziAkHKSPcsx8J2dhNnF15S+/dC0LkHdBzNWbVGRnGk5
bIAhSqcG9BMu2rOmf+L4J5P3dcTSvlOnTnrfgA0RuYby/sbaMDc=
=QvgG
-----END PGP SIGNATURE-----

--2hyjIjtsn0nH3kf8--


--===============3246176708622994775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3246176708622994775==--

