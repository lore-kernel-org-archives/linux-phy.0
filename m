Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F156CA0FF1
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 13:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JDlNY2raGWV5Paybci5jwHhU+VLjm3YfRm+dBVpt0cI=; b=lf4XfbmuVI9+Tkmvz/TTOr4M4b
	4HVfot4ul8WLzkmaGuX6I33rpiZEaCEHxFtHel4vRsPEOmiI90GME9pX9F+zRlMJNXJT9lxqPcF0g
	DAgn7p2Q+ECQBttM3ttiFVlbIDlBmafOWpeUhB7XE8pvmK0aA8Phl/BLZy34QVGny1ipRz34U7QqC
	1c/CNgSa0q8ptN//PRmPBux0E5tJFe2na2WqyB758Bpm4OX76qyjqeYaAYkHdexTM/+sirVAgGd5w
	uNqm7UiQP/VwXr8bJKHEV+bfQzztFL4yj345rrHAJdQFERkxX0USi1a8INO4q/RtBjiY+ovGoUyl9
	bp1mNv9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk1lt-00000006RfZ-1RYX;
	Fri, 30 Aug 2024 13:34:37 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk1jo-00000006RDB-2tvl;
	Fri, 30 Aug 2024 13:32:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 422DDA4482E;
	Fri, 30 Aug 2024 13:32:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24EB4C4CEC2;
	Fri, 30 Aug 2024 13:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725024746;
	bh=7e72g1sG3Aetpfg2qZQ6u07s6zBI2/8LUyBugxKUU4o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OJj1nbaqCh5A93DOZ1+oFS3JWTvEm9mbXmqsbIlGiGzlMoQABx3zCuWx6PHnwNZZp
	 j6YhFUnRm+FQETx4AsFdEMH/TBZaZxr4djx2nfT/U/qkVlrBrYs+fVczHUNDRSWuZh
	 rfdtbFX6Pk8NMfnUFeV303E/4FBkiYV3rrt5yfq1uCBy1el7KBRMab1igHT0PcMOqJ
	 ZL3gwQFdfpevvgGKlR2ktDNc8CCCe6CoGc9fVKear2XkHUfQFoP5fACXPAXWwwAxUy
	 XnaBMcUXbdendbFZB1VI2/J2mcYakL9JH01Z82Ik4ZQwSc7Y2aq861eLBkdBGy1An8
	 6EX40SlBDhShg==
Date: Fri, 30 Aug 2024 14:32:22 +0100
From: Conor Dooley <conor@kernel.org>
To: Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, sjakhade@cadence.com,
	yamonkar@cadence.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, nm@ti.com, srk@ti.com
Subject: Re: [PATCH] dt-bindings: phy: cadence-sierra: Allow PHY types QSGMII
 and SGMII
Message-ID: <20240830-juncture-observant-f979caae1c52@spud>
References: <20240830105316.1824319-1-s-vadapalli@ti.com>
MIME-Version: 1.0
In-Reply-To: <20240830105316.1824319-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_063228_809959_E13D0C14 
X-CRM114-Status: UNSURE (   8.76  )
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
Content-Type: multipart/mixed; boundary="===============2302387021638733415=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============2302387021638733415==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="M6rR9CDKVnFegJOM"
Content-Disposition: inline


--M6rR9CDKVnFegJOM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 30, 2024 at 04:23:16PM +0530, Siddharth Vadapalli wrote:
> The Sierra SERDES can be configured for QSGMII and SGMII protocols. Hence,
> update the bindings to treat "PHY_TYPE_QSGMII" and "PHY_TYPE_SGMII" as
> valid values for the "cdns,phy-type" property.
>=20
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--M6rR9CDKVnFegJOM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZtHJ5QAKCRB4tDGHoIJi
0jxRAP9/gABn2MmITzGpHBdNrboXK3lxJHTriCPGEXmZ7YC62QD9GW28ROZ21O4I
C0Ni6P8GH4RmP1OxiqV7VM9sosabxQc=
=0g22
-----END PGP SIGNATURE-----

--M6rR9CDKVnFegJOM--


--===============2302387021638733415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============2302387021638733415==--

