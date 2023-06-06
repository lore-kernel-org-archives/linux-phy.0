Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0B7EC77B7A
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jun 2023 12:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gclezEVefoZMrJGDIhEIw9OwiCmZBXQQlm1oRIKGwzk=; b=xJ10xse8476Fq7OYSqnF50d53X
	H0sXayPEveb5CnAS+0VsODVQko1AZfHq63kj+mgM252XItwxg/Xw9TLtglf3+ZSC+3nfd8KeKsT87
	JTWVAUuZrg8IGvq5ZPupMUv3Vwz+TAaY1PgSICMw9uNyX7Cofbd1LVkv2+LGGIhMXRce17cw6ZWNq
	+kEjH7WAmYO/0jokVs55YllOl3PTDQkpEUchosTqFpoHKd43PZcfdV/JETu7ger8iY2Qr9XaGuzl3
	xR0ZECeuQiIo9LJ8WjFlSCI5t8oxj6EQHUQrAIhyvLlLjPBudnj+9Rf6ySXAxoHQuaHvqQuZ8yjaT
	IIHRMUMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Vut-001fZO-1M;
	Tue, 06 Jun 2023 12:36:03 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Vur-001fX5-06
	for linux-phy@lists.infradead.org;
	Tue, 06 Jun 2023 12:36:02 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-97460240863so750335966b.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Jun 2023 05:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686054956; x=1688646956;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fDFqFlixqyPP3yOtm62pTXCk1c+zCqOZPFMFr0y6lPk=;
        b=RcpmWUV2QzYfqN9MDtkblWZQ7UK/At7xh+UmusYkkTEoakieQcSqdyhitNeoPxLT8l
         CtSUIg6DDbJgt1lXIphlDw1JZjiALsKIfxvXgC6fMTgU+iD2AZPj96yq9qgpsEB0BypZ
         WOjRsy4Sil/UnsewAWfwhFWhIkZHlA0tRUGEn3EI/UfmfSdVPF568Gk9otuc2RfnmcPj
         tAh/A51KkPRy+cVgHNwibLzWSqe+/ai5FwFNHYYiJXWaOcrq8omlpH87nAfH0/O804Gj
         tbuFgcnBPyKKduNUDhadN/84Ksq6LnmfNtGaHPlt02foprHRQYv/vfiP9S0csAmdfL60
         +nVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686054956; x=1688646956;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fDFqFlixqyPP3yOtm62pTXCk1c+zCqOZPFMFr0y6lPk=;
        b=G4RpPIgigTogzAjb+zBuzEnEtRbB6LwBOon8Sj+6CjsBTTTv/ob/jV3Kx5gRu97l0l
         t08gzcB96zfyhjkijZUgfIEi7niFzJK/O2ZR9zTGt8CHFXApuskwGhcWlV6211RVTgpn
         FbLHyUM3JyouKJmPqoC3fd9rZKydWfA9O9Fj8v59F7PdnAPLWn0prabG7vBpWAkgWfgE
         XR3xNrxu0vCmqVsr7YaYBWHqg3yNEXYRw+dBpOLz5DIeN53WcJ4R4Qt21nx59K5qJ2Oj
         0V6ZIBE+N5M7zo2FCNsC69kWaXb5MySHGJ4IQuLYcfoGsEYQ2TF/qpQES5xTi3PwlWW/
         xnAg==
X-Gm-Message-State: AC+VfDxYcpQLF2fcnsVYGvvsGJ6okUA34mF3osHCTpBmjBiyEfKPW8cv
	LCTqNWy3K6kXOcdlDN0efHE=
X-Google-Smtp-Source: ACHHUZ6stKm1h9XwolResZGNvz8CgkwvfkQ1MhnG+DJKzMAqJ59L+8dn17Ysloj/ltEFM+81ivQejA==
X-Received: by 2002:a17:907:8a1e:b0:973:e034:fd47 with SMTP id sc30-20020a1709078a1e00b00973e034fd47mr2656250ejc.29.1686054956099;
        Tue, 06 Jun 2023 05:35:56 -0700 (PDT)
