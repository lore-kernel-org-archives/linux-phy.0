Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB995C3A59E
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8bTPAZoVYXeZ2xT4HXBnzMBSIKdi5oIxT+OaVto24M=; b=A8wUu7NLKktAS+
	R5ckdEfg+JiXpO2xWyY+draJl8dJCVdL1k5++9g6mKGk6nFDJXw91lWqiGVwzqNOk8mKwjdIqM7AG
	zP6t15Sh0yx5HQsJBJgCrc3r/LTxPvTC2gVmt8PJLiyDZMPFqbYz6Wx5qeKvOb+61j87D4aHX9c4L
	F/BXiU6UaDKU5Do3zRpP2cRnWJ1Tw2UHi2F54dpUcV/qEuT2aD11bvY6F/DRRCQgusKdkdPcqXmX3
	na9Moh96gGPn0rfJvDJFNupjPbpR/NMSt9wS5xDUWI5EvZMEIYnHqSDtkFcYUi/TmObfOWCm3F416
	U+jhSZ8+uHtGOuCLVBeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPr7-00EPqN-8r; Fri, 11 Nov 2022 08:57:46 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqo-00EPWv-IY
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 41EE3B82481;
	Fri, 11 Nov 2022 08:57:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F7D9C43166;
	Fri, 11 Nov 2022 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157043;
	bh=zZ3R6y73sAEmGUBnoaMqt7CyCvH2RDT2V8L5CYQqJvM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oxhMWewmJZN7bkeAxI7wKBy/HmVmuHaVdhNt+xX5XrOo/S8e/GJNrCChBqSmF3sB0
	 XMUQ3Mgq1vk31ygaxjj6glEszZIl8WNcQkDT/hNTMet5dOhHDvHAiqYMx39+ArsdSO
	 3k6RFhlC2pyCJc4KinFnTCTIpDVuk/PfrPPxoxEYWfskcgpvM+SOqontdikEkRnfO+
	 2Q08sniNOsr7pEw/oqqIPuP4qfYz0AeXNhMtogEe1JbfB2BHqyoQxpbGdCL0zo/P/H
	 kxoHPIai4+9s2ZI5Ivcx3kHjObX2kJPGT2VxFLUMVnY7EUJsWhyRuWg3a0irGCgw6f
	 47BqEmbI34dcQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqJ-0002U7-FY; Fri, 11 Nov 2022 09:56:55 +0100
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
Subject: [PATCH 08/22] phy: qcom-qmp-combo: separate USB and DP init ops
Date: Fri, 11 Nov 2022 09:56:29 +0100
Message-Id: <20221111085643.9478-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005726_988501_E7027B09 
X-CRM114-Status: GOOD (  13.50  )
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

Separate the USB and DP init and exit operations by calling the common
initialisation code directly from the USB operation and adding a "dp"
infix to the DP callbacks.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 36 ++++++++++++-----------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index ae04f6219fd2..5d985195df38 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1964,7 +1964,7 @@ static int qmp_combo_com_exit(struct qmp_phy *qphy)
 	return 0;
 }
 
-static int qmp_combo_init(struct phy *phy)
+static int qmp_combo_dp_init(struct phy *phy)
 {
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
@@ -1974,8 +1974,16 @@ static int qmp_combo_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	if (cfg->type == PHY_TYPE_DP)
-		cfg->dp_aux_init(qphy);
+	cfg->dp_aux_init(qphy);
+
+	return 0;
+}
+
+static int qmp_combo_dp_exit(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+
+	qmp_combo_com_exit(qphy);
 
 	return 0;
 }
@@ -2073,38 +2081,32 @@ static int qmp_combo_power_off(struct phy *phy)
 	return 0;
 }
 
-static int qmp_combo_exit(struct phy *phy)
-{
-	struct qmp_phy *qphy = phy_get_drvdata(phy);
-
-	qmp_combo_com_exit(qphy);
-
-	return 0;
-}
-
 static int qmp_combo_usb_init(struct phy *phy)
 {
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	int ret;
 
-	ret = qmp_combo_init(phy);
+	ret = qmp_combo_com_init(qphy);
 	if (ret)
 		return ret;
 
 	ret = qmp_combo_power_on(phy);
 	if (ret)
-		qmp_combo_exit(phy);
+		qmp_combo_com_exit(qphy);
 
 	return ret;
 }
 
 static int qmp_combo_usb_exit(struct phy *phy)
 {
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	int ret;
 
 	ret = qmp_combo_power_off(phy);
 	if (ret)
 		return ret;
-	return qmp_combo_exit(phy);
+
+	return qmp_combo_com_exit(qphy);
 }
 
 static int qmp_combo_usb_set_mode(struct phy *phy, enum phy_mode mode, int submode)
@@ -2124,12 +2126,12 @@ static const struct phy_ops qmp_combo_usb_phy_ops = {
 };
 
 static const struct phy_ops qmp_combo_dp_phy_ops = {
-	.init		= qmp_combo_init,
+	.init		= qmp_combo_dp_init,
 	.configure	= qcom_qmp_dp_phy_configure,
 	.power_on	= qmp_combo_power_on,
 	.calibrate	= qcom_qmp_dp_phy_calibrate,
 	.power_off	= qmp_combo_power_off,
-	.exit		= qmp_combo_exit,
+	.exit		= qmp_combo_dp_exit,
 	.owner		= THIS_MODULE,
 };
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
