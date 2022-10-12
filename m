Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DA9BC38A06
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYDMGdQr8FLLuMHBMOmBWp8PzRBjoYG6qlPR9o6QPVI=; b=JQljWnmBPpSdI6
	uyTMKb+rWDl17KuPHxzGHdq8T+3a12YIoAS6szVj96mtN7SB+SfWT1bZpc4BQGc7pWa+ZpUOodDJY
	cr6AUlvOJ5ltNChmjf4ewOJb5hSKraRg3EFTwvk9D+ICBaYaMYN3UjNZsaWEgHQD60A1kV264neps
	hq83CaD8oE7YVDt6JoHYjjBbr8DBRgezlwm7fz0o/6oSzQvt6+EqBwFuNrwjAjSHuJBWe+kYkyi9t
	moP5RdXDo9XSapyq4WQfHqPFhQr5WAp7+s4g0sEsKuUUMW2vUtgz4tUakwvVJKe8heN2bJYYe3GB6
	Bnkmw2xV/i+uVFfB6VQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuQ-007IcN-ED; Wed, 12 Oct 2022 08:16:10 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuH-007ITT-TR
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B81ACB819B7;
	Wed, 12 Oct 2022 08:15:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ACF5C433B5;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=+tMwmA0QkhDq3ZqvGZIum6eR0HtaGJb+cGsUn3qWhfE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Sve9nVY6KkZllGBjnTonIN0Lnby2W8Cs03InwxhSoBDZ75ncn2tQUMrV+OF7ZW3ml
	 ydVApHySa+1Wly783lf9teTaWKaTuoSfpbUvhrxPWEWfwPpSIA1ApDQXuwcIBLfeK+
	 z8wU13nx7wfHGzU3belUCWMtj7B4zGntVIH//euWaQ9noUGI7VZFwRO4cba52X2pTL
	 Ti7djI4YGbs+OffJeVQxVZ9ZmB5lRGXKZ895GBvngYXS3Gx8hIyVuSXUbhpyDVKmew
	 xZcZS2tjD2wprMQK6omykqTT5+4CkiIpCTQP7nqYqRTZd3ZgT2ZxU+N07FwQL6oizs
	 AtYdVjZw1Ec9g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu2-0004oQ-DG; Wed, 12 Oct 2022 10:15:46 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 03/14] phy: qcom-qmp-combo: drop unused in-layout configuration
Date: Wed, 12 Oct 2022 10:12:30 +0200
Message-Id: <20221012081241.18273-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011602_519671_9C595D1E 
X-CRM114-Status: GOOD (  15.38  )
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

The QMP combo PHY driver does not use the "in-layout" configuration
macro to configure registers that are typically accessed using
"regs_layout" arrays (e.g. QPHY_START_CTRL) so drop this unused
feature.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 54 ++++++-----------------
 1 file changed, 14 insertions(+), 40 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 3889dcf73c59..84380852ba5b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -69,11 +69,6 @@
 struct qmp_phy_init_tbl {
 	unsigned int offset;
 	unsigned int val;
-	/*
-	 * register part of layout ?
-	 * if yes, then offset gives index in the reg-layout
-	 */
-	bool in_layout;
 	/*
 	 * mask of lanes for which this register is written
 	 * for cases when second lane needs different values
@@ -88,14 +83,6 @@ struct qmp_phy_init_tbl {
 		.lane_mask = 0xff,	\
 	}
 
-#define QMP_PHY_INIT_CFG_L(o, v)	\
-	{				\
-		.offset = o,		\
-		.val = v,		\
-		.in_layout = true,	\
-		.lane_mask = 0xff,	\
-	}
-
 #define QMP_PHY_INIT_CFG_LANE(o, v, l)	\
 	{				\
 		.offset = o,		\
@@ -1346,7 +1333,6 @@ static const struct qmp_phy_combo_cfg sm8250_usb3dpphy_cfg = {
 };
 
 static void qmp_combo_configure_lane(void __iomem *base,
-					const unsigned int *regs,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
 					u8 lane_mask)
@@ -1361,19 +1347,15 @@ static void qmp_combo_configure_lane(void __iomem *base,
 		if (!(t->lane_mask & lane_mask))
 			continue;
 
-		if (t->in_layout)
-			writel(t->val, base + regs[t->offset]);
-		else
-			writel(t->val, base + t->offset);
+		writel(t->val, base + t->offset);
 	}
 }
 
 static void qmp_combo_configure(void __iomem *base,
-				   const unsigned int *regs,
 				   const struct qmp_phy_init_tbl tbl[],
 				   int num)
 {
-	qmp_combo_configure_lane(base, regs, tbl, num, 0xff);
+	qmp_combo_configure_lane(base, tbl, num, 0xff);
 }
 
 static int qmp_combo_serdes_init(struct qmp_phy *qphy)
@@ -1384,28 +1366,24 @@ static int qmp_combo_serdes_init(struct qmp_phy *qphy)
 	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
 	int serdes_tbl_num = cfg->serdes_tbl_num;
 
-	qmp_combo_configure(serdes, cfg->regs, serdes_tbl, serdes_tbl_num);
+	qmp_combo_configure(serdes, serdes_tbl, serdes_tbl_num);
 
 	if (cfg->type == PHY_TYPE_DP) {
 		switch (dp_opts->link_rate) {
 		case 1620:
-			qmp_combo_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_rbr,
+			qmp_combo_configure(serdes, cfg->serdes_tbl_rbr,
 					       cfg->serdes_tbl_rbr_num);
 			break;
 		case 2700:
-			qmp_combo_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_hbr,
+			qmp_combo_configure(serdes, cfg->serdes_tbl_hbr,
 					       cfg->serdes_tbl_hbr_num);
 			break;
 		case 5400:
-			qmp_combo_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_hbr2,
+			qmp_combo_configure(serdes, cfg->serdes_tbl_hbr2,
 					       cfg->serdes_tbl_hbr2_num);
 			break;
 		case 8100:
-			qmp_combo_configure(serdes, cfg->regs,
-					       cfg->serdes_tbl_hbr3,
+			qmp_combo_configure(serdes, cfg->serdes_tbl_hbr3,
 					       cfg->serdes_tbl_hbr3_num);
 			break;
 		default:
@@ -2069,29 +2047,25 @@ static int qmp_combo_power_on(struct phy *phy)
 	}
 
 	/* Tx, Rx, and PCS configurations */
-	qmp_combo_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
+	qmp_combo_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 
-	if (cfg->lanes >= 2) {
-		qmp_combo_configure_lane(qphy->tx2, cfg->regs, cfg->tx_tbl,
-					 cfg->tx_tbl_num, 2);
-	}
+	if (cfg->lanes >= 2)
+		qmp_combo_configure_lane(qphy->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
 
 	/* Configure special DP tx tunings */
 	if (cfg->type == PHY_TYPE_DP)
 		cfg->configure_dp_tx(qphy);
 
-	qmp_combo_configure_lane(rx, cfg->regs, cfg->rx_tbl, cfg->rx_tbl_num, 1);
+	qmp_combo_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->lanes >= 2) {
-		qmp_combo_configure_lane(qphy->rx2, cfg->regs, cfg->rx_tbl,
-					 cfg->rx_tbl_num, 2);
-	}
+	if (cfg->lanes >= 2)
+		qmp_combo_configure_lane(qphy->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
 
 	/* Configure link rate, swing, etc. */
 	if (cfg->type == PHY_TYPE_DP)
 		cfg->configure_dp_phy(qphy);
 	else
-		qmp_combo_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+		qmp_combo_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
 	if (cfg->has_pwrdn_delay)
 		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
