Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E092CA5538
	for <linux-phy@archiver.kernel.org>; Wed, 13 Sep 2023 09:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLLu+eBWa8CT6PM4yxK55nfCv26cmm/sTIwZEJ8JGHQ=; b=FUbqSQUmAL0GPb
	yQUoXUmcIhHpVFKGnjdsN7rxKuNB692Rdy3fW/HKvNK+q3sHPM/89AD/jyPGG/4d8kkeLtgKeYyUh
	qyNfWGoxrDMh0Vy1NL9oveXR6Te+H/HBgzjX8TR+yl++egdB+siqcq8F6ARAUuXRkbAEDtEEi5xfc
	P48Fu9Tspl0IkCE925r5MoMjEfnTd9bDpX8bboEDfG4D6FatfYbr5P4RpFoqfoMp4ZZ+QdC2L7gmq
	iykh57K5ZVHxf8VsU9h8zyu5Ll4M+JmWOEjP04jOJdpk/cq1O4emYh6cvPguZuPlrpR9I84zngEAZ
	D5j675HfX0e3CSW1CUVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgMZT-005M2U-2R;
	Wed, 13 Sep 2023 09:54:07 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgMZQ-005M0g-2e
	for linux-phy@lists.infradead.org;
	Wed, 13 Sep 2023 09:54:06 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99bf3f59905so826789166b.3
        for <linux-phy@lists.infradead.org>; Wed, 13 Sep 2023 02:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694598842; x=1695203642; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AUYPXOt61j/CwnUtExvJrzeKAesEhBK7qFjfb3sogTc=;
        b=tGTONgB9V3vTpnIPvXeYatt/dqSPec53fr5ChPeDCYfjU6PhkV37Lridc8e7Tq/TSh
         NM2+eK2/l0/e7uYtf15MDlkCCR6sgcgJ/Aj4aTOsC21QkJpLX5tqdzmXi4rEoSAGAIIb
         emmRpKvF6/mUsH9BxfER8r5ph3iL7V9L5hTAY3zMPMp7NJLdT+5Rca+3Z+/WfvNfd64G
         IAI3eeR+iNKpOWPMtAfhJsweJO/YxVrFBVJVYDbCrGneD0nLfnKvu+3zmF3xkZFUWv8i
         Isqq+SjeTI47QriizYyax8KwH8wNjjD9YAltJhA7u8dBxe4h+7JqY4JqWRY2oDGT1oJu
         +gYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694598842; x=1695203642;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AUYPXOt61j/CwnUtExvJrzeKAesEhBK7qFjfb3sogTc=;
        b=o4MqqTGwXtTFZt4M+oZwr8vTBhvVB26917wt2mZbD1oznjR/i/afwzHyxGoZeq+eWF
         94J5NVxN0cZIqdcn5djSnLOfrIm0RwihfscUu/r1yr/TYMnDRuOYuHAmBaqWmbwvBCiW
         WRz0BJ+vnvFXuHuDmkoT7wmTNwxXu14glTWePJFzcs+VA7sUBE+hSXCU2yUvygrKmSBp
         JbkHSY+2/6TvLSZxkUITnnDbmN9Nhf9k2MHTS05U4x8hFdinpgUABtirm/lATTGsBL+w
         iMX7tK2yZNKpwrka+wr5p2N+AEvYVCabfhHKItgfoTnjrxAXFtCCfVRe5jQTDJSuIUbD
         iRYw==
X-Gm-Message-State: AOJu0YxO40F7T+7F1J08S5x9bXTFfHcAg4GbWcBqZsrRsnEkFo2a/JlJ
	r5vdDG0dNAzlWJyUxX5RYayrqg==
X-Google-Smtp-Source: AGHT+IF3u0RPMs4cBDpVSYGCHGpMz3tr9kd6x2COE/ERda2UhDsvG9XOz9FQy0oOIWnpxKOoEq/PbA==
X-Received: by 2002:a17:906:518d:b0:9a1:eb67:c0ce with SMTP id y13-20020a170906518d00b009a1eb67c0cemr1832553ejk.50.1694598842583;
        Wed, 13 Sep 2023 02:54:02 -0700 (PDT)
Received: from [10.167.154.1] (178235177106.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.106])
        by smtp.gmail.com with ESMTPSA id l21-20020a170906939500b00985ed2f1584sm8092669ejx.187.2023.09.13.02.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Sep 2023 02:54:02 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 13 Sep 2023 11:53:25 +0200
Subject: [PATCH v2 3/4] phy: qualcomm: phy-qcom-eusb2-repeater: Zero out
 untouched tuning regs
MIME-Version: 1.0
Message-Id: <20230830-topic-eusb2_override-v2-3-7d8c893d93f6@linaro.org>
References: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
In-Reply-To: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694598835; l=4717;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=tfXcOnK4MVXM/ELTMdiq7X69Wiw7KaRfq/u6evxvcmU=;
 b=UGw8FhPHnMGx6HcP17G3JFukIQzCmtAOIvW5d6j5oSc8nQNnuQvW3QQokYYi2FIlAOogWBmFl
 GoTcZmp6N5RATkgBJkozkgEqsVFqL3D9TEPi/tH1z96eTbgboVA9uP8
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_025404_869352_C1625B1C 
X-CRM114-Status: GOOD (  15.19  )
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

The vendor kernel zeroes out all tuning data outside the init sequence
as part of initialization. Follow suit to avoid UB.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 58 +++++++++++++++++++-------
 1 file changed, 44 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 7561da01e633..d4fb85c20eb0 100644
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
