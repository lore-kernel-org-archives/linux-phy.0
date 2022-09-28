Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CCF8C6FA97
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NEsD/EPrUB5f156WzFoX7rfKU9EbrM1jzBSyIj7WpA=; b=1sjXi8TLwxD3a2
	Is8kUHw8VCFkUaMB+g5hmjGDY1P1SCt7fBVu0uWjkg2+0q4qWL5/hAStf/07fwGIwNsJ/Du3VCKYn
	MtwmGvp3baVwCAf/Illmebh1eJ85tuH5eNo6Vm8UCEQBeC0ECSSmi84z3Tk2zcAbIZm61thJ4YE+C
	wEgsC+2bobOu2bsKvlmE6M87cMllHoP7japIiF+ilUPjMt16UbqmE1mdZHvAJgMTpZ4r+zoFc2IOs
	aZw5zHi04dkb+N+rOhu6W9Ht8jmTBUmXxWTxz2nEg48lsmHWJ+GV3aiNPvjYPkqTq1n9+oojQH0hG
	CIy6B3JPHAPS6KAqagsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCD-000cIQ-R6; Wed, 28 Sep 2022 23:10:29 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgC9-000cCm-5M
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:27 +0000
Received: by mail-lj1-x230.google.com with SMTP id b24so15896317ljk.6
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=MTZUhUnge8vicYCCEwsZVv1DWIlqH6ajZVbgoBJ9ax4=;
        b=jY+22saXJRFVs73re6xtnOYOoV3oYbPElwS2aPyVo6vabjNCElooITCRiImP1WGHzs
         TWbWtX518rGCbZUGNpb9YSI9H3UDNau3Fzgw38Holq3BHjyQlH45f4k6suvSoZOKyH0Q
         QXHZ5SoQVrX2w+nIawBzD/jjJqpeAyj52JypDBqY2RLEbetAfPlFHM1j4ku6FT/vRT5c
         2jKdHgfIVCJAVBWr0cB1xAzG4D01PPzLgiSjIBplVIRxJCm++Nvjsmv4BSflfZ/v7ag2
         IkC8qUJdZmcCMdZgR4FzqMSxgH/BbYVq2nHF9ZtHzRNjyLMeuAomkn6QqnlUsZYGoq2V
         Rc8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=MTZUhUnge8vicYCCEwsZVv1DWIlqH6ajZVbgoBJ9ax4=;
        b=jva7lPY1RZUEu+CaEMTsVpBqjwLNOHzEdzMI7EQZDiIpCQfoHCi3jZkdkq6yS+xAlc
         HjPi9xPt+rhEWsX8kdu784olvNCHlPyHAOi4T0Jj/E/rI/lfaKhHLPtCiIw8KjqNgbmo
         M+XcrjbeqHFAxAC0eQhVhksg9q1+KLzEy4h/g5YjwcAct71mYd2fWM9TGCY3MLNEcJK/
         BtMdCkTiP8C9qY2rVdLUDlHPRHFwkqnbz8IYtEGAaKgk9tVxoFaQP8LDIC67CgarrqDM
         1QOanEqXSrCbXpvP57jWrBCFqN7lXNI48jAguQ6Ou4w7Vav2NCZf17rBpCLIiUFV122N
         5bYA==
X-Gm-Message-State: ACrzQf23biSF2V5y9OZoKl8uB5qFnASVGjKE7eMZJk3hdfV8wpSnPJ0+
	YUMedNjYBvH4L7R6MxevHf12VA==
X-Google-Smtp-Source: AMsMyM4eLo9SMZG7WJNQQ/BByEEW0p/4U7V+U/HSaay4mmNtYgcu0xlKhKBVJCKB5ZI11ucCBMcuIg==
X-Received: by 2002:a05:651c:2397:b0:26d:b451:787d with SMTP id bk23-20020a05651c239700b0026db451787dmr55384ljb.83.1664406620097;
        Wed, 28 Sep 2022 16:10:20 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:19 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 05/18] phy: qcom-qmp-ufs: clean up power-down handling
Date: Thu, 29 Sep 2022 02:10:01 +0300
Message-Id: <20220928231014.455201-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161025_253954_467F1B9B 
X-CRM114-Status: GOOD (  11.11  )
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

From: Johan Hovold <johan+linaro@kernel.org>

Always define the POWER_DOWN_CONTROL register instead of falling back to
the v2 (and v4) offset during power on and power off.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index c08d34ad1313..738ec1e49ec6 100644
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
