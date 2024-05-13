Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE0AAC25B74
	for <linux-phy@archiver.kernel.org>; Mon, 13 May 2024 16:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ULckNjZy2mS3r8pOXn/dRuxxp0M+mXIa5h5cbHENaks=; b=tUBiZIOfRrlgiifiv9MG/DUsc3
	5lNGQZ0jy+tCKcT0yIw7NpUSlAArNbe3pSfYcqL4hRvokHFTjawkOMDsJZTTN7yj/v7LyTU2phQKV
	I42uNTjpC1vgtB1fYoUma0W9tJUZoMvSJ1uGaqHYJNDC+wahKfGD8pKZ/UMOiYMC6hQbZNZFLxdUo
	Gk4OfVtgENdhjlWRwvmctxIn3FMPN4KD3WX//i6Dn3zPCNnShoSUNoMMltpOYFty7YWbj5J1FCBew
	y14WZ2CWCGmb1BKm6yGBgEGkNhDUeVsRV2fTBvPFbdRAKs7tUABEcomESP1ifLocbpSOI5UEdZTLO
	nQEsnr1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6YxO-0000000Dcwm-2aAU;
	Mon, 13 May 2024 16:55:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6YxK-0000000Dcvc-3Fuf;
	Mon, 13 May 2024 16:55:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E53B060E65;
	Mon, 13 May 2024 16:55:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D061C113CC;
	Mon, 13 May 2024 16:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715619317;
	bh=JfOR0ctoB05ZBwCTPmwc6W7jvbWwMcL3sGdG4s/MpMY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jq5gLPf1ajdgqvK3czxj/fd5t/l+jnxvPYm1DFK3d+UFCsaKXuqkwojepWezUmKCH
	 lLX8kU2ZbTH+sjKBEMmTPlWDcLUuPJ5bZGHTM8KJZoVSGWeBQC2TASoEsvNOkW5tUL
	 HbvVZXmS8rgQayF0tHcRDNjEF7nkDsb5aiOyVCScOPmQK4Y651Gpq0aW1vJcGcbQ10
	 cltPjGHIrl7Fpbkg+jgxL9LNK5MfmNn7qAX7iOO0rAZI0a8blKpjjvXioz627GxWw2
	 Rsv3+XgVYdIZ8PhQ7rzBvgWumXXka6Z2Tz4CWwRlGQIoB/+yYDV8EiKSc1y9fZnFZV
	 KiDnTgb8yab3A==
Date: Mon, 13 May 2024 18:55:14 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, nbd@nbd.name,
	john@phrozen.org, dd@embedd.com, catalin.marinas@arm.com,
	will@kernel.org, upstream@airoha.com
Subject: Re: [PATCH 1/3] dt-bindings: phy: airoha: Add binding doc for PCIe
 PHY driver
Message-ID: <ZkJF8gAKIGGjJgz7@lore-desk>
References: <cover.1715527166.git.lorenzo@kernel.org>
 <7b60943ea9814a1a9a3d8b273157b338f9130174.1715527166.git.lorenzo@kernel.org>
 <b65a6290-1500-42bc-815c-d88dd52dd8ac@collabora.com>
 <20240513-earshot-droop-d40f08bffd91@spud>
MIME-Version: 1.0
In-Reply-To: <20240513-earshot-droop-d40f08bffd91@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_095518_899172_675509C1 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============2367268470708413403=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2367268470708413403==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hRJZAjtksdcRzbb4"
Content-Disposition: inline


--hRJZAjtksdcRzbb4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Mon, May 13, 2024 at 03:14:59PM +0200, AngeloGioacchino Del Regno wrot=
e:
> > Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
>=20
> > > +description: |
> > > +  The PCIe PHY supports physical layer functionality for PCIe Gen2/G=
en3 port.
>=20
> Additionally, the | here isn't needed cos there's no formatting to
> preserve.

ack, I will fix it in v2.

Regards,
Lorenzo

--hRJZAjtksdcRzbb4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZkJF8QAKCRA6cBh0uS2t
rBD4AP4k66zTusaYtOYlV8NwLNLh7//cGPtcmlwAAwTN95DLsQEA59p/rzC22WY8
WH42PDRAYRnGX+9c9TPHRYPW6gsr5gk=
=InZ0
-----END PGP SIGNATURE-----

--hRJZAjtksdcRzbb4--


--===============2367268470708413403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2367268470708413403==--

