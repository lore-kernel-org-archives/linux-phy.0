Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07625C87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 17:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8BK2hLIHFAR+nMaggZtxadbmZIGrXlwk1gEYhinCOpQ=; b=l5Tok+23adt/ptKS4uSBi6hKSG
	8DF6QK7PfZjcaqvGdJszeaWydysdosAmZ6zaK8zQ9x2xwChm+377ev+Zb2+Itq5dltCH62p4dc85u
	8cxeyolg+VLEKJNRMhxOmlxoEz6WYqXwWiQWGju78TqPUqRq7D3DjbzwhdLiC2ALIla1woRR8VhC4
	Ixdsl3HN8cOW60F+X7XKrgP9lm4ppS34hUdp/H4zUG7bQiLLNcJpHMhv7aAybrwEwGBpSGkIW0qr5
	CEZICQ5Bq/+hmTbwt4JY31Vp7pyHRH3wqdlsvPb4cGhsQF8maRa7yX4Ks43Ty2UCsknLkIf+Xgaj/
	UI/AYF0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk4eh-00000001GUY-3IOt;
	Thu, 07 Aug 2025 17:43:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk4ee-00000001GUB-3npT
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 17:43:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4BA3C4368B;
	Thu,  7 Aug 2025 17:43:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25837C4CEEB;
	Thu,  7 Aug 2025 17:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754588632;
	bh=hsJ20AJl02FZvdjaBaFD/7kmVr1aVFSkgrbL9mdgx8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=py81cQlrN4yMFMilgTcUb9828p9+/sKb8uMKTBcuF4nfljeMZsqBFLzGdNgHgC69Y
	 Xo6lFkl6Qi+2oZIqVqJxoykTjWRQMsLGN95tEQHgyoARmBaZb65jt9Hel2my6rJ1O8
	 EoZupmAzmcBK1Sr9S2xwpcdoCLIJp2/uSueQL64+erED5ZOvFeGBDpdMdCUneC3hh6
	 2ji7Z+fSsAzlEuMf2ySVBvxE2Mlj9q9VxUGu9AcpBTGIItWwOKzEULRxfeO6gv3KwD
	 vex19T/MYYcvPH5yecJUUxFsOGOcQ+/8mZmxgCRmoS0KYbKcB0MvraAH8f4NUIa4rq
	 G4kozVdG2i75Q==
Date: Thu, 7 Aug 2025 18:43:46 +0100
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
Message-ID: <c1435858-6288-4525-8c92-e27ed86cb55e@sirena.org.uk>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
 <685e3d36-c0e3-4faa-b817-aecc15976a25@quicinc.com>
MIME-Version: 1.0
In-Reply-To: <685e3d36-c0e3-4faa-b817-aecc15976a25@quicinc.com>
X-Cookie: Real Users hate Real Programmers.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_104352_984885_76096B26 
X-CRM114-Status: GOOD (  19.80  )
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
Content-Type: multipart/mixed; boundary="===============7677690462462600479=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============7677690462462600479==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UswwCFe1kiMt6NyH"
Content-Disposition: inline


--UswwCFe1kiMt6NyH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 07, 2025 at 11:05:08PM +0530, Nitin Rawat wrote:
> On 8/7/2025 10:56 PM, Mark Brown wrote:

> > The issue isn't using regulator_set_load(), that's perfectly fine and
> > expected.  The issue is either reading the value to use from the
> > constraint information (which is just buggy) or adding a generic
> > property for this (which I'm not convinced is a good idea, I'd expect a
> > large propoprtion of drivers should just know what their requirements
> > are and that a generic property would just get abused).

> > > These drivers also define corresponding binding properties, as seen i=
n the
> > > UFS instances documented here:

> > > UFS Common DT Binding ((link - https://git.kernel.org/pub/scm/linux/k=
ernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/ufs/uf=
s-common.yaml?h=3Dnext-20250807)

> > Note that that's specifying OPPs which is different...

> Sorry for the confusion .Instead, I meant the following three properties
> defined in the link to ufs-common.yaml binding, which specify the maximum
> load that can be drawn from the respective power supplies.

>   vcc-max-microamp:
>     description:
>       Specifies max. load that can be drawn from VCC supply.
>=20
>   vccq-max-microamp:
>     description:
>       Specifies max. load that can be drawn from VCCQ supply.
>=20
>   vccq2-max-microamp:
>     description:
>       Specifies max. load that can be drawn from VCCQ2 supply.

OK, but that's still not motivating putting things in DT (the properties
are there but don't explain why) and having this for some devices
doesn't really address the why make it a generic rather than device
specific part of things like Konrad was suggesting.  Perhaps there's
enough board specific variation that it does make sense to put something
specific to this consumer in DT, but it'd be another step to make it a
generic thing that applies to all regulators.

--UswwCFe1kiMt6NyH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmiU5dEACgkQJNaLcl1U
h9Dm9gf/czgCATFH8mHfsPQL7Jgte8mnqHdX8h7kP9EPNkqEGeVXbPEFYvflgjDn
DG0TXYgKYTC7xK4KbyOHNW4s5xaF6l5vQaLI3Aqzgu8vjGtosl3wW+SB25Ndiq+k
nYplTOOtPb5chlqkoZVzzcLAaJgniCDslLi3rcegCbWq6+E+QgFRKPhlWNaidizi
M5RCpyrno7rTaOZ/cFSnRGStemFTWPdw9N79hJabWESTK4+M9dYQciM0yTanMfhf
cvbNZnMqBp4CVEGl+e5l8p9MjUeyBKFkCY0rPHlPHRX3kKKpq68E6eQu8EoRjJly
u7+Oq3myiTklfSI/f3sAD6iQwdlhVA==
=dtCN
-----END PGP SIGNATURE-----

--UswwCFe1kiMt6NyH--


--===============7677690462462600479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7677690462462600479==--

