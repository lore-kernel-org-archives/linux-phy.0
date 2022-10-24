Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2037FA3745
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 10:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gB+KY1oPFDNyNv4bkLCQdoklgIKz8B/vG9erf9pBJE=; b=oVYukqTHt0J+xW
	bkPRAuV8DRmfmcObZZnLeWmJRIQgQo1bAddoq1kECKIXh2kVfd9Kgar7JQz3zDYNUa9uiRC3i5Y/a
	6RwugMzc1QnXn5tQXQvw7fKEjp8Ff+E5qX993iK2I4K/795Ww02WDUBXn1J2/mg1ESUacSU0ZSiC1
	0CUasV77MYFRl8rq/snN1Z0SucYbYIJ2o6e/UgezARjUCMwPWo/pGSECCIzy//WM6UrW9ZD9F+9M0
	/psRsYgiaJWJAKb9R+1NAw7dtS3/5arJ5/hQEXGhcShzQ+dMQpFdbe3Vf1iX0oMy+osEThSucCC6u
	IPZDCrkJj4MZqaZLpYkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMX-000cH8-2n; Mon, 24 Oct 2022 10:07:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMO-000c8e-0h
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 10:07:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3294F611CE;
	Mon, 24 Oct 2022 10:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 614BEC4314D;
	Mon, 24 Oct 2022 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666606023;
	bh=2GhMhkslokTG3+WOh0oyuUDp9Y0B+rgF74eN5kJB25Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CEyqi6psw0XLgMGnPiLUf4DADekzH3lcvNs1XXUI1h1lv36gE0SrNI1+Pd8Q97lT3
	 cTQ+3U1q3VmtPgQmBVv9G6Jtaavos3gWgOFb4/NQGWM84CPU7VcGwq9T/sGJmU1fH0
	 Ux9ECluvYH1vsRnxoV04Dg/tPzuld4nHOkBQfJo82j7kmXbJQblGFmt3UvmTrM9Jdl
	 qgFJrObBfzWx3053GvNLnpyqIQrxZEAUCpi+bX1vOxSsoaoyFqHyZNAac3wY8pVTus
	 dBsdoDlrVsW2arplx/uqwbsjhJpSY0vXoM0EeBjLJzjs+pg6nXZVgAndEC2svAahQ4
	 xwkDEyP6Y8k4A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omuM3-0005ME-31; Mon, 24 Oct 2022 12:06:47 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 05/13] phy: qcom-qmp-usb: merge driver data
Date: Mon, 24 Oct 2022 12:06:24 +0200
Message-Id: <20221024100632.20549-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024100632.20549-1-johan+linaro@kernel.org>
References: <20221024100632.20549-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_030708_212877_24408A1D 
X-CRM114-Status: GOOD (  19.99  )
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

The USB QMP PHY driver only manages a single PHY so merge the old
qcom_qmp and qmp_phy structures and drop the PHY array.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 239 ++++++++++--------------
 1 file changed, 96 insertions(+), 143 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index f28883e0d21e..e009d63260e7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1453,60 +1453,30 @@ struct qmp_phy_cfg {
 	unsigned int pcs_usb_offset;
 };
 
