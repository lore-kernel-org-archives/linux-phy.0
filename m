Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56F5BFA3742
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 14:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/gGnVFJ3HvlrI3XJcmU6cw9jnMOK5MnJTuS4I+GiXMw=; b=2+FRsUx4H4uDDQzvFbKRZEO3xV
	2x6hvKmDvWotdRRDQbZT45vKApASfp6glAO4zurJL6+B6naRV3rruXL4Ujmbk1QysZVKjcTEUruZk
	rouD+rz2asGUOTZL2aOcHHHDPVv+vKjynT2hIUux1nrRLjk2WU7J6D/8K9uqY/Gil/NGOwxMJI8nb
	1SDr/y8XY5MOwo6OOKk336ultEQrbqZvMGWew6mwM+FVwoe8Gigad70cUX8Vw8JaAhxq2112mZ0x8
	9mzDMmz37dtiWinebCUA32vSJsSOSWrwyw3nCJjhNK4QceBPTuEEzHuyCdbA91iYEryDRrUDTfhQG
	JCmXNVhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQ1L-00HWkG-Mv; Fri, 28 Oct 2022 14:07:39 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooQ1I-00HWij-2Y
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 14:07:37 +0000
Received: by mail-ej1-x62a.google.com with SMTP id t25so13191377ejb.8
        for <linux-phy@lists.infradead.org>; Fri, 28 Oct 2022 07:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TWCvMt3elQQkvkQ/TKdQKZ3J9fekFt08XY7JDczxDLs=;
        b=S5eY76mlN2tFMg+4pLeThtnQhlp4ocsMO1J3iG4xW0oV/kkyPzOpnEnvV96kPcbAEX
         pbGUvnoQJIZ95APLSXS4hW6GB5gy94WKMjEToBbUpw4NokE4TqtkSCm9ACSDWfZGnNQD
         b7wVwNfYnewVRwljr++Ct92/bcHX7eKuqEDn5CnNEZE+7KkxIzNTS8UpVME4hZhTIKZm
         bzuBhN9OxJ4li3ASyX2rXrq/8f2r3EURY1gPKsL1td0mHbqjux9QNh48qlZfTruxE9sG
         bAU1D0LXvoFLKp0wN4wQ5wve7qS/mVmphAbQwyoyPxa3aEv55geRY6CSrrb0aneRY0Tl
         41iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TWCvMt3elQQkvkQ/TKdQKZ3J9fekFt08XY7JDczxDLs=;
        b=xWx65fmG6QY6hwJM1eSgA1J5E/VMsl+udspgOHChVHDTtvaLnIqXZXtt18WDP/pkAH
         JyOvKYv1lKKsUjuqzEoMj/nczBs+YTJ/FrY3LRO0tX5QZUJuN4u3bSO8JDpR7mC9pCOd
         HEyqcM5/g+8G88dvdmUoZqUWCuzNCLtGX9m5YYOpAOi3xlnBwCD/PWZ1oxs4ELLch5U9
         y2Ep57aFp9syc6xjzhxGNg0znr6UNghIFVMlJQas5FcjSjlMip+cgr1JqAiTZLgYFzM7
         2v1PCAgBPKOz4V66YnGktC2BOHyLCvXoYORNzQc68tBsByCrau4h72B/Mn0WUqL+9GEl
         FOLA==
X-Gm-Message-State: ACrzQf03JMI/owWnb2Ux4M9PI9xkIYLJxAfW8dreaVZoKfemxAyR5rXB
	T3FaUkFUXdBRgmOpSoc2nYs=
X-Google-Smtp-Source: AMsMyM7D3twQkFaMfCxUy6j9VvCERfNQOjRgLpCvU6hp4Gwe+FiZ4kg6TX2AcUjBQmTjLeWIeDMKGw==
X-Received: by 2002:a17:906:846c:b0:7a5:ccb:c174 with SMTP id hx12-20020a170906846c00b007a50ccbc174mr25997482ejc.583.1666966053263;
        Fri, 28 Oct 2022 07:07:33 -0700 (PDT)
