Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40EB6C4167B
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 23:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ce3+q7EWGj5dQ8M9fVk1qxX1xbUllUAjr6neF8vv7tw=; b=JoZFZfiWGTJ65S
	Gzcq7rcQCfM8PxW07G3NrlqgsF98u3uCZQYE1F0u3fZb4W1P+Yz4+StIaWTMJ2LFmiQQPc973B+Mq
	9TJyHniBQD64yQQuthQ8vPNUEE0BqcORi+XNnwj9ap1YhZ8Ix9KUG5+nVPzV9AYgTCoGQWAP65ZwS
	51xm77r2EtJUsFRerI5Yv0qvqLv0WEnQc4+Jnfl4MqrubV2uDUnqmIExsuj0ADzdAV8oS82GHn/Vw
	xNyfEU67n6ZmoPyI/pCct/YsjIY9Et1kmtfoaVBOapE4BOABkoMZTAc8edOwIr57Iou8WR1g1czBQ
	lAtmNCZoXw2gvoRxCBZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0VPC-002bva-2Z;
	Tue, 07 Nov 2023 23:22:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0VP9-002btH-0d
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 23:22:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 77DFA61233;
	Tue,  7 Nov 2023 23:22:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21C46C433CD;
	Tue,  7 Nov 2023 23:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699399362;
	bh=AYf+9eA4xOI9nYg6Z4FpRKIy3YRZ9ut3a1dK34z7aJY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qw+NUwSO/ez36O2W9K3UpMABfMOTnj/xt+BT+8GPawFBSXwnnGl1v0NrVrnfPHe4q
	 7QzjeDwDb3HNNLwWlrWYPzwaVvFCo7GfL8LUK2gzBoIXPL5lztVJKm+uEAEDvrbIVz
	 sRffk/jU81j2CYBICmSVLegDEkuGQaWTMPWQVWmP61QOM5R0D1flp87CWreycdUFof
	 xwdi+hJURJ3T0HkduOU1p5/aVmczNi5GuPbXbf/kVePvLENgmq3W8Dp4hdq21nw2zB
	 TTh3eYhVMltVbKUqG0hJtg9wPiay0U7OU4nmskcjGg8wBXMolz70MaeKNyna9dinrO
	 WiDRaM2L05JZw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	agross@kernel.org,
	andersson@kernel.org,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 05/18] phy: qualcomm: phy-qcom-eusb2-repeater: Use regmap_fields
Date: Tue,  7 Nov 2023 18:21:59 -0500
Message-ID: <20231107232231.3775605-5-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107232231.3775605-1-sashal@kernel.org>
References: <20231107232231.3775605-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_152243_322220_58363A7C 
X-CRM114-Status: GOOD (  17.55  )
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

From: Konrad Dybcio <konrad.dybcio@linaro.org>

[ Upstream commit 4ba2e52718c0ce4ece6a269bec84319c355c030f ]

Switch to regmap_fields, so that the values written into registers are
sanitized by their explicit sizes and the different registers are
structured in an iterable object to make external changes to the init
sequence simpler.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Link: https://lore.kernel.org/r/20230830-topic-eusb2_override-v2-2-7d8c893d93f6@linaro.org
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 91 +++++++++++++------
 1 file changed, 61 insertions(+), 30 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 52c275fbb2a1c..7561da01e633d 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -28,14 +28,42 @@
 #define EUSB2_TUNE_SQUELCH_U		0x54
 #define EUSB2_TUNE_USB2_PREEM		0x57
 
-#define QCOM_EUSB2_REPEATER_INIT_CFG(o, v)	\
+#define QCOM_EUSB2_REPEATER_INIT_CFG(r, v)	\
 	{					\
-		.offset = o,			\
+		.reg = r,			\
 		.val = v,			\
 	}
 
+enum reg_fields {
+	F_TUNE_USB2_PREEM,
+	F_TUNE_SQUELCH_U,
+	F_TUNE_IUSB2,
+	F_NUM_TUNE_FIELDS,
+
+	F_FORCE_VAL_5 = F_NUM_TUNE_FIELDS,
+	F_FORCE_EN_5,
+
+	F_EN_CTL1,
+
+	F_RPTR_STATUS,
+	F_NUM_FIELDS,
+};
+
+static struct reg_field eusb2_repeater_tune_reg_fields[F_NUM_FIELDS] = {
+	[F_TUNE_USB2_PREEM] = REG_FIELD(EUSB2_TUNE_USB2_PREEM, 0, 2),
+	[F_TUNE_SQUELCH_U] = REG_FIELD(EUSB2_TUNE_SQUELCH_U, 0, 2),
+	[F_TUNE_IUSB2] = REG_FIELD(EUSB2_TUNE_IUSB2, 0, 3),
+
+	[F_FORCE_VAL_5] = REG_FIELD(EUSB2_FORCE_VAL_5, 0, 7),
+	[F_FORCE_EN_5] = REG_FIELD(EUSB2_FORCE_EN_5, 0, 7),
+
+	[F_EN_CTL1] = REG_FIELD(EUSB2_EN_CTL1, 0, 7),
+
+	[F_RPTR_STATUS] = REG_FIELD(EUSB2_RPTR_STATUS, 0, 7),
+};
+
 struct eusb2_repeater_init_tbl {
-	unsigned int offset;
+	unsigned int reg;
 	unsigned int val;
 };
 
