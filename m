Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B792CC4321E
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 09:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDw8KpvV+jCoYiKOhhcLfhOy8qMBgzXL2BPUGuU2PHU=; b=dlOI2evA3b/SkV
	qqsG6RpSS1K/bIoWJkZ6K2Z6q441WxKWwIbH02tEkxh8++wHje0nhwbIkW4Yd/7rOWW9zRprucTTt
	fDIMzuKaHwV6aX/ILo6p5JNlMbilvX/xdX0xBWtOydwOrfwjuD6iBdyz4nr5u4AdzooOCaWAeLHeE
	IdjetPZaJqvobfJ8+JhQhDFwKflwIXx8Q8P7hzZtNKSmBaXAfYucMrHcqKVtMdAXVi4SN5RSN3xyl
	vlj29vzASN7frBoFvd7hpeQB7cIu4xCQSunvc0wToZyXLAFQD4ugajmwTHWLUt0i/YfkkzJtc68Cr
	YCenna6N7aJGIYOglOdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odprI-0026sC-4P; Thu, 29 Sep 2022 09:29:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odprB-0026mX-G8
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 09:29:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 095C560ECE;
	Thu, 29 Sep 2022 09:29:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53090C43152;
	Thu, 29 Sep 2022 09:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664443763;
	bh=WuJsAZUgyp0wCyNm2QoREGEP0a7ostaCyBNlvLxye4c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dwE/11Y+UsoTaKu9bQ7no+ElvTTu6p29iGDMxExdQQaXiBoIxBROjG6Y2/KkVCgGR
	 k2Q76DJi+r8Ao6YP5fUFypfVfgJhyO+v3RD8MhkC13aDTtCSePikahZCpmrymjKlx4
	 S1alkpRTfCf/3oIXePxhe2VAYtY9reMjGmeIev1TqAOoquUJ20jfrC36oiG0/8Dw/Y
	 yBDV82MUpANuH7WovYzBKx3JJh4ONywqmqkuRGo78usu4idNBe+KCE0xHTDa5Gb/p4
	 CwP5Lslllf+rrrPVW/v4p/n1leBtxFc2XzSvHLvRQ37VyKJdtP4OA4cR1PV2nGv81B
	 INSpEaSdzsIRw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1odprG-00061Y-48; Thu, 29 Sep 2022 11:29:30 +0200
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
Subject: [PATCH v2 08/11] phy: qcom-qmp-ufs: clean up power-down handling
Date: Thu, 29 Sep 2022 11:29:13 +0200
Message-Id: <20220929092916.23068-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929092916.23068-1-johan+linaro@kernel.org>
References: <20220929092916.23068-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_022925_672948_438C690C 
X-CRM114-Status: GOOD (  13.07  )
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

Always define the POWER_DOWN_CONTROL register instead of falling back to
the v2 (and v4) offset during power on and power off.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index d7b35b715b95..c8d86aecfe74 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -89,22 +89,26 @@ enum qphy_reg_layout {
 static const unsigned int msm8996_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= 0x00,
 	[QPHY_PCS_READY_STATUS]		= 0x168,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
 static const unsigned int sdm845_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= 0x00,
 	[QPHY_PCS_READY_STATUS]		= 0x160,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
 static const unsigned int sm6115_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= 0x00,
 	[QPHY_PCS_READY_STATUS]		= 0x168,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
 static const unsigned int sm8150_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= QPHY_V4_PCS_UFS_PHY_START,
 	[QPHY_PCS_READY_STATUS]		= QPHY_V4_PCS_UFS_READY_STATUS,
 	[QPHY_SW_RESET]			= QPHY_V4_PCS_UFS_SW_RESET,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
 static const struct qmp_phy_init_tbl msm8996_ufs_serdes_tbl[] = {
@@ -856,13 +860,8 @@ static int qmp_ufs_com_init(struct qmp_phy *qphy)
 	if (ret)
 		goto err_disable_regulators;
 
-	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL])
-		qphy_setbits(pcs,
-			     cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			     cfg->pwrdn_ctrl);
-	else
-		qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
-			     cfg->pwrdn_ctrl);
+	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			cfg->pwrdn_ctrl);
 
 	return 0;
 
@@ -996,13 +995,8 @@ static int qmp_ufs_power_off(struct phy *phy)
 	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 	/* Put PHY into POWER DOWN state: active low */
-	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
-		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			     cfg->pwrdn_ctrl);
-	} else {
-		qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
-				cfg->pwrdn_ctrl);
-	}
+	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			cfg->pwrdn_ctrl);
 
 	return 0;
 }
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
