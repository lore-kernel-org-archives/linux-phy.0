Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FB89C636CB
	for <linux-phy@archiver.kernel.org>; Thu, 23 Nov 2023 17:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EdJAayJSi+JaDOf3mSdjrXM+Q3COeSK1C/cSKg76Szw=; b=pO85c9W3E+ZbPiD4uv0N1mBWcN
	+PbeR5sQmUc10n1QO3Tg+KUFOMUBDf9d+HDIFS+XOyscn3J0Qi0pKAB2Tdi+Qm0ZLHrRRPJ1Nmw8F
	HfO1sb2zcM3dxcy7UpGZ6r20c2qgQ/Z/kExWUGUEayhVfHxuIRoV3/wWtQmz5CrCyC1rPFRweKS4+
	tRA6Fn9ySRwEw1TFSS4KpADg/E3XbEg4BDQPjX4Bz36PZ4puyoH3nk/SuA1FFG/paoTVqaemzB5Yv
	GjyVoLPyBWLawUKmtIZ2zFNGpT7xBX7DtM2FNPY8rl7Dk69sHl809OWx1Xd7EY+jx7uh5SGAKEFYI
	8GtBCLwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6DM1-005Oh5-38;
	Thu, 23 Nov 2023 17:19:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6DLy-005Ofe-2i;
	Thu, 23 Nov 2023 17:19:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5428A6238B;
	Thu, 23 Nov 2023 17:19:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88CF7C433C7;
	Thu, 23 Nov 2023 17:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700759942;
	bh=o2B91gSRao1cm4mdpvvnT+cSLBigCNcp+xOQKNDn4A4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iahmJvGwt/0+ze9HXyRn6fXTXrsOTmscoofcYH5cE64Jn+7Zl8OLC1CsQeuehJrOY
	 6Nj1HThnyqA4d+fAqJBUcrJxXD+QW0B5pIjUwP3GoYDMk0i2jNOWHXxCObeyDUEJPg
	 BK87uBg791nuLw0vqhA5LNrgFRDeXfzXCV28zeFMgyTI03tZoEtN5phBiD3/o1MaYP
	 bHJIRWj06VnuJSLrOEyQsSZGuoaf3eWlidsEtc1uc0u8MOPZOAt8EUGrYiwRaSEXjU
	 moXac9FzCSAkQ9lEp26WhADWaZJd124nbIfpyxM6Qqeo2RGdvvjSDZSG+dPnE3Kkhh
	 As2xxVshd2euA==
Date: Thu, 23 Nov 2023 17:18:55 +0000
From: Conor Dooley <conor@kernel.org>
To: Michael Walle <mwalle@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Xinlei Lee <xinlei.lee@mediatek.com>,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/4] dt-bindings: phy: add compatible for Mediatek MT8195
Message-ID: <20231123-atypical-gradation-d98b95e9c416@spud>
References: <20231123133749.2030661-1-mwalle@kernel.org>
 <20231123133749.2030661-3-mwalle@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20231123133749.2030661-3-mwalle@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_091902_918494_BE4A7D59 
X-CRM114-Status: UNSURE (   9.78  )
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
Content-Type: multipart/mixed; boundary="===============0926726683883749817=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0926726683883749817==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ji3UuPhd3xxexBJ5"
Content-Disposition: inline


--ji3UuPhd3xxexBJ5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 23, 2023 at 02:37:47PM +0100, Michael Walle wrote:
> Add the compatible string for MediaTek MT8195 SoC, using the same MIPI
> D-PHY block as the MT8183.
>=20
> Signed-off-by: Michael Walle <mwalle@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--ji3UuPhd3xxexBJ5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZV+JfwAKCRB4tDGHoIJi
0vWUAQCIxBJSBYQxfxnK0ADmbM0UaJC+Lie7AsTjs/2zhG8mjgEAjeZIyAzwtVtq
+xaFexacDMYRWoecls9a4vRISuN+1wE=
=mQTP
-----END PGP SIGNATURE-----

--ji3UuPhd3xxexBJ5--


--===============0926726683883749817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0926726683883749817==--

