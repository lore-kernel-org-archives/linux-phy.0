Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FCCFC10F15
	for <linux-phy@archiver.kernel.org>; Thu, 25 Apr 2024 10:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZJPCGndXqqfcm2agjYWeXXbWF6li2FDsplNiRt1uRY=; b=EmOp9IbuAtzdq6
	FcW90tzw+SoqVtmC9HPv/4t0daSAxjy6955pEmpkXFqsesEcPSdQUVisJ2pXxzRdHGlLj78vWXq9A
	+5HI+Hz7yvCze3pE1LRe2R3hJ07TYUTrUH7Ole5H6Mm1KQ6SCcXloG8tSm7XZEz0eySnTxDL7upS5
	n9hvwvYTQ1uuWaTtUIAModKVoKY+fm5LSdpOUvuEGCfgTmYH6UbIJsTBTNEVUn5yLfTiWsDVvhWiu
	8Jkd6mfvIh4i27TXQ/TKkYF3L2OwydStesPVEWvDVc+ltS0fv7RpNnPOT38OHgG97pqq0rn1kgb+C
	XkptVbfeJcKxoyxW+7Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzwdk-00000007tKN-0H9B;
	Thu, 25 Apr 2024 10:47:44 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzwdf-00000007tIn-0p61;
	Thu, 25 Apr 2024 10:47:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4F4B6CE19D3;
	Thu, 25 Apr 2024 10:47:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8685C2BBFC;
	Thu, 25 Apr 2024 10:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714042056;
	bh=l2oN0apwOiempgVQoJgZseQpsSAT0VXcChaYnxGf5No=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=grUwHalgTFeirub4RVOOgYoOFWiFJT7ZuWldcDOCNt/9OhA6Q9AISETZbg+78W3Nh
	 bqUz4vpDhUmJqN/rkNOAwc/4WmkDGQoD7Y9Bq1pqbGmrG3jqU+9N61epUzUSbslHoi
	 p4hln/h3yFHopxYsWvz0s2rpQ8py14u5d0aRXAzv+6FAxbmWVhqiobYAz/dy6pFlyB
	 smPcuITe3RCuIcxgRvzgv5N0Bj+JArZb2GhOgEYRS92kG+IEENBPEQ08jX/6FVWF+p
	 wJmWkVvBvrfrUaR0v34xA5/agrcXEPWTmiiulr+m1pI32Gt30TsmSHHBZ2mAXsvtBa
	 UyZVMyl2bdg5A==
Message-ID: <97b173c3-052f-498c-b0f9-58e60e9f29cf@kernel.org>
Date: Thu, 25 Apr 2024 12:47:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/14] HSI2, UFS & UFS phy support for Tensor GS101
To: Peter Griffin <peter.griffin@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
 bvanassche@acm.org, s.nawrocki@samsung.com, cw00.choi@samsung.com,
 jejb@linux.ibm.com, martin.petersen@oracle.com,
 James.Bottomley@hansenpartnership.com, ebiggers@kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org,
 andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
 <1c6f5984-7f9f-47e3-98c3-3c3671512675@kernel.org>
 <CADrjBPq_0nUYRABKpskRF_dhHu+4K=duPVZX==0pr+cjSL_caQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <CADrjBPq_0nUYRABKpskRF_dhHu+4K=duPVZX==0pr+cjSL_caQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_034739_640385_885139AB 
X-CRM114-Status: GOOD (  19.24  )
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

On 25/04/2024 12:31, Peter Griffin wrote:
> Hi Krzysztof,
> 
> On Thu, 25 Apr 2024 at 08:08, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On 23/04/2024 22:49, Peter Griffin wrote:
>>> Hi James, Martin, Alim, Bart, Krzysztof, Vinod, all
>>>
>>> Firstly, many thanks to everyone who reviewed and tested v1.
>>>
>>> This series adds support for the High Speed Interface (HSI) 2 clock
>>> management unit, UFS controller and UFS phy calibration/tuning for GS101
>>> found in Pixel 6.
>>>
>>> With this series applied, UFS is now functional on gs101. The SKhynix
>>> HN8T05BZGKX015 can be enumerated, partitions mounted etc. This allows us to
>>> move away from the initramfs rootfs we have been using for development so far.
>>>
>>> Merge Strategy
>>> 1) UFS driver/bindings via UFS/SCSI tree (James / Martin / Alim)
>>> 2) GS101 DTS/DTSI should go via Krzysztofs Exynos SoC tree
>>> 3) Clock driver/bindings via Clock tree (Krzysztof / Stephen)
>>> 4) PHY driver/bindings via PHY tree (Vinod)
>>>
>>> The v2 series has been rebased on next-20240422, as such all the phy parts
>>> which were already queued by Vinod have been dropped. Two new phy patches
>>> are added to address review feedback received after the patches were queued.
>>>
>>> The series is broadly split into the following parts:
>>> 1) dt-bindings documentation updates
>>> 2) gs101/oriole dts & dtsi updates
>>> 3) Prepatory patches for ufs-exynos driver
>>> 4) GS101 ufs-exynos support
>>> 5) gs101 phy fixes
>>>
>>
>> I asked to split, otherwise please explain why PHY and UFS depends on
>> DTS and clk.
> 
> Seems I misunderstood your feedback. I thought you just want me to
> make clear who was merging what from the series via which tree. But
> you want separate series?
> 
> 1) ufs host dt bindings & driver
> 2) minor phy fixes series (most patches got applied already for phy)
> 
> What do you want for cmu_hsi2 clocks and dts/dtsi? The device tree
> depends on the clock bindings to compile

This is not specific to Samsung Soc, Qualcomm soc or any other arm-soc.
Independent patches for different subsystems should not be put together
in one patchset. You create false impression of dependencies, grow CC
list, cause issues when applying (I cannot just apply entire set with
one command, but need to run multiple commands (!!!), plus certain
subsystems will reject your patchset because they take everything or
nothing) and possible bisection issues (because patches which should be
tested independently, are put together so testing does not uncover
undocumented dependencies).

Almost never combine independent patches which are targeted to entirely
different subsystems. There are exceptions, but regular feature work is
not one of them.

Subsystem is everything in top level of drivers/ and drivers/soc/ (or
kind of arch/arm64/boot/dts/, but that tricky because
Tesla/Google/Exynos are one subsystem). Or whatever is there in
MAINTAINERS file.

I don't know, we keep repeating this over multiple times, so it could be
added to some docs, but people do not read docs...

1. Drivers and driver bindings go to subsystems.
2. DTS and board compatibles go to soc.
a. Any dependency on driver is a near-NAK.
b. Any dependency on headers must be clearly expressed, because headers
cannot be back-merged from subsystem tree to DTS tree.
c. Any usage or usage of bindings from other sets must be clearly
expressed (linked).
3. drivers/soc go to soc.

Things from list above targeting the same maintainer tree, can be
combined in one series, with dependencies expressed in patch changelogs
or cover letter.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
