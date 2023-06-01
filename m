Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BACB1C7EE23
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jun 2023 09:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1SeLDtfMvGu++R8mYtYW10bewwKMIcTi6H6tDHzoPqQ=; b=F5ubGOuWUxZGaVGSusOPd9+QVH
	+ZxjfdSFUAnnu6KzKWT8bPKedHLqz4BAKPEORTLlLslZ+Vunjk51cty9lwMoy7oSuKiJgVdqNAfs2
	2b5RONQ6Ozj/OtwWHEnSdUQ53qleq6OROEu3e/UbToRGInyNRfiNfQyYAxT78/0wdOo9lz7vN6Mhg
	Y7/GCWcLHed1Z1RR4Bh+pPSxnC/sogNnm4cBsgrGG1eus7/y9z73lbSttcNbpXWLsa/op45G6mqnd
	mWsCK1XtAr8OuENQkC3bpogucm/b6XCOYHwVSiBGKWoq/Papulyv5jXpSYfQSOFZ6OOw1FXvzL9ao
	fORq05Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4em7-002l3Q-1M;
	Thu, 01 Jun 2023 09:39:19 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4em4-002l1s-2n
	for linux-phy@lists.infradead.org;
	Thu, 01 Jun 2023 09:39:18 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-973bf581759so83755066b.0
        for <linux-phy@lists.infradead.org>; Thu, 01 Jun 2023 02:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685612354; x=1688204354;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rC5Mt14VowRy48GhWbY/bbPfnc3e4XQZGJKCwvTP6ko=;
        b=fmuq76LBD/BKMfC3X4c2kFRL8sTgZbczaJn52qRjd8YtoPzFDjCEUBSzpNujsGujFy
         XivSodLO+1PFuPikCZ6/WWYhw6Spa1d0HkH7WonfCbAfeUSEcGOAtwrEv5J9hWalGlEx
         VA6zd7rWZKjii/15yOj6sz3UkwI4isdyDBbSB2ZVydBC/frwV0O6gFLz8QXobXAojT5P
         lQFNhZU3tONYzX6mZDcS9g6TsvAd8XoAl39xDPdKNRtpaVp6h6bh9zxWVgrZrtxVpGfU
         fyv361XSbQfjBP9JzSkZeUWLU/hBf5Xt7vJO2PRrYK/PiWICFFWXkOT9nf9bfu6/tAj9
         lb4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685612354; x=1688204354;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rC5Mt14VowRy48GhWbY/bbPfnc3e4XQZGJKCwvTP6ko=;
        b=Mf8CRb3gdB+rhHaWMh8kesSw9ocJOIiC9iNAFap1DJGCexMn/EcF41sYOEBUzHoOgq
         Bf/x/4q+Oa/fsfwFG22JG2bBy9if/KQUuRtlX2wHKDqQt/gnaWTnXrV4RU1x3ZRkn6Gk
         Nx3zdVHeuuzke2SJKGYrfNcUEjJ1l94uZofSSzKrr33wHFZQcZjUGXPdDM8Mjj+5Xvo3
         nv5F2nuOS1FPT9/MgjxSqctosKW3kakwPT2rERAfTou865IhziuiQGFLV7vSwit62u0H
         JRiKY3/QSKvVmz12CL5K5Wv9eCJcKHc3nMXRy+tTjkQJhg44/DjJWlITmAI/n2Iciyeh
         wDSw==
X-Gm-Message-State: AC+VfDyn/Mwvl9lt4Hp47oJWGaNTHnq1+HgYz60GI77P/Dl9RB0qH1CH
	6auPvXS9ViFfkbSzF0Os3v0=
X-Google-Smtp-Source: ACHHUZ6ILEXI3QJmp4nRG4KOpkeYq8Pt7UaWqDtHvvuvoVXfwFQaWKwGPE2d8M3iV0SJByYpeyRvow==
X-Received: by 2002:a17:907:3fa8:b0:973:93d6:189f with SMTP id hr40-20020a1709073fa800b0097393d6189fmr8278145ejc.61.1685612353929;
        Thu, 01 Jun 2023 02:39:13 -0700 (PDT)
