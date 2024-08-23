Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDEF9C531DC
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 16:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e7+RlSMUEMXycAs2dBzmyZ812dyZGVqa6sgQu9SWIJ8=; b=NBPbY9ze/LST2TOW7LF0CNzSa3
	PjsXe111TU18x4gFHPjeM3swN1khW8KUFNUmcVxyI3zckxF/mNq9/54dpgMZ/+wKP1J6wHtpRS5Vm
	o2VN/nFl1cJHKrGsENoO3zjvapt1+hhsswWqmoXUcdc2KNeTxogrFb+EnxD8UQu3ljwJd2WzeQKqe
	IijidXL46RLhUlhDytbgWSA0BpgLTst+bKPE0Ovjv309QIbUSSQOAJB7D4jZ6ZkYUa9ya9gz5K6zh
	JlP+zuClaLaE8sTWm0LaS3N6TPpvLFc1N+BPkmgAbQJNCyTmKZabAUz7f0hzEjPQ6fJShQ9NiEbyU
	KL/bME8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shXF8-0000000HaiV-2Hgv;
	Fri, 23 Aug 2024 16:34:30 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shXEM-0000000Haci-1er3;
	Fri, 23 Aug 2024 16:33:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6C533CE11AD;
	Fri, 23 Aug 2024 16:33:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 277BAC32786;
	Fri, 23 Aug 2024 16:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724430819;
	bh=WSH4rUm+bcwJjBbvm5rtjbFA5J4F0JTq05nNX35iUV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sYTG5RegZzLko0cKmECk+1jIcHjw7gFO2WvdCtHif+pORMKYzT8tC9WzFlKs1FlaN
	 UwhG0vqVsJm7sGX8DKRpyucDaJxJibDXg55bauuigXDLMK3ML6xMWKgZRjbhXttZcv
	 xmUQ4ebQSXFJsM1QD/dhLALw0CQY+sSFNE+0KCNN/za2Zpr3+KK4gZ9sD6jbeIWrj5
	 TmWJRNi6/SofZ76q6Scy3B1nI9WQFhAIgw07UM6eYQNuHu4I+IdeRL56g3D7IAEnmD
	 kytHd15OE9JXfOsZhgrjEfbHAL5rngqSfm9p10rLt6lvyybNcC2EF4gC4XlwGh2X3o
	 ZMGkHbIvJXo+A==
Date: Fri, 23 Aug 2024 17:33:33 +0100
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
Message-ID: <20240823-dilute-juggle-7e2d43b8b630@spud>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
 <20240822-vanilla-enigmatic-f0b05ecca4b6@spud>
 <0d8b1322-cf15-4ed9-b958-06516bbb64c7@tuxon.dev>
 <20240823-plywood-unfixed-d8d8a2d93f14@spud>
 <5eae2ddb-2a7b-4c1d-a7f7-41fb39058de1@tuxon.dev>
MIME-Version: 1.0
In-Reply-To: <5eae2ddb-2a7b-4c1d-a7f7-41fb39058de1@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_093342_807974_8CA50198 
X-CRM114-Status: GOOD (  27.20  )
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
Content-Type: multipart/mixed; boundary="===============0583567915516290782=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0583567915516290782==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n5mdGyWbSuHiQTuz"
Content-Disposition: inline


--n5mdGyWbSuHiQTuz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 23, 2024 at 07:26:42PM +0300, claudiu beznea wrote:
> On 23.08.2024 19:18, Conor Dooley wrote:
> > On Fri, Aug 23, 2024 at 10:54:06AM +0300, claudiu beznea wrote:
> >> Hi, Conor,
> >>
> >> On 22.08.2024 19:42, Conor Dooley wrote:
> >>> On Thu, Aug 22, 2024 at 06:27:47PM +0300, Claudiu wrote:
> >>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>>
> >>>> The RZ/G3S System controller has registers to control signals that n=
eed
> >>>> to be de-asserted/asserted before/after different SoC areas are power
> >>>> on/off. This signals are implemented as reset signals. For this docu=
ment
> >>>> the #reset-cells property.
> >>>>
> >>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >>>> ---
> >>>>  .../bindings/soc/renesas/renesas,rzg2l-sysc.yaml | 16 +++++++++++++=
+++
> >>>>  1 file changed, 16 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,r=
zg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2=
l-sysc.yaml
> >>>> index 4386b2c3fa4d..6b0bb34485d9 100644
> >>>> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sy=
sc.yaml
> >>>> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sy=
sc.yaml
> >>>> @@ -42,12 +42,28 @@ properties:
> >>>>        - const: cm33stbyr_int
> >>>>        - const: ca55_deny
> >>>> =20
> >>>> +  "#reset-cells":
> >>>> +    const: 1
> >>>> +
> >>>>  required:
> >>>>    - compatible
> >>>>    - reg
> >>>> =20
> >>>>  additionalProperties: false
> >>>> =20
> >>>> +allOf:
> >>>> +  - if:
> >>>> +      properties:
> >>>> +        compatible:
> >>>> +          contains:
> >>>> +            const: renesas,r9a08g045-sysc
> >>>> +    then:
> >>>> +      required:
> >>>> +        - "#reset-cells"
> >>>
> >>> Given this is new required property on an existing platform, I'd expe=
ct
> >>> some mention of why it used to be okay to not have this but is now
> >>> required. Did firmware or a bootloader stage take things out of reset?
> >>
> >> On previous SoCs the SYS controller has no support for controlling the
> >> signals going to different peripherals (USB, PCIE in case of RZ/G3S).
> >> I'll add a note about this on next version.
> >=20
> > My initial thought here wasn't about previous SoCs though, it was
> > because you didn't add the compatible in this series for /this/ SoC.
>=20
> RZ/G3S compatible is already present in this file:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml#n26

I know, first thing I did when I read the original patch was open the
file ;)
I don't care about the old SoCs, cos you're not applying the property to
them, so what's changed between SoCs isn't really relevant. It's a mention
of why, on this SoC, it is safe to add new required properties that I want.

AFAIU the answer is that no consumer of the resets existed before, so
there's not some special state there, and I am guessing that the new
sysc driver you're adding isn't going to fail to probe if there are no
resets, it just won't register a reset controller? Which is fine, cos all
devicetrees that have the new peripherals will have #reset-cells etc.

> > What's worth noting isn't about the prior SoCs, it is about what makes
> > it okay for this one.

--n5mdGyWbSuHiQTuz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsi53AAKCRB4tDGHoIJi
0oJNAP92c9ehJZq5fmnv1qleJEN3MobM8LhjI5S5pogRzACmrgD8C8AbjitXRcYG
U53c5w0n+oi1+4Eu53GCqNNU/LSCmgc=
=GFYM
-----END PGP SIGNATURE-----

--n5mdGyWbSuHiQTuz--


--===============0583567915516290782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0583567915516290782==--