@@ -48,11 +76,10 @@ struct eusb2_repeater_cfg {
 
 struct eusb2_repeater {
 	struct device *dev;
-	struct regmap *regmap;
+	struct regmap_field *regs[F_NUM_FIELDS];
 	struct phy *phy;
 	struct regulator_bulk_data *vregs;
 	const struct eusb2_repeater_cfg *cfg;
-	u16 base;
 	enum phy_mode mode;
 };
 
@@ -61,9 +88,9 @@ static const char * const pm8550b_vreg_l[] = {
 };
 
 static const struct eusb2_repeater_init_tbl pm8550b_init_tbl[] = {
-	QCOM_EUSB2_REPEATER_INIT_CFG(EUSB2_TUNE_IUSB2, 0x8),
-	QCOM_EUSB2_REPEATER_INIT_CFG(EUSB2_TUNE_SQUELCH_U, 0x3),
-	QCOM_EUSB2_REPEATER_INIT_CFG(EUSB2_TUNE_USB2_PREEM, 0x5),
+	QCOM_EUSB2_REPEATER_INIT_CFG(F_TUNE_IUSB2, 0x8),
+	QCOM_EUSB2_REPEATER_INIT_CFG(F_TUNE_SQUELCH_U, 0x3),
+	QCOM_EUSB2_REPEATER_INIT_CFG(F_TUNE_USB2_PREEM, 0x5),
 };
 
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
@@ -93,7 +120,6 @@ static int eusb2_repeater_init(struct phy *phy)
 {
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
 	const struct eusb2_repeater_init_tbl *init_tbl = rptr->cfg->init_tbl;
-	int num = rptr->cfg->init_tbl_num;
 	u32 val;
 	int ret;
 	int i;
@@ -102,17 +128,14 @@ static int eusb2_repeater_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	regmap_update_bits(rptr->regmap, rptr->base + EUSB2_EN_CTL1,
-			   EUSB2_RPTR_EN, EUSB2_RPTR_EN);
+	regmap_field_update_bits(rptr->regs[F_EN_CTL1], EUSB2_RPTR_EN, EUSB2_RPTR_EN);
 
-	for (i = 0; i < num; i++)
-		regmap_update_bits(rptr->regmap,
-				   rptr->base + init_tbl[i].offset,
-				   init_tbl[i].val, init_tbl[i].val);
+	for (i = 0; i < rptr->cfg->init_tbl_num; i++)
+		regmap_field_update_bits(rptr->regs[init_tbl[i].reg],
+					 init_tbl[i].val, init_tbl[i].val);
 
-	ret = regmap_read_poll_timeout(rptr->regmap,
-				       rptr->base + EUSB2_RPTR_STATUS, val,
-				       val & RPTR_OK, 10, 5);
+	ret = regmap_field_read_poll_timeout(rptr->regs[F_RPTR_STATUS],
+					     val, val & RPTR_OK, 10, 5);
 	if (ret)
 		dev_err(rptr->dev, "initialization timed-out\n");
 
@@ -131,10 +154,10 @@ static int eusb2_repeater_set_mode(struct phy *phy,
 		 * per eUSB 1.2 Spec. Below implement software workaround until
 		 * PHY and controller is fixing seen observation.
 		 */
-		regmap_update_bits(rptr->regmap, rptr->base + EUSB2_FORCE_EN_5,
-				   F_CLK_19P2M_EN, F_CLK_19P2M_EN);
-		regmap_update_bits(rptr->regmap, rptr->base + EUSB2_FORCE_VAL_5,
-				   V_CLK_19P2M_EN, V_CLK_19P2M_EN);
+		regmap_field_update_bits(rptr->regs[F_FORCE_EN_5],
+					 F_CLK_19P2M_EN, F_CLK_19P2M_EN);
+		regmap_field_update_bits(rptr->regs[F_FORCE_VAL_5],
+					 V_CLK_19P2M_EN, V_CLK_19P2M_EN);
 		break;
 	case PHY_MODE_USB_DEVICE:
 		/*
@@ -143,10 +166,10 @@ static int eusb2_repeater_set_mode(struct phy *phy,
 		 * repeater doesn't clear previous value due to shared
 		 * regulators (say host <-> device mode switch).
 		 */
-		regmap_update_bits(rptr->regmap, rptr->base + EUSB2_FORCE_EN_5,
-				   F_CLK_19P2M_EN, 0);
-		regmap_update_bits(rptr->regmap, rptr->base + EUSB2_FORCE_VAL_5,
-				   V_CLK_19P2M_EN, 0);
+		regmap_field_update_bits(rptr->regs[F_FORCE_EN_5],
+					 F_CLK_19P2M_EN, 0);
+		regmap_field_update_bits(rptr->regs[F_FORCE_VAL_5],
+					 V_CLK_19P2M_EN, 0);
 		break;
 	default:
 		return -EINVAL;
@@ -175,8 +198,9 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct phy_provider *phy_provider;
 	struct device_node *np = dev->of_node;
+	struct regmap *regmap;
+	int i, ret;
 	u32 res;
-	int ret;
 
 	rptr = devm_kzalloc(dev, sizeof(*rptr), GFP_KERNEL);
 	if (!rptr)
@@ -189,15 +213,22 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
 	if (!rptr->cfg)
 		return -EINVAL;
 
-	rptr->regmap = dev_get_regmap(dev->parent, NULL);
-	if (!rptr->regmap)
+	regmap = dev_get_regmap(dev->parent, NULL);
+	if (!regmap)
 		return -ENODEV;
 
 	ret = of_property_read_u32(np, "reg", &res);
 	if (ret < 0)
 		return ret;
 
-	rptr->base = res;
+	for (i = 0; i < F_NUM_FIELDS; i++)
+		eusb2_repeater_tune_reg_fields[i].reg += res;
+
+	ret = devm_regmap_field_bulk_alloc(dev, regmap, rptr->regs,
+					   eusb2_repeater_tune_reg_fields,
+					   F_NUM_FIELDS);
+	if (ret)
+		return ret;
 
 	ret = eusb2_repeater_init_vregs(rptr);
 	if (ret < 0) {
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