Received: from orome (p200300e41f305300f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f30:5300:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id l2-20020a056402230200b00510d110db58sm6826402eda.80.2023.06.01.02.39.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jun 2023 02:39:13 -0700 (PDT)
Date: Thu, 1 Jun 2023 11:39:11 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: jckuo@nvidia.com, vkoul@kernel.org, kishon@kernel.org,
	jonathanh@nvidia.com, nkristam@nvidia.com,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: tegra: xusb: check return value of devm_kzalloc()
Message-ID: <ZHhnP506sBQ3EGGf@orome>
References: <20230531073950.145339-1-claudiu.beznea@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20230531073950.145339-1-claudiu.beznea@microchip.com>
User-Agent: Mutt/2.2.10 (2023-03-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_023916_903646_35B773CA 
X-CRM114-Status: GOOD (  13.46  )
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
Content-Type: multipart/mixed; boundary="===============6232655741606733674=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6232655741606733674==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="SzK0EoW6aJTj4hu0"
Content-Disposition: inline


--SzK0EoW6aJTj4hu0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 31, 2023 at 10:39:50AM +0300, Claudiu Beznea wrote:
> devm_kzalloc() returns a pointer to dynamically allocated memory.
> Pointer could be NULL in case allocation fails. Check pointer validity.
> Identified with coccinelle (kmerr.cocci script).
>=20
> Fixes: f67213cee2b3 ("phy: tegra: xusb: Add usb-role-switch support")
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>=20
> Hi,
>=20
> This has been addressed using kmerr.cocci script proposed for update
> at [1].
>=20
> Thank you,
> Claudiu Beznea
>=20
> [1] https://lore.kernel.org/all/20230530074044.1603426-1-claudiu.beznea@m=
icrochip.com/
>=20
>  drivers/phy/tegra/xusb.c | 3 +++
>  1 file changed, 3 insertions(+)

Acked-by: Thierry Reding <treding@nvidia.com>

--SzK0EoW6aJTj4hu0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmR4Zz0ACgkQ3SOs138+
s6GGHBAAtshFSZ3QcyCHwyKBFbTQGF3yAnYM6G6AkNLNP6wp3gPNnFalHh5khzoz
uOWAroLAJrkmk9BLwwonPFbwdirJW7tkJzhc8Ed2wuEqpHoqnri26zXJerzUIVqZ
nRSzIqgLVLZberDqE7wtWORJe/DEvJZm3nVi0Fm9UvpUUDaQERId4dznkMz6RD8K
8Ir7AOy8UubrL3eWUO82suI986h8P7wSSF5bf99TChpzwkamiFV/HtbXUmRez/Ve
JdBpS7UyflCycZc/5toHvRMZiOBnUbeZKqtApRJ6P/ef5Yc0uEd1TcIkq5EPhNw2
ik8PO1g9Uktykvr5nJG13uUj11ESd8avT5yI/+PL7y4g/l5qWFWxtH84chbrZD+5
0NcPWcoZqtP9wMvzi347zU+nD4TVhRPU0F9ATCSYr7LbKrbmrJSpb7FZNTPpkx2b
YLSni3X+d3Q74XxhP9lS+0G1gd3G4upCdD0QwAEVAbvk5iMMVPCknzibariu5mfI
7gMZTBwynWXFV8F1NFiIhvFPU+0+u+lPys+hi6tMoP9Ly4d/unJqQxJ3MAmU4PT8
3xpMQacse1AK2qYuU6HRM8KYRC7rSZw4syOdW5Tf4w//cC89IDWKiu2w3FNQ8KSo
Hs/baYySpA5iUCFBHnMXhyQnr3hIjwdeZPD/cH15VozAKLLdPP0=
=qovl
-----END PGP SIGNATURE-----

--SzK0EoW6aJTj4hu0--


--===============6232655741606733674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6232655741606733674==--

