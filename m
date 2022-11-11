Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06665C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vI3PY4MKaFRZutm0TOCBqGZPUfG5llVI8Ap/e45bFzE=; b=3RhoS4vobe0r1M
	GM5FmEsdIr0T7cEEl7nO+DgcEbPtgglJXfaqoKaMY9vzvsQspbYpJ4eeS/KN5X38RRMgmhpHEceKO
	rRT8Jre4yi0cGX8YCDIvbtiToNa8m5dCJuSkrp7HM7MVXlnsygy3nxOQdVzxz7149tZfW6wRoDIO3
	xU7kKbP6hJw7MT2D+fCAFPrZ92Ht7auCnkfeV1jrbiXDSAVZJuRnCmzTQSU0NMX5y8XD4yI0OjQPr
	b6k0MwnLKm0PIScn9m7jHDEdHzQZwCFmFOm3gV6PjU2MVGlK7EtAwPFgDOegav9IdWgKznRvis+FP
	4TngGyH8uDToHC2zB0VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPrD-00EPz2-19; Fri, 11 Nov 2022 08:57:51 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqs-00EPdY-Gl
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BE585B8247F;
	Fri, 11 Nov 2022 08:57:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85E2EC4FEBE;
	Fri, 11 Nov 2022 08:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157043;
	bh=nWXsAtVF3OLE/Q7SzT/JJOzcMNVMOqmBow0B6bqTAQ8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Lw+V+7JFWvL6CAtkw01384p9gGqy9PJamLZQ+LdL35klKe8wxEXphsXiKQI37QjxF
	 3O1AbVavdV3DXEIXVy5+ZD7ygvutZ9EmAarpvbL3/Qhz28IqdormsDeDm/wMhC3z9k
	 QMF6uLn7nXoaXhdyLAL/WXwq3lqDh5uOHLPJR1r1IiZj3nY5vo1J1dh1oaa7uN+Vi3
	 i0r8Nh1EIUWFupuiwozqQL4ZemK1ZNeDzJB9NAXm0a8eRgX+U37+5xnH7qk11NDVX9
	 qjdDnbCz92nl18BWidMJXWtBwAOFIeNbG8WjHmHD+YO23rHsTQgElnHcjmN5H0eEX4
	 B8kcAtVred9kQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqJ-0002UH-OC; Fri, 11 Nov 2022 09:56:55 +0100
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
Subject: [PATCH 11/22] phy: qcom-qmp-combo: clean up serdes initialisation
Date: Fri, 11 Nov 2022 09:56:32 +0100
Message-Id: <20221111085643.9478-12-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005730_941021_ACCBD068 
X-CRM114-Status: GOOD (  12.23  )
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
