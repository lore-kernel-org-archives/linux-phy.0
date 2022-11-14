Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AD77C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FrZ0NmwW8q9EFiS8AB8EPK81S1jO6HfowDtYZfcH5s=; b=JZXCy9g6PxHsVt
	0rUhDlhqZPFrEUD7sLzPZ+VNB3xMgSqHgS/v1PzFK3iC+smz7TSGgocJ92O/qbK+1mlgnmzpTZpmf
	mhWg/XPVnmgoX/o7qF1h1PyHplV/Xp4xZdW3+T6Dd/TD6NyUKcFUlCOIhlIrHDdNf2Pw8n1RnyHkB
	bm3flc2Qb7udhsV9cZ0lD6SszS0PkCnV9u1/XgIjqa4yIOX2mmFTAfNM14emkXuEs1Lbcz9sBSY+2
	OlDRiGOK11elEi9eI7mJgvC4kajRU1vyGPA8zZG6SjiUL+PVmWmew6U4Ta+RMnb1V48mjqO95+RjB
	K7eY68UNTmiSFkzn9AUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJQ-000D3j-KK; Mon, 14 Nov 2022 11:07:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ6-000Cno-KO
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 085ED61036;
	Mon, 14 Nov 2022 11:07:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBEA3C4315E;
	Mon, 14 Nov 2022 11:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424034;
	bh=qn5RumtVltb51JOcYVlk6Xg93g2ZXcIIgZeoxH4IrpQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=umgD14FOPeBWkEcTI2k+nkYTYahyQkRgK9iEa0oIyKTLD/cRM/EvBkt728Nmip6XD
	 35dczSp/Z5SDunvyhmd3sI9laXhJm+Q+wZmmPmJ7alc6gPZL2vmUnBKcIpel4GpYAe
	 ztfSgNl7Hh5hfKBJJV4Hjabg7mcHceDupgnOFrBBn0Ab6s9UUwgdp8bEyrWt+LGhDl
	 ApdI4q34ejVUL9G0ZXW1FYjudwax8KcXUWccJYRsjp+BJLdAP1LjY0Kz420ejT9fnV
	 tOB7mUd6YvNzcEwVvlNkW59UOmPsZN4BASJbTWqgdYxc5LRRi2mvSdkh0Xfo2tSJt9
	 SGfRfr7l3P9bg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIY-0001Ej-DO; Mon, 14 Nov 2022 12:06:42 +0100
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
Subject: [PATCH v2 08/22] phy: qcom-qmp-combo: separate USB and DP init ops
Date: Mon, 14 Nov 2022 12:06:07 +0100
Message-Id: <20221114110621.4639-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030716_824856_29E5E745 
X-CRM114-Status: GOOD (  13.79  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
