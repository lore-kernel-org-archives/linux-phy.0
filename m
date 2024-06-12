Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD9CDC27C53
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 15:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ggg0a7tEJnSMb/sxCWPstKLLajBSHWFx738DS6hKQeg=; b=oTpqjRYY39ej7yY1i/rwKyBUZA
	G4ZOyILH8h76UG0dhFb4IaVgz/o8Hlz6v3J7Nfk6HC/T0/nwNR4B9LW7KdzvpDox/SqNCbiIIopIH
	HHxPQ57ZgGYq6PXvVbp2ozvqhtAcerbuSveJ+CL6rtT4EhuALP5giBf6F892yPEnbxZZJlZL36Rrv
	w12hXzJ6h/SuMpNQEk4tQP7Y7Y1xgpAMIRGEw1TNfgEn9Ayloc3n4EmzT88grljBrjDuS/cOW1/Eg
	umJZmkZfpoTTPfbm88YBoq56hQ9lMrbm85V5JXFHlg7+ff6UlTBimkaqSKcr1lY6jw8hngkjF+HgY
	IjWpcYYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQFE-0000000DF08-0mrs;
	Wed, 12 Jun 2024 15:50:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQFA-0000000DEz4-2O88
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 15:50:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EF8D9614D8;
	Wed, 12 Jun 2024 15:50:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 411AAC116B1;
	Wed, 12 Jun 2024 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718207434;
	bh=cKWhkSC1x8cZV8isG/jgbKgy/ctUabseIFqwF1XkN8w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o5Y3MI/HC7SzVrtHukUtWRDtUxhnHG8HARTOcOJiu2NtZA+/LoS+RnWQFs35D60zg
	 KEUvBb49BscZODsl0eelcYB+Di1EN9ZwwEglhlYPhwmcJXxKl3UQO/mKp+5DMI/hPQ
	 hVauIyHIg/irkZE92LiEutqknF/A3pbwxfdnT8w19cTYB6KZELFIRcV6+xy2ZykPO+
	 /ur0JSfTto17hiKaYAT98XOf0ff/9FsdPUucMR8zfAgWojhyZYOJJeAzitSzAodaJW
	 Nf7qI4c7Nhwj0JCi8eYatBXCRTI7tqgHCj1NL1NHuhOTJK+gtFUqKCokG2MTT9np+/
	 LViHhlsErOKwA==
Date: Wed, 12 Jun 2024 16:50:24 +0100
From: Mark Brown <broonie@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>,
	"linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	"biju.das.au" <biju.das.au@gmail.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v3 3/6] regulator: core: Add helper for allow access to
 enable register
Message-ID: <ZmnDwKUlXCWFJ8W0@finisterre.sirena.org.uk>
References: <20240611110402.58104-1-biju.das.jz@bp.renesas.com>
 <20240611110402.58104-4-biju.das.jz@bp.renesas.com>
 <ZmhmWrvyQiCzzeYi@finisterre.sirena.org.uk>
 <TY3PR01MB11346B807820F681E7EEF7A6786C72@TY3PR01MB11346.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <TY3PR01MB11346B807820F681E7EEF7A6786C72@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-Cookie: Your love life will be... interesting.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_085036_967682_D1146567 
X-CRM114-Status: GOOD (  17.37  )
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
Content-Type: multipart/mixed; boundary="===============0191166024816482589=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0191166024816482589==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cQUPfIPcfzsmHwJv"
Content-Disposition: inline


--cQUPfIPcfzsmHwJv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 11, 2024 at 04:28:37PM +0000, Biju Das wrote:

> > So, it'll doubtless not be a surprise that I'm not thrilled with this - it's basically just
> > punching a hole straight through all the locking and reference counting in a way that's just
> > begging for abuse.  At the very least we should have a check for exclusive access in there.

> Do you mean exclusive access by means of spinlock to avoid race between enable/disable()?
> If that is the case

No, I mean regulator_get_exclusive(), this clearly can't work if there's
more than one consumer.

> > Also it's not sure about that name, if we were doing this it should be more describing the effect

> What about the name regulator_hardware_enable() to make it generic??

Possibly.

> > on the regulator rather than this happening to be done via a register write (this should also work
> > for GPIOs...).

> Do you mean to make it generic, so that it works for both regmap based enable/disable() as well as
> gpio based enable()/disable()??

That too, I was mainly thinking about the name here though.

--cQUPfIPcfzsmHwJv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZpw78ACgkQJNaLcl1U
h9BgqAf/VRo1z8HnprjKJzamhqdpLugyr1xSf2Gw8i7hZJlRo+UcEZBJ0FA9qwY6
n1bmhPT7OL1n3j+NI8eEoQVnIRlz4yucjUrwSgqIfl8bIFrMrxFKSS+/eV2J0CxD
SzY4u6DqQF4jLgZ1TURMz3GyiCZaOeL0o7bYbPLo75uGAPD5n23gfw5b+0akgMaN
kQ8s9Udu6fXsn3bUrbEKn7ekxv7cyRSvfJp2/GsNXMi3jfWwwS5bwhJSBrU0p2N7
0Rv+9m3KzZoq0SKRrQEQTWKMTm9jpGnILdPhEv4bpFeikEjvGEKL3hMNu7HaHy+j
M4S6xFkbfUygjcUPcJg+LQJ0s0rcgA==
=Fwf/
-----END PGP SIGNATURE-----

--cQUPfIPcfzsmHwJv--


--===============0191166024816482589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0191166024816482589==--

