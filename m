Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0262C761AE
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 08:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5lfZ2gcvhEp9W4wy9y902dYQLFa7WSSkPGP682Kq0U=; b=KtyQWgwaryQK9P
	jPiv3BqqyTCAGGO0/n6cWam6hozS07quqVPxwupY2Xc69GCAHzogom4nE9u0Ppe4ygOzsAwpbS6wQ
	Si5ouk2b7hiwd76Jdftg8Ddo1led4XOr8U/gV47SRzbtHsyjAW8MEpzMWefztuKF4MnOzTxDfe4Zn
	LyqIkqvvv+Wdj0iS5qeAo67XdkPhm3qMBgtEJi9EjoGC7Ud1JdpFkmFM3c0IzcI1zP5y30WCYuv0w
	Nts3BupXkmqIBT5fkKv3CTaNlrKLJK3LWzkYb5sxMoQyCcEEamO+Zk/LSz/WZ/3zypdyIK41Dyznr
	xKkPBPreGTdZW9baUJEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRsq-00000006cuG-21a1;
	Tue, 17 Jun 2025 08:41:32 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRee-00000006b6w-0tTr
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 08:26:53 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-607434e1821so7778016a12.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 01:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750148811; x=1750753611; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sX84cZ3SaMTPuPXdeTupdXKRRBNOI+FmBiR+Od8TZ3M=;
        b=dCL4AtcWxG84wxwpgusgvQVDTuavYwf2yfMQxwbBM1+JTBiXS9x+g2zg4zSy9z+TRL
         dxOqDfFcUrtNV0uj105PKn0pIV0ooNxXhg2alB1IYf5hOfjI9RlFMsTB5B/fq4ZGkJ4C
         vX/rTB+7B5x5kBPyOeWT9uQI8cpUjxi1bRFH2P/pwjqhQ/YTH3jqriyxOVyIs9gCWoGp
         YMxs/t5Gjqb7SQycW2WBRUWRqRpCJhIVzrWHEYtcN5hMEB1LryFilCNttsi6AQlxxmtQ
         jvwX58HXxn9IHiaiz55DwfXNMt+V8mBFL3mEyqv8F5s9HuSMXkom18MA58EECNUpVhOW
         7twA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148811; x=1750753611;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sX84cZ3SaMTPuPXdeTupdXKRRBNOI+FmBiR+Od8TZ3M=;
        b=DmKAfu7BxzjK8mmhS2D7dlOJ6k0Gbj7ak560Bxki1D0AHRorfJZn23GR6c+OIPI9+R
         tNDr7t4LmVINnEEVezselZ6L7FGDez0yUFJWXU+Eu1icxthf2TlxX/3z0wem4fk3/4dr
         KUhL5CKj2p1npMdgU9uskW3iqXExQW+czH1zBbp08JAiqRo6MjQz8eWS/d2vQ/BILglT
         fPQf3IreRj5jW38PTcuwAzu9H1v6tq4UsddEQW21j/Xxs/YUAkVB4ZntSFoao764qTjs
         EPNVkX51BYXPIs25JbSOb+oEGCDW3beepT+TFtRx+yKCzC0dCZzVrjFPa4UbfKXT7KBj
         /ztQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHu7+U01gnV+8dbjymoksd6kEot3VvMKOszWlzSNBE/uq0W4G9gHWv0BGR2AXdm0XgJF4uj1aW6p4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAOQq2mKQrWUj0bH+RLo2w5PCtjNfRkDa8xnV+3SumDE70FU11
	RjWJskzmFWs9lJ/OYpB78ZkAva8LVGnryqVCq69ZCCpU8yQlyY+3m++XBc7HBH2wEqk=