-/**
- * struct qmp_phy - per-lane phy descriptor
- *
- * @phy: generic phy
- * @cfg: phy specific configuration
- * @serdes: iomapped memory space for phy's serdes (i.e. PLL)
- * @tx: iomapped memory space for lane's tx
- * @rx: iomapped memory space for lane's rx
- * @pcs: iomapped memory space for lane's pcs
- * @tx2: iomapped memory space for second lane's tx (in dual lane PHYs)
- * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
- * @pcs_misc: iomapped memory space for lane's pcs_misc
- * @pcs_usb: iomapped memory space for lane's pcs_usb
- * @pipe_clk: pipe clock
- * @qmp: QMP phy to which this lane belongs
- * @mode: current PHY mode
- */
-struct qmp_phy {
-	struct phy *phy;
+struct qmp_usb {
+	struct device *dev;
+
 	const struct qmp_phy_cfg *cfg;
+
 	void __iomem *serdes;
+	void __iomem *pcs;
+	void __iomem *pcs_misc;
+	void __iomem *pcs_usb;
 	void __iomem *tx;
 	void __iomem *rx;
-	void __iomem *pcs;
 	void __iomem *tx2;
 	void __iomem *rx2;
-	void __iomem *pcs_misc;
-	void __iomem *pcs_usb;
-	struct clk *pipe_clk;
-	struct qcom_qmp *qmp;
-	enum phy_mode mode;
-};
 
-/**
- * struct qcom_qmp - structure holding QMP phy block attributes
- *
- * @dev: device
- * @dp_com: iomapped memory space for phy's dp_com control block
- *
- * @clks: array of clocks required by phy
- * @resets: array of resets required by phy
- * @vregs: regulator supplies bulk data
- *
- * @phys: array of per-lane phy descriptors
- */
-struct qcom_qmp {
-	struct device *dev;
 	void __iomem *dp_com;
 
+	struct clk *pipe_clk;
 	struct clk_bulk_data *clks;
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
-	struct qmp_phy **phys;
+	enum phy_mode mode;
+
+	struct phy *phy;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -1976,10 +1946,10 @@ static void qmp_usb_configure(void __iomem *base,
 	qmp_usb_configure_lane(base, tbl, num, 0xff);
 }
 
-static int qmp_usb_serdes_init(struct qmp_phy *qphy)
+static int qmp_usb_serdes_init(struct qmp_usb *qmp)
 {
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *serdes = qphy->serdes;
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *serdes = qmp->serdes;
 	const struct qmp_phy_init_tbl *serdes_tbl = cfg->serdes_tbl;
 	int serdes_tbl_num = cfg->serdes_tbl_num;
 
@@ -1990,10 +1960,9 @@ static int qmp_usb_serdes_init(struct qmp_phy *qphy)
 
 static int qmp_usb_init(struct phy *phy)
 {
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	struct qcom_qmp *qmp = qphy->qmp;
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs = qphy->pcs;
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *pcs = qmp->pcs;
 	void __iomem *dp_com = qmp->dp_com;
 	int ret;
 
@@ -2056,9 +2025,8 @@ static int qmp_usb_init(struct phy *phy)
 
 static int qmp_usb_exit(struct phy *phy)
 {
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	struct qcom_qmp *qmp = qphy->qmp;
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
@@ -2071,19 +2039,18 @@ static int qmp_usb_exit(struct phy *phy)
 
 static int qmp_usb_power_on(struct phy *phy)
 {
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	struct qcom_qmp *qmp = qphy->qmp;
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *tx = qphy->tx;
-	void __iomem *rx = qphy->rx;
-	void __iomem *pcs = qphy->pcs;
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *tx = qmp->tx;
+	void __iomem *rx = qmp->rx;
+	void __iomem *pcs = qmp->pcs;
 	void __iomem *status;
 	unsigned int val;
 	int ret;
 
-	qmp_usb_serdes_init(qphy);
+	qmp_usb_serdes_init(qmp);
 
-	ret = clk_prepare_enable(qphy->pipe_clk);
+	ret = clk_prepare_enable(qmp->pipe_clk);
 	if (ret) {
 		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
 		return ret;
@@ -2093,12 +2060,12 @@ static int qmp_usb_power_on(struct phy *phy)
 	qmp_usb_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 
 	if (cfg->lanes >= 2)
-		qmp_usb_configure_lane(qphy->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
+		qmp_usb_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
 
 	qmp_usb_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
 	if (cfg->lanes >= 2)
-		qmp_usb_configure_lane(qphy->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
+		qmp_usb_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
 
 	qmp_usb_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
@@ -2122,27 +2089,27 @@ static int qmp_usb_power_on(struct phy *phy)
 	return 0;
 
 err_disable_pipe_clk:
-	clk_disable_unprepare(qphy->pipe_clk);
+	clk_disable_unprepare(qmp->pipe_clk);
 
 	return ret;
 }
 
 static int qmp_usb_power_off(struct phy *phy)
 {
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	clk_disable_unprepare(qphy->pipe_clk);
+	clk_disable_unprepare(qmp->pipe_clk);
 
 	/* PHY reset */
-	qphy_setbits(qphy->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
+	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
 	/* stop SerDes and Phy-Coding-Sublayer */
-	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL],
+	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL],
 			SERDES_START | PCS_START);
 
 	/* Put PHY into POWER DOWN state: active low */
-	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			SW_PWRDN);
 
 	return 0;
@@ -2175,22 +2142,22 @@ static int qmp_usb_disable(struct phy *phy)
 
 static int qmp_usb_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 {
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qmp_usb *qmp = phy_get_drvdata(phy);
 
-	qphy->mode = mode;
+	qmp->mode = mode;
 
 	return 0;
 }
 
-static void qmp_usb_enable_autonomous_mode(struct qmp_phy *qphy)
+static void qmp_usb_enable_autonomous_mode(struct qmp_usb *qmp)
 {
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs;
-	void __iomem *pcs_misc = qphy->pcs_misc;
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *pcs_usb = qmp->pcs_usb ?: qmp->pcs;
+	void __iomem *pcs_misc = qmp->pcs_misc;
 	u32 intr_mask;
 
-	if (qphy->mode == PHY_MODE_USB_HOST_SS ||
-	    qphy->mode == PHY_MODE_USB_DEVICE_SS)
+	if (qmp->mode == PHY_MODE_USB_HOST_SS ||
+	    qmp->mode == PHY_MODE_USB_DEVICE_SS)
 		intr_mask = ARCVR_DTCT_EN | ALFPS_DTCT_EN;
 	else
 		intr_mask = ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL;
@@ -2211,11 +2178,11 @@ static void qmp_usb_enable_autonomous_mode(struct qmp_phy *qphy)
 		qphy_clrbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
 }
 
-static void qmp_usb_disable_autonomous_mode(struct qmp_phy *qphy)
+static void qmp_usb_disable_autonomous_mode(struct qmp_usb *qmp)
 {
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	void __iomem *pcs_usb = qphy->pcs_usb ?: qphy->pcs;
-	void __iomem *pcs_misc = qphy->pcs_misc;
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *pcs_usb = qmp->pcs_usb ?: qmp->pcs;
+	void __iomem *pcs_misc = qmp->pcs_misc;
 
 	/* Disable i/o clamp_n on resume for normal mode */
 	if (pcs_misc)
@@ -2231,20 +2198,19 @@ static void qmp_usb_disable_autonomous_mode(struct qmp_phy *qphy)
 
 static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
 {
-	struct qcom_qmp *qmp = dev_get_drvdata(dev);
-	struct qmp_phy *qphy = qmp->phys[0];
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	struct qmp_usb *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qphy->mode);
+	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qphy->phy->init_count) {
+	if (!qmp->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
 
-	qmp_usb_enable_autonomous_mode(qphy);
+	qmp_usb_enable_autonomous_mode(qmp);
 
-	clk_disable_unprepare(qphy->pipe_clk);
+	clk_disable_unprepare(qmp->pipe_clk);
 	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
 
 	return 0;
@@ -2252,14 +2218,13 @@ static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
 
 static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 {
-	struct qcom_qmp *qmp = dev_get_drvdata(dev);
-	struct qmp_phy *qphy = qmp->phys[0];
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	struct qmp_usb *qmp = dev_get_drvdata(dev);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	int ret = 0;
 
-	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qphy->mode);
+	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qphy->phy->init_count) {
+	if (!qmp->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -2268,14 +2233,14 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(qphy->pipe_clk);
+	ret = clk_prepare_enable(qmp->pipe_clk);
 	if (ret) {
 		dev_err(dev, "pipe_clk enable failed, err=%d\n", ret);
 		clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
 		return ret;
 	}
 
-	qmp_usb_disable_autonomous_mode(qphy);
+	qmp_usb_disable_autonomous_mode(qmp);
 
 	return 0;
 }
@@ -2287,7 +2252,7 @@ static const struct dev_pm_ops qmp_usb_pm_ops = {
 
 static int qmp_usb_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
-	struct qcom_qmp *qmp = dev_get_drvdata(dev);
+	struct qmp_usb *qmp = dev_get_drvdata(dev);
 	int num = cfg->num_vregs;
 	int i;
 
@@ -2303,7 +2268,7 @@ static int qmp_usb_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 
 static int qmp_usb_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
-	struct qcom_qmp *qmp = dev_get_drvdata(dev);
+	struct qmp_usb *qmp = dev_get_drvdata(dev);
 	int i;
 	int ret;
 
@@ -2324,7 +2289,7 @@ static int qmp_usb_reset_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 
 static int qmp_usb_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
-	struct qcom_qmp *qmp = dev_get_drvdata(dev);
+	struct qmp_usb *qmp = dev_get_drvdata(dev);
 	int num = cfg->num_clks;
 	int i;
 
@@ -2361,7 +2326,7 @@ static void phy_clk_release_provider(void *res)
  *    clk  |   +-------+   |                   +-----+
  *         +---------------+
  */
-static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
+static int phy_pipe_clk_register(struct qmp_usb *qmp, struct device_node *np)
 {
 	struct clk_fixed_rate *fixed;
 	struct clk_init_data init = { };
@@ -2420,13 +2385,11 @@ static void __iomem *qmp_usb_iomap(struct device *dev, struct device_node *np,
 	return devm_of_iomap(dev, np, index, NULL);
 }
 
-static
-int qmp_usb_create(struct device *dev, struct device_node *np, int id,
+static int qmp_usb_create(struct device *dev, struct device_node *np,
 			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
 {
-	struct qcom_qmp *qmp = dev_get_drvdata(dev);
+	struct qmp_usb *qmp = dev_get_drvdata(dev);
 	struct phy *generic_phy;
-	struct qmp_phy *qphy;
 	bool exclusive = true;
 	int ret;
 
@@ -2439,81 +2402,75 @@ int qmp_usb_create(struct device *dev, struct device_node *np, int id,
 	if (of_device_is_compatible(dev->of_node, "qcom,sm8350-qmp-usb3-uni-phy"))
 		exclusive = false;
 
-	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
-	if (!qphy)
-		return -ENOMEM;
-
-	qphy->cfg = cfg;
-	qphy->serdes = serdes;
+	qmp->cfg = cfg;
+	qmp->serdes = serdes;
 	/*
 	 * Get memory resources for the PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
 	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4, pcs_misc (optional) -> 5
 	 * For single lane PHYs: pcs_misc (optional) -> 3.
 	 */
-	qphy->tx = devm_of_iomap(dev, np, 0, NULL);
-	if (IS_ERR(qphy->tx))
-		return PTR_ERR(qphy->tx);
+	qmp->tx = devm_of_iomap(dev, np, 0, NULL);
+	if (IS_ERR(qmp->tx))
+		return PTR_ERR(qmp->tx);
 
-	qphy->rx = devm_of_iomap(dev, np, 1, NULL);
-	if (IS_ERR(qphy->rx))
-		return PTR_ERR(qphy->rx);
+	qmp->rx = devm_of_iomap(dev, np, 1, NULL);
+	if (IS_ERR(qmp->rx))
+		return PTR_ERR(qmp->rx);
 
-	qphy->pcs = qmp_usb_iomap(dev, np, 2, exclusive);
-	if (IS_ERR(qphy->pcs))
-		return PTR_ERR(qphy->pcs);
+	qmp->pcs = qmp_usb_iomap(dev, np, 2, exclusive);
+	if (IS_ERR(qmp->pcs))
+		return PTR_ERR(qmp->pcs);
 
 	if (cfg->pcs_usb_offset)
-		qphy->pcs_usb = qphy->pcs + cfg->pcs_usb_offset;
+		qmp->pcs_usb = qmp->pcs + cfg->pcs_usb_offset;
 
 	if (cfg->lanes >= 2) {
-		qphy->tx2 = devm_of_iomap(dev, np, 3, NULL);
-		if (IS_ERR(qphy->tx2))
-			return PTR_ERR(qphy->tx2);
+		qmp->tx2 = devm_of_iomap(dev, np, 3, NULL);
+		if (IS_ERR(qmp->tx2))
+			return PTR_ERR(qmp->tx2);
 
-		qphy->rx2 = devm_of_iomap(dev, np, 4, NULL);
-		if (IS_ERR(qphy->rx2))
-			return PTR_ERR(qphy->rx2);
+		qmp->rx2 = devm_of_iomap(dev, np, 4, NULL);
+		if (IS_ERR(qmp->rx2))
+			return PTR_ERR(qmp->rx2);
 
-		qphy->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
+		qmp->pcs_misc = devm_of_iomap(dev, np, 5, NULL);
 	} else {
-		qphy->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
+		qmp->pcs_misc = devm_of_iomap(dev, np, 3, NULL);
 	}
 
-	if (IS_ERR(qphy->pcs_misc)) {
+	if (IS_ERR(qmp->pcs_misc)) {
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
-		qphy->pcs_misc = NULL;
+		qmp->pcs_misc = NULL;
 	}
 
-	qphy->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
-	if (IS_ERR(qphy->pipe_clk)) {
-		return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
-				     "failed to get lane%d pipe clock\n", id);
+	qmp->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
+	if (IS_ERR(qmp->pipe_clk)) {
+		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
+				     "failed to get pipe clock\n");
 	}
 
 	generic_phy = devm_phy_create(dev, np, &qmp_usb_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
-		dev_err(dev, "failed to create qphy %d\n", ret);
+		dev_err(dev, "failed to create PHY: %d\n", ret);
 		return ret;
 	}
 
-	qphy->phy = generic_phy;
-	qphy->qmp = qmp;
-	qmp->phys[id] = qphy;
-	phy_set_drvdata(generic_phy, qphy);
+	qmp->phy = generic_phy;
+	phy_set_drvdata(generic_phy, qmp);
 
 	return 0;
 }
 
 static int qmp_usb_probe(struct platform_device *pdev)
 {
-	struct qcom_qmp *qmp;
 	struct device *dev = &pdev->dev;
 	struct device_node *child;
 	struct phy_provider *phy_provider;
 	void __iomem *serdes;
 	const struct qmp_phy_cfg *cfg = NULL;
+	struct qmp_usb *qmp;
 	int num, id;
 	int ret;
 
@@ -2555,10 +2512,6 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	if (num > 1)
 		return -EINVAL;
 
-	qmp->phys = devm_kcalloc(dev, num, sizeof(*qmp->phys), GFP_KERNEL);
-	if (!qmp->phys)
-		return -ENOMEM;
-
 	pm_runtime_set_active(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
@@ -2572,7 +2525,7 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	id = 0;
 	for_each_available_child_of_node(dev->of_node, child) {
 		/* Create per-lane phy */
-		ret = qmp_usb_create(dev, child, id, serdes, cfg);
+		ret = qmp_usb_create(dev, child, serdes, cfg);
 		if (ret) {
 			dev_err(dev, "failed to create lane%d phy, %d\n",
 				id, ret);
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
