Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EDC8E98DF0
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 07:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bC+W707DDO60GsSUxZ8IGtUhpRjprtgRgVGlGwcUKEQ=; b=SKXtqD5pM2WwCV
	+oL5pEpXuJRi4uLLMw1Cy33DuxJUImelsMTUzl5uIVItLlzTZNUOHo/F6I/4ySuYELeHFGLZRRmGJ
	AYBTxfoqrae7BkvCdQwDyK91NfE8qWPqCCbpwwTGMY8pSKN7QFinX/MgTIFyYILkAY+u834cMsAAd
	uYRWqkCLObuOYJ4Vc9QztEjXD7EsAEx4S7L9/O0KwYCcQ29gpBUuH8WDe9AfHegRq8vAsy8seJU2s
	GSnv61zj29uVD14FXtveSbPM+xlRIqShyL+mey7hsyxHKPRd1wc8OTqrBykSKjEEq6MfjTs2La7Gb
	67a5vgobtpomvdW8KdWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuQ5b-0000000HLuG-2eSr;
	Mon, 23 Feb 2026 07:10:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuQ5a-0000000HLu6-0q9r
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 07:10:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5EBEC60053;
	Mon, 23 Feb 2026 07:10:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E56AC116C6;
	Mon, 23 Feb 2026 07:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771830641;
	bh=RCaC1LMXSCqXZsEs8USAJyEHnx5j/KYuRhswH6R/vZM=;
	h=From:To:Cc:Subject:Date:From;
	b=iH2oz2Jc8IPFg7cL794lZgnSx6NLtBZm395Pcyxf5ypJu6gyd35VCI5S4kDco8NaZ
	 W4MxoDp/X10UahZwe8YW4cXe/45BMED82Dzal+phRFBmbwZ+CXj/C4/FMVMDg64IqV
	 Fk46yzJiH6nfrbCz56M0FB0fRN5OOpMlkBz34F5bGVHEC2NwNGPpnm+JodSg8Zxsxl
	 njVyjtoW/YK9d5RhVwzBzO1fKITNvEshulR5u4j0qC8H2kiDAa1HqpZpM17LZRfec6
	 TT+u+Isvag/f0CH3Hzv7usaYs409gXgPNnmnljn3u5p8mSc0+zSL+bwb6Z1QzYuaHw
	 XMKTcUL2aEytg==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Oltean <olteanv@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	chunfeng.yun@mediatek.com
Subject: [PATCH] phy: phy-mtk-tphy: Update names and format of kernel-doc comments
Date: Mon, 23 Feb 2026 12:40:32 +0530
Message-ID: <20260223071032.408425-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

mtk_phy_pdata documentation does not use correct tag for struct, while at
it fix one of member wrongly documented.

Warning: drivers/phy/mediatek/phy-mtk-tphy.c:289 cannot understand function prototype: 'struct mtk_phy_pdata'
Warning: drivers/phy/mediatek/phy-mtk-tphy.c:296 struct member 'slew_ref_clock_mhz' not described in 'mtk_phy_pdata'

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index f6504e0ecd1a..acf506529507 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -276,14 +276,14 @@ enum mtk_phy_version {
 };
 
 /**
- * mtk_phy_pdata - SoC specific platform data
+ * struct mtk_phy_pdata - SoC specific platform data
  * @avoid_rx_sen_degradation: Avoid TX Sensitivity level degradation (MT6795/8173 only)
  * @sw_pll_48m_to_26m:        Workaround for V3 IP (MT8195) - switch the 48MHz PLL from
  *                            fractional mode to integer to output 26MHz for U2PHY
  * @sw_efuse_supported:       Switches off eFuse auto-load from PHY and applies values
  *                            read from different nvmem (usually different eFuse array)
  *                            that is pointed at in the device tree node for this PHY
- * @slew_ref_clk_mhz:         Default reference clock (in MHz) for slew rate calibration
+ * @slew_ref_clock_mhz:         Default reference clock (in MHz) for slew rate calibration
  * @slew_rate_coefficient:    Coefficient for slew rate calibration
  * @version:                  PHY IP Version
  */
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
