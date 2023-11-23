Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A8C4C61D85
	for <linux-phy@archiver.kernel.org>; Thu, 23 Nov 2023 11:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zPSRTvoQHruwThosclpF+jAye1KmnoOn9kaIOiOsl40=; b=ELmkl6r1ZO1A+R
	/IvrWuX4h1sqdDkypS4Ui4aXZiEoR6QCFrMa776OUuu9ovtdpSfv9C2ZI03fmCvMfV4/L7+qUkDj1
	CDdzIC7U1MKzqO4cANXLb2tuxL/KS6ouPRLHdkTP4AtRYRm1tOCRN+CJzgaIrLODt2He5HaEo3TTV
	Ny144D/71X30NGltvyn3QyhRUUIVO0CN9dIWYMjoqAZs4JaoapMyseZ/jIloutNywxGgGuwnN9vzG
	kywiT9LX3eIS+a8oBoecfYlNngIOE7x3HjQWtSoZLRh4DfVH4ogWm6LVTyrFm6beCX8MeqnWzA4Bk
	IYhY2ZXp5JbHME/0mCKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r67TP-004SCn-37;
	Thu, 23 Nov 2023 11:02:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r67TM-004SBo-2Y;
	Thu, 23 Nov 2023 11:02:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 98D8061F2F;
	Thu, 23 Nov 2023 11:02:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62CFBC433C7;
	Thu, 23 Nov 2023 11:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700737335;
	bh=wGEC7NeVuil562coNYSljHzRxwtVUGQAUh7l2e2swGA=;
	h=From:To:Cc:Subject:Date:From;
	b=Dn6wlwSYfiG7Sidrra0kIMHkZaNULLwwBRrTsZLHXaDjU9uyw3MIYxtdhe4Mmm4lZ
	 htgWBW2kjBpWattsDiGm95gY0c6oZ/qfw0fEj/lsgfIuDvt0bnqlUzQDVpsuhfhrSW
	 jqLWo2DOAJilMah1rmmFYa/vwFnL3Sl9Q66WNnHPpDpS0MZl8bwTO3dnR6AT1ciLHo
	 ob5udTeYtRofrHZp286+dX5hK1+s6vYy4knsFoGuQtWomA+nMFvq/mdNV9rInSq0xr
	 7CGC0fo5B/x//hrPPmYPpshnnz+fVHSeAPgPQ7UE++s6pUIuhEE/YpJt1RVstdt8Jt
	 b083dvF0JJf9A==
From: Michael Walle <mwalle@kernel.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	CK Hu <ck.hu@mediatek.com>,
	Jitao Shi <jitao.shi@mediatek.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH] phy: mediatek: mipi: mt8183: fix minimal supported frequency
Date: Thu, 23 Nov 2023 12:02:02 +0100
Message-Id: <20231123110202.2025585-1-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_030216_893434_55D5877A 
X-CRM114-Status: GOOD (  10.39  )
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

The lowest supported clock frequency of the PHY is 125MHz (see also
mtk_mipi_tx_pll_enable()), but the clamping in .round_rate() has the
wrong minimal value, which will make the .enable() op return -EINVAL on
low frequencies. Fix the minimal clamping value.

Fixes: efda51a58b4a ("drm/mediatek: add mipi_tx driver for mt8183")
Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
index f021ec5a70e5..553725e1269c 100644
--- a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
+++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
@@ -100,7 +100,7 @@ static void mtk_mipi_tx_pll_disable(struct clk_hw *hw)
 static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
 				       unsigned long *prate)
 {
-	return clamp_val(rate, 50000000, 1600000000);
+	return clamp_val(rate, 125000000, 1600000000);
 }
 
 static const struct clk_ops mtk_mipi_tx_pll_ops = {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