Received: from orome (p200300e41f305300f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f30:5300:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id c10-20020a1709060fca00b00965a4350411sm5501730ejk.9.2023.06.06.05.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 05:35:55 -0700 (PDT)
Date: Tue, 6 Jun 2023 14:35:54 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Haotien Hsu <haotienh@nvidia.com>
Cc: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, Wayne Chang <waynec@nvidia.com>,
	EJ Hsu <ejh@nvidia.com>
Subject: Re: [PATCH v2] phy: tegra: xusb: Fix use-after-free issue
Message-ID: <ZH8oKiteNGxYmw9l@orome>
References: <20230508100320.345673-1-haotienh@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20230508100320.345673-1-haotienh@nvidia.com>
User-Agent: Mutt/2.2.10 (2023-03-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_053601_067994_34E3D096 
X-CRM114-Status: GOOD (  14.37  )
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
Content-Type: multipart/mixed; boundary="===============0413545016331226567=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0413545016331226567==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vfMTC1L5xpBYeOiz"
Content-Disposition: inline


--vfMTC1L5xpBYeOiz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 08, 2023 at 06:03:20PM +0800, Haotien Hsu wrote:
> From: EJ Hsu <ejh@nvidia.com>
>=20
> For the dual-role port, it will assign the phy dev to usb-phy dev and
> use the port dev driver as the dev driver of usb-phy.
>=20
> When we try to destroy the port dev, it will destroy its dev driver
> as well. But we did not remove the reference from usb-phy dev. This
> might cause the use-after-free issue in KASAN.
>=20
> Fixes: e8f7d2f409a1 ("phy: tegra: xusb: Add usb-phy support")
> Cc: stable@vger.kernel.org
>=20
> Signed-off-by: EJ Hsu <ejh@nvidia.com>
> Signed-off-by: Haotien Hsu <haotienh@nvidia.com>
> ---
> V1 -> V2: Remove extra movements to clarify the change
> ---
>  drivers/phy/tegra/xusb.c | 1 +
>  1 file changed, 1 insertion(+)

Haotien,

I had already given an Acked-by on v1. Typically you should add such
tags when you post new versions so that people don't have to repeat
them. Anyway, here it is again:

Acked-by: Thierry Reding <treding@nvidia.com>

--vfMTC1L5xpBYeOiz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmR/KCYACgkQ3SOs138+
s6Fj3w//SXEz4e+9L1+FbWcfAd5YJtGNumhfQDUBHj/bsNY/K0g/y32rvoqsi40y
yo89ZtYKlMrZhmWpkXri+FIgFHNsYPScOVQJqOBCmdjY+aog3FQNN6BxNDOqfOJK
GJ9UDD1+7jTo+42dAsvPcyqBTdaY2w7/AdUIGu3n7+56Uaktwh4o6tqxHYTWP28S
UfP/IcuqovzEq29xLUOA5FqVK2wgAmA0c6rKUJ1XhDFiMeSIca26xdy4MxoQtKE/
82G/Aw8Ooi9Req0zZMg3lIZ7HarMfOr28P/2v8RLQCoKTs0ozVv+sg1owdw3jtYp
QUPvuicR/PUXwr5UYXYninXPSQ8PGLh9ETrZusKJK2fLbguXwXzF2TgqzqIj+ogX
JiP/dK7E3lSUWmertbNyHmNPc8369AsNAOQIGBe3QwCH7Msr8tOkhJcmfcaKwDrT
frGN8YwHcLyIHlqEiE1puQ6PgZlOxDCIOiyK1gWe1jCEUCih8zDPwxSzltKDpO5d
tktHf7hzGCXa44BvHNN3QIRlIyIzTdvxb64LZqAROvILd/l2MEHWHgsc4YdQ7OqL
ytL1UqUQao3k/LpTgj6E3KYFKmWx3XakRtVpdKi3Ox3lnS+RkwjT7aga0gx4qlw/
e2gmKVofE4nXJAbwV6nXSvS/LVyfy6DOLtPS1jO+fCCMcNwKcCs=
=VY0I
-----END PGP SIGNATURE-----

--vfMTC1L5xpBYeOiz--


--===============0413545016331226567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0413545016331226567==--

