Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1100C27C75
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jun 2024 14:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7Hmg0Epn6eJbFHayThbMRJcWydah5MDsY+SOwK6vyNU=; b=PSnwDltAs8wNYjVEI9AymQEbwg
	DSjgO9x3d86yE0XDfl7RXYhe/9ntbxOg4DZdcs1NHzhYXXqZAu9zihqxSTLrkSVDdYKg0mRUojkBu
	uacX9Dad668YfEv9zWZEprdbKjnyXDqtDbbtDna//QZZUfrL2w9sUvA/0zu3EOFWux5GRMUcVl9yv
	cfDm5hkzFCdhKQvsZxt7QFluNmRKW+eUD2KbG8nMP53rLZJN88E562+mjM5DTOJjXi3b5S/yhPUhL
	xoWPS3Vjq7X0nXulQDDyuLJe3enjHE+PLU5D+TGw/vVuDvGZisKN00yKauZiEcY366+EHn4mU73iG
	hJgdg/lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH2yS-00000009EO9-1YTj;
	Tue, 11 Jun 2024 14:59:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH2yO-00000009ENG-3kug
	for linux-phy@lists.infradead.org;
	Tue, 11 Jun 2024 14:59:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9105760EC7;
	Tue, 11 Jun 2024 14:59:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B931C2BD10;
	Tue, 11 Jun 2024 14:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718117982;
	bh=m0NwVcSBhPgY7nu5tONSPwoAExBx8ebvDHOrS84nijE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dlFpnu2rYajLt2Ck8YFhygKxfdNGquAdAH78BbAIqEMS4SQT0fUEbZtR8dUY56Mji
	 jzBXqMS8bmlXR8pELKQb5DUa7FUEBY+cp/xSc9RmRLFJVcPVlTVbBJMFewmmJPjcvF
	 wfadvSt3GWQVLcuMU+PyKe9ZwNKoxCgZH1xS8FQJGky/i5HFtoQS1bLnUXzL5Ef5ef
	 M+V1sAHAJDJC3bRy8oRQffzAXVfNMSiwX7r5mr8OlGYcBTqfQ7imL6JG+c7W7VY8Fk
	 1GKD77XRbgXMCRp3JC18Te9U/6rjX+A/WGeFl9EePtVI+Q4SgveBbZKeQKmZqc/ouD
	 fn9kBe6GiyP8Q==
Date: Tue, 11 Jun 2024 15:59:38 +0100
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
	linux-pm@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v3 3/6] regulator: core: Add helper for allow access to
 enable register
Message-ID: <ZmhmWrvyQiCzzeYi@finisterre.sirena.org.uk>
References: <20240611110402.58104-1-biju.das.jz@bp.renesas.com>
 <20240611110402.58104-4-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
In-Reply-To: <20240611110402.58104-4-biju.das.jz@bp.renesas.com>
X-Cookie: Your love life will be... interesting.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_075945_005809_BF360DA0 
X-CRM114-Status: GOOD (  14.40  )
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
Content-Type: multipart/mixed; boundary="===============2813752705811325833=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2813752705811325833==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g6UtxWQIHkSaqfBe"
Content-Disposition: inline


--g6UtxWQIHkSaqfBe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 11, 2024 at 12:03:59PM +0100, Biju Das wrote:
> Add a helper function that allow regulator consumers to allow low-level
> enable register access, in order to enable/disable regulator in atomic
> context.

> +To access the hardware register for enabling/disabling the regulator, use::
> +
> +	int regulator_set_hardware_enable_register(struct regulator *regulator,
> +						   bool enable);

So, it'll doubtless not be a surprise that I'm not thrilled with this -
it's basically just punching a hole straight through all the locking and
reference counting in a way that's just begging for abuse.  At the very
least we should have a check for exclusive access in there.

Also it's not sure about that name, if we were doing this it should be
more describing the effect on the regulator rather than this happening
to be done via a register write (this should also work for GPIOs...).

--g6UtxWQIHkSaqfBe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZoZloACgkQJNaLcl1U
h9AqeAf/dfRZPoWwkY3VTRIlWmJTu1FCIotm556t2q1U7O9RKVVE8Rqr2vbiAgiJ
L54w7no2cgj2rn/8O9eZeRJ7w7TbadF8YiguXjHhwF4tQfhrxUbtUyxzPxD2gHEU
aXPyVcY8vbUO+XWNkJzYfHGNx1HBBpEp686nTfldsLUTlp9y565Eknwb5/h1G7Re
5dznt8rOmJVjlMEjDt1Q42bHM4Fs6QQrMGyHWQne4fqBGmddNHD1Kyy3ic1MfMgb
CmrD5vZ6KVU0Ihd3IwRfu9yrY3Een2l9W6jor2sMcmZqq0yrx8yVgdnT/V0adlnm
Oe+gmNFp2sMfV0FotVRuPzVhNgXOoQ==
=Xoc0
-----END PGP SIGNATURE-----

--g6UtxWQIHkSaqfBe--


--===============2813752705811325833==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2813752705811325833==--

