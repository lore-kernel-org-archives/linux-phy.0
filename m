Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC5F1C79FAA
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 15:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jgG0tS8/lJTvzikX7gS82jNFmmvo36MU9PcwezAcPEk=; b=QHxPbunAu+1k4eH8XtK5vS9GrL
	LAGVHyfNEWlkxdUjtWpcSbYAC2tHO25oBbTI3qZQwxM/tUwrWbsOf25Pqi/ke+nBEWRBclVmsEaXn
	ivDE2W53/mKJgyIGF0i0P+a6YW9oumHdsuyUB1UeoKjA34bjEbg7VZc7f5iADmNCftItZ6F3y/3vw
	b3G9vloL12C7E0IcuxWHM5GX1rr0CDcSFzv904f7xwHkoOmGW+WwyhPlYIK7xgZ1EYtSFp6frv5yb
	Vt+cAjSx+iJtUfpKKYYwRhaQaM1mmesRRMg9qB3jZs68gEV/iFkyERJcUao65ht2b9KPiYQW1z74w
	SSVI+pnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xyx-00000009Wyp-0wYD;
	Tue, 08 Sep 2026 15:43:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3xyv-00000009Wy3-1bCc
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 15:43:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 278CC43506;
	Tue,  8 Sep 2026 15:43:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 733DD1F00A3D;
	Tue,  8 Sep 2026 15:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788882213;
	bh=ODv2oVQ+zj8LzCCwIIMj4+ozkkVjMeRgl5H0fCblGLM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jJTAzR1xLe2+tbJ9A7apNobRbYhUzmETYEpovrhxNgPp+VwM/urv5SsSEij/GPo8X
	 hYhcyYJ5ROxyn/GqkyRygWjc1d4NxKbY69fxN9GcF3EPiL1Uu0cIZRYxJdsTaKD//A
	 Ypl0uKD3xFFpYr5e3PIliXszCvPgyTdrFw7/BDlDjnws5K3/J5A6RYcMT3SvqyY9j7
	 C0qlrVBnQPbeU016NyiBKn5bP8Fa++AskBwjoRSJ5LIRmvfcMW9aq9x4esrYT+SR5G
	 qHxNOmulL0F6+3BE/AyWcE6A5B7iCT9vuaBfKrkcm0a2hYDE/+/bg4Oa378kjOffIS
	 RXgdTpr2cjzeg==
Date: Tue, 8 Sep 2026 16:43:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Lee Jones <lee@kernel.org>, Guru Das Srinagesh <linux@gurudas.dev>,
	Liam Girdwood <lgirdwood@gmail.com>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	mfd@lists.linux.dev, Suresh Vankadara <svankada@qti.qualcomm.com>,
	Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
	Dhruvin Rajpura <drajpura@qti.qualcomm.com>,
	Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/6] Add CAMSS support for Qualcomm Glymur
Message-ID: <8103069c-d774-4303-8366-11059e462d84@sirena.org.uk>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
X-Cookie: The world is not octal despite DEC.
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
Content-Type: multipart/mixed; boundary="===============6352792025660523345=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6352792025660523345==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yPw+0TGEn0HbTJ9A"
Content-Disposition: inline


--yPw+0TGEn0HbTJ9A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 07, 2026 at 01:43:36PM +0530, Nihal Kumar Gupta wrote:

> Patch 1 depends on the following dt-bindings series:
> [1] https://lore.kernel.org/all/20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org

Qualcomm people, could you *please* stop sending me serieses that can't
be applied.  As previously indicated I am getting far too much of this,
it makes everything unmanagable.  Nihal, this isn't you or this series
specifically, it's been a general problem with how Qualcomm is working
that I've raised before.

Resend this once enough of the dependencies are in that it can at least
be applied.  Reworking the series so that it can be applied without
other in flight serieses would be fine, even if it needs everything to
land in order to actually fully work.

--yPw+0TGEn0HbTJ9A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmqgLR0ACgkQJNaLcl1U
h9AZAgf+LfTfUWipFC+MxrZIf/omzw5XlxIpLtxDgJRAtx16M+Z1GI7gwQJfJOM7
il61Fwq5Kk1MhBLaaK643iz0rUo/780ML2AxG/kUCElqYqkefzQc73hNPz+aNwyE
ch4qnMU75bdlVFykQ2ZW7zltNG597wHo4PJTQv/2iYQWgwx3BUYKquDn/tEhnTF/
+HCJvCov4TwITSLj0u34BxghM6Tjrp2uFdAVFKpsDboT3s1CGhIGS8l37NTiBvR+
8WP9W/NZ8ngjwl4ctH4V5YjVtplJiOP2nZcDsnrnItZqq0Xs+MxFMBTZBNHr6MT3
DOPZSwbyrcfF5hKDPdvHRIW/Rftk3w==
=Y05L
-----END PGP SIGNATURE-----

--yPw+0TGEn0HbTJ9A--


--===============6352792025660523345==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6352792025660523345==--

