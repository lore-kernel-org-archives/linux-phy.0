Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F6F7C4167D
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uV8mwN7lVD/Du0dOcCgPre3qY7AzcEF9Cu2PlYfm66E=; b=PruwLlx8QwT3dU
	KChSZ82OPM4Vulzm3w9HPKYM2v9wK3hwyQfasuTeVkRNHXvc+jpFXCST8LrXhkTG/VsCdAsDGjab3
	ofQHWk06kurEAnod1ofvZoazDFgVMVnTCtQcMidwoQtWelc4Lgse3lxqiZ6tz43sYCGpWTaRUfprU
	8kSzp/niru1HCBmsifVXGJal85o+eEzixeVvjcognGLCnwxixbnFovrIqIwA1N6Ew0K0q10s3UQMg
	hTyw90bCFAe4mMGrzz8CA5jvJrm2rimQK9ZyJh7C0RAt48b2Gqhpu9DDMbn34wJBnP2K2urdjF8SP
	h3TjrL/QC3jIkfA1gAiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXS7-007QDr-DD; Wed, 12 Oct 2022 08:50:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRr-007Q4M-GP
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1EC2A6149D;
	Wed, 12 Oct 2022 08:50:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA287C4FEE3;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564639;
	bh=6HHb0hSTLogTFhDfHIVKWWgqRK1WkBCFkQZashQnNVU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ifJ1auGHFOfwfUr//ULX8EVgVIA/4DuQzgawzPuXFP9tOcKqhgrmpbuTLErtscJjY
	 YEJCB+N80vnOeyrB76lYjyRvm+UGfLn8Rfk6YkSO1tL55RclyUiETcG5eBvyB6l7aV
	 gx9O8xjw8G4m8iXnEjSIwk8R/qO2Aynv/GKJwGQL8JTJ6Motbl5AjSM36IT8Lc9exd
	 llmToBY+9zHlVp9mU4QCnAQxF6xdqnUDXpgat47INv2LgmxLzrAWkRs094lx3BoEjb
	 iTV2FsEAOxexhDMxoOD9gMPugQ5EvTSvyPMlPMt4QuStLJWLbBDC7LDiphKq1vcThX
	 WkUMkVx/eTpCQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRf-0006IA-Bj; Wed, 12 Oct 2022 10:50:31 +0200
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
Subject: [PATCH 15/20] phy: qcom-qmp-combo: drop start and pwrdn-ctrl abstraction
Date: Wed, 12 Oct 2022 10:49:57 +0200
Message-Id: <20221012085002.24099-15-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015043_753311_2B579B70 
X-CRM114-Status: GOOD (  13.61  )
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

All USB PHYs need to start and stop the SerDes and PCS so drop the
start-ctrl abstraction which is no longer needed since the QMP driver
split.

Similarly, drop the pwrdn-ctrl abstraction which also is not needed
since the split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 29 +++++------------------
 1 file changed, 6 insertions(+), 23 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 0071c73ac1c8..2fab8d5ec0f1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -851,9 +851,6 @@ struct qmp_phy_cfg {
 	/* array of registers with different offsets */
 	const unsigned int *regs;
 
-	unsigned int start_ctrl;
-	unsigned int pwrdn_ctrl;
-
 	/* true, if PHY needs delay after POWER_DOWN */
 	bool has_pwrdn_delay;
 
@@ -1019,9 +1016,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 };
 
@@ -1087,9 +1081,6 @@ static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 };
 
@@ -1121,9 +1112,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x300,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 };
 
@@ -1189,9 +1177,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
 	.regs			= qmp_v4_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x300,
-
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
 };
 
 static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
@@ -1259,9 +1244,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
 	.regs			= qmp_v4_usb3phy_regs_layout,
 	.pcs_usb_offset		= 0x300,
 
-	.start_ctrl		= SERDES_START | PCS_START,
-	.pwrdn_ctrl		= SW_PWRDN,
-
 	.has_pwrdn_delay	= true,
 };
 
@@ -1944,8 +1926,7 @@ static int qmp_combo_com_init(struct qmp_phy *qphy)
 	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
 	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			cfg->pwrdn_ctrl);
+	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
 
 	mutex_unlock(&qmp->phy_mutex);
 
@@ -2049,7 +2030,8 @@ static int qmp_combo_power_on(struct phy *phy)
 		/* Pull PHY out of reset state */
 		qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 		/* start SerDes and Phy-Coding-Sublayer */
-		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
+		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL],
+				SERDES_START | PCS_START);
 
 		status = pcs + cfg->regs[QPHY_PCS_STATUS];
 		ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 200,
@@ -2082,11 +2064,12 @@ static int qmp_combo_power_off(struct phy *phy)
 		qphy_setbits(qphy->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
 		/* stop SerDes and Phy-Coding-Sublayer */
-		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
+		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL],
+				SERDES_START | PCS_START);
 
 		/* Put PHY into POWER DOWN state: active low */
 		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-				cfg->pwrdn_ctrl);
+				SW_PWRDN);
 	}
 
 	return 0;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
