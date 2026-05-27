Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9681CD5BDE
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 08:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8xEy61SXOW3fhQ6iqweWqlPtZ2DJH5pQ/4Cj8EHcxk=; b=0j5Mb+z3MkfCQX
	P0daRj+l3EBpUXCS4dCQqJ1AuA94HTS8AUFtyEg/LsuI1J58420KCzIwJH86rQ2g7SLXhCnq9jlDG
	5Ab6Vu+y06hXt5yrpeR/L3y/wY6B23C1vNzMMuMdruoTxB8TLRFUn6+fmZB3QCHH6kQT2vvctWy6g
	wDWn4KF4mShoF8nMBqAvBObRnTxj087KrTwknl9QXGCSlt5ZlSN6J0or8cNfVUN5p5BqU4weu2Wvk
	jcsvlNeszypK77HWWtjGjsab4qRV8OrWeDcbiS6bAo6ZgVHtDGq/pSK6h+dEfzoKNRhdNJpmQ0Tu4
	fHXkga2GmlGRJ3dUQfjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSA3Y-00000003a8s-3JyY;
	Wed, 27 May 2026 08:56:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSA3V-00000003a8Q-2MAg
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 08:56:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F21A2417CD;
	Wed, 27 May 2026 08:56:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B484D1F000E9;
	Wed, 27 May 2026 08:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779872160;
	bh=ib0u8wAsUxzvlOKdNKtDF+qDqNdM6aAwqqnl17TlWSs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KQacwnWZYucad3OMlH4bgCwK5+HytIlP2xmUWDWVu1aKNEcMnRkoHDS6oxA0yoXbJ
	 UOghVEifFw/Mqlc76smlZkxTGYk4NMV8VSIG85qmEL7CBZkU07KEaSYg0lGOcGeVOC
	 ZBZSwTSdOpA00S+sWnT/dgD9gnIrmYD0IuwPUo6205l0qSeDfid14p0PVruPBo9Cme
	 u+rNTr8ax//Lp4Qvgkr9sFWZqwCGAHBioxr31EE8Dy5l/xtMQfv9IKqsW/60MLTiLD
	 aINgobM7iV3C7FiarP6cZVYEZurwe5lFcxbIiinHFmNk2EbZ7lJJpu431MmJwBGERR
	 OzxXmQAfyNIFA==
Date: Wed, 27 May 2026 10:55:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com
Subject: Re: [PATCH v3 1/5] dt-bindings: arm: qcom: Document Shikra and its
 EVK boards
Message-ID: <20260527-pastel-fuzzy-mastodon-a4d9cd@quoll>
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
 <20260522-shikra-dt-v3-1-80ffde8a3dc4@oss.qualcomm.com>
 <20260526-quantum-funny-gorilla-cfc983@quoll>
 <951c9b8f-4513-47ca-afb6-481dedd3eff9@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <951c9b8f-4513-47ca-afb6-481dedd3eff9@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_015601_630184_9B71CEFF 
X-CRM114-Status: GOOD (  13.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, May 27, 2026 at 12:42:20PM +0530, Komal Bajaj wrote:
> On 5/26/2026 9:15 PM, Krzysztof Kozlowski wrote:
> > On Fri, May 22, 2026 at 11:32:24PM +0530, Komal Bajaj wrote:
> > > Shikra is a Qualcomm IoT SoC available in a System-on-Module (SoM)
> > > form factor. The SoM integrates the Shikra SoC, PMICs, and essential
> > > passives, and is designed to be mounted on carrier boards.
> > > 
> > > Three eSoM variant are introduced:
> > >    - CQM: retail variant with integrated modem
> > >    - CQS: retail variant without modem
> > >    - IQS: industrial-grade variant without modem
> > Industrial/consumer variants differ often only with thermal, so how is
> > it here? Thermal difference does not make them incompatible. Honestly,
> > usually industrial one does not even receive dedicated compatibles.
> 
> The IQS variant uses a PM8150 PMIC, while CQS/CQM use PM4125 + PM8005. These


This should be part of commit msg. You explained WHAT you did, not WHY.
We see the diff and we see you added cqm, cqs and iqs...

Also:
Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
