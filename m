Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C964DC6FA96
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fF3VBZJmsP5KjNAZTWemgIaRKfdBtPtNOGaZyAJlxds=; b=GJCiGTfCe6pOV1
	IHJX30aQRv8abmd6gT5OgNCSvFMbgZxrBhRlpT7sXEeFlaq74Jrxo6aeTJ1252CNbriUh8ryRp9J8
	bazCdHNgZiHBZteU4AAXaJE/i+1G6xd+hM9A54TM4FF8DVD06VFmmldn3k2vg2kF3fHhsP6m6pXg5
	htv44zvkocgclEXEslZbK6mf3+GTKO2GMS9PYIDwk8c0+K8bXDs/C1sgk8Mw339wXTdOIp+sw76Ln
	bjafUoB2/0XJ+e93gKlgFd89Bv5uTMJlfaw2M726MQv/pZ88OdOofzayWiXTTUPYCfiHlq2qhfQ/w
	xe3cNfg3RnNTnk1Z9rhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqd-001QjT-75; Tue, 20 Sep 2022 07:39:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqR-001QVl-Fz
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3030B624BD;
	Tue, 20 Sep 2022 07:39:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3E09C4FF16;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=xr6/dxBGTfXXLfcmOXWkhvGUoSIv7RHJBfx0JC7hLSQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=B2/10kf7a0vScK6H7GxgaTKYrA96KJt3mgHPL2oxp14teZDNK/kz1wcTJvgluQUzG
	 V80RrbzD1TdJtAPmUUbmhnZe8JWgIe45O0BQpBqD++84yH8iYTML/I6vr5tg8MrFhB
	 fIfso7+ontydXAvFzm5XYIJk3EnVARsbhLLWJaDC93tll28lB/SWAFtpY3/btjQtkA
	 Vgj+uWE8gRquFZ6SNJFbxlwtiriLBcFDlu35U8U4D2RGmGBe5cXtJzree3yzuXZxkz
	 860PcikhYkU6ae0Xs0HnI5KmvODjbTWEXYYVLdJPk9jgBKXqeKVzZ4i1hm/CZJYXDM
	 BcmYQaueKNPRQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqQ-0005RP-PZ; Tue, 20 Sep 2022 09:39:02 +0200
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
Subject: [PATCH 17/17] phy: qcom-qmp-combo: drop redundant DP config flag
Date: Tue, 20 Sep 2022 09:38:26 +0200
Message-Id: <20220920073826.20811-18-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003903_686631_234BDE31 
X-CRM114-Status: GOOD (  16.61  )
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

Drop the DP_COM control block flag from the configuration data, which is
set for all combo PHYs and hence no longer needed since the QMP driver
split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 63 +++++++----------------
 1 file changed, 18 insertions(+), 45 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 417e0fcf1a9f..ad3b0aa22048 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -876,9 +876,6 @@ struct qmp_phy_cfg {
 	int pwrdn_delay_min;
 	int pwrdn_delay_max;
 
-	/* true, if PHY has a separate DP_COM control block */
-	bool has_phy_dp_com_ctrl;
-
 	/* Offset from PCS to PCS_USB region */
 	unsigned int pcs_usb_offset;
 
@@ -1051,8 +1048,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
-
-	.has_phy_dp_com_ctrl	= true,
 };
 
 static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
@@ -1086,8 +1081,6 @@ static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout,
 
-	.has_phy_dp_com_ctrl	= true,
-
 	.dp_aux_init = qcom_qmp_v3_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v3_phy_configure_dp_tx,
 	.configure_dp_phy = qcom_qmp_v3_phy_configure_dp_phy,
@@ -1126,8 +1119,6 @@ static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
-
-	.has_phy_dp_com_ctrl	= true,
 };
 
 static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
@@ -1166,8 +1157,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
-
-	.has_phy_dp_com_ctrl	= true,
 };
 
 static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
@@ -1201,8 +1190,6 @@ static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout,
 
-	.has_phy_dp_com_ctrl	= true,
-
 	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
 	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
@@ -1242,8 +1229,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
-
-	.has_phy_dp_com_ctrl	= true,
 };
 
 static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
@@ -1277,8 +1262,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
 
-	.has_phy_dp_com_ctrl	= true,
-
 	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
 	.configure_dp_phy = qcom_qmp_v5_phy_configure_dp_phy,
@@ -1320,8 +1303,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
-
-	.has_phy_dp_com_ctrl	= true,
 };
 
 static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
@@ -1355,8 +1336,6 @@ static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
 
-	.has_phy_dp_com_ctrl	= true,
-
 	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
 	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
 	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
@@ -1995,28 +1974,25 @@ static int qmp_combo_com_init(struct qmp_phy *qphy)
 	if (ret)
 		goto err_assert_reset;
 
-	if (cfg->has_phy_dp_com_ctrl) {
-		qphy_setbits(dp_com, QPHY_V3_DP_COM_POWER_DOWN_CTRL,
-			     SW_PWRDN);
-		/* override hardware control for reset of qmp phy */
-		qphy_setbits(dp_com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
-			     SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
-			     SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+	qphy_setbits(dp_com, QPHY_V3_DP_COM_POWER_DOWN_CTRL, SW_PWRDN);
 
-		/* Default type-c orientation, i.e CC1 */
-		qphy_setbits(dp_com, QPHY_V3_DP_COM_TYPEC_CTRL, 0x02);
+	/* override hardware control for reset of qmp phy */
+	qphy_setbits(dp_com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
+			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
 
-		qphy_setbits(dp_com, QPHY_V3_DP_COM_PHY_MODE_CTRL,
-			     USB3_MODE | DP_MODE);
+	/* Default type-c orientation, i.e CC1 */
+	qphy_setbits(dp_com, QPHY_V3_DP_COM_TYPEC_CTRL, 0x02);
 
-		/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
-		qphy_clrbits(dp_com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
-			     SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
-			     SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+	qphy_setbits(dp_com, QPHY_V3_DP_COM_PHY_MODE_CTRL, USB3_MODE | DP_MODE);
 
-		qphy_clrbits(dp_com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
-		qphy_clrbits(dp_com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
-	}
+	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
+	qphy_clrbits(dp_com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
+			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
+			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
+
+	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
+	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
 
 	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL])
 		qphy_setbits(pcs,
@@ -2838,12 +2814,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
 
-	/* per PHY dp_com; if PHY has dp_com control block */
-	if (cfg->has_phy_dp_com_ctrl) {
-		qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
-		if (IS_ERR(qmp->dp_com))
-			return PTR_ERR(qmp->dp_com);
-	}
+	qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
+	if (IS_ERR(qmp->dp_com))
+		return PTR_ERR(qmp->dp_com);
 
 	/* Only two serdes for combo PHY */
 	dp_serdes = devm_platform_ioremap_resource(pdev, 2);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