X-Gm-Gg: ASbGncvbud7O8AKoT9ICmxnA5h5A7LqOn0byf7gsqfDGZeFoBb7emZ4aUADQ+svaG7N
	RgO8AmzYoneE25Wq23wdS+nq1CNamn3jfkN2ZTM1k/Y1PpjApYP5vPIFyzn7jrV+LOmIHOshsBy
	rNeo8Ort27LhNXDc74nm4+uYfJWuJpLrgo43deq641mJtgN9vvMl5YhVPAAFRUvaAuikNF1tga0
	5QmMseS+p6CvqcOlmH2VsaE+ZahmpqEQ/jAkklGGmDUpbc+FzWpHN0Go54qpGZ1LSWDfTbkSm8r
	yLDliOa/cHNKsaqtVtcjQgvBYcjEUQTiQoTS8wTff2EeMNH5hFSU4Wgu9GhojVTP7hNUbg+wQ6r
	3pU5L9cebBKtjBLfhR7HivR2z2Sa1GN+V
X-Google-Smtp-Source: AGHT+IE1KdvEzFDJ50Blvw8RRapFgbU1vb3QXm2KGvBTd08g0S8rGE5KDmFA84KI0+LHpMrERmOUIA==
X-Received: by 2002:a17:907:7fab:b0:ad5:a29c:efed with SMTP id a640c23a62f3a-adfad4181f0mr1236100266b.33.1750148810832;
        Tue, 17 Jun 2025 01:26:50 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88fd993sm840343166b.94.2025.06.17.01.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 01:26:50 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 17 Jun 2025 10:26:36 +0200
Subject: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
MIME-Version: 1.0
Message-Id: <20250617-eusb2-repeater-tuning-v2-2-ed6c484f18ee@fairphone.com>
References: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
In-Reply-To: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750148807; l=5504;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=A5GxHr710Py2e24QTu8TcBh/WJDiSncJIFM883A5ZMo=;
 b=NLVDwJceLeVh2CyY4RVOJ2w1bVSH89L0XBbHwU6333cyzpMfLbdJ26mUh4I6AXhR6OfQ7Vfop
 aVUPMGbgwyNBuYqFB64O1xnLl6Jr8WKGgjjPmUXuguwCFENib0h4FH0
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_012652_282878_6823924B 
X-CRM114-Status: GOOD (  14.05  )
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

Zeroing out registers does not happen in the downstream kernel, and will
"tune" the repeater in surely unexpected ways since most registers don't
have a reset value of 0x0.

Stop doing that and instead just set the registers that are in the init
sequence (though long term I don't think there's actually PMIC-specific
init sequences, there's board specific tuning, but that's a story for
another day).

Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 83 ++++++++++----------------
 1 file changed, 30 insertions(+), 53 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 6bd1b3c75c779d2db2744703262e132cc439f76e..d7493c2294ef23e37e484019a49ddf7b3d6a6a46 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -37,32 +37,13 @@
 #define EUSB2_TUNE_EUSB_EQU		0x5A
 #define EUSB2_TUNE_EUSB_HS_COMP_CUR	0x5B
 
