Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80464C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 08:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzbq/UpzGkRQosROZnLrq7dOPQ68L10AuJq44IWAKWk=; b=cOEzfHRZrLlL2g
	d9HtK77Y2lq1UV2/FIlua/eKGSfIEg1T1lKkxMDO0CrTNC37csBsI6YL3q2nEVq8/GYMSjHGH6Pfs
	ow/7W5oC6+nMljDbpY9t9NvfLif/ROVfAKS2AJntEQ9l1dy4+yhZsBbuq9o6BvtOLv1tE+GkWAZul
	aMfCPZi4ApTd37mhewKzAR288wns0ZFDpzGSmUlL3qYf0D7uSDNsfDy4HXdXPMjXt3ebH5NMIeHxX
	CK4vOCMnzMSYWteLvzfzJNsWPsoVkxklCcwGO/ThZ/EIYA2EYdBcQWW4FT3NXfp9Fz8gx2+M3l3IZ
	hX+pfkxZLwmZxC9j5HNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUc2-00Ghzf-TP; Mon, 14 Nov 2022 08:14:38 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUbw-00Ghrf-4l
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 08:14:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E0BE8B80D3F;
	Mon, 14 Nov 2022 08:14:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09294C433D7;
	Mon, 14 Nov 2022 08:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668413669;
	bh=I0gW407logO9ULZNk7dtYHVJN9kTlN+oirFiIbEbYR0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=r5T3cPBQGoln9yV3qpXleNFS4JpX6G4OVVhjTVsyChL9aCoof50MsCeIHWTq1IyW6
	 8NEEV1N5xbUH97Fd3khIuOGQzilItUpw7mHLj+X/YtHiC41B9nIJKA1123dRvFjXrl
	 ZRqdf4beh2DO4c8A6/+epjbzY+ZywxBNuJPfUGMqbXIVGfWd43lqb8bj3w4WXijUW7
	 XGhc8/SZv88RZSe0SUB4qY8xbuMTJT01bmjKqMkBFSKJFMlK+N/Id6LjPMyXj/at9Q
	 h1xv2nnbCG2OZfFlZv++pzy8jHdcimZTWpPO/n3zenOS0IhUCFYaG11DQAb+hkTQw+
	 NGAD4OI/2122w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouUbN-0001LB-45; Mon, 14 Nov 2022 09:13:57 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 6/6] phy: qcom-qmp-combo: clean up common initialisation
Date: Mon, 14 Nov 2022 09:13:46 +0100
Message-Id: <20221114081346.5116-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114081346.5116-1-johan+linaro@kernel.org>
References: <20221114081346.5116-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_001432_481008_C2469256 
X-CRM114-Status: GOOD (  13.20  )
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

Commit 52e013d0bffa ("phy: qcom-qmp: Add support for DP in USB3+DP combo
phy") added support for the DisplayPort part of QMP PHYs but
unfortunately did so by duplicating parts of the shared configuration,
something which has lead to subtle bugs depending on probe order.

As the resources have always been requested based on the USB
configuration, make sure to not rely on fields from the DP configuration
when using them (e.g. in case they get out of sync) and remove the now
unused fields from the DP configurations.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 47 ++---------------------
 1 file changed, 4 insertions(+), 43 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index fde30205f332..c7a926d548d8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1043,14 +1043,6 @@ static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.clk_list		= qmp_v3_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
-	.reset_list		= sc7180_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v3_usb3phy_regs_layout,
-
 	.dp_aux_init = qcom_qmp_v3_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v3_phy_configure_dp_tx,
 	.configure_dp_phy = qcom_qmp_v3_phy_configure_dp_phy,
@@ -1108,14 +1100,6 @@ static const struct qmp_phy_cfg sdm845_dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.clk_list		= qmp_v3_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
-	.reset_list		= msm8996_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v3_usb3phy_regs_layout,
-
 	.dp_aux_init = qcom_qmp_v3_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v3_phy_configure_dp_tx,
 	.configure_dp_phy = qcom_qmp_v3_phy_configure_dp_phy,
@@ -1176,14 +1160,6 @@ static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.clk_list		= qmp_v3_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
-	.reset_list		= msm8996_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v3_usb3phy_regs_layout,
-
 	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
 	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
@@ -1240,14 +1216,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
 
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
-	.reset_list		= msm8996_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3phy_regs_layout,
-
 	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
 	.configure_dp_phy = qcom_qmp_v5_phy_configure_dp_phy,
@@ -1308,14 +1276,6 @@ static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
 
-	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
-	.reset_list		= msm8996_usb3phy_reset_l,
-	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v4_usb3phy_regs_layout,
-
 	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
 	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
@@ -1911,8 +1871,8 @@ static int qcom_qmp_dp_phy_calibrate(struct phy *phy)
 static int qmp_combo_com_init(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	struct qmp_phy *usb_phy = qmp->usb_phy;
+	const struct qmp_phy_cfg *cfg = usb_phy->cfg;
 	void __iomem *dp_com = qmp->dp_com;
 	int ret;
 
@@ -1964,7 +1924,7 @@ static int qmp_combo_com_init(struct qmp_phy *qphy)
 	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
 	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
 
-	qphy_setbits(usb_phy->pcs, usb_phy->cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+	qphy_setbits(usb_phy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			SW_PWRDN);
 
 	mutex_unlock(&qmp->phy_mutex);
@@ -1984,7 +1944,8 @@ static int qmp_combo_com_init(struct qmp_phy *qphy)
 static int qmp_combo_com_exit(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
-	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	struct qmp_phy *usb_phy = qmp->usb_phy;
+	const struct qmp_phy_cfg *cfg = usb_phy->cfg;
 
 	mutex_lock(&qmp->phy_mutex);
 	if (--qmp->init_count) {
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
