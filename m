Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1C50C87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 18:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SauBLeoxDP2nKNQp66FDWSjMfVDjo6LpA87iTMEAwlc=; b=HJuxUdv8+EU8S5hmqX7zoINU1g
	KC4d1Ew+3d/exm2phmP6x7fhz8rulNu6UjaTC9DzYnTnmFAZZ7RXXTwwTdtL6rQfoiqPC+w9fjSon
	DJ92ZDzr6EIqxLukSBw5wB/JpWgwhtLWCyz05s0IqepOipLb3S9/1wkYnhokBGwidHQEhTc57gYua
	rIVdsZvrUzM7a6reUILbv0AwrBl3V/W+ZlfooO+0dhCVVwmNzuiBgmedyQcEyGmRCJ7GYaxI4g0i1
	b4CVGC0i3tS2BHRgoGBY/Bn8T8DpyFH9DDBloZPNhoZtAmaEUd9O9gfIebE6gaMHgjSaln38YeLyZ
	FwXXKt/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk5cH-00000001Lw1-25kC;
	Thu, 07 Aug 2025 18:45:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk5cE-00000001Lvh-2yEF
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 18:45:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E382C5C210F;
	Thu,  7 Aug 2025 18:45:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A1DAC4CEEB;
	Thu,  7 Aug 2025 18:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754592325;
	bh=s41nQYbG9xds3nTMlaUxEfHRA0sbU0VGt9aCqsSBb7k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nY1aVFTWftz8uIWW3hzTH6iKf1k7Sn6FtFu6bEvzRNxapAwmRIsfz7LRrUeulSiWl
	 VlT7fu0Sgni+JHYd0vkQrXkXcirQK3Imop79h5brcHyY2UAy7JtxqNu5HQGi2h4pLO
	 mPj8Eys8Yq1RlUoUwGumtlUurEMFGPYerBqKbg9VMR4dbXSJgvG1ecFzM8DgHvHBJk
	 9LPbk10R/j/Zt28ufc3QJhF6W4pDIKbLgxd4mHF8XNuGw/CwQ3WRl4/TTv8haS6WY5
	 267app3hQkPXN2JCcxSnwELVZdsug9TjBllXDEkrjGEgrR9/4cC6Dpx3fAlP44TXOh
	 lRjTA/gk33zEA==
Date: Thu, 7 Aug 2025 19:45:19 +0100
From: Mark Brown <broonie@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org,
	kishon@kernel.org, mani@kernel.org, conor+dt@kernel.org,
	bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
	dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
	krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
Message-ID: <4efc8a3a-ceb6-40dc-b877-328b86348e0b@sirena.org.uk>
References: <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
 <685e3d36-c0e3-4faa-b817-aecc15976a25@quicinc.com>
 <c1435858-6288-4525-8c92-e27ed86cb55e@sirena.org.uk>
 <31461227-3f3a-4316-9c8a-c851209d0278@quicinc.com>
MIME-Version: 1.0
In-Reply-To: <31461227-3f3a-4316-9c8a-c851209d0278@quicinc.com>
X-Cookie: Real Users hate Real Programmers.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_114526_831896_FE1FA7BF 
X-CRM114-Status: GOOD (  13.77  )
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
Content-Type: multipart/mixed; boundary="===============5243273328642354224=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5243273328642354224==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="G2ENHz2PdHsOQPSQ"
Content-Disposition: inline


--G2ENHz2PdHsOQPSQ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 07, 2025 at 11:26:17PM +0530, Nitin Rawat wrote:

> 1. Regulator and PMIC configurations are board-specific, meaning they can
> vary significantly across different platforms. For example, some boards m=
ay
> use different generations of UFS devices =E2=80=94 such as UFS 2.x =E2=80=
=94 which come with
> distinct power and load requirements and some with UFS3.x which has it own
> power/load requirement.

Requirements from generations of UFS devices presumably come from the
UFS spec and should just be known though?

> 2. UFS PHY load and PMIC requirements also varies across targets, dependi=
ng
> on the underlying technology node and the specific PHY capabilities. These
> differences can be influenced by the MIPI version or other implementation
> details.

If you've got non-enumerable PHYs that have a big impact that's a much
clearer use case for putting things in DT.

> Given this variability, expressing these requirements in the device tree
> allows for a flexible and accurate way to describe board-specific
> constraints without hardcoding them into the driver.

There's still the issue with making this a thing for all regulators, not
just for this specific device.

--G2ENHz2PdHsOQPSQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmiU9D4ACgkQJNaLcl1U
h9Dqwgf+JbIQrV4egEG41IhOo2GykmQdxoZIruBzsUhW9fiW7X/5mVa0iiwvNEtn
HJ1vYBMJsMJPB3NW4tszSqFAAmc0qw8CywTwDzvGNPPot7+E4SAHVGMcoYKQDY63
SiJRyciCV78ASvHAduHElQdln3nVEoA/DAm4nQnn090HTcLpK0lV7M9BqU95PU/+
XuX51rX6hbXcH16FFZNJ9eqEvk5d/x67M3wZeXdFmZZ1Fb4pqFzrFblzQvveOhPF
2z6oQ49XxsTAS5Y4c1ZVDpnXo5t2boRYnQeX1DUnDPZTAWyOCvbJkw694CAlnCX3
F69UdClfNpyEYvrx4YYCSo/clrNe6w==
=L2AK
-----END PGP SIGNATURE-----

--G2ENHz2PdHsOQPSQ--


--===============5243273328642354224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5243273328642354224==--