-enum eusb2_reg_layout {
-	TUNE_EUSB_HS_COMP_CUR,
-	TUNE_EUSB_EQU,
-	TUNE_EUSB_SLEW,
-	TUNE_USB2_HS_COMP_CUR,
-	TUNE_USB2_PREEM,
-	TUNE_USB2_EQU,
-	TUNE_USB2_SLEW,
-	TUNE_SQUELCH_U,
-	TUNE_HSDISC,
-	TUNE_RES_FSDIF,
-	TUNE_IUSB2,
-	TUNE_USB2_CROSSOVER,
-	NUM_TUNE_FIELDS,
-
-	FORCE_VAL_5 = NUM_TUNE_FIELDS,
-	FORCE_EN_5,
-
-	EN_CTL1,
-
-	RPTR_STATUS,
-	LAYOUT_SIZE,
+struct eusb2_repeater_init_tbl_reg {
+	unsigned int reg;
+	unsigned int value;
 };
 
 struct eusb2_repeater_cfg {
-	const u32 *init_tbl;
+	const struct eusb2_repeater_init_tbl_reg *init_tbl;
 	int init_tbl_num;
 	const char * const *vreg_list;
 	int num_vregs;
@@ -82,16 +63,16 @@ static const char * const pm8550b_vreg_l[] = {
 	"vdd18", "vdd3",
 };
 
-static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
-	[TUNE_IUSB2] = 0x8,
-	[TUNE_SQUELCH_U] = 0x3,
-	[TUNE_USB2_PREEM] = 0x5,
+static const struct eusb2_repeater_init_tbl_reg pm8550b_init_tbl[] = {
+	{ EUSB2_TUNE_IUSB2, 0x8 },
+	{ EUSB2_TUNE_SQUELCH_U, 0x3 },
+	{ EUSB2_TUNE_USB2_PREEM, 0x5 },
 };
 
-static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
-	[TUNE_IUSB2] = 0x5,
-	[TUNE_SQUELCH_U] = 0x3,
-	[TUNE_USB2_PREEM] = 0x2,
+static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
+	{ EUSB2_TUNE_IUSB2, 0x5 },
+	{ EUSB2_TUNE_SQUELCH_U, 0x3 },
+	{ EUSB2_TUNE_USB2_PREEM, 0x2 },
 };
 
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
@@ -129,17 +110,10 @@ static int eusb2_repeater_init(struct phy *phy)
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
 	struct device_node *np = rptr->dev->of_node;
 	struct regmap *regmap = rptr->regmap;
-	const u32 *init_tbl = rptr->cfg->init_tbl;
-	u8 tune_usb2_preem = init_tbl[TUNE_USB2_PREEM];
-	u8 tune_hsdisc = init_tbl[TUNE_HSDISC];
-	u8 tune_iusb2 = init_tbl[TUNE_IUSB2];
 	u32 base = rptr->base;
-	u32 val;
+	u32 poll_val;
 	int ret;
-
-	of_property_read_u8(np, "qcom,tune-usb2-amplitude", &tune_iusb2);
-	of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &tune_hsdisc);
-	of_property_read_u8(np, "qcom,tune-usb2-preem", &tune_usb2_preem);
+	u8 val;
 
 	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
 	if (ret)
@@ -147,21 +121,24 @@ static int eusb2_repeater_init(struct phy *phy)
 
 	regmap_write(regmap, base + EUSB2_EN_CTL1, EUSB2_RPTR_EN);
 
-	regmap_write(regmap, base + EUSB2_TUNE_EUSB_HS_COMP_CUR, init_tbl[TUNE_EUSB_HS_COMP_CUR]);
-	regmap_write(regmap, base + EUSB2_TUNE_EUSB_EQU, init_tbl[TUNE_EUSB_EQU]);
-	regmap_write(regmap, base + EUSB2_TUNE_EUSB_SLEW, init_tbl[TUNE_EUSB_SLEW]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_HS_COMP_CUR, init_tbl[TUNE_USB2_HS_COMP_CUR]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_EQU, init_tbl[TUNE_USB2_EQU]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_SLEW, init_tbl[TUNE_USB2_SLEW]);
-	regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, init_tbl[TUNE_SQUELCH_U]);
-	regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, init_tbl[TUNE_RES_FSDIF]);
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_CROSSOVER, init_tbl[TUNE_USB2_CROSSOVER]);
+	/* Write registers from init table */
+	for (int i = 0; i < rptr->cfg->init_tbl_num; i++)
+		regmap_write(regmap, base + rptr->cfg->init_tbl[i].reg,
+			     rptr->cfg->init_tbl[i].value);
 
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, tune_usb2_preem);
-	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, tune_hsdisc);
-	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, tune_iusb2);
+	/* Override registers from devicetree values */
+	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
 
-	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, val, val & RPTR_OK, 10, 5);
+	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
+
+	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
+
+	/* Wait for status OK */
+	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
+				       poll_val & RPTR_OK, 10, 5);
 	if (ret)
 		dev_err(rptr->dev, "initialization timed-out\n");
 

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
