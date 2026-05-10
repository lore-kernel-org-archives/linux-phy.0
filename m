Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BAA5CD37AF
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpskCw4kEpYA83CCnVcVlHwgi/xBMg4VQuDom36I3f0=; b=Ic+OccvtWe8/3f
	1PiHkCM+/WC4GoW0zaL/xhYx99VZ5GfXBrR8uWCiRYNXIzzpF0N46rDrrOTTtYhB9yrp0BRleUfOQ
	5wbBKikv9WGSdAs2X7OCZivstyW6ekYyVmWsGerslaTpHkBD6UKfcQEhAAtWUiGqVwwgvkGiPQZbw
	LprTHGomkYh81gOUZEmB4c5w5+g7aa9JYoA8TflH0CIlByMo/A+f+L9vfzRJd+RO+Faui+unffWJM
	mcpwcp5lEZhtKZ+3aFgaIwZMVrOqMLY7JbprE/0sgJOfmRG3xgCgWCPVRbwPfyOyWdawhQgEncqm1
	yCy15Vy7JILOphDMo5zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3CT-0000000AhXH-3023;
	Sun, 10 May 2026 12:24:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3CQ-0000000AhWa-3UWG
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:23:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 20AF34419B;
	Sun, 10 May 2026 12:23:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91947C2BCC9;
	Sun, 10 May 2026 12:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778415838;
	bh=upo3UVXUcJgnSP3BnsJg9L8IBkk0vS9NZAg91cWPV28=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FJtMqde/sV6yWDGAS7+EaLAEZQU8JewHzcIaq6i/uORT6VWsFOWG87CxEBLzcvwvR
	 Kn0uoI0oe1Jd9dkbnwzHIudtkBETLHN+ildvsXBKkPyx8sIxlUNuSByApIH8B4ILue
	 a7zLeF1+y8uV6tmFQJBRkp9h3mgvx+0VpZhjVsoPO0ZJMlH8znbD08NXo9a7kZBfwU
	 O7RhestpDXBN2djuH70TrpGEgji2ueIjKNgL81YTO5MxBk+GbUOZcU82GXymf2Gfkd
	 FbYgEEyDo6uf1KWYy0FQIjK2akZb41laK4T31F8d4r4QmsF+8EUZdMGcWBGA1m0mtM
	 NPZleg97UVmNA==
From: Vinod Koul <vkoul@kernel.org>
To: neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com, 
 dmitry.baryshkov@oss.qualcomm.com, mani@kernel.org, 
 abel.vesa@oss.qualcomm.com, Nitin Rawat <nitin.rawat@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
In-Reply-To: <20260415104851.2763238-1-nitin.rawat@oss.qualcomm.com>
References: <20260415104851.2763238-1-nitin.rawat@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom-qmp-ufs: Fix kaanapali PHY PLL lock failure
 after SM8650 G4 fix
Message-Id: <177841583418.420676.566324838504765872.b4-ty@kernel.org>
Date: Sun, 10 May 2026 17:53:54 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260510_052358_899137_AA4C3610 
X-CRM114-Status: UNSURE (   6.06  )
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


On Wed, 15 Apr 2026 16:18:51 +0530, Nitin Rawat wrote:
> Commit 81af9e40e2e4 ("phy: qcom: qmp-ufs: Fix SM8650 PCS table for Gear 4")
> moved QPHY_V6_PCS_UFS_PLL_CNTL register configuration from the shared
> sm8650_ufsphy_g5_pcs table to the SM8650-specific sm8650_ufsphy_pcs base
> table to fix Gear 4 operation on SM8650.
> 
> However, this change inadvertently broke kaanapali and SM8750 SoCs
> which also rely on the shared sm8650_ufsphy_g5_pcs table for Gear 5
> configuration but use their own sm8750_ufsphy_pcs base table. After the
> change, kaanapali PHYs are left without the required PLL_CNTL = 0x33
> setting, causing the PHY PLL to remain at its hardware reset default
> value, preventing PLL lock and resulting in DME_LINKSTARTUP timeouts.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom-qmp-ufs: Fix kaanapali PHY PLL lock failure after SM8650 G4 fix
      commit: 80305760d7a55b884fb9023c490b75568d1ea0b1

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
