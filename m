Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13A7BC3A589
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 11:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTPJGVJEa2vMQmvLeaTIgCCNXRFPe7DlUSblYpvPHHc=; b=MBLXYd/XySmuxt
	MNhWaXaMAZRjeaX8mxVyC9PGS5qzCNulr+welbHG0r5mG/aR7nTAnkGtjvn1YoWCPpoeCO05EwPC9
	9ZwTRmhmWPu+7QMYErdp3ya0x+csQYxQw4fjBRci+8A+b/Y4dMEP6pbCnbIgl7r74sEqv6tHYbovC
	Jz6gimn5bkK/5Dl8i8U8RrZ7C2ub7/6qwY7ToT0uuIeB4jqBZ1bQQZbe1lY/725VXPhGuirfqtvjf
	ef8pylvUWlrrieFspES3X+fIow02NUkFpWs0Z6vnGmkpSlMZM/8GLQuSzlBKIDjSVJareLIVNGdLv
	t9PI4D1QNTHkVpTVZv7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJS-000D5h-4o; Mon, 14 Nov 2022 11:07:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouXJ8-000Cph-6N
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 11:07:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 62C8661038;
	Mon, 14 Nov 2022 11:07:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 464A3C4FEBA;
	Mon, 14 Nov 2022 11:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668424034;
	bh=7Z6mQ4Faw+KA0p9ntmd5ekJgCbfnfoWcFNq+lpBc2pk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hdfw/dGG2gIqSVetYJvkrfYCj7RmCg6Q+vefjxVIqaS5Cdjc+/P9DOq4l57WNT1t6
	 VElkoLzS3joikywejkVIZ+4zZOIunltKLkWKeur/ktugY28bk2eNcoZadXQuDzs9sH
	 jtIlfyyAQp7AE9ZayuhPm3jZpBd/0ffymV8CUgbwdLla4ieYsEpKm1lQQ/vPzR11zE
	 IzofLRI8zZ9UJn8EXg43cZoXotSMTokQ0efkaXrWoYkfiUmmv7r//6cOSAmsHbirJI
	 D6QFj07Bewg7yW7K8GUupkM/+h4s0ai5aWh+ZcTV5n5qND12h32paVvlO7hBggz5lR
	 aOjEtTzm1F/eA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouXIY-0001Eu-MI; Mon, 14 Nov 2022 12:06:42 +0100
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
Subject: [PATCH v2 11/22] phy: qcom-qmp-combo: clean up serdes initialisation
Date: Mon, 14 Nov 2022 12:06:10 +0100
Message-Id: <20221114110621.4639-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114110621.4639-1-johan+linaro@kernel.org>
References: <20221114110621.4639-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_030718_396011_278D0532 
X-CRM114-Status: GOOD (  12.44  )
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

Clean up serdes initialisation somewhat by making the current helper a
dedicated helper for the DP part of the PHY.

Note that no error is currently returned for non-supported link rates.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 49 +++++++++++------------
 1 file changed, 24 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 748fd32a6f72..c059e4aeecdb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1313,7 +1313,7 @@ static void qmp_combo_configure(void __iomem *base,
 	qmp_combo_configure_lane(base, tbl, num, 0xff);
 }
 
-static int qmp_combo_serdes_init(struct qmp_phy *qphy)
+static int qmp_combo_dp_serdes_init(struct qmp_phy *qphy)
 {
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
@@ -1323,28 +1323,26 @@ static int qmp_combo_serdes_init(struct qmp_phy *qphy)
 
 	qmp_combo_configure(serdes, serdes_tbl, serdes_tbl_num);
 
-	if (cfg->type == PHY_TYPE_DP) {
-		switch (dp_opts->link_rate) {
-		case 1620:
-			qmp_combo_configure(serdes, cfg->serdes_tbl_rbr,
-					       cfg->serdes_tbl_rbr_num);
-			break;
-		case 2700:
-			qmp_combo_configure(serdes, cfg->serdes_tbl_hbr,
-					       cfg->serdes_tbl_hbr_num);
-			break;
-		case 5400:
-			qmp_combo_configure(serdes, cfg->serdes_tbl_hbr2,
-					       cfg->serdes_tbl_hbr2_num);
-			break;
-		case 8100:
-			qmp_combo_configure(serdes, cfg->serdes_tbl_hbr3,
-					       cfg->serdes_tbl_hbr3_num);
-			break;
-		default:
-			/* Other link rates aren't supported */
-			return -EINVAL;
-		}
+	switch (dp_opts->link_rate) {
+	case 1620:
+		qmp_combo_configure(serdes, cfg->serdes_tbl_rbr,
+				cfg->serdes_tbl_rbr_num);
+		break;
+	case 2700:
+		qmp_combo_configure(serdes, cfg->serdes_tbl_hbr,
+				cfg->serdes_tbl_hbr_num);
+		break;
+	case 5400:
+		qmp_combo_configure(serdes, cfg->serdes_tbl_hbr2,
+				cfg->serdes_tbl_hbr2_num);
+		break;
+	case 8100:
+		qmp_combo_configure(serdes, cfg->serdes_tbl_hbr3,
+				cfg->serdes_tbl_hbr3_num);
+		break;
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
 	}
 
 	return 0;
@@ -1994,7 +1992,7 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *tx = qphy->tx;
 
-	qmp_combo_serdes_init(qphy);
+	qmp_combo_dp_serdes_init(qphy);
 
 	qmp_combo_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 
@@ -2025,6 +2023,7 @@ static int qmp_combo_usb_power_on(struct phy *phy)
 	struct qmp_phy *qphy = phy_get_drvdata(phy);
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	void __iomem *serdes = qphy->serdes;
 	void __iomem *tx = qphy->tx;
 	void __iomem *rx = qphy->rx;
 	void __iomem *pcs = qphy->pcs;
@@ -2032,7 +2031,7 @@ static int qmp_combo_usb_power_on(struct phy *phy)
 	unsigned int val;
 	int ret;
 
-	qmp_combo_serdes_init(qphy);
+	qmp_combo_configure(serdes, cfg->serdes_tbl, cfg->serdes_tbl_num);
 
 	ret = clk_prepare_enable(qphy->pipe_clk);
 	if (ret) {
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
