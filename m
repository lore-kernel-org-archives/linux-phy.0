Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62A95CCF9F8
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 18:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ugGXGa99hKILocUbT4w/5YUmqphHj/KeMTtxwajVLfE=; b=R1buIYGKmIGXQ5+HjRWMx3G90X
	tI93/5vARgyh/xkuduKzdYcVeNea1atJfqaA6TIZNRjQnz0qoWBGZDBxXfdBdUI3BvjmZKnJIYXWB
	KaXBhw+AYMSbJvYmx8BFGc9cP2WrfFRNluH7diLktnrC1QReVB5nJPr1wfTLfBLhCG4mHf8uXr0zM
	qx1LBYhBPifPslTVShz8mM3U3mO83nbr3RWTwwMnMycL4C41byyYG8f+XVvCuGZWx27poWloOkeoN
	i54DxMpp1lKPhMybj+sBNRLCE6lGeQGs52yneKPs6yDbc8pIz+WjJa9+fm03xTDbreYyBThJql0nJ
	THexVV4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHQyt-00000000QuR-0JJO;
	Fri, 07 Nov 2025 18:14:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHQyq-00000000QtP-0btm;
	Fri, 07 Nov 2025 18:14:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 85CDC402F0;
	Fri,  7 Nov 2025 18:14:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FE79C4CEF8;
	Fri,  7 Nov 2025 18:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762539275;
	bh=eM5ZneuspMh6fY9/LR7skAboL0fd0yKYb5cCgw95hAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nEg7c6eKO3PokMvzhrEFP+XY4vIY2iKjkO80GM96kGs1U0+YMRWG3tSCi4XBPuX6T
	 eUub83RPNHQBs4JkaQO2jysWe+i3nrm7BtZ+d9NMVvBrTRmDZGSl4FwkoRXNmbLISN
	 G8Wpm2uFNFNkH8+4WOBPkKctxLPPzD4toZ2qxmfF3K2vkYntfzj8NmnFpWiiE90EAV
	 hzaZeIDuc5zDGjnd9M5dMDnEdh0YEdbg7MddjZJ0L6CUemqf5Elgr9CNMCuIXywGQO
	 Ty3EPWdUWY4yVenQh9DGpmI6NOn4/uuCUVLC4yqAlOEszIddU9fL191pPGfeGFzIan
	 kFA6ZatjmFjYQ==
Date: Fri, 7 Nov 2025 18:14:31 +0000
From: Conor Dooley <conor@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/4] dt-bindings: soc: Add bindings for Airoha SCU
 Serdes lines
Message-ID: <20251107-crisping-doable-365d6b7d60a6@spud>
References: <20251107160251.2307088-1-ansuelsmth@gmail.com>
 <20251107160251.2307088-2-ansuelsmth@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251107160251.2307088-2-ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_101436_973003_673E0F26 
X-CRM114-Status: GOOD (  16.97  )
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
Content-Type: multipart/mixed; boundary="===============1489406476750998749=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============1489406476750998749==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="B39WCCiVv17+HjH0"
Content-Disposition: inline


--B39WCCiVv17+HjH0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 07, 2025 at 05:02:43PM +0100, Christian Marangi wrote:
> The Airoha AN7581 SoC can configure the SCU serdes lines for multiple
> purpose. For example the Serdes for the USB1 port can be both
> used for USB 3.0 operation or for Ethernet. Or the USB2 serdes can both
> used for USB 3.0 operation or for PCIe.
>=20
> The PCIe Serdes can be both used for PCIe operation or for Ethernet.
>=20
> Add bindings to permit correct reference of the different ports in DT,
> mostly to differentiate the different supported modes internally to the
> drivers.
>=20
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  include/dt-bindings/soc/airoha,scu-ssr.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>  create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h
>=20
> diff --git a/include/dt-bindings/soc/airoha,scu-ssr.h b/include/dt-bindin=
gs/soc/airoha,scu-ssr.h
> new file mode 100644
> index 000000000000..a14cef465dad
> --- /dev/null
> +++ b/include/dt-bindings/soc/airoha,scu-ssr.h
> @@ -0,0 +1,11 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +
> +#ifndef __DT_BINDINGS_AIROHA_SCU_SSR_H
> +#define __DT_BINDINGS_AIROHA_SCU_SSR_H
> +
> +#define AIROHA_SCU_SERDES_PCIE1		0
> +#define AIROHA_SCU_SERDES_PCIE2		1
> +#define AIROHA_SCU_SERDES_USB1		0
> +#define AIROHA_SCU_SERDES_USB2		1

I'm going to assume that 01 01 is correct here.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

--B39WCCiVv17+HjH0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaQ43BwAKCRB4tDGHoIJi
0pVWAP9yALGNfDaXdkKA0VA1cacvoNV1NxfUwR0SjRIKBvFBMQD/VKW6hr/1aS99
fczYQ2vBgCBT3a/Ft3Xpx4X/XlQ8kAU=
=mERD
-----END PGP SIGNATURE-----

--B39WCCiVv17+HjH0--


--===============1489406476750998749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============1489406476750998749==--

