Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3B61FA3740
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 12:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3aftgbXPbbtuFk5flusorYhWD3XBQx7szLf92Ogm9E8=; b=PyyeJvrRE5QNbqhTB36/0EMLEV
	yJrHFt5Zgwble6e4+++5MNZgTQwLSWUxc/cRXUgwxRxEc1kTDNxw8uJKru3EfrQCxByCQI7dCH99W
	05UZDVmnUSd5GxJL5nE/mkyRI6aWbbNPgeOz48nRmXuglurQomm/MiiFDgiGqOqdS+iyk/kdatzj/
	pJ7/AfH9IPyL3jH1ZgDewpDHCWS+T4e067gRzNnu2sKUcAnxrSs/9MnbhGFkOh4+YdY5WbTBprWa+
	t+M1d44ycKRBdE7/Pi75tu7rZ7P5lSu/ucwoO/6K+45pPXkWtL4ZpaQD99K01hK5Z/k9rJzZ2uNDk
	iJPWrUOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOWR-00H78n-5t; Fri, 28 Oct 2022 12:31:39 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOWO-00H789-2x
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 12:31:37 +0000
Received: by mail-ed1-x535.google.com with SMTP id m15so7602518edb.13
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 05:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N+hgVsFfIHOn2i92zfvFuxronhUcGA0Jyj434tyBrgU=;
        b=QiRNzg7+FZFB6qrZ5IwQOaSWRlbnwey0IIWL0aK0meEYRhb+D20T+FO65mjI6pFvBZ
         vZ+41PJz6j+vBQ+UfqV3QIxPlB4BGYIceAjIQfRi2DgXozx/dGPydJZTb6XZ+SEQCNNV
         3ESHmEbJmYNahV1n6oDm2+DdcsxvJSTrwUCERXwvopR4Au+FASHHVk9NHBLmhllqnvCS
         kCWZsa3Gjl78Et7VRmVeIRl68wxBL0mYIi7t9rveFn8rnvYNNqV7W2PV/sMu0ai44uyw
         LhPPefTq/BiJGzQfmyfS3WWn7nSFiN9uo4MJY+IoemZdVL5i+hYCpBCELTMp4LUdm6d8
         Hg7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N+hgVsFfIHOn2i92zfvFuxronhUcGA0Jyj434tyBrgU=;
        b=D7iwWXklnnjlCpYt6O7CwcG7sAYhTNklfuHnjsTaTas5I8QZS5wTbUhmN5e36t76kf
         es8HKhymvbvMvqFGJKgVKP6YRqMSunruA/zhgb1UTJsL8HXfX84M6OOBn5wjJJ33yD9S
         +mecOKSHxrtJFMh+jQW3BmX2M2rUZPn+G5I2M4L4UeXKREHtG0r0rX6ZX412+g8jRV6K
         fjC+RWGbTBKufTbYjpGCSgWuWHU2VCCudg/fto8MKZ24l/8hxxC08JfI92Wsq6wvU/5Q
         kirV/394DEvBGBw49gISFKsMcuvEeZsYStK7t6a1K9eHrQo+117gM6cQ7ljbM87mlHih
         bPTg==
X-Gm-Message-State: ACrzQf1eHUtrzq6b3wMMFAmYQqFPoylpGZf4bHV3IMzKdFa4oUFcwQPb
	DrgTnhXNX0gYEWz8Q0FOwfQ=
X-Google-Smtp-Source: AMsMyM6iCHrDVGRWRro91KRlEzXgqCGqlUwxT/cAIMfxY0kwsfsJaBK/myV34+ft4dKYZAo+Ren9dQ==
X-Received: by 2002:a05:6402:4148:b0:440:cb9f:d10f with SMTP id x8-20020a056402414800b00440cb9fd10fmr50292473eda.77.1666960293282;
        Fri, 28 Oct 2022 05:31:33 -0700 (PDT)
Received: from orome (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id r19-20020aa7cfd3000000b004611c230bd0sm2639373edy.37.2022.10.28.05.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 05:31:32 -0700 (PDT)
Date: Fri, 28 Oct 2022 14:31:29 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Wayne Chang <waynec@nvidia.com>, gregkh@linuxfoundation.org,
	treding@nvidia.com, heikki.krogerus@linux.intel.com,
	ajayg@nvidia.com, kishon@ti.com, vkoul@kernel.org,
	p.zabel@pengutronix.de, balbi@kernel.org, mathias.nyman@intel.com,
	jckuo@nvidia.com, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	singhanc@nvidia.com, linux-i2c@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 03/11] dt-bindings: usb: Add binding for Cypress cypd4226
 I2C driver
Message-ID: <Y1vLoT+/dgOgrxjD@orome>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-4-waynec@nvidia.com>
 <f8eeeebc-e635-9c97-b97b-46df38f06002@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <f8eeeebc-e635-9c97-b97b-46df38f06002@nvidia.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_053136_173939_7F01FC15 
X-CRM114-Status: GOOD (  32.80  )
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
Content-Type: multipart/mixed; boundary="===============3647416038811234736=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============3647416038811234736==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="h3NQArSPnjsazpQi"
Content-Disposition: inline