Received: from orome (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id cs8-20020a0564020c4800b00461816beef9sm2736314edb.14.2022.10.28.07.07.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 07:07:32 -0700 (PDT)
Date: Fri, 28 Oct 2022 16:07:30 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wayne Chang <waynec@nvidia.com>, gregkh@linuxfoundation.org,
	treding@nvidia.com, heikki.krogerus@linux.intel.com,
	ajayg@nvidia.com, kishon@ti.com, vkoul@kernel.org,
	p.zabel@pengutronix.de, balbi@kernel.org, mathias.nyman@intel.com,
	jckuo@nvidia.com, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	singhanc@nvidia.com, linux-i2c@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 03/11] dt-bindings: usb: Add binding for Cypress cypd4226
 I2C driver
Message-ID: <Y1viIsL+Nxthc97j@orome>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-4-waynec@nvidia.com>
 <f8eeeebc-e635-9c97-b97b-46df38f06002@nvidia.com>
 <Y1vLoT+/dgOgrxjD@orome>
 <7a1c4943-4ae2-cde4-221b-fa972c2baab2@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <7a1c4943-4ae2-cde4-221b-fa972c2baab2@nvidia.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_070736_164669_6E50DDB9 
X-CRM114-Status: GOOD (  44.51  )
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
Content-Type: multipart/mixed; boundary="===============7598445155263455969=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7598445155263455969==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QbiyuPHHLdatsw0h"
Content-Disposition: inline


--QbiyuPHHLdatsw0h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 28, 2022 at 01:42:36PM +0100, Jon Hunter wrote:
>=20
> On 28/10/2022 13:31, Thierry Reding wrote:
> > On Wed, Oct 26, 2022 at 08:13:57AM +0100, Jon Hunter wrote:
> > >=20
> > > On 24/10/2022 08:41, Wayne Chang wrote:
> > > > add device-tree binding documentation for Cypress cypd4226 type-C
> > > > controller's I2C interface. It is a standard i2c slave with GPIO
> > > > input as IRQ interface.
> > > >=20
> > > > Signed-off-by: Wayne Chang <waynec@nvidia.com>
> > > > ---
> > > >    .../bindings/usb/cypress,cypd4226.yaml        | 86 +++++++++++++=
++++++
> > > >    1 file changed, 86 insertions(+)
> > > >    create mode 100644 Documentation/devicetree/bindings/usb/cypress=
,cypd4226.yaml
> > > >=20
> > > > diff --git a/Documentation/devicetree/bindings/usb/cypress,cypd4226=
=2Eyaml b/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> > > > new file mode 100644
> > > > index 000000000000..5ac28ab4e7a1
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/usb/cypress,cypd4226.yaml
> > > > @@ -0,0 +1,86 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/usb/cypress,cypd4226.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Cypress cypd4226 UCSI I2C Type-C Controller
> > > > +
> > > > +maintainers:
> > > > +  - Wayne Chang <waynec@nvidia.com>
> > > > +
> > > > +description: |
> > > > +  The Cypress cypd4226 UCSI I2C type-C controller is a I2C interfa=
ce type-C
> > > > +  controller.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: cypress,cypd4226
> > > > +
> > > > +  '#address-cells':
> > > > +    const: 1
> > > > +
> > > > +  '#size-cells':
> > > > +    const: 0
> > > > +
> > > > +  reg:
> > > > +    const: 0x08
> > > > +
> > > > +  interrupts:
> > > > +    maxItems: 1
> > > > +
> > > > +  cypress,firmware-build:
> > > > +    enum:
> > > > +      - nv
> > > > +      - gn
> > > > +    description: |
> > > > +      the name of the CCGx firmware built for product series.
> > > > +      should be set one of following:
> > > > +      - "nv" for the RTX product series
> > >=20
> > > Please add 'NVIDIA' so that it is 'for the NVIDIA RTX product series'
> > >=20
> > > > +      - "gn" for the Jetson product series
> > >=20
> > > Same here please add 'NVIDIA' so that it is 'for the NVIDIA Jetson pr=
oduct
> > > series'.
> > >=20
> > > Rob, any concerns about this property in general? Unfortunately, ACPI=
 choose
