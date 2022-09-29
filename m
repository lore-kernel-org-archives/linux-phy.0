Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98C2AC352A1
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 09:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LTVDDCQ9c8Crh3ss8a7g3ps9U5dx0adhua9g+o45f8Q=; b=h6whulMbvMUKWP
	zxhk4hMyjA7d2ql8DV2PceXm2rnDa1vr6rwJGJcMgyMqWlqcV5NjGLOOv49gdfUQ2O4HBai09Wu8P
	JvpIkdMrhCMgtL+X4hXb+qc9A2gK0QOxiSw/ZJnf2eC2LwHeNqpsLprfNr4rbUJ707AxasN6kqLY9
	0OvVvii5g27gY64eLhllo/TRW9gIZynm27qmCk87LeunqUXgZeL8A0d2xUoT/es1UatSpwWrbXGPO
	G3hgvy0BsV9ZHhvQo5Zv+zcvG9eZdN2oeS7w9tU/1kSIazCR5dT+XanK/yFRXdgczRCVwVrFC7l2Z
	C5cldSUSVFMEbgxobH+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odprJ-0026tk-0D; Thu, 29 Sep 2022 09:29:33 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odprF-0026ni-2a
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 09:29:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 41B1CCE212B;
	Thu, 29 Sep 2022 09:29:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 150D1C433B5;
	Thu, 29 Sep 2022 09:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664443763;
	bh=vWpzBrV6j+ZnvnNGyI76CUcoYB8DWggjkaozF0vshM0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Uwjt1TuiQezkCfDppwRPRejaDnfAQDkXrTArR9R4eJd6fnLXt9nW0fAktE3oQLmPo
	 e1HYY4bi946gzFuaBakPn3EgQTdWinkwrJ+tO0RgxlYHdgb9fg0TXDuD4hcqXH3nlx
	 SfMsxLUmQuCZt+WPXT0I1Xm/RGocTmd3yqyfx8E69c43WExxUd3pF1PKcsfvPivB0k
	 qIhi58CMD1yotag8FtPNfe1CUh/EfcUqOPD3XfZnvgECoLyDEjD6nApye82A/spsqO
	 vT3woGJKAq5b1uCoHtS2AHpSEwZCGVbFCCCflx3Ait0OYAcLVxiK+nPm2CVpqevGfs
	 pbiAzlSaY/YoA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1odprF-00061H-J6; Thu, 29 Sep 2022 11:29:29 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 02/11] phy: qcom-qmp-combo: drop unused UFS reset
Date: Thu, 29 Sep 2022 11:29:07 +0200
Message-Id: <20220929092916.23068-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929092916.23068-1-johan+linaro@kernel.org>
References: <20220929092916.23068-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_022929_652967_4AF7688F 
X-CRM114-Status: GOOD (  10.71  )
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

Drop the unused UFS reset code which isn't used since the QMP driver
split.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 0cf1eb8a62f6..e618e675e8ec 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -944,7 +944,6 @@ struct qmp_phy_dp_clks {
  * @phys: array of per-lane phy descriptors
  * @phy_mutex: mutex lock for PHY common block initialization
  * @init_count: phy common block initialization count
- * @ufs_reset: optional UFS PHY reset handle
  */
 struct qcom_qmp {
 	struct device *dev;
@@ -958,8 +957,6 @@ struct qcom_qmp {
 
 	struct mutex phy_mutex;
 	int init_count;
-
-	struct reset_control *ufs_reset;
 };
 
 static void qcom_qmp_v3_phy_dp_aux_init(struct qmp_phy *qphy);
@@ -2027,8 +2024,6 @@ static int qmp_combo_com_exit(struct qmp_phy *qphy)
 		return 0;
 	}
 
-	reset_control_assert(qmp->ufs_reset);
-
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
@@ -2103,10 +2098,6 @@ static int qmp_combo_power_on(struct phy *phy)
 	else
 		qmp_combo_configure(pcs, cfg->regs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
-	ret = reset_control_deassert(qmp->ufs_reset);
-	if (ret)
-		goto err_disable_pipe_clk;
-
 	if (cfg->has_pwrdn_delay)
 		usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
