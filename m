Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7F22C76188
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 12:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zs6Qpq2VCXorCAU9SWbY/zvVDuZw4nuGbslh/7v0aXI=; b=slxuJz6+PQ1kmLS1/J5Fb80mwn
	J1G6xsyNYokdwOjxgNzVeBY5+ex5hYWgOiwCyPOyw9ZUrEzSJeF9N45a5cslb7EPKmBqbaBzQnJUO
	AQrwCVws0Q8BNUPDkTLRv+pjznqyax0d3d2YMhKAFSdhS4+hDET7JDC5rCIdiospmp8Pkg28z53M1
	xMkg/6ypQabyXE1gvtgueHQ3bBGB+EtNhfKFkmeeg+HgOOoUu+t5THkB2FQ2Yd+wT4CBHG1ZSQ3x7
	kLZjmRclxQyZc84B/SrDPSwkr86ZmFwPMcZirmX6nWC8adP28Mw8S5ZzP1MghfqAx3p8HrESQLjbL
	VCE+RyEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2M1-004Py2-1e;
	Wed, 05 Apr 2023 12:35:09 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk2Ly-004PxF-2o
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 12:35:08 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-93071f06bd1so44533066b.3
        for <linux-phy@lists.infradead.org>; Wed, 05 Apr 2023 05:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680698105;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YRM/+pc2nO1q6Jga5X1hQSURjAjoUaU8M+SqQ5FggLc=;
        b=A3IVo0PqVhq+hqOI4tbGH/qx/tCQuY7qkzgf6/fRs2yEaZlc5ZRYGzMEKfJcvt04H0
         88KCvjUCwinReyiKf+JqpowrribFz2cCr7QOdrom8N02ok+GKtXxQ3JgmDKOxyNBTM/q
         dVw1oCbnNU/UHnFG31gRInY34RG2YX405OWZPujYtxZWirkeKEwoJvjJmduiiZ/w/E+M
         dV3uUEY9fGd9vV0mnZdVQDPnxccjlKB/yIoB+646aHz7CPLZO/9o4vy3fnCnebd+eQK7
         VnbSFZaH61tAaCP0AKHPnD4cv8j1TiLy7fJvkMtdQbtQtjyGbM17hCrI6i5cqNnNdKYU
         LfTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680698105;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YRM/+pc2nO1q6Jga5X1hQSURjAjoUaU8M+SqQ5FggLc=;
        b=NLzxIlibWcPbW3hqRSm//XlrEyoeP8Il5KPe3f2IYUtJCT3XKOtTiZNfRB9MgzwkRH
         +guz0rAf7gq9kf9x+keiZ3MyjKulSDHkTe5tfY8Yiu2kDRJ3D/0jPVg1yg4B167R4IPu
         G3Q20Ch4dZQETk1SVusa2gR7GzeYIZ25q+7rcOlKVDZ34TO4pnDKL7qXzpX4HS6qWrNp
         AcXdNkI6b92ThlMVaA5KyzrcDg6ir25AX3Pi6UsvrlAtuM7IM5wkEjrLAPTJXrDrpI+e
         1WhWBBD1p0NGOoWJJRI3XlKTb/pjIcz4UooR8AaheCK84JvaGlbkqF5AJ32qj9o5b6QN
         04XA==
X-Gm-Message-State: AAQBX9cU+uuyzJYUeEOLrdzAwaF3I6Pfi4uxzh9kz4cRDlA9njNkiqx+
	IbYYx7stgoFKcxUb1po/rEQ=
X-Google-Smtp-Source: AKy350YUL6HI954E4Sejz144D52JLeq9Ld/3AiqAkuyzclQV2Yq2UsE+RwQGYiXMMd9sysdeNcTkLw==
X-Received: by 2002:aa7:d851:0:b0:4fb:999:e052 with SMTP id f17-20020aa7d851000000b004fb0999e052mr1563927eds.33.1680698105245;
        Wed, 05 Apr 2023 05:35:05 -0700 (PDT)
