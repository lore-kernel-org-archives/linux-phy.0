Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ECEFC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svD5kS1cFyfa2z8nuhmk9AtSG9n8MSiMiogSxTbIFZo=; b=rRKYCx7ydjEzKU
	bHPSaiKLv93V5Dut2XO2FMq1sGgi09D/P3lmjrZWxUAqV1tIQZd+fphfJ5DPjp09KW0BOxUSp2pIb
	2usuxrxDMSN/iVrXee/431bZAWvAKWHoSfHu9/i93+vaHVn1GSkFEFOFkmrtVofLlgBkKAdkpqHBV
	omw9mAdzPVOMrrcM2f6eaAEOi9JZo/wzCQIu4bjDtim72MZoxoV7ekeLvWNeomrDt+j8PqFObtn3A
	mQydsNSdIF5miolUrWZGSLDzZ/gBo1DpnBj8RLCc8Pcs+F4zywA2fmubRtOFT2Uc4hK/m399Fecyt
	UVdPhDvgl6Va/y5ZETVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPr0-00EPjw-3K; Fri, 11 Nov 2022 08:57:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqn-00EPU9-6j
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A49BD61EFF;
	Fri, 11 Nov 2022 08:57:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8B40C43145;
	Fri, 11 Nov 2022 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157043;
	bh=8dymqpuzXcztunwC+qLMQlrAR1UOIg2+qt0/dP7pvt4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Hr+iCVqaHcQ81ybHqTryh/Vjay9sVzbzUN5Liko9sRi9WDwl6HPV8BD/FN5Wyk+4F
	 CtY0Nxb8UB8Ofkku8HI/Dlfhhs9LBRU+EGPd3GC/FShdfu/JTrWcJoV+aU1LQa5xfb
	 S1kBXGjDr05FlcrnfOtx4P4YLpILMZz5SEmyCU14cmPjK1woaIOubrPN6eVzPP94f/
	 HbKxM3egKSb3wWam7N3WKxC9Gxh3krqaxXVkPU3lE75RMhh4uCzhajmg09TC0eiT2T
	 22wEmzAUHfxdR3PlaWlpfT4bH/prJ/xisQ/yOIoJctrfSyJGg/a+TxbdtN/xuGWZmH
	 5KgPORDx5/b5A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqJ-0002Tv-52; Fri, 11 Nov 2022 09:56:55 +0100
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
Subject: [PATCH 04/22] phy: qcom-qmp-combo: rename PHY ops structures
Date: Fri, 11 Nov 2022 09:56:25 +0100
Message-Id: <20221111085643.9478-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005725_378477_566C5368 
X-CRM114-Status: GOOD (  10.80  )
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

Rename the PHY operation structures so that they have a "phy_ops" suffix
and move them next to the implementation.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 40 +++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 2ac29b71d3b7..13800c2243e1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2118,6 +2118,24 @@ static int qmp_combo_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	return 0;
 }
 
+static const struct phy_ops qmp_combo_usb_phy_ops = {
+	.init		= qmp_combo_enable,
+	.exit		= qmp_combo_disable,
+	.set_mode	= qmp_combo_set_mode,
+	.owner		= THIS_MODULE,
+};
+
+static const struct phy_ops qmp_combo_dp_phy_ops = {
+	.init		= qmp_combo_init,
+	.configure	= qcom_qmp_dp_phy_configure,
+	.power_on	= qmp_combo_power_on,
+	.calibrate	= qcom_qmp_dp_phy_calibrate,
+	.power_off	= qmp_combo_power_off,
+	.exit		= qmp_combo_exit,
+	.set_mode	= qmp_combo_set_mode,
+	.owner		= THIS_MODULE,
+};
+
 static void qmp_combo_enable_autonomous_mode(struct qmp_phy *qphy)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -2542,24 +2560,6 @@ static int phy_dp_clks_register(struct qcom_qmp *qmp, struct qmp_phy *qphy,
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
-static const struct phy_ops qmp_combo_usb_ops = {
-	.init		= qmp_combo_enable,
-	.exit		= qmp_combo_disable,
-	.set_mode	= qmp_combo_set_mode,
-	.owner		= THIS_MODULE,
-};
-
-static const struct phy_ops qmp_combo_dp_ops = {
-	.init		= qmp_combo_init,
-	.configure	= qcom_qmp_dp_phy_configure,
-	.power_on	= qmp_combo_power_on,
-	.calibrate	= qcom_qmp_dp_phy_calibrate,
-	.power_off	= qmp_combo_power_off,
-	.exit		= qmp_combo_exit,
-	.set_mode	= qmp_combo_set_mode,
-	.owner		= THIS_MODULE,
-};
-
 static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
 			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
 {
@@ -2632,9 +2632,9 @@ static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
 	}
 
 	if (cfg->type == PHY_TYPE_DP)
-		ops = &qmp_combo_dp_ops;
+		ops = &qmp_combo_dp_phy_ops;
 	else
-		ops = &qmp_combo_usb_ops;
+		ops = &qmp_combo_usb_phy_ops;
 
 	generic_phy = devm_phy_create(dev, np, ops);
 	if (IS_ERR(generic_phy)) {
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
