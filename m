Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F35FC5321E
	for <linux-phy@archiver.kernel.org>; Mon, 26 Aug 2024 17:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DfZA2o8jwz6DqK1q4DAtnJxdNUlCr4ozKSDYg0v2vjQ=; b=S6ebCGFffEEF20rXAEMc6kCm31
	+JYfLcszObowx7WWj8k94WUCqJTPidi1Boy1UydPaNFVe+VF6TpDvYG53BTrvWLiHjJfAPM4QBqgr
	P0nFVenF0RBNPbJRPvnantXRZYOROk4lxbhAlwvkL/dnOYibwT88jOwOTn9a4FQW3PXov4NquShlx
	BTcltGslyb7B0pTCxd8OMdoV7lvC/9zvi4gEpM+gLQQ8uLyMOn54jzoCF7IjFctRm3uWfY6642vQ6
	NorJkmRhH/IvhDoTrcJQwziSpnOVisvremjCnkAVR1QI4FwXm5kR9tV1wK1zKuIdrQ69QIIxRqzIh
	UoGEaZFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidEH-000000088Go-1TIQ;
	Mon, 26 Aug 2024 17:10:09 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidDS-0000000887z-1tyM;
	Mon, 26 Aug 2024 17:09:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4B27BA40414;
	Mon, 26 Aug 2024 17:09:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E69ABC5828E;
	Mon, 26 Aug 2024 17:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724692156;
	bh=o0yrJMcWN9NhQiyL6wLf2W3XPIcdo7ahAbqDUogj2kI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e+NKdVm+js++0+tUNii5X3zd86+JbZqnR5lwn7PRQdfmSWAuf/jPFpLfK/nDRPBV1
	 QuL866WhBf2qaa5M3S5LiUSm9VEKJhEyUUISkLIB7FhTT7Fk4ZYRATlqR/cVOnH2Ex
	 imv3IwC9Zws7uJhkg5ykDa4tRxRJmzMzKdM60lZkfARGazZdpy9hWplHoC7cGAhYaG
	 MZjVU3GcCf8a+kZwmG1bMiJm4QbADmyS3LD/ZtBF9wO89s9/jVbhuD9LrO7FWIAiA3
	 v69Q1qpAVOFc1hARm/tmwKmLSPg4HpoPbS+UvgU340zSSdzKEH3+IPqUmUA2tQeeT1
	 X2vFCbRQ83fUw==
Date: Mon, 26 Aug 2024 18:09:09 +0100
From: Conor Dooley <conor@kernel.org>
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	gregkh@linuxfoundation.org, mturquette@baylibre.com,
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 02/16] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add
 #reset-cells for RZ/G3S
Message-ID: <20240826-daycare-freewill-c0e1400bf255@spud>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
 <20240822-vanilla-enigmatic-f0b05ecca4b6@spud>
 <0d8b1322-cf15-4ed9-b958-06516bbb64c7@tuxon.dev>
 <20240823-plywood-unfixed-d8d8a2d93f14@spud>
 <5eae2ddb-2a7b-4c1d-a7f7-41fb39058de1@tuxon.dev>
 <20240823-dilute-juggle-7e2d43b8b630@spud>
 <7b16791b-0d7b-49a1-82aa-c4db99ff2bfd@tuxon.dev>
MIME-Version: 1.0
In-Reply-To: <7b16791b-0d7b-49a1-82aa-c4db99ff2bfd@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_100918_656076_D2643772 
X-CRM114-Status: GOOD (  32.76  )
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
Content-Type: multipart/mixed; boundary="===============5984835091111749153=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5984835091111749153==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kphp1gQZZmvGGz7y"
Content-Disposition: inline


--kphp1gQZZmvGGz7y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 26, 2024 at 01:15:43PM +0300, claudiu beznea wrote:
>=20
>=20
> On 23.08.2024 19:33, Conor Dooley wrote:
> > On Fri, Aug 23, 2024 at 07:26:42PM +0300, claudiu beznea wrote:
> >> On 23.08.2024 19:18, Conor Dooley wrote:
> >>> On Fri, Aug 23, 2024 at 10:54:06AM +0300, claudiu beznea wrote:
> >>>> Hi, Conor,
> >>>>
> >>>> On 22.08.2024 19:42, Conor Dooley wrote:
> >>>>> On Thu, Aug 22, 2024 at 06:27:47PM +0300, Claudiu wrote:
> >>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>>>>
> >>>>>> The RZ/G3S System controller has registers to control signals that=
 need