--h3NQArSPnjsazpQi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 26, 2022 at 08:13:57AM +0100, Jon Hunter wrote:
>=20
> On 24/10/2022 08:41, Wayne Chang wrote:
> > add device-tree binding documentation for Cypress cypd4226 type-C
> > controller's I2C interface. It is a standard i2c slave with GPIO
> > input as IRQ interface.
> >=20
> > Signed-off-by: Wayne Chang <waynec@nvidia.com>
> > ---
> >   .../bindings/usb/cypress,cypd4226.yaml        | 86 +++++++++++++++++++
> >   1 file changed, 86 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/usb/cypress,cypd=
4226.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/usb/cypress,cypd4226.yam=
l b/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> > new file mode 100644
> > index 000000000000..5ac28ab4e7a1
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> > @@ -0,0 +1,86 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/usb/cypress,cypd4226.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Cypress cypd4226 UCSI I2C Type-C Controller
> > +
> > +maintainers:
> > +  - Wayne Chang <waynec@nvidia.com>
> > +
> > +description: |
> > +  The Cypress cypd4226 UCSI I2C type-C controller is a I2C interface t=
ype-C
> > +  controller.
> > +
> > +properties:
> > +  compatible:
> > +    const: cypress,cypd4226
> > +
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
> > +
> > +  reg:
> > +    const: 0x08
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  cypress,firmware-build:
> > +    enum:
> > +      - nv
> > +      - gn
> > +    description: |
> > +      the name of the CCGx firmware built for product series.
> > +      should be set one of following:
> > +      - "nv" for the RTX product series
>=20
> Please add 'NVIDIA' so that it is 'for the NVIDIA RTX product series'
>=20
> > +      - "gn" for the Jetson product series
>=20
> Same here please add 'NVIDIA' so that it is 'for the NVIDIA Jetson product
> series'.
>=20
> Rob, any concerns about this property in general? Unfortunately, ACPI cho=
ose
> a 16-bit type for this and used 'nv' for the RTX product. I don't find 'g=
n'
> for Jetson very descriptive but we need a way to differentiate from RTX.
>=20
> This is needed in the Cypress CCGX driver for the following ...
>=20
> https://lore.kernel.org/lkml/20220928150840.3804313-1-waynec@nvidia.com/
>=20
> Ideally, this should have been included in this series but was sent befor=
e.
> We can always re-work/update the above patch even though it has been queu=
ed
> up now.

The driver seems to use this 16-bit value only to compare with a
corresponding field in the firmware headers. How exactly we obtain this
value is therefore not important. However, since this 16-bit value is
embedded in firmware images, we also cannot substitute them with
something more sensible.

However, I'm also a little confused as to the meaning of the property.
Looking at the driver, the fw_build field is used to check for
"supported vendors". "nv" and "gn" are clearly the same vendor (NVIDIA),
so that's at least not 100% accurate. The DT bindings say that this
denotes the product series, which seems to be more in line with how the
driver uses it.

The driver also uses it to implement changes in behavior across
different variants, which is something that we would typically describe
using compatible strings. So I wonder if we should, at least for device
tree, switch to using different compatible strings rather than this
separate matching mechanism. We could then associate a "product series"
with the compatible string rather than having this extra field.

There's also an argument to be made for keeping the interface the same
between ACPI and DT.

Rob, Krzysztof?

Thierry

--h3NQArSPnjsazpQi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmNby54ACgkQ3SOs138+
s6E4fg/3R0pKH9akh9kvP2t0sZWoPkiERl9cABlNizWtx2cy0gI7OGgZ89iorCa0
0vJV2G1eOEBkuCCEOd+L8X9C3QaIZV/MF1l1dwnaiZBagtCw6UNE+WkAN+I/ifBx
ISyjta7Mz94FVzG8lMK+IaVEewvLMXOM4jm32BCtqgveWe6g3FBscC1ugu0po5iJ
kMDQcrBuaqoZ2gAK1NJdw1vBR2XMfKzwUTS2GcugLUl2ZmzHRGiF8T5+UpagY7Pv
otwtss8jKnINh8VS7WFGooMMQrB/0C6PnPSqnCf2R7yi/0gFq9wtJ6arBwIkKTI/
t3XhAN5Fh86GFBCHMbPbT2EO7uC/71jtaaHwXFH3fiqKh91uqDnR1BgvR4bJEUNa
Xs9LXoVkmJKXro1/3dgr3e6EhwB+mBTRA8WLVS4poR2CAI33ajHzjcvLpnZyltvL
CeZJF2OfawWMdUWJTcMX23K2xh93q7e5vkveceNX2y15+yV066iOiI9P7GPVKOoJ
8zbLfOJq6Ds5bW+4FhY81A9R9ib24whF3TNj5XJUy8B1YAjxVdETjxXe4kMnkut6
4/4klVkO+koS4zU0MwZdg5lL6ZfLbHLQS8okQvtnOEbXsCSKq/aTB4jr0riCyw9o
zVH7RBtyfYVdaPbItBeVbJPxMxcL9Ex0M/w8LUnbLXD8JZdIAw==
=Cf+J
-----END PGP SIGNATURE-----

--h3NQArSPnjsazpQi--


--===============3647416038811234736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============3647416038811234736==--

