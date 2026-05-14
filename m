Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E97BACD4F25
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 16:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+iOom0H+ZLlW3VNmSCh4+bGDpeqv+ZS2vZ/MU1ORBE=; b=Dy4e6qAHx7gADn
	40BO4kpGLLRciFz0lPM2Dyc6kRplFA+OazAPJNuNEfLKM6VremZtJ13+4XvKv81nP2TqgC4xm/tyz
	JYhWVK+xoiuPtS8sfudXYRC2sNmw4jwtnohSoWimcRHU/wXMKch89DGAMbJb/sD9AEO/8BIof5Pzz
	KKu2+Kx8smOlZ+zMQaxM/jGwH0VPUj1iWxWTSLWmWpFaBQNX2bgyZ0tNSib57o6pwJPcREEjCZ1Tz
	2Bz7seLBkslfAT2s8h3H8sXg33kY+0tk/j0M2K2spSZVWlAFekWCTPYkVto8OXYgWXDs3ymz42lms
	0A4Jyv1Z6flx4YZaZ/OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYl9-000000061Yl-2wKy;
	Thu, 14 May 2026 16:18:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYl5-000000061Wl-0VUP
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 16:18:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 92A4A44395;
	Thu, 14 May 2026 16:17:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8A0FC2BCB3;
	Thu, 14 May 2026 16:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775478;
	bh=TLFuTPlEnspC4JO4RferxyIFfsNZM2YPrOrM7JZIa1s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Wfu6b5wacOfbZ9MxpwH1DxxBTeGz1/rZ3W/JOP2cYiBMZpvG26bmYfKGerZ0II+W0
	 Mj0wC1imKC2W5I7mDFLwHM2TmfFKlJkJqatdPsc4c7G7j141hLD64jvNCwCA5IF8id
	 3CxKwsJJK/ALkd+CPcHtSi4+Os4ouMEOw5saZDOdRlGDVRQqAa5/1nJO0s1rHlc1Jz
	 9lKEJaAPVvLWnkwN0pwvUU8zhg6DyYmmkHDelqRV55mP6BB6UojAc/OTomPJqAdcZf
	 k/exmQe5JRoB+VWEluoLc7ZfXpiBAsbslR6HPCptkz7osjmLN0KiHbagSR/gWeaAIJ
	 6N8Wi1FiX3LyQ==
From: Vinod Koul <vkoul@kernel.org>
To: Peng Fan <peng.fan@nxp.com>, linux-can@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Josua Mayer <josua@solid-run.com>, Ulf Hansson <ulfh@kernel.org>
In-Reply-To: <20260513220336.369628-1-andriy.shevchenko@linux.intel.com>
References: <20260513220336.369628-1-andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v5 0/6] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Message-Id: <177877547531.1092446.6935849511482361375.b4-ty@kernel.org>
Date: Thu, 14 May 2026 21:47:55 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_091759_186967_44506C2C 
X-CRM114-Status: UNSURE (   8.48  )
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


On Thu, 14 May 2026 00:01:25 +0200, Andy Shevchenko wrote:
> The driver does two things that need to be addressed:
> - includes subject to remove gpio.h
> - checks for error code from device property APIs when it can be done in
>   a robust way
> 
> This series addresses the above and adds a couple of additional refactoring.
> 
> [...]

Applied, thanks!

[1/6] phy: phy-can-transceiver: Check driver match and driver data against NULL
      commit: ebee9004cc0200b2b708ebf7ac625d35c71c049f
[2/6] phy: phy-can-transceiver: use device_get_match_data()
      commit: 23db9fd578ca3b446ceaa5c9a0157f0838f4df4e
[3/6] phy: phy-can-transceiver: Move OF ID table closer to their user
      commit: 62455f6be1256084cfff8690df416f418b6f0dd2
[4/6] phy: phy-can-transceiver: Don't check for specific errors when parsing properties
      commit: 79a5274fb39904f8a60bdd7bf7753ee1ba700210
[5/6] phy: phy-can-transceiver: Decouple assignment and definition in probe
      commit: 05c72fbff4ac18e9bbb0e4b3884dad1f833807f4
[6/6] phy: phy-can-transceiver: Drop unused include
      commit: 52ae64602394bc9a8e7b67f5e4e70c56e31699a7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
