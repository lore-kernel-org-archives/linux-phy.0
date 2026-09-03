Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB2A8C624A4
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 14:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9l6U9z6OGYJgdUc/Taxa2BiyvWb7W1seJpMnNYLiIzg=; b=joOGlMOpcQh1TQ
	9he1s11IH5vQMUHOtFkTNN2zUoGQNEVYJpa8A5d4iblWBx9Cw2MZlPfViZOsUzBsvsP71buXf+2/N
	ruQpYlPf7V8cCJrKNLuEUAK8Xd17jIdx6FIFLamlL8f3Ia/59FhlKDX/CpF9y/B14lLRLRHNaLfWU
	1Y1GN1ed32CK1A6RrWwnnFwMMfEGGTmio1M49T9AGu8VIAvFByJSrcAh2CLxrpT9jRbJnzY2Dcj7m
	hL0a2wMQMK8Gh6MskltJKdYjjR+c8fSZQD46IVWpohVgKG5lqg/HwJKu+ME+lhFxPkOKLh4HBs4MN
	Ur/9TPKmBEH+wXSeAP8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28OI-0000000HVnG-1e3H;
	Thu, 03 Sep 2026 14:26:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28OG-0000000HVmm-1Fhc
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 14:26:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1495D417FC;
	Thu,  3 Sep 2026 14:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5678F1F00ADB;
	Thu,  3 Sep 2026 14:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788445568;
	bh=SKbhH/yJev4U5qDLNZLWqB0aqWQtOQabQFXAP6Qz4ZM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=VLfuWzI6M1UuqhSFzrwxPTwogZdJepASYShqF9suC2kJCMxqIMmaNd4qOy3QODtA0
	 N7Evhsuo5dteNxEOvh/1REpp4l6wGpiuswNIWM065A9Q/WkUlOzHs7ucS7jU36gJvp
	 40aq3AXt2BHM681EPP9j7bdwfb0W+nC0CfT3bvainCK8v0IjOqW0UKA3Xq04EZ37bZ
	 zYW4ceYsUS+TtnqrnQ3kojcaXqm8bU/VzMXP5mB/Q7VBp2cJY+lr6bfwcoqhjilOs8
	 VAhGAfEOnKoj/lmb6cjzMuNudQ2ipTx9yXarJuebADtlPjftWirFDx7Q6og4HNf9x2
	 ckcLgl6d7arGQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 03 Sep 2026 16:25:30 +0200
Subject: [PATCH v2 3/5] phy: qcom-qusb2: Remove _SHIFT defines
MIME-Version: 1.0
Message-Id: <20260903-topic-8996_61x5_qusb2phy-v2-3-4c3f980a4560@oss.qualcomm.com>
References: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
In-Reply-To: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Iskren Chernev <me@iskren.info>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788445548; l=4069;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=4DL9fcjNJk7MXfdTRYqW0Ax5xXaUgoYEFk4XUmKw5UU=;
 b=g89we8bc/8i+YUYaw4/Sk3483pnzT5w6gOwN4vI6135tJvnm4rvE6ejUvo4/zfwraCo173kyS
 736OzQNDRJnAO1J/Pl7HTu170TPorpJdcjnqmoFB2d8FJMDBKN2/7Rh
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

These are unnecessary as they may be inferred from the mask. Drop them.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 33 +++++++++++++++------------------
 1 file changed, 15 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index aac36ed994b1..50c60d56d447 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2017, 2019, The Linux Foundation. All rights reserved.
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/err.h>
@@ -64,26 +65,20 @@
 
 /* QUSB2PHY_IMP_CTRL1 register bits */
 #define IMP_RES_OFFSET_MASK			GENMASK(5, 0)
-#define IMP_RES_OFFSET_SHIFT			0x0
 
 /* QUSB2PHY_PLL_BIAS_CONTROL_2 register bits */
 #define BIAS_CTRL2_RES_OFFSET_MASK		GENMASK(5, 0)
-#define BIAS_CTRL2_RES_OFFSET_SHIFT		0x0
 
 /* QUSB2PHY_CHG_CONTROL_2 register bits */
 #define CHG_CTRL2_OFFSET_MASK			GENMASK(5, 4)
-#define CHG_CTRL2_OFFSET_SHIFT			0x4
 
 /* QUSB2PHY_PORT_TUNE1 register bits */
 #define HSTX_TRIM_MASK				GENMASK(7, 4)
