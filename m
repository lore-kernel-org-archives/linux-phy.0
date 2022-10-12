Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4E7CC4167E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qH7CbjkB+7p1q/wFsf8MAkFhdvduLRfAbrWo8y3RRxA=; b=qBVEWBpiDD71Qg
	PTm9zikfkesT8eYuzKGgMqq+wCfQpwAHYGlY9J9gdpu2iIYrr+L/6oxuie8DQWIjvYf921Bb/7A+3
	50q5NFeRmzv5SgdhmWPZ6IRmLAKkechYI+BEdMiOPvdLsB68HdHfuQNi9wI0u2L5hnxYdt71yUa4T
	vO+KcVcER0q0dvE+bqad0XPL26FlGue6Bhpr5qrzZirGSUdXXBBIj8gAcE5Zc5G1j9LFCVSozEevE
	vtxUQU92v+rV+4bzLbO4hMmU3zF2Dxiouj2mWUwAZJEebIlY0qFcTQMAmgjoh5BlmEbnTYFNzsIx7
	ecMAfO0OdJyWibBkC3Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuQ-007IcA-9C; Wed, 12 Oct 2022 08:16:10 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuH-007ITU-TT
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CCD2FB819BC;
	Wed, 12 Oct 2022 08:15:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D652C433C1;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=wn13vziZ8/XH8gpTvarlWHvtoM8LImO1D94CMaJgdu0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lRWVszNhW0RR8JF+n7B6XnZN5g5i6h9x7jV4ZtKNy3901ZdLvZw8OsA/pSSOMk/MU
	 pKyZT8kFUyuVVTv5wGGS2lZdnSe5Pxu9Bld47RD8Ai3blUtSGtqdQRYAxwY29EVZIL
	 FHgw3Jzat7z/tR3Jr1SiolailgrtfWq6Y/c5LhJ+MXIUYjvgzhATccn1v8X4i5tTMI
	 cDbWNfLZtOARxfx6veXUJZSNo0bEgvjVNR8bN1IEqrZ+AcS+1cxo/VEhsnM1NxQc7x
	 ntYz8oMS9+QzfKXN5Y8e9WFlH7vYRuuHfqLA5d/uc+bKVvrs1kbetzdOfH6pWA+q/Q
	 IaBe/HBxvYQhA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu2-0004oS-Fo; Wed, 12 Oct 2022 10:15:46 +0200
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
Subject: [PATCH v2 04/14] phy: qcom-qmp-pcie: drop redundant ipq8074 power on
Date: Wed, 12 Oct 2022 10:12:31 +0200
Message-Id: <20221012081241.18273-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012081241.18273-1-johan+linaro@kernel.org>
References: <20221012081241.18273-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011602_485350_584742D3 
X-CRM114-Status: GOOD (  14.93  )
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

The PCS initialisation table for IPQ8074 includes updates of the reset
and start-control registers which is already handled explicitly by the
driver during power on.

Drop the redundant register write from the IPQ8074 configuration table
and along with it the now unused "in-layout" configuration macro and
code.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 +++++-------------------
 1 file changed, 9 insertions(+), 33 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index de04d8dd5350..fa8bc6aeedf1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -42,11 +42,6 @@
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
@@ -61,14 +56,6 @@ struct qmp_phy_init_tbl {
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
@@ -388,8 +375,6 @@ static const struct qmp_phy_init_tbl ipq8074_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_SIGDET_LVL, 0x99),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M6DB_V0, 0x15),
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0, 0xe),
-	QMP_PHY_INIT_CFG_L(QPHY_SW_RESET, 0x0),
-	QMP_PHY_INIT_CFG_L(QPHY_START_CTRL, 0x3),
 };
 
 static const struct qmp_phy_init_tbl ipq8074_pcie_gen3_serdes_tbl[] = {
@@ -1896,7 +1881,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 };
 
 static void qmp_pcie_configure_lane(void __iomem *base,
-					const unsigned int *regs,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
 					u8 lane_mask)
@@ -1911,30 +1895,25 @@ static void qmp_pcie_configure_lane(void __iomem *base,
 		if (!(t->lane_mask & lane_mask))
 			continue;
 
-		if (t->in_layout)
-			writel(t->val, base + regs[t->offset]);
-		else
-			writel(t->val, base + t->offset);
+		writel(t->val, base + t->offset);
 	}
 }
 
 static void qmp_pcie_configure(void __iomem *base,
-					const unsigned int *regs,
 					const struct qmp_phy_init_tbl tbl[],
 					int num)
 {
-	qmp_pcie_configure_lane(base, regs, tbl, num, 0xff);
+	qmp_pcie_configure_lane(base, tbl, num, 0xff);
 }
 
 static void qmp_pcie_serdes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
 {
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
 
 	if (!tables)
 		return;
 
-	qmp_pcie_configure(serdes, cfg->regs, tables->serdes, tables->serdes_num);
+	qmp_pcie_configure(serdes, tables->serdes, tables->serdes_num);
 }
 
 static void qmp_pcie_lanes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
@@ -1946,29 +1925,26 @@ static void qmp_pcie_lanes_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_t
 	if (!tables)
 		return;
 
-	qmp_pcie_configure_lane(tx, cfg->regs, tables->tx, tables->tx_num, 1);
+	qmp_pcie_configure_lane(tx, tables->tx, tables->tx_num, 1);
 
 	if (cfg->lanes >= 2)
-		qmp_pcie_configure_lane(qphy->tx2, cfg->regs, tables->tx, tables->tx_num, 2);
+		qmp_pcie_configure_lane(qphy->tx2, tables->tx, tables->tx_num, 2);
 
-	qmp_pcie_configure_lane(rx, cfg->regs, tables->rx, tables->rx_num, 1);
+	qmp_pcie_configure_lane(rx, tables->rx, tables->rx_num, 1);
 	if (cfg->lanes >= 2)
-		qmp_pcie_configure_lane(qphy->rx2, cfg->regs, tables->rx, tables->rx_num, 2);
+		qmp_pcie_configure_lane(qphy->rx2, tables->rx, tables->rx_num, 2);
 }
 
 static void qmp_pcie_pcs_init(struct qmp_phy *qphy, const struct qmp_phy_cfg_tables *tables)
 {
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *pcs = qphy->pcs;
 	void __iomem *pcs_misc = qphy->pcs_misc;
 
 	if (!tables)
 		return;
 
-	qmp_pcie_configure(pcs, cfg->regs,
-			   tables->pcs, tables->pcs_num);
-	qmp_pcie_configure(pcs_misc, cfg->regs,
-			   tables->pcs_misc, tables->pcs_misc_num);
+	qmp_pcie_configure(pcs, tables->pcs, tables->pcs_num);
+	qmp_pcie_configure(pcs_misc, tables->pcs_misc, tables->pcs_misc_num);
 }
 
 static int qmp_pcie_init(struct phy *phy)
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
