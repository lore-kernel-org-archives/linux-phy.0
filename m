Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28768C433FE
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 13:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vx7AwpJp+nxZjaH6xZWImGVxtZqdTOgW+tBeaCPej8Y=; b=kawyMPfGwhO390
	k7HYMF0CYg+lrDjDyQk0kkIxfvumhRBBlA22be2lXvLwlaaNhtkxPWXHh07FKdgTBLX/nAhIih6dK
	lHSSpnUniASvqjdVFqAg0Z0PVkEjUff9k+9fJWXaniUFYbLVQOtFcXQFyWVs6/tQFXS6im6MAtnzV
	++x5puCey/QF4aXSuUAUwTp/V5zUX4MDMJ+Rm9gD+ICeZmve29IDHmefHoAgjN8chAUHaslaXrG+B
	a0GaL7UfFZs0vDf7eBQ/n5nNrr+LosmbX41699s9eKPXbzUseEKYdbRkLdkaU7dOLiqNoojxfcb+J
	B9wQC3whuZIqBm9W98zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlW9w-001Gnu-Fx; Mon, 02 May 2022 13:32:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlW9r-001GmM-H6
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 13:32:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 10B82B817B5;
 Mon,  2 May 2022 13:32:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEF55C385A4;
 Mon,  2 May 2022 13:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651498328;
 bh=vWs+PrQiKaRbhEnmbovR9L8IUflIyejz6ZkUmP87xKM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GowKgd8VEAqK2Qq5lA9uA2dkCLw+mypnQTqrJy9rJQ7Gs6a2Dn1FpvKnz93Zo3sTR
 mOleq1ZxFrTqGCXDJtLcefErD3v3WXVqSxavSYWXUGw2RUO1aa9Mjb/HGVlDzIIGCt
 25oxtHiTZjKE9hf/lSU0ViSeRJih03GnBHbTU48dTMifb7mwfvkeGBP328DUGL28sT
 Hzygq+EN7fNlVa63Jtyaq0deLKgCSUpAZneq1gpi5n4BawZ4eWEMTekyt9t3LzNhi7
 oY0j8CpdnAZI21NtglX9H8kQyWKr6DpnD/LlQpam+o7wDa1cP7ooQpLKPMvPSbO29a
 wYJFafpamXdxg==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1nlW9n-000153-M2; Mon, 02 May 2022 15:32:07 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 2/2] phy: qcom-qmp: rename error labels
Date: Mon,  2 May 2022 15:31:30 +0200
Message-Id: <20220502133130.4125-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220502133130.4125-1-johan+linaro@kernel.org>
References: <20220502133130.4125-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_063211_893107_D712FA10 
X-CRM114-Status: GOOD (  12.33  )
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

Rename all error labels after what they are used for in order to improve
readability and for consistency.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index c37c0d8fea4e..515e3ec64e17 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -5199,7 +5199,7 @@ static int qcom_qmp_phy_com_init(struct qmp_phy *qphy)
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
-		goto err_reg_enable;
+		goto err_unlock;
 	}
 
 	for (i = 0; i < cfg->num_resets; i++) {
@@ -5207,7 +5207,7 @@ static int qcom_qmp_phy_com_init(struct qmp_phy *qphy)
 		if (ret) {
 			dev_err(qmp->dev, "%s reset assert failed\n",
 				cfg->reset_list[i]);
-			goto err_rst_assert;
+			goto err_disable_regulators;
 		}
 	}
 
@@ -5216,13 +5216,13 @@ static int qcom_qmp_phy_com_init(struct qmp_phy *qphy)
 		if (ret) {
 			dev_err(qmp->dev, "%s reset deassert failed\n",
 				qphy->cfg->reset_list[i]);
-			goto err_rst;
+			goto err_assert_reset;
 		}
 	}
 
 	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
 	if (ret)
-		goto err_rst;
+		goto err_assert_reset;
 
 	if (cfg->has_phy_dp_com_ctrl) {
 		qphy_setbits(dp_com, QPHY_V3_DP_COM_POWER_DOWN_CTRL,
@@ -5264,12 +5264,12 @@ static int qcom_qmp_phy_com_init(struct qmp_phy *qphy)
 
 	return 0;
 
-err_rst:
+err_assert_reset:
 	while (++i < cfg->num_resets)
 		reset_control_assert(qmp->resets[i]);
-err_rst_assert:
+err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
-err_reg_enable:
+err_unlock:
 	mutex_unlock(&qmp->phy_mutex);
 
 	return ret;
@@ -5375,14 +5375,14 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
 		if (ret) {
 			dev_err(qmp->dev, "lane%d reset deassert failed\n",
 				qphy->index);
-			goto err_lane_rst;
+			return ret;
 		}
 	}
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
 	if (ret) {
 		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
-		goto err_clk_enable;
+		goto err_reset_lane;
 	}
 
 	/* Tx, Rx, and PCS configurations */
@@ -5433,7 +5433,7 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
 
 	ret = reset_control_deassert(qmp->ufs_reset);
 	if (ret)
-		goto err_pcs_ready;
+		goto err_disable_pipe_clk;
 
 	qcom_qmp_phy_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl,
 			       cfg->pcs_misc_tbl_num);
@@ -5472,17 +5472,17 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
 					 PHY_INIT_COMPLETE_TIMEOUT);
 		if (ret) {
 			dev_err(qmp->dev, "phy initialization timed-out\n");
-			goto err_pcs_ready;
+			goto err_disable_pipe_clk;
 		}
 	}
 	return 0;
 
-err_pcs_ready:
+err_disable_pipe_clk:
 	clk_disable_unprepare(qphy->pipe_clk);
-err_clk_enable:
+err_reset_lane:
 	if (cfg->has_lane_rst)
 		reset_control_assert(qphy->lane_rst);
-err_lane_rst:
+
 	return ret;
 }
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
