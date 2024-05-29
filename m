Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D2FDC25B75
	for <linux-phy@archiver.kernel.org>; Wed, 29 May 2024 13:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pH5E8Rr0D0i9J3hCNXQrNo56gkimSXrHNBYgavgQYa0=; b=oyeYQq4jcXke6I9nHcuBcPHXea
	3dQ18kJHJrmGg0t6t2ROOZo6kTrvIC9OwP4oipw+BXipPvdheXuLRo5OncOV644kSwtlNRwoiDgsd
	5JN0e1J9Z+xENPd5NQ3PseAbQSTUfQEhfXxngUTNzoOcql3dmuZqjZee0hE+10k/MCBsFZhgcCq/V
	SXfQk2ZHk3M108eqliGxYe9o3YhILdUS3ORG0ZS63PvGGuOPopoUgMP12qBHLXBrakNbLlhWs18o5
	2ZPT1enSeO582wnQQeWnPBkliX4uVOmFATW6xbReF/2qRfbpO/WE/YnsH3heoW9dgk7qnVfD53tZN
	F4ZLHGJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCJ5h-00000004DEV-3D0P;
	Wed, 29 May 2024 13:11:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCJ5d-00000004DDq-3k4F;
	Wed, 29 May 2024 13:11:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5C454628BD;
	Wed, 29 May 2024 13:11:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E98CC2BD10;
	Wed, 29 May 2024 13:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716988297;
	bh=YAwgspI6uJSO5MsfLoO0b8m4gEmbr554Yx5sphN4ODQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WvMn1tF1Odnua8fjsgqQlaZSPskulLR2K5YLNNFlgC7w8zjW5dWEG3rw/abayMN2O
	 uvx73EIRf3BmCYDREW3nHScsX+61Kjy06hV1U6w2pRC1F8X7scCKvxgTzN4g1R4Q2e
	 8wsg1Nhw/bl2Ss2Qp94Yh8mJOTogXkZTBcYvJSH13H3WX8g8BxUzVKMIO0vVXzbnMK
	 7a+EXinzVeoasPEM3MWxOGlBR3BRLvx5Hu9cxaDUENi1ONrI8our4YBqoAonXikbv/
	 xSD/gEI/rib8DD+NrWTc53ehAgHqi/wJhKxWWSFMCHIKBzv9pgB4P97pzT51lEhKby
	 Zz6LKgBPxDFCQ==
Date: Wed, 29 May 2024 15:11:33 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com, angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: airoha: Add binding doc for
 PCIe PHY driver
Message-ID: <Zlcphf1jWYnQQlIZ@lore-desk>
References: <cover.1716031610.git.lorenzo@kernel.org>
 <82688bbe03ae2d68af838c2bc7fd20491a7d42b1.1716031610.git.lorenzo@kernel.org>
 <6f5b26d6-c452-4490-9d34-d0a4207139ba@linaro.org>
MIME-Version: 1.0
In-Reply-To: <6f5b26d6-c452-4490-9d34-d0a4207139ba@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_061137_994311_850717A2 
X-CRM114-Status: GOOD (  12.46  )
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
Content-Type: multipart/mixed; boundary="===============9129475063559319474=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============9129475063559319474==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JxJXa4LNeVTBTMXr"
Content-Disposition: inline


--JxJXa4LNeVTBTMXr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 18/05/2024 13:31, Lorenzo Bianconi wrote:
> > Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
> > driver.
> >=20
> > Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> > Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
>=20
> How the binding was tested?
>=20
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>=20
> A nit, subject: drop second/last, redundant "bindings". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree=
/bindings/submitting-patches.rst#L18
>=20
> Subject: drop driver. This is for hardware, not drivers.
>=20
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Do I need to repost it or is it ok to address it applying the patches?

Regards,
Lorenzo

>=20
> Best regards,
> Krzysztof
>=20

--JxJXa4LNeVTBTMXr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZlcphQAKCRA6cBh0uS2t
rF9qAP4mHzSsNoMb9lJrwmPUqU8S5foUosTfEMG7OBpkpxDIAAD+KHfA+dhV1vPL
3ABd8g6Aj3wmVJ8WUVRXVJulV5IidQs=
=I83v
-----END PGP SIGNATURE-----

--JxJXa4LNeVTBTMXr--


--===============9129475063559319474==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============9129475063559319474==--

