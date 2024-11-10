Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2C48D5E38F
	for <linux-phy@archiver.kernel.org>; Sun, 10 Nov 2024 09:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bY89xGeMaABh3WxC0RI6aGvYFVwsSAw9CFsV+F0hebo=; b=jaAI3oUIwPP9pq
	D1ndjnZ7pvbQUv0yZan28JBOE3Gz5Z/9Z5xhzS/g+y/c6roofJ0QbQ0LS2IBuU+APyqXp1zfdw1Mj
	WPXqXkZZoaRT6J+YUPX2TJuwx2vo9vHtwH3YmvnrtdDJbqnoBpz7KNqt7ecvmZkEvtnYQHwCninZe
	3pBkLuMDhr9s1tY2uTAmf3nyROLM9nyLO3H9dGxjWTwxEGsQpjyttnMU0Re4pRSeq8zMH+gDNBD1L
	ukCw1p5/nZCdYZSgvyZ74nz/UWjkAeUIxb262S2GwJY9+S+idOuMG3flQx1jERC8/ppdkqSNAPS42
	clp50NbCnQj8VM55RU8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tA4Fl-0000000EcdW-0Tr2;
	Sun, 10 Nov 2024 09:29:05 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tA4Ck-0000000EcOy-2F2a;
	Sun, 10 Nov 2024 09:25:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id EC892A408AA;
	Sun, 10 Nov 2024 09:24:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED6E9C4CECD;
	Sun, 10 Nov 2024 09:25:56 +0000 (UTC)
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 66C5F5F836;
	Sun, 10 Nov 2024 17:25:54 +0800 (CST)
From: Chen-Yu Tsai <wens@csie.org>
To: linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pm@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 Cody Eksal <masterr3c0rd@epochal.quest>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, Nishanth Menon <nm@ti.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, Stephen Boyd <sboyd@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Viresh Kumar <vireshk@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Yangtao Li <tiny.windzz@gmail.com>, 
 Parthiban <parthiban@linumiz.com>, Andre Przywara <andre.przywara@arm.com>
In-Reply-To: <20241031070232.1793078-1-masterr3c0rd@epochal.quest>
References: <20241031070232.1793078-1-masterr3c0rd@epochal.quest>
Subject: Re: (subset) [PATCH v2 00/13] sunxi: A100/A133 second stage
 support
Message-Id: <173123075439.3498315.14594380373540297845.b4-ty@csie.org>
Date: Sun, 10 Nov 2024 17:25:54 +0800
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241110_012558_669868_2AB195B1 
X-CRM114-Status: GOOD (  10.62  )
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

On Thu, 31 Oct 2024 04:02:13 -0300, Cody Eksal wrote:
> This is V2 of this series [5], with some changes that were requested and
> others that were made after testing on more devices. Thank you for all of
> your feedback! A changelog is available below.
> 
> ==================
> Back in 2020, two Allwinner employees, Yangtao Li and Shuosheng Huang, each
> submitted a patch series for the A100 series of SoCs; [1] intended to add
> support for the watchdog, ARM PMU, DMA, USB, and (e)MMC controller, and [2]
> implemented DVFS support. Some patches from the first series landed, but
> the rest were seemingly abandoned.
> 
> [...]

Applied to dt-for-6.13 in git@github.com:linux-sunxi/linux-sunxi.git, thanks!

[10/13] arm64: dts: allwinner: a100: perf1: Add eMMC and MMC node
        commit: af1ad5675a2b5feebb49df0e0ac7dab1aeabfaa8

Best regards,
-- 
Chen-Yu Tsai <wens@csie.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
