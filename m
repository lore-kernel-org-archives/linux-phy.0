Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38BFBC87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 13:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nC4UVN0MScFYkma8S+OPNrRPWFfOuU4XsKs2vloAc2E=; b=xf3S3Ts9wepDZ1lo5zc/gJ05RU
	y3GIhxmxy/D7x0/LyodyBUJEmdKtJBDKmjlS5ICHgtQM69w8OnS6TvIDh5Fyn7HLH5nAVa4FEeuIO
	yWLSrkog9FZOiKFbHLtcC1na8H9Dl4MqHi1Oy9iogCWRyTJbYTUFGBshj04Qg9R90EtO7qOJ53s8h
	6vO2jjj1Urgag1IxkRQHI/g0ItvwNAh6hD3OfcosW2mM4DDfH9G72QX6nd/vhJB00w81i7j4O5MwK
	GxzTPtlJ0tSBLPN3ChlRgrWpQmEs6OoQljXNhWkZL6bWWxg6ORBM4qjMW2mlh4XqKAZ5eRIsLCzXI
	azpgtlqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk0vc-00000000jhs-3b3s;
	Thu, 07 Aug 2025 13:45:08 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk0va-00000000jhD-2cCe
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 13:45:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 54D83A56246;
	Thu,  7 Aug 2025 13:45:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A24CC4CEEB;
	Thu,  7 Aug 2025 13:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754574305;
	bh=C9ZTC2V4f6Krh0DfrGNI8J67KB1RXxeKMeyb+CQylsw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mZq6qTtt97Mtn+Uldg4voJ3qdLR8kAiZxKCJ7pvjgr2NOlzjVSLJtW0nvT0uF8SGp
	 IB9ThGlxViuyE8IgpAl349YaDT2LmEMeJWmK4X5IALumsNUSyQtsZJUalkMGcSKmYr
	 /WTcRzfv8CvbChDtYcUTiorjYtm4cFD3E9xNNfC2G5YuofPBH7q0n1xAQtohbNb541
	 yaWHTcO+27V4rhkwxeYk0G7bxqtEYMBLOWJrE8mdv6AI3+OLVonfrm1o6wKbu9pnrL
	 HcEIl3GRRspSfSXs6e/Jit+T1aK+lJEzluJGoByBtcHTBOmXU66X4Y9pXbea702b9H
	 pVg+NT7OK6SeQ==
Date: Thu, 7 Aug 2025 14:44:58 +0100
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
Message-ID: <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
X-Cookie: Real Users hate Real Programmers.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_064506_798641_2AA73A04 
X-CRM114-Status: GOOD (  28.12  )
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
Content-Type: multipart/mixed; boundary="===============5236726707941292164=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============5236726707941292164==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LPspi1OYnjr8G9Mq"
Content-Disposition: inline


--LPspi1OYnjr8G9Mq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 07, 2025 at 03:06:01PM +0200, Konrad Dybcio wrote:
> On 8/6/25 6:51 PM, Mark Brown wrote:

> > I'm not clear why the driver is trying to do this at all, the driver is
> > AFAICT making no other effort to manage the load at all.  We already
> > impose any constraints that are defined for a regulator while initially
> > parsing them so it's not clear to me what this is supposed to
> > accomplish, and it'll be broken if the supply is ever shared since it'll
> > set the load from this individual consumer to the maximum that's
> > permitted for the regulator as a whole.

> Qualcomm regulators feature a low- and a high-power mode. As one may
> imagine, low- is preferred, and high- needs to be engaged if we go
> over a current threshold.

Sure, but the driver is like I say doing nothing to actively manage the
current reporting.  It's just pulling a random number not specific to
the device (the max-microamp configuration is part of the constraints
which apply to the regualtor as a whole) out of the DT and throwing it
at the framework.

> The specific regulator instances in question are often shared between
> a couple PHYs (UFS, PCIe, USB..) and we need to convey to the
> framework how much each consumer requires (and consumers can of course
> go on/off at runtime). The current value varies between platforms, so
> we want to read from DT.

In that case this will definitely encounter the bug I mentioned above
where it's trying to read the maximum load permitted for the regulator
as a whole and report it as the load from this one specific device.

> The intended use is to set the load requirement and then only en/disable
> the consumer, so that the current load is updated in core (like in the
> kerneldoc of _regulator_handle_consumer_enable())

> My question was about moving the custom parsing of
> $supplyname-max-micromap introduced in this patch into the regulator
> core, as this seems like a rather common problem.

Wait, is this supposed to be some new property that you want to
standardise?  I didn't see a proposal for that, it's not something that
currently exists - the only standard properties that currently exist are
for the regulator as a whole. =20

I'm not super convinced this is a particularly common issue, most
devices perform pretty much the same regardless of the board design so
the driver should just know their peak consumption and it's becoming
less and less common for regulators to need software help to adapt to
loads.  The main use case these days seems to be for safety (eg,
constraining how much can be drawn via a USB port) which seems like it'd
either be for the full supply or just known by the driver.

--LPspi1OYnjr8G9Mq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmiUrdkACgkQJNaLcl1U
h9BNGQf9GbS9mdCYh2Eh2IQodPUt5Q9D+YNr3KqV5S+1Vv5ylf9uh1NDYdTgwCFA
uxhVIvleyp9Sg69zLOYlacB6se0YXE2MrzdnhTpdlYogxM87SFY0uCFvkRsuVkd6
a6QQknpbzpWXqtXh6XXLuUmlzVY8v5OaddoCOAFRtwjP8jWGmOWg899ZfkBpUA4I
rZEIpyHyKXLwHH80d/vc/zZAhJOkG0L5kJwNPRXoV3eHpaj7rxbhNVa63qvioxlY
ilgx7wgo32i/BHUxyRCkrDMYX+Zyb16wygKoIDmgGQiz2sCLj1Icyt4UOGwUApXa
fmo0UcAZqA5z+vjYxBU2gvvqE/VFyQ==
=CqME
-----END PGP SIGNATURE-----

--LPspi1OYnjr8G9Mq--


--===============5236726707941292164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============5236726707941292164==--

