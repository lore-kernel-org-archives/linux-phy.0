Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 119B9C38145
	for <linux-phy@archiver.kernel.org>; Tue,  6 Sep 2022 07:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdv2C11ex0viZATfA2yDrn7enIUoT5kTXuzdKmpzV0w=; b=USd4hIjTxZTiOt
	kCpHqb/GNJ01BF2qBcOzdSw0j/8RXxBaoTqvtUzRb/Au9SogH4wRV1uIGCrwUp88V4+Rlu8Iitw+h
	2yeERJtU85cOu6siGQ7RoMKCTypQxBt6XhJF7+hdArYpuWOJR+cvJZmWstRNwf8igCrsTzreIcGAK
	8JM8kNz2R7KTe+crRRscjH4jgyw3pCBuEBfTTqLxqTpgKXJ3m0jas77tslBS4o7hkumCMCjlqq5ij
	GDRxXx+RWLMCb8dt7YqXssrlolK0oDhEstJeG71rjnsssgdWaWFKzPqfOXhT4bDwUHKOMu4/wI9CQ
	fnTXrFGO1OA9/rTiRoNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVTHx-00Auas-Fy; Tue, 06 Sep 2022 07:46:29 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVTHs-00AuSO-Ns
	for linux-phy@lists.infradead.org; Tue, 06 Sep 2022 07:46:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 47AF4CE1411;
	Tue,  6 Sep 2022 07:46:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86F56C43143;
	Tue,  6 Sep 2022 07:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662450375;
	bh=stv2KodLgeKaNZa5CAyIDorCb1OmM6jfahmuccdBINU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sS4scs//uRVMm3xxTvr2jEEcMp0+xBk3LJctdshNhtNddZNa1lH5ZeJFXNQqU6GdC
	 V/Xdg/MEEoDJQ4FyISI2bpVppaL+vbQlsSEs2DCBazdva9EDQDTYQYXnEzCBvenW71
	 hLbE8D+rnETGTZU8YNGokSvSIHKEc0gPfj3Lk77R55XrpMfpGyyjQxg3nnqP6JIrYO
	 I7NDVdyE6hVpKzM3d+TSCKEI7zUjQQy009Eq0reHXnE0X8DmDWhoxKTtJFsdZgGWKX
	 9uEC2KW94LN/ypzt/bfgXCZD32JbuAAYaWUClmvqP5Mg9l6I+fcWzkAwPvINli0PWi
	 zRwOymG7BBR/A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oVTHm-00019K-OA; Tue, 06 Sep 2022 09:46:18 +0200
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
Subject: [PATCH 3/3] phy: qcom-qmp: drop dual-lane comments
Date: Tue,  6 Sep 2022 09:45:50 +0200
Message-Id: <20220906074550.4383-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906074550.4383-1-johan+linaro@kernel.org>
References: <20220906074550.4383-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_004625_226331_EDF6EBDA 
X-CRM114-Status: GOOD (  10.82  )
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

Drop the obsolete and misleading dual-lane comments which gave the
impression that only combo PHYs have a second lane.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1 -
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  | 1 -
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c   | 1 -
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 1 -
 4 files changed, 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index d200cd5ca4fa..af608c4dc869 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2139,7 +2139,6 @@ static int qcom_qmp_phy_combo_power_on(struct phy *phy)
 	qcom_qmp_phy_combo_configure_lane(tx, cfg->regs,
 				    cfg->tx_tbl, cfg->tx_tbl_num, 1);
 
-	/* Configuration for other LANE for USB-DP combo PHY */
 	if (cfg->is_dual_lane_phy) {
 		qcom_qmp_phy_combo_configure_lane(qphy->tx2, cfg->regs,
 					    cfg->tx_tbl, cfg->tx_tbl_num, 2);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 3766a6d44e87..2923977b205a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2036,7 +2036,6 @@ static int qmp_pcie_power_on(struct phy *phy)
 	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl_sec, cfg->tx_tbl_num_sec, 1);
 
-	/* Configuration for other LANE for USB-DP combo PHY */
 	if (cfg->is_dual_lane_phy) {
 		qmp_pcie_configure_lane(qphy->tx2, cfg->regs, cfg->tx_tbl,
 					cfg->tx_tbl_num, 2);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index c8583f5a54bd..01a99a06fd4f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1020,7 +1020,6 @@ static int qcom_qmp_phy_ufs_power_on(struct phy *phy)
 	qcom_qmp_phy_ufs_configure_lane(tx, cfg->regs,
 				    cfg->tx_tbl, cfg->tx_tbl_num, 1);
 
-	/* Configuration for other LANE for USB-DP combo PHY */
 	if (cfg->is_dual_lane_phy) {
 		qcom_qmp_phy_ufs_configure_lane(qphy->tx2, cfg->regs,
 					    cfg->tx_tbl, cfg->tx_tbl_num, 2);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 59ed6c89979d..fba8e40441cb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2283,7 +2283,6 @@ static int qcom_qmp_phy_usb_power_on(struct phy *phy)
 	qcom_qmp_phy_usb_configure_lane(tx, cfg->regs,
 				    cfg->tx_tbl, cfg->tx_tbl_num, 1);
 
-	/* Configuration for other LANE for USB-DP combo PHY */
 	if (cfg->is_dual_lane_phy) {
 		qcom_qmp_phy_usb_configure_lane(qphy->tx2, cfg->regs,
 					    cfg->tx_tbl, cfg->tx_tbl_num, 2);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
