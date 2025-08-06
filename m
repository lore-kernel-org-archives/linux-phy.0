Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A19CC87FCB
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 16:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NORaOOtaTXlu2nHJQAepgINu6ENenXz51YEuGE9nWfQ=; b=sUx8PqFnGxLJyiwdEFdTP5RE1n
	7NxWz4JLbkq7c5DrGIV1y/LH8B/7SAdnH+rPlXiOJ+7OslwLW8rs/0g5mW0xhyNZuKZ6vfFenux/T
	AFyDTodEBxVSC/SUvC2FHFm9/6AhjabV+17daXJaMQyz8zHlg9/tVWH8OfahO5ne+NoOTzdcumqZb
	my3q/dadJkWDpfBeWEjIk/1LBOsVJvpy7PlkxXeBLljG9dF6zrCbGR71lMtzDaku3APpThId8A0t7
	5TYLPvyRrRdHja0MK3zmlvOJIG+0iptmAuIa9jsogjd4ZzO431WySb2Xl8JbNYuY93DHM755Fb6/o
	db2Udl0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujhNT-0000000FoCN-3t3c;
	Wed, 06 Aug 2025 16:52:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujhM8-0000000FnzS-28Jx
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 16:51:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C8CCB5C69C1;
	Wed,  6 Aug 2025 16:51:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29D81C4CEE7;
	Wed,  6 Aug 2025 16:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754499071;
	bh=URXTslLlgt9LuOCY77NXwIANbMuWh4Ebark9d01DQi4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q69bAhWEJvXQo1WKYVksF6TV+05YhJAeFp8toPMf/RA39fFVtk5Txfkw7UnBRTfDX
	 qkySvTuS9YezAItuwAIVWNTxnfRD6SYcG9LJr4ieBjka6KLj+JcZOgbW1uruVnfSof
	 Xe1XZEuT556kMQjKVLu9WXibJGCkkwgjwQfYhOxuqMYh7E4OkXjM5xkcCkz3q7ZnJt
	 59u7nBuLJvFMk2xThRmw5Ov6rPKc5UL/lcLXEAvn4VdtqIUZnKuvyg9vFN+p3m+3OW
	 ayUaUxoJ1TR1TDzghUKoxmyOGpXDLB3oG1elILX03Ve1rsDSlsAn5ldU26zFUYlJYk
	 0P13cVBnkbs5A==
Date: Wed, 6 Aug 2025 17:51:04 +0100
From: Mark Brown <broonie@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, mani@kernel.org, conor+dt@kernel.org,
	bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
	dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
	krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
Message-ID: <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
X-Cookie: New customers only.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_095112_585332_2A807DF2 
X-CRM114-Status: GOOD (  18.16  )
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
Content-Type: multipart/mixed; boundary="===============0520081357852568156=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0520081357852568156==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HlUTHESa6Nmwz3GM"
Content-Disposition: inline


--HlUTHESa6Nmwz3GM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 06, 2025 at 05:58:30PM +0200, Konrad Dybcio wrote:
> On 8/6/25 5:43 PM, Nitin Rawat wrote:

> > Add support in QMP PHY driver to read optional vdda-phy-max-microamp
> > and vdda-pll-max-microamp properties from the device tree.

> > These properties define the expected maximum current (in microamps) for
> > each supply. The driver uses this information to configure regulators
> > more accurately and ensure they operate in the correct mode based on
> > client load requirements.

> > If the property is not present, the driver defaults load to
> > `QMP_VREG_UNUSED`.

> do you think having this in regulator core would make sense?

I'm not clear why the driver is trying to do this at all, the driver is
AFAICT making no other effort to manage the load at all.  We already
impose any constraints that are defined for a regulator while initially
parsing them so it's not clear to me what this is supposed to
accomplish, and it'll be broken if the supply is ever shared since it'll
set the load from this individual consumer to the maximum that's
permitted for the regulator as a whole.

--HlUTHESa6Nmwz3GM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmiTh/cACgkQJNaLcl1U
h9BVEQf+Lx5n5FpPrf79MAF8jaJp37RXoLV6s7wH2llwQPEvWIrtLEg4jNRuV6IY
k9VEh+MCIB7BiC/DPphhdV34+/s4PVMiuKQ/v7CWoZco78ci8INgWou4U4Wx5tyC
CUEBE92Ss/+l01t2te+bDovSBFtankrBz1qktTf6DII/RWTUoW6SyDHYhQmiHeLR
IGDnkuzRH1j5L9qPN02nRhVf1jfQ4bOmhnr0Z24LqtjzIDPPwBkDiOOt11tVC26i
HA/RQmT8bniL6dWHcT6MrBDQBXnr4GQVASNOEjpEimMrh8cY/7CF5px+M8rPyuOs
91zPXG6hFwaCaJ2J2OfsZCgtFK8SDg==
=NQmr
-----END PGP SIGNATURE-----

--HlUTHESa6Nmwz3GM--


--===============0520081357852568156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0520081357852568156==--

