Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B987C04E83
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 23:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMWdxFDYTaqMdJo7vJTR6Fx62O9BUBJpKzJfqfhjeq8=; b=alvMlhjTaUf+Zc
	r20EJ1kpIeNnmZxSrh4XiB5Q/jwyP2c59j4vU262biVCcmiVOl0b5lk4EYnsWiR15rx/jw8pFb5dc
	ZW77WGT+tHv9HO7p41oiS+koAyqc3AGRKAweS1S4cebpYWlaugiW7i19eMSFgl4HaIlGrAtgxkBC2
	EbXuKHqVNESa31YyVdKH/+b07ajoIUC+ob4lIHMP04jvB7yAn8N794xAVY/NJOL0kXnSHzRoSVF9Z
	GKPYyGjHsqxI5uR465TBOH9UDZUPukTBqWYVGNBfssorqu5nl1jtOYNFfAznPC3nCCNS0hwo0OXql
	pcAc0qp7o80Q689exSyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0VPD-002bvp-0L;
	Tue, 07 Nov 2023 23:22:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0VPA-002bu7-2y
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 23:22:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 413786146C;
	Tue,  7 Nov 2023 23:22:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C456BC433C8;
	Tue,  7 Nov 2023 23:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699399363;
	bh=LcrTMmKmPHsbG0ncfze5Ifx9sJfA3HwSZCbQBsB42s8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=njnCWlGjY5BKygnLO8HkzZcj/6X3+zvm+/M86UuYchxxE1XoNDYV/AaYa9YBoNZ/P
	 2IbbbPmyXK0cNK+i43zg/EPx/eyba1tW+bezT8JY+oI5e/8Q9yuf7Q3HUvMeGakdhM
	 FDFQCYHmn1ImtW6jZ5jMbrtUXffVwHtbI39GuufuHbHROMEsbbXQc7Ri05dz4Yp8uJ
	 882hLQu2Zd5YT/g2NEbqUfr/1/Mx/ytxR3nRb9ERLavOSbfVS7fXCs/n7Gm1Gr5AKF
	 uAbflfR+pgEAObFjWQ/uiFOkJ6idZMu6lya2cBatmLBxdDlkffWWnCP20gHIlA39oA
	 taTSr61wgwhSw==
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
Subject: [PATCH AUTOSEL 6.6 06/18] phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs
Date: Tue,  7 Nov 2023 18:22:00 -0500
Message-ID: <20231107232231.3775605-6-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107232231.3775605-1-sashal@kernel.org>
References: <20231107232231.3775605-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_152245_051974_7A757018 
X-CRM114-Status: GOOD (  14.28  )
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

[ Upstream commit 99a517a582fc1272d1d3cf3b9e671a14d7db77b8 ]

The vendor kernel zeroes out all tuning data outside the init sequence
as part of initialization. Follow suit to avoid UB.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Link: https://lore.kernel.org/r/20230830-topic-eusb2_override-v2-3-7d8c893d93f6@linaro.org
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 58 ++++++++++++++-----
 1 file changed, 44 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 7561da01e633d..d4fb85c20eb0f 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -24,9 +24,18 @@
 #define EUSB2_FORCE_VAL_5		0xeD
 #define V_CLK_19P2M_EN			BIT(6)
 
+#define EUSB2_TUNE_USB2_CROSSOVER	0x50
 #define EUSB2_TUNE_IUSB2		0x51
+#define EUSB2_TUNE_RES_FSDIF		0x52
+#define EUSB2_TUNE_HSDISC		0x53
 #define EUSB2_TUNE_SQUELCH_U		0x54
+#define EUSB2_TUNE_USB2_SLEW		0x55
+#define EUSB2_TUNE_USB2_EQU		0x56
 #define EUSB2_TUNE_USB2_PREEM		0x57
