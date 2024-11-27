Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6632AD6ACF1
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 16:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+4ffMMNdbEGTasZwKn+tTRlEOaUe9JwJAmKS8TegyWE=; b=noyXDp1DCo3MgPd4bCWH7eeo2A
	3kS/TjTkk2rjCTtD3ecovGbicQu43NgOjFfjOqdT3xsNazrwvPvtQLEK7ijex8ZYed1Wpoyjczvp7
	7qVZ08lIuiSaRWisTKuYkZoRbvjqMXWnvnGtDCfDE+zdG4ned/vexRimJw/EpgfKGKMRVrSnqueiQ
	2fBzRo/V4YJpEtboPOmWbog4TGwKFAd7Gq9CJudnTw7Ugb7htIVp/Jk2x9wn8IEbO1xbANZAsdCo+
	XpLtSzO2ynFjgaBqztAE4k5nJ9IKKMr1GxT86IzP59rkzPBs+aUwAFFSzJ9bQydjmLhWd7dQKWixG
	7buNOKhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGKVD-0000000DaL9-34Dh;
	Wed, 27 Nov 2024 16:02:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGKTR-0000000Da5D-2sh6;
	Wed, 27 Nov 2024 16:01:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BECCD5C5506;
	Wed, 27 Nov 2024 16:00:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A377C4CECC;
	Wed, 27 Nov 2024 16:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732723264;
	bh=M4M6enDTU22SNfTcxSEVD3rydp3BImCdb+4g0awKJZU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GvIC2dvQOfcpqRNRSWrZjx7szrZxab8KBhgVklQCkJRs62rN/IbYxrS0cQHAyO7BM
	 aSL6LoNc78LPGwriQJ3Q2V25qeHrhsXQxrSK/VZYebr+zSk0vijH8iKuOUuWxeH1H6
	 NxXQqM53JDaOugceU/Tc42yWYRSrhN+KWp8fSQtTclLULu9DBiD1HmF8vHaHWYf5vC
	 EB2F8J6NAEKmuXxgWO7uKcnq1zeba5WZzhrbeR2vbW05L5Tz9NY26DXtckClQOIuEc
	 BWE0J2C+UB3nvnlB8kVhrycnRi7XOMNRKsYVziZo4bjVFfjYWJg1Gejx6PDTEyLiEC
	 Mld4Rxlp+OwOg==
Date: Wed, 27 Nov 2024 16:00:59 +0000
From: Conor Dooley <conor@kernel.org>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	Will McVicker <willmcvicker@google.com>,
	Roy Luo <royluo@google.com>, kernel-team@android.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 2/9] dt-bindings: phy: samsung,usb3-drd-phy: add optional
 orientation-switch
Message-ID: <20241127-unturned-powdered-d9d1b695732d@spud>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-2-1b7fce24960b@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-2-1b7fce24960b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_080105_768635_F507D1C0 
X-CRM114-Status: GOOD (  11.10  )
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
Content-Type: multipart/mixed; boundary="===============9177185360570571642=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============9177185360570571642==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Tx/fOhQTJ3HpCf6w"
Content-Disposition: inline


--Tx/fOhQTJ3HpCf6w
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 27, 2024 at 10:58:12AM +0000, Andr=E9 Draszik wrote:
> orientation-switch is the standard declaration to inform the Type-C mux
> layer that a remote-endpoint is capable of processing orientation
> change messages.
>=20
> Add as an optional since not all versions of this phy currently support
> or even need the orientation-switch.
>=20
> Signed-off-by: Andr=E9 Draszik <andre.draszik@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--Tx/fOhQTJ3HpCf6w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ0dCOgAKCRB4tDGHoIJi
0mROAQCOFefWLQAVOt/TEa+0oQfLTwQShkoYl/YCu/c7vWNwcAEAu9WuT8ESwSD2
YQdYtCGtqVtkqoOWtMJh9sjaJ2XwPQw=
=hKKJ
-----END PGP SIGNATURE-----

--Tx/fOhQTJ3HpCf6w--


--===============9177185360570571642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============9177185360570571642==--

