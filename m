Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE86B606A32D
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 19:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Gm5XMDdT;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=lL5hLUwk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=n6Raf6rCNc2UIEZtytLP5tCaTCKdpdZONrpZE3+arpA=; b=Gm5XMDdTBv82infSmbkd5O6ORU
	FdEozY7vakjSyNOs5AJ46GyRfq6Sq+FkQ1TsRtcTt8NDpAIZxjhD0iAe4R4R+11WOedY4rLqcXDP3
	nsqM/LRNGzOZy/Gp8mMjNTMDkounq8cm7FKaolthVHog2yo0k5mLiMhcopPknb7A6vyVxTu9mEe5r
	VSgDVOUltcmZyBOQBbRzbMDoYFb7IWXRyRv8ThCjfAx/E6I1tAqbgyqwlAUP9BwUcKeHWw88ULsJn
	AthEgEPTfjFW6Vr2C5PQHffiYp+5sSNj86wB1nuZ5doBW7Mx8ov35gk+i3m02UBSbGP9D4o1m7kPC
	OAaMi10w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP2yb-0000000AJ7E-0U9N;
	Thu, 05 Nov 2026 19:18:22 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP2yY-0000000AJ73-2JMQ
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 19:18:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 386DE41B46;
	Thu,  5 Nov 2026 19:18:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A01A21F000C1;
	Thu,  5 Nov 2026 19:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793906298;
	bh=XD1Rm+iGqF06DKo2ufDJiE26layU8M+F3N4dQIPcMnQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lL5hLUwkxIEo+DdtEPhhyGUDjYZ/mqvi7E1mpsRNbQY6sAmzotey2EfNE84CYdqeA
	 n8MRfrJrjOAwcNBinA0i2s//nahSVK+0tD9WboGj6Hb66RtNJDJz7nRFfvRXV4TvN/
	 FMxdDfN4G0CN1M2wHB8VynPd8ULeTEwfi7zUwGWxNPYgawFCNbdphIx9V8kzSjZTns
	 AN2VsJ/5biQ8mfSA//Gx7Fu3kf9Mw+2T1whck9xyZdOOCoalUm0JHsfb7Kh/Lp7Opj
	 KIPjiep9zOAODo2OjWuF+3zgLbdg35OpG8IsXKkHsUAbz4MaOFREJLQAVntAzWa3f+
	 FoXQwxrLeNBow==
Date: Thu, 5 Nov 2026 19:18:13 +0000
From: Conor Dooley <conor@kernel.org>
To: Joseph Telaak <joseph@telaak.dev>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chuanhong Guo <gch981213@gmail.com>, linux-mips@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add Siflower SF19A2890 USB 2.0 PHY
Message-ID: <20261105-shampoo-osmosis-6975c7cf734d@spud>
References: <20261104-sf19a2890-usb-phy-v1-0-db0cad937614@telaak.dev>
 <20261104-sf19a2890-usb-phy-v1-1-db0cad937614@telaak.dev>
 <20261104-unscented-armory-4dc756ab95cb@spud>
 <CAPY4CJ5g+e4iu8p5s+Vf7XmEjB9cYX9xYyzHd0Fz8GEbmFm4hw@mail.gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <CAPY4CJ5g+e4iu8p5s+Vf7XmEjB9cYX9xYyzHd0Fz8GEbmFm4hw@mail.gmail.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0209550053227467777=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============0209550053227467777==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fkTf2+Z1l1LqlU4y"
Content-Disposition: inline

--fkTf2+Z1l1LqlU4y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 04, 2026 at 07:39:32PM -0500, Joseph Telaak wrote:
> > > +        reg =3D <0x19e0c040 0x60>;
> >
> > That's a weird offset and size.
> > What lies in the regions around this device?
>=20
> It sits in the 1 KiB from 0x19e0c000 up to the next block at
> 0x19e0c400. At 0x0, 0x4 and 0xc are the reset, clock gate and bus output
> enable registers of the USB clock and reset manager, which the clk
> series describes as siflower,sf19a2890-usb-crm; 0x8 holds a value I
> have no documentation for. The OpenWrt port gives the PHY 0x40-0x9f,
> and its driver only uses 0x44, the PHY's sleep control. Read from
> U-Boot, registers between 0x40 and 0x8f hold non-zero values I have no
> documentation for either, and the rest reads as 0. The GMAC's
> configuration registers sit the same way, at 0x40 past its clock and
> reset manager at 0x19e04400.
>=20
> If you'd prefer one node for the whole region, providing the clocks,
> resets and the PHY, I'll restructure it that way for v2.

No, not asking for that. Just making sure this wasn't some sort of
syscon being hidden by the offsets and size.
Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable


--fkTf2+Z1l1LqlU4y
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCauzWdQAKCRB4tDGHoIJi
0htFAQCpfD/ATW+Oh8iIXCWIFJJ9g6tE4XFONhEBugZlFfDZ8gD9GLc6+0RrUu63
KYjkd0LAmVIcn/ACklIrnrIlzsL5sQ4=
=PI9i
-----END PGP SIGNATURE-----

--fkTf2+Z1l1LqlU4y--


--===============0209550053227467777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0209550053227467777==--

