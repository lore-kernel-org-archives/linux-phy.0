Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4AA5C87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 17:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a6i19RbWgvlbUuWGTTbZYGPS8nMBppv8boF0CaqyOjM=; b=0SxVF6u+Bp5+tjuBz+o0AH5Ep6
	pMgnSLfMSvYKm7UyaU1YjJphske+QuFdjPofDr1FU991Ff+rcrSCNlYpmIzjUI5pFEPkk7SUYvfXO
	GRLoRbtPDXQ/kRPQMyqZlUVeJl7tqdYR9vuipDhIgCe+wONXa17nkU/vvIg//jyYbEsbVjvtnXcHN
	SRv0lvv3iAWD3oVZVSEAxy1WbzFecG+0iIvGR5siALNS9INeIAfT0RZvNQX16bl67PU/DbKW6BrpV
	hgk5p7cyTpbDwMWwFceLUKKCdbZJ5BCAQ3P6vR5qmrl2F3EFjRMmrDOyhd+kBwJuBoMzQSn2W/Z37
	4501vYnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk4Ok-00000001FJ2-16Uq;
	Thu, 07 Aug 2025 17:27:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk4Ns-00000001FDs-3OjI
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 17:26:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 25498600AA;
	Thu,  7 Aug 2025 17:26:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDA12C4CEEB;
	Thu,  7 Aug 2025 17:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754587591;
	bh=dBqBLGaHfPvygOmUPgSRr7Lv3hSqvGhrJ/xgbHGOQEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tql3hRFAbB7UmK9n+MyB/awAiw6Tt1INWh61kJC+RfPpdoun6czGMk18AEHB0r6g7
	 AoHpyjQujOfsf241npskC61CJMXQa0R1IgPOV8XRFXMocrNznhJTDNfGYPg8UtboS8
	 aH2U0LGItpsDkoKEsfjBwPHQ5qQmeNBIM9M4eZZ2R+pPXvtMiJ5D9BL+N+5LjFlTn2
	 XGnT5rRXkGY0yZ68dZYguArynKD4dGk8DNkkjFkmpCHulxH7oP6AW3TVZkHzkfSydP
	 VRAY0nBZm4k0ChVGRxIxNm5kWx9RUiovevMCBHB/2otnzkz4kY0sOuXpVDN7z3ctmp
	 P4/MlTiHVvfqw==
Date: Thu, 7 Aug 2025 18:26:25 +0100
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
Message-ID: <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
MIME-Version: 1.0
In-Reply-To: <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
X-Cookie: Real Users hate Real Programmers.
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
Content-Type: multipart/mixed; boundary="===============5987778653050944064=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5987778653050944064==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wdZedFUit1z97TcH"
Content-Disposition: inline


--wdZedFUit1z97TcH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 07, 2025 at 09:12:53PM +0530, Nitin Rawat wrote:
> On 8/7/2025 7:14 PM, Mark Brown wrote:

> > > The intended use is to set the load requirement and then only en/disable
> > > the consumer, so that the current load is updated in core (like in the
> > > kerneldoc of _regulator_handle_consumer_enable())

> > > My question was about moving the custom parsing of
> > > $supplyname-max-micromap introduced in this patch into the regulator
> > > core, as this seems like a rather common problem.

> > Wait, is this supposed to be some new property that you want to
> > standardise?  I didn't see a proposal for that, it's not something that
> > currently exists - the only standard properties that currently exist are
> > for the regulator as a whole.

> The UFS QMP PHY driver is not the first client to use regulator_set_load or
> alternatively set load requirements and invoke enable/disable or
> alternatively

The issue isn't using regulator_set_load(), that's perfectly fine and
expected.  The issue is either reading the value to use from the
constraint information (which is just buggy) or adding a generic
property for this (which I'm not convinced is a good idea, I'd expect a
large propoprtion of drivers should just know what their requirements
are and that a generic property would just get abused).

> These drivers also define corresponding binding properties, as seen in the
> UFS instances documented here:

> UFS Common DT Binding ((link - https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/ufs/ufs-common.yaml?h=next-20250807)

Note that that's specifying OPPs which is different...

> There was a previous effort to introduce similar properties
> (vdda-phy-max-microamp and vdda-pll-max-microamp) in the device tree
> bindings.
> Link - (link- https://patchwork.kernel.org/project/linux-arm-msm/patch/20220418205509.1102109-3-bhupesh.sharma@linaro.org/#24820481)

That patch also fails to supply any rationale for making this board
specific or generally putting them in the DT, AFAICT it's one of these
things just pulled out of the vendor tree without really thinking about
it.  The changelog just says the properties are in downstream DTs.

> Currently, the regulator framework does support automatic aggregation of
> load requests from multiple client drivers. Therefore, it is reasonable and
> necessary for each client to individually communicate its expected runtime
> load to the regulator framework to put the regulators in current
> operation mode.

That doesn't mean that it's a good idea to put that information in the
DT, nor if it is sensible to put in DT does it mean that it's a good
idea to define a generic property that applies to all regulator
consumers which is what I now think Konrad is proposing.

--wdZedFUit1z97TcH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmiU4cEACgkQJNaLcl1U
h9A1uQf+IZqIzqVC/IwgEVeZML9aeON0xrr7zZEGxO38RsjJwp34I1y1phzbA8Zx
6kAa4M2vu35vr1eJ2VmEY0bv7Afa6PHdITjGhB3URqGAG6ahCjrMBXZywus6/fuZ
9J5GNkcNHBD/yfqBiU9s0F8eERBe5JddiyG33RcNJCbhA4/fgAb8ZN3EGbd8K8Ej
1s0s0DkVUkdb7DriRcVgFRZN6z/AZnNlhjTOmjt7YAdBa5vYKX7CPT9A7PxnSRfE
HqF7hok9fr3aL2lFNInip73/fB3x+4BUqJiwPaBwztBRsqellMrHMFSFzYtagjGc
ULSqGXZGLtUEv/b0yNCSQNkXG0kH5w==
=AEUg
-----END PGP SIGNATURE-----

--wdZedFUit1z97TcH--


--===============5987778653050944064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5987778653050944064==--

