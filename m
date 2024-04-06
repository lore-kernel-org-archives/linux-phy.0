Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39CB0C67861
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 09:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfCViIJP6vQvJGgPrPy22vfij5MQJxu09dFogk4HHxw=; b=dHFJFxdj+RI0fn
	MC9ux3nXajzQ72Z+xckjlyRbCtOzIaX8bxvkodixDju1+d6DAVBYlEx4Rog2x0P7fyJGYZ6l5wB5m
	ec6ZSSx4K4nnoktMNUsKKNpOk+FcvAlMpW+Jhqoiq6Viz8C5kZ8su6if0eeY6n2ywTDuYfLMegANF
	9Kn9ce2c7vm6B/fzHylPF+s5d8GZbwzz6E01hooqf5hKIR7suO5zMzIbscKyOQGD1inIJZuPrSAHA
	Q+STbMKwY3rmAPyUgY8gfricdRvAPw0eiMZyoO5Yi0/H+Z7Gim2w23WhrxNOu3VMtEgEa/6+INxzi
	9baFb1tv/l1MCe1BGq3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2Dh-0000000A21n-0RFA;
	Sat, 06 Apr 2024 09:20:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2DF-0000000A1ua-17az;
	Sat, 06 Apr 2024 09:19:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0FBA560921;
	Sat,  6 Apr 2024 09:19:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0387DC433C7;
	Sat,  6 Apr 2024 09:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712395186;
	bh=ZszyxTgj8EnYtTuGNwhBJNSzLvn+uASx2IZx41dSrN0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=S/S//RIegxSFn0baXqS24IoG5k/cCwd0QHq6+/TG/px0q/G4vbzjQt3CS1rCI9Sfb
	 79e71HDf79008J3/hSjstjqxKc6n6UKpooTPTMF9OqoyVP9DLWYcQjzN/Jx4WtP3Jm
	 vHwmykKoniJ8lTkQFq1wYycXt8kwbXwBSMm54AhkEwAlAu0QOzo5pIts56x1c3W7Wm
	 7Wqp3n5z4Y1hJU9f9rwQ5vrheMPSRstxdZ5cnr5rjVdKbsLo2j8vL8eOty+6Zcr0fZ
	 HSnNDyT0K33hMUjL27D6bEwId/2CqR6jghbjIPMxDrUDoO5ocMKswmjMdYaqRI1vVq
	 JYpnGTyGqRRog==
From: Vinod Koul <vkoul@kernel.org>
To: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org, 
 alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
 s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
 martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
 Peter Griffin <peter.griffin@linaro.org>
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
 andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
Subject: Re: (subset) [PATCH 00/17] HSI2, UFS & UFS phy support for Tensor
 GS101
Message-Id: <171239517860.352396.12091328444055090399.b4-ty@kernel.org>
Date: Sat, 06 Apr 2024 14:49:38 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_021949_409806_F8367C2A 
X-CRM114-Status: UNSURE (   6.96  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Thu, 04 Apr 2024 13:25:42 +0100, Peter Griffin wrote:
> This series adds support for the High Speed Interface (HSI) 2 clock
> management unit, UFS controller and UFS phy calibration/tuning for GS101.
> 
> With this series applied, UFS is now functional! The SKhynix HN8T05BZGKX015
> can be enumerated, partitions mounted etc. This then allows us to move away
> from the initramfs rootfs we have been using for development so far.
> 
> [...]

Applied, thanks!

[04/17] dt-bindings: phy: samsung,ufs-phy: Add dedicated gs101-ufs-phy compatible
        commit: 724e4fc053fe217d0ed477517ae68db11feab1f5
[09/17] phy: samsung-ufs: use exynos_get_pmu_regmap_by_phandle() to obtain PMU regmap
        commit: f2c6d0fa197a1558f4ef50162bb87e6644af232d
[10/17] phy: samsung-ufs: ufs: Add SoC callbacks for calibration and clk data recovery
        commit: a4de58a9096b471f9dc1c2bc6bfaa8aa48110c31
[11/17] phy: samsung-ufs: ufs: Add support for gs101 UFS phy tuning
        commit: c1cf725db1065153459f0deb69bd4d497a5fd183
[17/17] MAINTAINERS: Add phy-gs101-ufs file to Tensor GS101.
        commit: 0338e1d2f933a4ec7ae96ed1f40c39b899e357d7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