> > > a 16-bit type for this and used 'nv' for the RTX product. I don't fin=
d 'gn'
> > > for Jetson very descriptive but we need a way to differentiate from R=
TX.
> > >=20
> > > This is needed in the Cypress CCGX driver for the following ...
> > >=20
> > > https://lore.kernel.org/lkml/20220928150840.3804313-1-waynec@nvidia.c=
om/
> > >=20
> > > Ideally, this should have been included in this series but was sent b=
efore.
> > > We can always re-work/update the above patch even though it has been =
queued
> > > up now.
> >=20
> > The driver seems to use this 16-bit value only to compare with a
> > corresponding field in the firmware headers. How exactly we obtain this
> > value is therefore not important. However, since this 16-bit value is
> > embedded in firmware images, we also cannot substitute them with
> > something more sensible.
>=20
> I am actually wondering if this is actually embedded in any images becaus=
e I
> see it populated by the i2c-nvidia-gpu.c driver [0]. So I am wondering if=
 we
> can use PROPERTY_ENTRY_STRING() for this driver instead and have a more
> descriptive name such as 'nvidia,rtx'?

What I mean by "embedded in firmware images" is that the value read from
the property is compared to values read from a firmware blob (either one
read back from the chip or one loaded using request_firmware()). See for
example ccg_check_vendor_version() and ccg_check_fw_version().

So the way that this 16-bit number is used is to define what type of
vendor firmware we support. So this is also used to avoid trying to load
a Tegra firmware on a GPU and vice versa.

So yes, we could potentially still make the i2c-nvidia-gpu.c driver add
a "nvidia,rtx" string to make it more descriptive like DT, but then we'd
still need to somehow resolve that to the "nv" string for the assignment
to uc->fw_build.

Not sure about how that would impact the AMD bits. Another of those CCGX
UCSI devices is registered by the i2c-designware-pcidrv.c driver, but it
doesn't pass a software node. From what I can tell that simply means all
of those checks will work with fw_build =3D=3D 0x00. Primarily I think that
will cause flashing of the firmware not to be supported.

So yeah, having that string be something else (i.e. more descriptive)
and then match on that instead would definitely work. After looking at
this some more, using existing driver-matching may not work after all
because while there's ACPI matching and with this series DT matching,
the various GPU I2C instantiations are purely done in software, so they
have neither and therefore would need a secondary lookup mechanism. We
may be stuck with that ccgx,firmware-build property, but as you said it
should be possible to at least sanitize it.

Thierry

>=20
> Jon
>=20
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/drivers/i2c/busses/i2c-nvidia-gpu.c#n261
> --=20
> nvpublic

--QbiyuPHHLdatsw0h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmNb4iAACgkQ3SOs138+
s6Fb+xAAmX8j8dRwWMQ2s1lwzVNMk1Jcsa77csUwNBOti7FLrLvg8Mlvy2To7Jm8
TZ9NcUHoe1ox+EMElJpijz0qYsTGLo0tz38HGVdKOQbnASevsZ/1SoFqZebuGzb5
IqRi35yCKQa9bRdVP1i874yU4eN8HKSFbcU6p4gFIkJ3pCJtvBDbh0fF8E5z94xI
gmnDehmn7SSBDzZiyTOymRSEktbFxHJo/qutCB38Ev2C2winovtLIqMWLgnKRG86
M8dyVJE5+FePHdKH3YkcFNDQn7nvA/vEdp+9xn2uTax+Z7rLNccFW1k3eM3aYnoY
QMhnZdaYI/rf8GUpmih9jeeoNfyG8sidF2oXkRCeA94RWmyoWaoEeh5mQNOSJEq8
OooqWxiUKPlJMQZ5mksTiFTJcUYg3fRCw1gLzH9h0ojIWBuIGw8CpizTCPLSzBiS
zmNYm/vCPn6YRawDw3ngtMBGI7oK2+0lqdQNAGhAlBno7TOFKHqiNCdg32gykHYi
jmBlK3gGuCvHCJzoZl9YGesXLdcHw1xeqpl70suWxmRwcXsPfFMnuWT6lI+zvSqi
j2JpsXltKEdhbmNsy6v/HzqL5KMZAaG36oxuphUXf4NIaSvtDDgx1/VQbABjA3Lw
z5g+HW/ArQqDwfBnasDZFURWw1czK8LcD/rse4hQt+zWeZES9Ow=
=S/4p
-----END PGP SIGNATURE-----

--QbiyuPHHLdatsw0h--


--===============7598445155263455969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7598445155263455969==--

