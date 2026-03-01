Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08BC6FD0048
	for <linux-phy@archiver.kernel.org>; Sun,  1 Mar 2026 01:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HEoj1YjnF9nLvtbN5R0PgBrX2OwyWXrG+x3DHKeWzzc=; b=xUrslr3z6DphWV
	zq8kRjTxpp74oYm0BVC0ZvK4l+jGYM88Y0Ei8z3sXJv+ftAVJ7kqqGxZuDQO+yaSRQ1maba2icSJV
	wh1WWteEC1af1KM9hjwl1upvstxyyB1mdE5tvqGKV+sR55pYTpuRO12fP5dxasz0zVVkcpL04lRlT
	MZbc+o67kK2AL1GryTgBLHtL/KlyExOpLTkxsdfoOEabAyy+gOB4cNRm//omYL21McMyUjtBKO1sN
	3dkYlcE60CDm+gSp2ErzoQLO1e+iLPnHnS0+/Btk0+vZl5VGQUfy1BDTzwK9ea26j+vV7e/z+8j8f
	RhFnM/SB7CmMqLvzUH5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwVSP-0000000AT0u-3AkK;
	Sun, 01 Mar 2026 01:18:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwVSJ-0000000ASy0-21x4
	for linux-phy@lists.infradead.org;
	Sun, 01 Mar 2026 01:18:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DC44D600AD;
	Sun,  1 Mar 2026 01:18:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90A05C19424;
	Sun,  1 Mar 2026 01:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772327926;
	bh=VLs1aFZDCCMCW/TxbttSUnBnh6tTst6Y3f0HQUuR1ZI=;
	h=From:To:Cc:Subject:Date:From;
	b=c5rAyCfhh4NQxKSRS6ZJDWG8WiZpAcgPOfdRWlHuR1dU11XhVqpFxte/oOg/hCsrz
	 sOFLEGMqkWy4UW1eDtBEoQCKURQfRSD8N2fdcwNABjgjVgQnKxtZ3S60zA6sJrYW1K
	 1INID7Y/odfJuCZBHkTBa/BkbrNFb3ZXiaGifCMnts4RvB8fM5emWoKQMSbuOt7/d9
	 IC2yzNeuAGtCdb5fN3sxREP6uNVpJAdcai2I+TXmO4VS6Ku54a/ms4jEiKdngZKRzY
	 +SdQLofm1g/bvMphJcD5K7AqRWI60v1Wf1VDPMzFXR2k+/fJq5gi6dCfJgwXPumYiF
	 tTDixn0t6HwDg==
From: Sasha Levin <sashal@kernel.org>
To: stable@vger.kernel.org,
	abelvesa@kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: FAILED: Patch "phy: qcom: edp: Make the number of clocks flexible" failed to apply to 6.12-stable tree
Date: Sat, 28 Feb 2026 20:18:44 -0500
Message-ID: <20260301011844.1673192-1-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Patchwork-Hint: ignore
X-stable: review
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

The patch below does not apply to the 6.12-stable tree.
If someone wants it applied there, or to any other stable or longterm
tree, then please email the backport, including the original git commit
id to <stable@vger.kernel.org>.

Thanks,
Sasha

------------------ original commit in Linus's tree ------------------

From 7d51b709262c5aa31d2b9cd31444112c1b2dae03 Mon Sep 17 00:00:00 2001
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 24 Dec 2025 12:53:28 +0200
Subject: [PATCH] phy: qcom: edp: Make the number of clocks flexible

On X Elite, the DP PHY needs another clock called ref, while all other
platforms do not.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So in order to handle these clocks on different platforms, make the driver
get all the clocks regardless of how many there are provided.

Cc: stable@vger.kernel.org # v6.10
Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Link: https://patch.msgid.link/20251224-phy-qcom-edp-add-missing-refclk-v5-2-3f45d349b5ac@oss.qualcomm.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index f1b51018683d5..06a08c9ea0f70 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -103,7 +103,9 @@ struct qcom_edp {
 
 	struct phy_configure_opts_dp dp_opts;
 
-	struct clk_bulk_data clks[2];
+	struct clk_bulk_data *clks;
+	int num_clks;
+
 	struct regulator_bulk_data supplies[2];
 
 	bool is_edp;
@@ -218,7 +220,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
+	ret = clk_bulk_prepare_enable(edp->num_clks, edp->clks);
 	if (ret)
 		goto out_disable_supplies;
 
@@ -885,7 +887,7 @@ static int qcom_edp_phy_exit(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
 
-	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
+	clk_bulk_disable_unprepare(edp->num_clks, edp->clks);
 	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
 
 	return 0;
@@ -1092,11 +1094,9 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(edp->pll))
 		return PTR_ERR(edp->pll);
 
-	edp->clks[0].id = "aux";
-	edp->clks[1].id = "cfg_ahb";
-	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
-	if (ret)
-		return ret;
+	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
+	if (edp->num_clks < 0)
+		return dev_err_probe(dev, edp->num_clks, "failed to get clocks\n");
 
 	edp->supplies[0].supply = "vdda-phy";
 	edp->supplies[1].supply = "vdda-pll";
-- 
2.51.0





-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
