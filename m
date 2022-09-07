Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F05A7C6FA92
	for <linux-phy@archiver.kernel.org>; Wed,  7 Sep 2022 11:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MOXwsCZr0t9vOIaJkqBSMRJkZJFMX2vq9B9PWdld7I=; b=ElSTpbQTVPJJqp
	ruJIA5Usujzq/iF36fZJDHEjWA08GYOA+uGbuxa+vnRIK7kzlaSa7pwauhg2iev/T44ju1wbO93FC
	1gxg/k3T4j/jO+8hee6XSL3MT9jeWVHBzyuEjF2BQeSmtyQbKc4SbE4n8QvlRcGDjWDJ+bwc8LwmS
	olMdw4XvfEZVimB1I3ksZPVWOUi8hj4f/f/tdkVFhCTz9vFF83nn62VR60qvvjzWJMVV61qqssrAj
	sLaaErgg7o4noJpoWbNPGUq0nnYd4tDlNF8pPtOqrFeMhTC0P9jqplJKGJINfvyZ2jFihqGyYyEIp
	Vl2qeitUMGzlQI6PhBZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuf-005XLA-3A; Wed, 07 Sep 2022 11:08:09 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVsuO-005X6o-QW
	for linux-phy@lists.infradead.org; Wed, 07 Sep 2022 11:08:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E687EB81C52;
	Wed,  7 Sep 2022 11:07:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 942A5C4314C;
	Wed,  7 Sep 2022 11:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662548868;
	bh=0OLQo5HG5t0mohZzuG/02hbLS2lB2JW6h+/81xwTWDc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=O5apGTyvfzRzSOtkZsR0vJYatWBow0UMxYLDAUJ0BeAjHqKQfCYkGaqDE4LPT0iJD
	 aQlTHi/rZD4TJ9W87VhTOipbREBzJjM3x5KNrYgmbNWFBtbShA2/C4nv5KNmcYaNcm
	 vGSGvrhWHsv9IlOmjQAurFL7SehUPe7l/cR5GH63keiNcjkMMUneiZOsqJj9Klz5k+
	 PkPFmqj88A9LwD35+56OukBLoWxxAwM4LVlu1cZcixc0iaYBwNEFL8roc6BvkZfby7
	 IXVKgtw+gdoZYuGRFwYheXKJhUajbzYDdcGiR5IJLiua+7KTeUGGtbSSQj6uzG9pZB
	 fAuPCc0rLx59g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVsuO-0004z5-MB; Wed, 07 Sep 2022 13:07:52 +0200
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
Subject: [PATCH 07/16] phy: qcom-qmp-ufs: drop unused runtime PM implementation
Date: Wed,  7 Sep 2022 13:07:19 +0200
Message-Id: <20220907110728.19092-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907110728.19092-1-johan+linaro@kernel.org>
References: <20220907110728.19092-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_040753_348053_F9E24F3B 
X-CRM114-Status: GOOD (  15.93  )
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

Drop the unused and incomplete runtime PM implementation, which was
only used by USB PHYs before splitting the QMP driver.

Note that the runtime PM was never disabled (and state restored) on
driver unbind.

This effectively reverts commit ac0d239936bd ("phy: qcom-qmp: Add
support for runtime PM").

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 38 -------------------------
 1 file changed, 38 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 01a99a06fd4f..7bd3c992b841 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -53,17 +53,6 @@
 #define USB3_MODE				BIT(0) /* enables USB3 mode */
 #define DP_MODE					BIT(1) /* enables DP mode */
 
-/* QPHY_PCS_AUTONOMOUS_MODE_CTRL register bits */
-#define ARCVR_DTCT_EN				BIT(0)
-#define ALFPS_DTCT_EN				BIT(1)
-#define ARCVR_DTCT_EVENT_SEL			BIT(4)
-
-/* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
-#define IRQ_CLEAR				BIT(0)
-
-/* QPHY_PCS_LFPS_RXTERM_IRQ_STATUS register bits */
-#define RCVR_DETECT				BIT(0)
-
 /* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
 #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
 
@@ -125,9 +114,6 @@ enum qphy_reg_layout {
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
 	QPHY_PCS_STATUS,
-	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
-	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
-	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
 	/* PCS_MISC registers */
 	QPHY_PCS_MISC_TYPEC_CTRL,
@@ -635,7 +621,6 @@ struct qmp_phy_cfg {
  * @pcs_misc: iomapped memory space for lane's pcs_misc
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
- * @mode: current PHY mode
  */
 struct qmp_phy {
 	struct phy *phy;
@@ -649,7 +634,6 @@ struct qmp_phy {
 	void __iomem *pcs_misc;
 	unsigned int index;
 	struct qcom_qmp *qmp;
-	enum phy_mode mode;
 };
 
 /**
@@ -1117,16 +1101,6 @@ static int qcom_qmp_phy_ufs_disable(struct phy *phy)
 	return qcom_qmp_phy_ufs_exit(phy);
 }
 
-static int qcom_qmp_phy_ufs_set_mode(struct phy *phy,
-				 enum phy_mode mode, int submode)
-{
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-
-	qphy->mode = mode;
-
-	return 0;
-}
-
 static int qcom_qmp_phy_ufs_vreg_init(struct device *dev, const struct qmp_phy_cfg *cfg)
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
@@ -1162,7 +1136,6 @@ static int qcom_qmp_phy_ufs_clk_init(struct device *dev, const struct qmp_phy_cf
 static const struct phy_ops qcom_qmp_ufs_ops = {
 	.power_on	= qcom_qmp_phy_ufs_enable,
 	.power_off	= qcom_qmp_phy_ufs_disable,
-	.set_mode	= qcom_qmp_phy_ufs_set_mode,
 	.owner		= THIS_MODULE,
 };
 
@@ -1332,14 +1305,6 @@ static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
 	if (!qmp->phys)
 		return -ENOMEM;
 
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
-	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
-	 */
-	pm_runtime_forbid(dev);
-
 	id = 0;
 	for_each_available_child_of_node(dev->of_node, child) {
 		/* Create per-lane phy */
@@ -1356,13 +1321,10 @@ static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (!IS_ERR(phy_provider))
 		dev_info(dev, "Registered Qcom-QMP phy\n");
-	else
-		pm_runtime_disable(dev);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 
 err_node_put:
-	pm_runtime_disable(dev);
 	of_node_put(child);
 	return ret;
 }
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
