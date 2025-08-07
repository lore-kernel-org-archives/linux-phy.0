Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6965C87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 19:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JlpQFThi0qE9cgZK79YhUJxgsuakXMeDtW9vXk+4yIo=; b=a66w61SH/T9FpJ1tPrpnP1PECp
	XMrH2OWO3Qc/fGdLUh9vD7BVbYt7EE9/CenbMlvefYdAC4ZkYqBdltT5V9AXMcxbkdv7TqogFDPMY
	uVwcvnMk6CFmGbAzD15LUbNwTaoDPyvZoLrY4hzNGlReo9fJqXYhT/z2TTXGLuXBGd+GizHC2549a
	ZLLWKhqtHexa2Qo93uedqrtkgr4B2sHsHQSZexh7pbN6ZmYnE9JmoO0fvY8qy3DyJ8kTxiiZkIgzF
	Cct+uF938njekAWEHc4lezGgMzFhhJkLu8n11cyRVyq149CHHk/uLKkn7phze05WXu5zwNVzD1cJX
	yJgu80NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk61i-00000001O1D-21s0;
	Thu, 07 Aug 2025 19:11:46 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk603-00000001NqX-3gMz
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 19:10:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id EA117A562CE;
	Thu,  7 Aug 2025 19:10:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 846AEC4CEEB;
	Thu,  7 Aug 2025 19:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754593802;
	bh=PcBVixaPhZIma1L0iYmSkiKVbdxAykP6NlB0vN5Hd9k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U72ma2+jatKX2tdaIBlq82L/EbRZmu4VJqzECPOaIGMb5HdtGfpvr5N3eTwQ/aPA5
	 9wWkvLV5pfDVm65CCodhw1kgGX0aYz5fqClorxgeFBdkHCikGQmwkeiwQEwF4euV8S
	 4Nvlsdhvl1AfgTrORb8wfiKAKCCkmyIDtqDj/l+YNlN1kmHaspMusfYyaqWXPWGba5
	 ao+uAIV7N8S681aPK4QJkdXgJ7FnrxsZ8maorziVw+xHXIzq3McR+7TB2che+XILW3
	 q+K6WCCPtcsUDzG1b2vHJykKq+VsiPeR5Dyd7SvthO+aIhzYI+3tCzJTKqnacUfO8o
	 NwzM41d68w/Iw==
Date: Thu, 7 Aug 2025 20:09:56 +0100
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
Message-ID: <14566f49-7f7b-4583-98b7-8a473054f7c3@sirena.org.uk>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
 <8c7f8cfc-2090-449e-b6ec-688a0021bac4@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <8c7f8cfc-2090-449e-b6ec-688a0021bac4@oss.qualcomm.com>
X-Cookie: Real Users hate Real Programmers.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_121004_050864_EDD680D9 
X-CRM114-Status: GOOD (  24.40  )
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
Content-Type: multipart/mixed; boundary="===============0242919787562708343=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============0242919787562708343==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZQ/9gvUlZUpmI6Wa"
Content-Disposition: inline


--ZQ/9gvUlZUpmI6Wa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 07, 2025 at 07:43:15PM +0200, Konrad Dybcio wrote:
> On 8/7/25 7:26 PM, Mark Brown wrote:

> > Note that that's specifying OPPs which is different...

> The microamp properties are in the top-level, not under OPP if
> that's what you meant

I mean the OPPs use case is an existing well known one for dumping stuff
into DT.

> > That doesn't mean that it's a good idea to put that information in the
> > DT, nor if it is sensible to put in DT does it mean that it's a good
> > idea to define a generic property that applies to all regulator
> > consumers which is what I now think Konrad is proposing.

> Yeah, that's what I had in mind

> I was never able to get a reliable source for those numbers myselfe
> either.. At least some of them are prooooobably? chosen based on the
> used regulator type, to ensure it's always in HPM..

That's what set_mode() is for.  Like I say it's becoming less and less
relevant though.

> That said, our drivers cover a wide variety of hardware, built on a
> wide variety of process nodes, with different configurations, etc.,
> so it's either polluting the DT, or polluting the driver with
> per-compatible hardcoded data (and additional compatibles because
> fallbacks wouldn't work most of the time)

That's really not a persuasive argument for adding a genric property
that applies to all regulator consumers...

My instinct with this stuff is generally to avoid putting it in the DT,
we see far too many instances where someone's typed some numbers in
wrongly or discovers the ability to drive the hardware harder and needs
to tune the numbers - once something is ABI you're stuck just trusting
the numbers.  That said I'm not going to stop you putting something
specific to this driver in there, I just don't think this is a good idea
as a generic property.

--ZQ/9gvUlZUpmI6Wa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmiU+gQACgkQJNaLcl1U
h9A6+Qf+P9rMcaISs2p5ORHNQ/KdH3BurrkFhaK5oNZcLsN/cOuTcSjAMt7Ln8rw
Nj+TKRTJ/mByw4x7wgCunOwGRcUVJ840ilAA1jAsHIQZMKUCDqTNfLRc1PmeqG/e
pdTpE+It81dpY5XpoulAhwu8h8fc9GX1YFw3/43/NWYX4NkGh94r8sLDtjv8jHwX
enIET9goOxiiyfECGkBfpwXN8fjUVQX4Y9f5LeIiunXQk3/tRwzNqncI2m9+vAsB
aSXD7Jg9yvrIzgC97tLsAVuD8weoo4w9YBYWczMwvmvywLXPgzCIjx1tL/6tG2Cz
gJsPOQ9NajGkZ8Ud/Q5EPaqyiGb+hQ==
=V89y
-----END PGP SIGNATURE-----

--ZQ/9gvUlZUpmI6Wa--


--===============0242919787562708343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============0242919787562708343==--