+#define EUSB2_TUNE_USB2_HS_COMP_CUR	0x58
+#define EUSB2_TUNE_EUSB_SLEW		0x59
+#define EUSB2_TUNE_EUSB_EQU		0x5A
+#define EUSB2_TUNE_EUSB_HS_COMP_CUR	0x5B
 
 #define QCOM_EUSB2_REPEATER_INIT_CFG(r, v)	\
 	{					\
@@ -35,9 +44,18 @@
 	}
 
 enum reg_fields {
+	F_TUNE_EUSB_HS_COMP_CUR,
+	F_TUNE_EUSB_EQU,
+	F_TUNE_EUSB_SLEW,
+	F_TUNE_USB2_HS_COMP_CUR,
 	F_TUNE_USB2_PREEM,
+	F_TUNE_USB2_EQU,
+	F_TUNE_USB2_SLEW,
 	F_TUNE_SQUELCH_U,
+	F_TUNE_HSDISC,
+	F_TUNE_RES_FSDIF,
 	F_TUNE_IUSB2,
+	F_TUNE_USB2_CROSSOVER,
 	F_NUM_TUNE_FIELDS,
 
 	F_FORCE_VAL_5 = F_NUM_TUNE_FIELDS,
@@ -50,9 +68,18 @@ enum reg_fields {
 };
 
 static struct reg_field eusb2_repeater_tune_reg_fields[F_NUM_FIELDS] = {
+	[F_TUNE_EUSB_HS_COMP_CUR] = REG_FIELD(EUSB2_TUNE_EUSB_HS_COMP_CUR, 0, 1),
+	[F_TUNE_EUSB_EQU] = REG_FIELD(EUSB2_TUNE_EUSB_EQU, 0, 1),
+	[F_TUNE_EUSB_SLEW] = REG_FIELD(EUSB2_TUNE_EUSB_SLEW, 0, 1),
+	[F_TUNE_USB2_HS_COMP_CUR] = REG_FIELD(EUSB2_TUNE_USB2_HS_COMP_CUR, 0, 1),
 	[F_TUNE_USB2_PREEM] = REG_FIELD(EUSB2_TUNE_USB2_PREEM, 0, 2),
+	[F_TUNE_USB2_EQU] = REG_FIELD(EUSB2_TUNE_USB2_EQU, 0, 1),
+	[F_TUNE_USB2_SLEW] = REG_FIELD(EUSB2_TUNE_USB2_SLEW, 0, 1),
 	[F_TUNE_SQUELCH_U] = REG_FIELD(EUSB2_TUNE_SQUELCH_U, 0, 2),
+	[F_TUNE_HSDISC] = REG_FIELD(EUSB2_TUNE_HSDISC, 0, 2),
+	[F_TUNE_RES_FSDIF] = REG_FIELD(EUSB2_TUNE_RES_FSDIF, 0, 2),
 	[F_TUNE_IUSB2] = REG_FIELD(EUSB2_TUNE_IUSB2, 0, 3),
+	[F_TUNE_USB2_CROSSOVER] = REG_FIELD(EUSB2_TUNE_USB2_CROSSOVER, 0, 2),
 
 	[F_FORCE_VAL_5] = REG_FIELD(EUSB2_FORCE_VAL_5, 0, 7),
 	[F_FORCE_EN_5] = REG_FIELD(EUSB2_FORCE_EN_5, 0, 7),
@@ -62,13 +89,8 @@ static struct reg_field eusb2_repeater_tune_reg_fields[F_NUM_FIELDS] = {
 	[F_RPTR_STATUS] = REG_FIELD(EUSB2_RPTR_STATUS, 0, 7),
 };
 
-struct eusb2_repeater_init_tbl {
-	unsigned int reg;
-	unsigned int val;
-};
-
 struct eusb2_repeater_cfg {
-	const struct eusb2_repeater_init_tbl *init_tbl;
+	const u32 *init_tbl;
 	int init_tbl_num;
 	const char * const *vreg_list;
 	int num_vregs;
@@ -87,10 +109,10 @@ static const char * const pm8550b_vreg_l[] = {
 	"vdd18", "vdd3",
 };
 
-static const struct eusb2_repeater_init_tbl pm8550b_init_tbl[] = {
-	QCOM_EUSB2_REPEATER_INIT_CFG(F_TUNE_IUSB2, 0x8),
-	QCOM_EUSB2_REPEATER_INIT_CFG(F_TUNE_SQUELCH_U, 0x3),
-	QCOM_EUSB2_REPEATER_INIT_CFG(F_TUNE_USB2_PREEM, 0x5),
+static const u32 pm8550b_init_tbl[F_NUM_TUNE_FIELDS] = {
+	[F_TUNE_IUSB2] = 0x8,
+	[F_TUNE_SQUELCH_U] = 0x3,
+	[F_TUNE_USB2_PREEM] = 0x5,
 };
 
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
@@ -118,8 +140,9 @@ static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 
 static int eusb2_repeater_init(struct phy *phy)
 {
+	struct reg_field *regfields = eusb2_repeater_tune_reg_fields;
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
-	const struct eusb2_repeater_init_tbl *init_tbl = rptr->cfg->init_tbl;
+	const u32 *init_tbl = rptr->cfg->init_tbl;
 	u32 val;
 	int ret;
 	int i;
@@ -130,9 +153,16 @@ static int eusb2_repeater_init(struct phy *phy)
 
 	regmap_field_update_bits(rptr->regs[F_EN_CTL1], EUSB2_RPTR_EN, EUSB2_RPTR_EN);
 
-	for (i = 0; i < rptr->cfg->init_tbl_num; i++)
-		regmap_field_update_bits(rptr->regs[init_tbl[i].reg],
-					 init_tbl[i].val, init_tbl[i].val);
+	for (i = 0; i < F_NUM_TUNE_FIELDS; i++) {
+		if (init_tbl[i]) {
+			regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
+		} else {
+			/* Write 0 if there's no value set */
+			u32 mask = GENMASK(regfields[i].msb, regfields[i].lsb);
+
+			regmap_field_update_bits(rptr->regs[i], mask, 0);
+		}
+	}
 
 	ret = regmap_field_read_poll_timeout(rptr->regs[F_RPTR_STATUS],
 					     val, val & RPTR_OK, 10, 5);
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
