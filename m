Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23F14D15D8A
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 13:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LOJdV1G+VD6Ipl6IktqrmP8e3HVCNrS6uPjH0KueBg4=; b=ArItMDXFAaPhIr77LdkpicNrfy
	366uX2zs6n2DQTRzuE/VIES5lQryWruZeDzU2X7V3XUZYvP9Fwd8IYzof0piZKd//cbZK4Rdt63wv
	qPoUFZ5ibupSjq8UN+aQABV7PN7i13/vLelx3rD9Qbkd4oHo2HY2Z4xapgSHwv12m87M2e124BNhq
	ODwlrPz4f1wSVstAZF8y21jEpkHkPdT1otccdTpt7cVDogx29zLK0xhOX2h8+UWkxk2Ztd/hMVsM7
	n9PoA2keOD+1y3C1fJmmZkP+tvDwufdq9LEjjTFGSJlxME7AUIsiZ4CBSUz7FPfScpTAuX3K6UzRN
	3fhIphVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2s4K-00000007ML2-39Hk;
	Mon, 21 Oct 2024 13:03:32 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2rrQ-00000007KCF-135A
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 12:50:13 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-37d4c482844so3037845f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 05:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729515010; x=1730119810; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ny2EzjP6BQ8EDbZh2xO7tlOnTQLXpJSSlQMga51ck5s=;
        b=OjDfKlFYFLJnWlCwegSgRGfii6EahbhR0aIshTrWIzmbx7tmlJ1TwoSSOoLhfPXTs2
         nAQutsZzITnuwBkoBJvHW5QHgJtPw+PIcQ3IH43qXVxM4krSR1Ni8oQFQeoNgkJbH2cZ
         86lxG239ifuU1uvngB2UVtEOdl9wbUg+K6Y6YDxSReuhrmOt6Mn49quMT1HLznDTH7oY
         oOJOvSiqshaUU5FcQc55h27c7k0KkqzIW+oUYoufraNHTpaB1CpPTt8uIpuOqKI7iVyv
         ISpTXGcC49aW5uu+AHoHL8tyVuDRu8WSeCrv0gT7pzAXsVpul4neLPDYWX86+6Jcloa9
         62uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729515010; x=1730119810;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ny2EzjP6BQ8EDbZh2xO7tlOnTQLXpJSSlQMga51ck5s=;
        b=tRPVMEKNJL7Vn9LIHaeJ7HetYIuH+B+JAB7J7cU1yEDkJpxMjqf3kc9uejlOZLc5it
         ex6F8zU25nDnamnff20BhMgsEuB9abZWYwRT2nG2ISFygjqL5XFfSDvjhuJR2T1cxRCa
         0Ps0Jwt79cv1vU9xwsy2rGsFzZYQ9+GrNVBhmuIWuHNaKWda72RAaXuRSARa+FIAy7wC
         dZ3Yvs1iWEOw12UidvugsoZBnQ/m/3xTTG8Dk11K/vx4IyrsQLQI/KZ9rFtOL0D4Ivaw
         SaOxNLPKyfUGbvRS9wuV6vNUEKn5V+rP4pReR5WuUIXpJPya5E1EAtfn8D97TydeVN2E
         x/tg==
X-Forwarded-Encrypted: i=1; AJvYcCUSsRYwJrRlNUaLNA+lycMjWU81TU6nhtX8894UhF1b1PjC7ZsUFz6JbNvzfW0kADHagjmAwmeNWuA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9DskUIzRGtPzr/rwT4rKABUjn9OhGcFFtalub4N6WQ0RxF6Td
	vvjIYP2oW3jpsTLBO4LWf+hIYf1GViiR3r8ElWRftJ3aWE6lDq/9
X-Google-Smtp-Source: AGHT+IEAd4G54DP9Gc8AV0E85ByBWJ8OgZpAqArfj+Z35pEgsQmtE6MKuAwRT3EfahSpc4WUOuY+eA==
X-Received: by 2002:adf:f8c7:0:b0:37c:d57d:71cd with SMTP id ffacd0b85a97d-37ebd3a30dcmr6732276f8f.52.1729515009956;
        Mon, 21 Oct 2024 05:50:09 -0700 (PDT)
Received: from orome (p200300e41f26ec00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f26:ec00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0a485dcsm4273254f8f.34.2024.10.21.05.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 05:50:09 -0700 (PDT)
Date: Mon, 21 Oct 2024 14:50:07 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dipendra Khadka <kdipendra88@gmail.com>
Cc: jckuo@nvidia.com, vkoul@kernel.org, kishon@kernel.org, 
	jonathanh@nvidia.com, nkristam@nvidia.com, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: tegra: xusb: Add error pointer check in xusb.c
Message-ID: <v4ng6ctnwymoorzbaqo3xsbqtd6ocg73iau56m7ineykbpxsi6@hgv4y66d36or>
References: <20240930191101.13184-1-kdipendra88@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240930191101.13184-1-kdipendra88@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_055012_316260_6A787D77 
X-CRM114-Status: GOOD (  10.18  )
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
Content-Type: multipart/mixed; boundary="===============6523247574197295553=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6523247574197295553==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nyexhj7aoiso3top"
Content-Disposition: inline


--nyexhj7aoiso3top
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] phy: tegra: xusb: Add error pointer check in xusb.c
MIME-Version: 1.0

On Mon, Sep 30, 2024 at 07:11:00PM +0000, Dipendra Khadka wrote:
> Add error pointer check after tegra_xusb_find_lane().
>=20
> Fixes: e8f7d2f409a1 ("phy: tegra: xusb: Add usb-phy support")
> Signed-off-by: Dipendra Khadka <kdipendra88@gmail.com>
> ---
>  drivers/phy/tegra/xusb.c | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Thierry Reding <treding@nvidia.com>

--nyexhj7aoiso3top
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmcWTf8ACgkQ3SOs138+
s6Fxeg/8CQxyMg/0RjT7XVFwK6GWeQolN/rpQBX76LH9QVf2dd9MH6tLXjcmRhbO
dKW6TvkSnAG42z8q4Z8jrnPG3IhcR9ElV/Qddh2N8BfH5i/OZ0p9VQOHDYMxvV0n
SCybULwwRHm/l6smmCAold+hHaKrb8J3YbHqZUVw0weRoKgvRH63DYsBt2GJExz+
lzjHv55Lva0sqMemJNMDZ76bYsTHXlhQynMspfopAfbG9O6i/SCxti81Qde+tm/N
9M7qynuPRyoj5CI9DV9JZaR3DUAlBjCKl2A2kD/ZxoTiQ6bTlR+4zge3cDWpq9VR
0z+3cYo1XWJ+MmU7iA/AmAPxw1+gA5rRUSHbEFokBKhK64F1bYbr1PKqjtKq/i2D
htU+/yyUE4EBBYg5LhNfYV9S58egs1pPHiDr48D4yqWwRT+n2g5u3cn4Rp5IBomI
0fp1ZWtnil/QMwdNLBAK1q0WNmvKl35YxmQ+Mcj68um7S31212iblIgntjDX/FJr
i1in1E+sNouSARS+znU4dQcs5m642gVlNA25xw+fR77NkZD6VdhT1jS7i9AQkjBT
MhVxNFqrsGW1+hRoU7VpUaJYk5pKUIkQqmRBSeCwqtbEzUonorZ6AZzIAUGPgZIe
mpJdZ93LLRgxDiDiVRg/FBzEVwXTlxxln2aFkD/abIWLUExfmeA=
=9qzA
-----END PGP SIGNATURE-----

--nyexhj7aoiso3top--


--===============6523247574197295553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6523247574197295553==--