Received: from orome (p200300e41f1c0800f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:800:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id q6-20020a056402518600b005028c376d50sm5966542edd.71.2023.04.05.05.35.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 05:35:04 -0700 (PDT)
Date: Wed, 5 Apr 2023 14:35:03 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Gaosheng Cui <cuigaosheng1@huawei.com>
Cc: jckuo@nvidia.com, vkoul@kernel.org, kishon@kernel.org,
	jonathanh@nvidia.com, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH] phy: tegra: xusb: Add missing tegra_xusb_port_unregister
 for usb2_port and ulpi_port
Message-ID: <ZC1q99h32vJQGjGj@orome>
References: <20221129111634.1547747-1-cuigaosheng1@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20221129111634.1547747-1-cuigaosheng1@huawei.com>
User-Agent: Mutt/2.2.10 (2023-03-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_053506_910959_D65C91E4 
X-CRM114-Status: GOOD (  11.43  )
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
Content-Type: multipart/mixed; boundary="===============0513814230481803571=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0513814230481803571==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IsQQKijO0D7xuQDr"
Content-Disposition: inline


--IsQQKijO0D7xuQDr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 29, 2022 at 07:16:34PM +0800, Gaosheng Cui wrote:
> The tegra_xusb_port_unregister should be called when usb2_port
> and ulpi_port map fails in tegra_xusb_add_usb2_port() or in
> tegra_xusb_add_ulpi_port(), fix it.
>=20
> Fixes: 53d2a715c240 ("phy: Add Tegra XUSB pad controller support")
> Signed-off-by: Gaosheng Cui <cuigaosheng1@huawei.com>
> ---
>  drivers/phy/tegra/xusb.c | 2 ++
>  1 file changed, 2 insertions(+)

Looks like this fell through the cracks. Looks correct, though, so:

Acked-by: Thierry Reding <treding@nvidia.com>

--IsQQKijO0D7xuQDr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmQtavcACgkQ3SOs138+
s6GADA/9E/ig3I4NxB9UbEkNuheP8RN8u6/SxspQn/t1uaHTRzGGmwT2KylLmfxQ
0ewLnFh8d4O7F8dmNlr0R6EQNjJSdiFZWIjycqUsjLQ94SbvZY8lU6gOHqpUFUFz
lcNclx96UtQw/Q77+xuNujW+BsGpJCQ5CjTocDztoDhkZal+qn7hwWN2HVF08Dhl
p4YZJEYnXc3a7tiyeMuqTixLWuwsbjLyIl3FJ23mRLQyfAH4k0mRT3Damja5cSnA
GSK/lCuYFRE/TyQQZlMgDdl0ctkXaueSYm6xqnxRboQEeyYgR6kQkGfkz842q/cW
V/WKDklYhFNKzf0vwykqYDs8YgVBagp/rW46X+c6doHyaZmSRBfxtP/cNZBGP0rt
24OBolXMmDS78krpEmRVTwy2jQqBDso5B2S3AjBQ8m21lr0qb7qIDNqGZsC+RiDk
SFmqtTd7Zcl5u+wAPZ4xLmiJRQ4JYQnv5ziUxl3IciQbVfYEAUCg9/uPDTS3XJto
CC8tCfCCwkScY1NXY/9JNqmGS1P84Ln3WT4KK7srvUK5WDA9w6BRktzaBrvYUXPO
B/nv5pSMaOus62EckyBftNtikljW7Jx27YAmnF7sRUShaBdAZ8552uRW4VMJge4g
XaKQTVBDqbnExcZRFwso4X6Axx5iwqk6QLa4oVfjvo8Humhb/QA=
=Vpxa
-----END PGP SIGNATURE-----

--IsQQKijO0D7xuQDr--


--===============0513814230481803571==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0513814230481803571==--