> >>>>>> to be de-asserted/asserted before/after different SoC areas are po=
wer
> >>>>>> on/off. This signals are implemented as reset signals. For this do=
cument
> >>>>>> the #reset-cells property.
> >>>>>>
> >>>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>>>> ---
> >>>>>>  .../bindings/soc/renesas/renesas,rzg2l-sysc.yaml | 16 +++++++++++=
+++++
> >>>>>>  1 file changed, 16 insertions(+)
> >>>>>>
> >>>>>> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas=
,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rz=
g2l-sysc.yaml
> >>>>>> index 4386b2c3fa4d..6b0bb34485d9 100644
> >>>>>> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-=
sysc.yaml
> >>>>>> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-=
sysc.yaml
> >>>>>> @@ -42,12 +42,28 @@ properties:
> >>>>>>        - const: cm33stbyr_int
> >>>>>>        - const: ca55_deny
> >>>>>> =20
> >>>>>> +  "#reset-cells":
> >>>>>> +    const: 1
> >>>>>> +
> >>>>>>  required:
> >>>>>>    - compatible
> >>>>>>    - reg
> >>>>>> =20
> >>>>>>  additionalProperties: false
> >>>>>> =20
> >>>>>> +allOf:
> >>>>>> +  - if:
> >>>>>> +      properties:
> >>>>>> +        compatible:
> >>>>>> +          contains:
> >>>>>> +            const: renesas,r9a08g045-sysc
> >>>>>> +    then:
> >>>>>> +      required:
> >>>>>> +        - "#reset-cells"
> >>>>>
> >>>>> Given this is new required property on an existing platform, I'd ex=
pect
> >>>>> some mention of why it used to be okay to not have this but is now
> >>>>> required. Did firmware or a bootloader stage take things out of res=
et?
> >>>>
> >>>> On previous SoCs the SYS controller has no support for controlling t=
he
> >>>> signals going to different peripherals (USB, PCIE in case of RZ/G3S).
> >>>> I'll add a note about this on next version.
> >>>
> >>> My initial thought here wasn't about previous SoCs though, it was
> >>> because you didn't add the compatible in this series for /this/ SoC.
> >>
> >> RZ/G3S compatible is already present in this file:
> >> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tre=
e/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml#n26
> >=20
> > I know, first thing I did when I read the original patch was open the
> > file ;)
> > I don't care about the old SoCs, cos you're not applying the property to
> > them, so what's changed between SoCs isn't really relevant. It's a ment=
ion
> > of why, on this SoC, it is safe to add new required properties that I w=
ant.
>=20
>=20
> >=20
> > AFAIU the answer is that no consumer of the resets existed before, so
>=20
> That's true.
>=20
> > there's not some special state there, and I am guessing that the new
> > sysc driver you're adding isn't going to fail to probe if there are no
> > resets,=20
>=20
> That's true.
>=20
> it just won't register a reset controller?
>=20
> It will register it but,
>=20
> the new sysc driver is going to probe only for this SoC (RZ/G3S). On RZ/G=
3S
> we have 2 resets. These well be registered unconditionally, currently, on=
ly
> for RZ/G3S. If there will be no DT users for it then it should be no
> problem, AFAICT.

Okay, sounds it doesn't break for existing devicetrees.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--kphp1gQZZmvGGz7y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsy2tQAKCRB4tDGHoIJi
0rV7AP9DZ2q3xfYMx00ty17Bs3eDE/3N2vWVqh51vuQzlmHBaQD+MSrwIUvtdEhg
jiaBBICMFZmTjei0JYXu91UpMiCd9AM=
=MJwd
-----END PGP SIGNATURE-----

--kphp1gQZZmvGGz7y--


--===============5984835091111749153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5984835091111749153==--

