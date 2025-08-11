Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89BE8CA0EDE
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 22:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3JnNSmDtTdx+iNgWjbRBUjztQiw4z6met9DvNoCAToU=; b=WEwVp+JTYx9c8ZU1/m2+51vSRz
	vyCWhzetMSa89dokLDRFAcXPgAo28eeRXfgK8LOq2SnWQECn5wEy0mzAkPwItfu2w1BzXYrpLppLu
	uZPs8Mjn2C0KdoOvN4WAH2Cy6q2y+cqrDYoDEu4P5q5aEYEjk4Xzds3kV2K/qS/Suo1O3TyFIykCy
	ZmDIRSAL/DIdzDF+SJ6c6iEmgsLLdChHpo3lNurNDoSg12b5xvimJO5Ud1cvwz5IKdV1ytOnLErtm
	sJgWmwaJJbfJSAqg2iGTowY2m9lflzd9Nadnggj/4/AOzsmrtNtKwQBi0yjRIv7/o5fCBhd9HsMrd
	EVmxaY/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulaaq-000000099gL-3dZo;
	Mon, 11 Aug 2025 22:02:12 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulVA7-00000008MDc-2ZjT
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 16:14:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 77CEDA5746C;
	Mon, 11 Aug 2025 16:14:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5191C4CEED;
	Mon, 11 Aug 2025 16:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754928854;
	bh=zUvFB3N7aRigcs85SVTI8l61IaGOrKzSv0p4/Mkmidc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DQKZkosJk4fVVmEqzcG9LhpFHnU38nzt9N2S2KsEaamcoz4FpBvVMyt8LUi5F/qyF
	 C7xYTz7BDI+O+TthuXIlRLj//tWa5hGP/mQFeP3RY1D7BBdE96qz7bPhym6uDrOUfG
	 h3Ba79ALK1lk/EDrV16kcRHtTzzlxGx2QJbH6zaYuqjiacbN2CCuzlMEOZPVjlRGfc
	 M8khlsQOvYvwWBPi1+H6wpxtC5VmewhfG7t/evRDD7HJ+nwM7crN9kBVNKZfz4Yc8J
	 jB1kQGjrrMjle/7cA9taNeHCadeT9XICl+9qzYPkEoH5qxemzLwf25JOMIqRoefNAc
	 vCl+lOKI+dMkQ==
Date: Mon, 11 Aug 2025 17:14:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, mani@kernel.org, conor+dt@kernel.org,
	bvanassche@acm.org, neil.armstrong@linaro.org,
	dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
	krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
Message-ID: <81858c88-151a-46ea-9172-76d3052467e9@sirena.org.uk>
References: <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
 <8c7f8cfc-2090-449e-b6ec-688a0021bac4@oss.qualcomm.com>
 <14566f49-7f7b-4583-98b7-8a473054f7c3@sirena.org.uk>
 <kwp3q4r5rzahzro5f6l6ml24vbiutyxokrhjsbtzcb5kvanx5e@elagxv6w5dq7>
MIME-Version: 1.0
In-Reply-To: <kwp3q4r5rzahzro5f6l6ml24vbiutyxokrhjsbtzcb5kvanx5e@elagxv6w5dq7>
X-Cookie: Preserve the old, but know the new.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_091415_784916_88A94459 
X-CRM114-Status: GOOD (  17.94  )
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
Content-Type: multipart/mixed; boundary="===============4058442127311952348=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============4058442127311952348==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RYB+8S+psHX1nRNn"
Content-Disposition: inline


--RYB+8S+psHX1nRNn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 11, 2025 at 10:50:27AM -0500, Bjorn Andersson wrote:
> On Thu, Aug 07, 2025 at 08:09:56PM +0100, Mark Brown wrote:
> > On Thu, Aug 07, 2025 at 07:43:15PM +0200, Konrad Dybcio wrote:

> > > I was never able to get a reliable source for those numbers myselfe
> > > either.. At least some of them are prooooobably? chosen based on the
> > > used regulator type, to ensure it's always in HPM..

> > That's what set_mode() is for.  Like I say it's becoming less and less
> > relevant though.

> set_mode() just applies the mode to the regulator_dev, so in cases where
> you have multiple consumers of a regulator_dev things would break.

> Further, there are numerous cases where we have multiple consumers each
> needing a "low" mode, but their combined load requires a "high" mode.

> set_load() and its aggregation of the inputs deals with both of these
> issues.

That sort of active mode management is not the suggestion above that all
this stuff is just intended to force the regulator to always be in high
power mode.  If that's the goal then like I say just use set_mode() and
directly express it.

> Whether mode setting is becoming less relevant in our hardware, that I
> don't have the definitive answer to.

I rather get the impression that nobody understands what any of this
stuff is actually trying to accomplish in these systems and is just
copying things around from older code or BSPs, I'm not entirely
convinced it's actually doing anything useful in modern systems.

--RYB+8S+psHX1nRNn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmiaFs8ACgkQJNaLcl1U
h9BxhQf/UJqZKs8mo12KlYBhGyWFco3u7lVCgt4l+vj3fCKJh/itUOLOKH88rJHY
5bo974wYeOZIoR+rasvIWrlL4l6TD8GZJUKXrnwczYVD/V2saf5pDUdxIZN+QuwZ
QZFAj8tK1iE5JorOYirLzAG4Y/VHpFK7PTXljI5DWeSzZsvxTtUqCPbxUyEtIwWi
0TIbFBeEmU4Z6mZLO6DFcNmXJFajAQO3NVQQyQwnmqGm593+8OZpdSggKN/SrCO+
1PTy9oucOf7K6cAM5SJEjT1ozMuCT5deSq+2C5SL+QxfoMtRjnD9rgGUoufst9KK
vKK5kKDcrWDg+TRAFfl2FpHWzvB3HA==
=y1Fm
-----END PGP SIGNATURE-----

--RYB+8S+psHX1nRNn--


--===============4058442127311952348==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4058442127311952348==--

