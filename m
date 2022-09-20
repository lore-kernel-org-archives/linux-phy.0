Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 448D6C6FA98
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OpDLN3rggPM1CdFp2LzNQP3Ay5Iacc04sEont34emko=; b=sfUrFqjnzBeVZt
	ukjlhflSXM4k3w3gWvDgzuP0neW8S/idhbR3RQFTPQqqcoCLTxL4IauQb2qnElNGwipTKVO2NXiGp
	wOFImdEAHrl7wQ3KGKw93dtZVe7+6DuQxOnHerJpynrwIGyqLoA45dVb/ih7TC+40oqeXB2UCPOr6
	yy8WhsrQwVn0HEOjJqtP9qvLNYpAXYoxPbvrjf6O3MTiiJyDU20tdYtF6lbS376TcI6iIGt8UzWzp
	B25/qJ0KVcSwwp1euPRFzAWa0NiMiSqTgyVKU/Zg6dO1/J8hkDlSuj5bdyMMg2r/6+G/njAfMVW9s
	5EKNflbrwmgj+zNy8KAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqd-001Qk6-Kw; Tue, 20 Sep 2022 07:39:15 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqU-001QZN-7u
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 27057B8257B;
	Tue, 20 Sep 2022 07:39:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C694FC4FF0D;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=CIQF7TFUiEWxFBYd30THwVNgQeTR0CnnBXwI4amciWw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Uala8ujzsrJHPG0xRA/c9OJEwSA4KySRBF/PfDghVfRS8/CnNap2TR71rJdLScubD
	 R5AG3kAj1I4a8/eIdfy1MVZ2+YEJkXQLg1fgP1+/KwvVfXIvgCtVX33PE/3My8tjq+
	 TWgryw3Si9NzkJLHe3IfYg/qj4JeEIwsjhQfNgQXoFo6+5vbD+KyPtAf3bpH5PsGFG
	 iluhzYNOMnqtnQlExt+4D1/KmxED3wIzrOe3QOtdk7MhL4JiAsH44c4RkwvDkbFBAG
	 etI7BFZW+QyAjttblYbsFkq2WrwCGFtu5LYiC2SqfCAen58z9Oz+YEDvFrmuJUlF7f
	 NDn5Je085kunw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqQ-0005RI-Jg; Tue, 20 Sep 2022 09:39:02 +0200
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
Subject: [PATCH 15/17] phy: qcom-qmp-ufs: consolidate lane config
Date: Tue, 20 Sep 2022 09:38:24 +0200
Message-Id: <20220920073826.20811-16-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003906_649143_B56CD530 
X-CRM114-Status: GOOD (  15.86  )
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

For legacy reasons, there are two configuration parameters that describe
the number of lanes a PHY has.

Replace them both with a new field simply named "lanes".

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 31 ++++++++-----------------
 1 file changed, 10 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index ca9a42250556..d21b977850b3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -533,8 +533,7 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs_tbl[] = {
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
-	/* number of lanes provided by phy */
-	int nlanes;
+	int lanes;
 
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_init_tbl *serdes_tbl;
@@ -561,9 +560,6 @@ struct qmp_phy_cfg {
 	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
 	unsigned int phy_status;
 
-	/* true, if PHY has secondary tx/rx lanes to be configured */
-	bool is_dual_lane_phy;
-
 	/* true, if PCS block has no separate SW_RESET register */
 	bool no_pcs_sw_reset;
 };
@@ -662,7 +658,7 @@ static const char * const qmp_phy_vreg_l[] = {
 };
 
 static const struct qmp_phy_cfg msm8996_ufs_cfg = {
-	.nlanes			= 1,
+	.lanes			= 1,
 
 	.serdes_tbl		= msm8996_ufs_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(msm8996_ufs_serdes_tbl),
@@ -687,7 +683,7 @@ static const struct qmp_phy_cfg msm8996_ufs_cfg = {
 };
 
 static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
-	.nlanes			= 2,
+	.lanes			= 2,
 
 	.serdes_tbl		= sdm845_ufsphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sdm845_ufsphy_serdes_tbl),
@@ -707,12 +703,11 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 	.pwrdn_ctrl		= SW_PWRDN,
 	.phy_status		= PHYSTATUS,
 
-	.is_dual_lane_phy	= true,
 	.no_pcs_sw_reset	= true,
 };
 
 static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
-	.nlanes			= 1,
+	.lanes			= 1,
 
 	.serdes_tbl		= sm6115_ufsphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes_tbl),
@@ -735,7 +730,7 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
-	.nlanes			= 2,
+	.lanes			= 2,
 
 	.serdes_tbl		= sm8150_ufsphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8150_ufsphy_serdes_tbl),
@@ -754,12 +749,10 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 	.start_ctrl		= SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN,
 	.phy_status		= PHYSTATUS,
-
-	.is_dual_lane_phy	= true,
 };
 
 static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
-	.nlanes			= 2,
+	.lanes			= 2,
 
 	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
@@ -778,12 +771,10 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 	.start_ctrl		= SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN,
 	.phy_status		= PHYSTATUS,
-
-	.is_dual_lane_phy	= true,
 };
 
 static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
-	.nlanes			= 2,
+	.lanes			= 2,
 
 	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
@@ -802,8 +793,6 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 	.start_ctrl		= SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN,
 	.phy_status		= PHYSTATUS,
-
-	.is_dual_lane_phy	= true,
 };
 
 static void qmp_ufs_configure_lane(void __iomem *base,
@@ -956,14 +945,14 @@ static int qmp_ufs_power_on(struct phy *phy)
 	/* Tx, Rx, and PCS configurations */
 	qmp_ufs_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 
-	if (cfg->is_dual_lane_phy) {
+	if (cfg->lanes >= 2) {
 		qmp_ufs_configure_lane(qphy->tx2, cfg->regs,
 					cfg->tx_tbl, cfg->tx_tbl_num, 2);
 	}
 
 	qmp_ufs_configure_lane(rx, cfg->regs, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->is_dual_lane_phy) {
+	if (cfg->lanes >= 2) {
 		qmp_ufs_configure_lane(qphy->rx2, cfg->regs,
 					cfg->rx_tbl, cfg->rx_tbl_num, 2);
 	}
@@ -1122,7 +1111,7 @@ static int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
 	if (IS_ERR(qphy->pcs))
 		return PTR_ERR(qphy->pcs);
 
-	if (cfg->is_dual_lane_phy) {
+	if (cfg->lanes >= 2) {
 		qphy->tx2 = devm_of_iomap(dev, np, 3, NULL);
 		if (IS_ERR(qphy->tx2))
 			return PTR_ERR(qphy->tx2);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