-#define HSTX_TRIM_SHIFT				0x4
 #define PREEMPH_WIDTH_HALF_BIT			BIT(2)
 #define PREEMPHASIS_EN_MASK			GENMASK(1, 0)
-#define PREEMPHASIS_EN_SHIFT			0x0
 
 /* QUSB2PHY_PORT_TUNE2 register bits */
 #define HSDISC_TRIM_MASK			GENMASK(1, 0)
-#define HSDISC_TRIM_SHIFT			0x0
 
 #define QUSB2PHY_PLL_ANALOG_CONTROLS_TWO	0x04
 #define QUSB2PHY_PLL_CLOCK_INVERTERS		0x18c
@@ -545,28 +540,28 @@ static void qusb2_phy_override_phy_params(struct qusb2_phy *qphy)
 
 	if (or->imp_res_offset.override)
 		qusb2_write_mask(qphy->base, QUSB2PHY_IMP_CTRL1,
-		or->imp_res_offset.value << IMP_RES_OFFSET_SHIFT,
-			     IMP_RES_OFFSET_MASK);
+				 FIELD_PREP(IMP_RES_OFFSET_MASK, or->imp_res_offset.value),
+				 IMP_RES_OFFSET_MASK);
 
 	if (or->bias_ctrl.override)
 		qusb2_write_mask(qphy->base, QUSB2PHY_PLL_BIAS_CONTROL_2,
-		or->bias_ctrl.value << BIAS_CTRL2_RES_OFFSET_SHIFT,
-			   BIAS_CTRL2_RES_OFFSET_MASK);
+				 FIELD_PREP(BIAS_CTRL2_RES_OFFSET_MASK, or->bias_ctrl.value),
+				 BIAS_CTRL2_RES_OFFSET_MASK);
 
 	if (or->charge_ctrl.override)
 		qusb2_write_mask(qphy->base, QUSB2PHY_CHG_CTRL2,
-		or->charge_ctrl.value << CHG_CTRL2_OFFSET_SHIFT,
-			     CHG_CTRL2_OFFSET_MASK);
+				 FIELD_PREP(CHG_CTRL2_OFFSET_MASK, or->charge_ctrl.value),
+				 CHG_CTRL2_OFFSET_MASK);
 
 	if (or->hstx_trim.override)
 		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE1],
-		or->hstx_trim.value << HSTX_TRIM_SHIFT,
+				 FIELD_PREP(HSTX_TRIM_MASK, or->hstx_trim.value),
 				 HSTX_TRIM_MASK);
 
 	if (or->preemphasis.override)
 		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE1],
-		or->preemphasis.value << PREEMPHASIS_EN_SHIFT,
-				PREEMPHASIS_EN_MASK);
+				 FIELD_PREP(PREEMPHASIS_EN_MASK, or->preemphasis.value),
+				 PREEMPHASIS_EN_MASK);
 
 	if (or->preemphasis_width.override) {
 		if (or->preemphasis_width.value ==
@@ -582,7 +577,7 @@ static void qusb2_phy_override_phy_params(struct qusb2_phy *qphy)
 
 	if (or->hsdisc_trim.override)
 		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE2],
-		or->hsdisc_trim.value << HSDISC_TRIM_SHIFT,
+				 FIELD_PREP(HSDISC_TRIM_MASK, or->hsdisc_trim.value),
 				 HSDISC_TRIM_MASK);
 }
 
@@ -623,10 +618,12 @@ static void qusb2_phy_set_tune2_param(struct qusb2_phy *qphy)
 	/* Fused TUNE1/2 value is the higher nibble only */
 	if (cfg->update_tune1_with_efuse)
 		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE1],
-				 hstx_trim << HSTX_TRIM_SHIFT, HSTX_TRIM_MASK);
+				 FIELD_PREP(HSTX_TRIM_MASK, hstx_trim),
+				 HSTX_TRIM_MASK);
 	else
 		qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE2],
-				 hstx_trim << HSTX_TRIM_SHIFT, HSTX_TRIM_MASK);
+				 FIELD_PREP(HSTX_TRIM_MASK, hstx_trim),
+				 HSTX_TRIM_MASK);
 }
 
 static int qusb2_phy_set_mode(struct phy *phy,

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
