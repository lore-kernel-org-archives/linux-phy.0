Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77360C6FA8F
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 02:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66gWPJNoH4F6KWrwvjATBgTPFJ2/IpvfqIiFpI/KTT0=; b=SG804nVciGQi7E
	e1TJmZ1F5M6CjK03+RduFamu6phHJLrXngeXTi9qeRsabffToeGQnD/7z6VOmIpbFYfoaw6lUhOkw
	d70ylemSCw+/zub6sjBhwPWDBHaxotBzZ8OZ5Jok9sCLM4WTgF9m/ZHl4iYedK9NGlgWPoboRreJJ
	evC058dWoSf7fxvirjOKGYMS8DxJX3f/PRuaRMudUFnwEgo2kKYMkwIACq+L4UZbLTTFh6nUBfC4t
	yPDpo0per3mW9mPThd08uNyZnjxyzbXohJsWnKPsm263RVfDYyCZW/NQDTTCU3YJxDT02TDhXWNrW
	UbljFwAJHE9aUaW9F66Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbB88-00Cgx5-0e;
	Wed, 30 Aug 2023 02:40:28 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbB84-00Cgri-1T
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 02:40:26 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4ffa248263cso7943363e87.2
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 19:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693363220; x=1693968020; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C4cHSwUyFzEktn3DghWL2c38zb9i5jrhA53otXSIPl0=;
        b=XFNGoYSZAKQxb6ZqfbNoMkulWYmnwmER3rGHCyK2RbLuHHnb/N/TQknvEBmy8DUKAi
         8ksDhXSGD/zNKinEFiAzyiFfHEEIMyPwlp035bTmmkkxWJfmu8dY7O9gm53l3jltp2ad
         zapiRHMscrpNKIV9UVYQaJ4tHdIZk1W+j0P3HQfDVJwDzdWmij0YTH26Qw1mOh5Zc6sl
         K6t3hrBWEz+xS4OQVj0oPj2Qb62Y6Pe2B6Qt6Fr5HgJAxG6m6cBuV+nBOAMBm81YjdoM
         B1iPugLHde8uZDMXGASLWnWaTNkTxNBiPXSkRUZp6/0T7ZX+zpi36opdVfy4vUKV1rsg
         FwqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693363220; x=1693968020;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C4cHSwUyFzEktn3DghWL2c38zb9i5jrhA53otXSIPl0=;
        b=PezF/yyhQvqOI4k+NHfJ+dojKq2FCiHnBnhbATLMnDB4VpeZlD/7EcPkIqMTp9M9UY
         js0n+lopO3OMt4325H5PYn/aLod9TRiOCdWp+qCiU3sFJonQSd9Z9qpVfQL0Jtfhn6xW
         C1p9YRExCZMSgHPlyBixuhV4wD0X2b5T17CZa11I70iBm+jAq2/xe+t907aFhJ4I4hgO
         A8uqdcSvpIEz52/Ni6R2ClAriYUoeWP6uFXILxWxRasw8IJOqL1PJTSp43wAQiySS/2I
         l/hn/xWHYOmqAux9u+9ORVvBN0wQ9KQw4DKsAuLTP2viH8mXONXhWToYGrhQ+zgEGVFu
         L2ow==
X-Gm-Message-State: AOJu0YxR54fmGKldzDarBmUbN4cdA3AUIDNVbONiJ5xUguXmr8RwPY5m
	YChUl36JhZ9xuAS8pjIrD5WNhYFDPtUPVDmDlDw7NA==
X-Google-Smtp-Source: AGHT+IHBkg4b6ijOZVk1MC+rXi+R32uS7DM4uSAUqboM9an2pgttvClkrCz3fzYKhKRMPaEc7qH+jw==
X-Received: by 2002:a19:4f45:0:b0:4fe:a2c:24b0 with SMTP id a5-20020a194f45000000b004fe0a2c24b0mr406115lfk.26.1693363220722;
        Tue, 29 Aug 2023 19:40:20 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id w7-20020ac254a7000000b004fb99da37e3sm2183878lfk.220.2023.08.29.19.40.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 19:40:20 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 30 Aug 2023 04:40:17 +0200
Subject: [PATCH 3/4] phy: qualcomm: phy-qcom-eusb2-repeater: Zero out
 untouched tuning regs
MIME-Version: 1.0
Message-Id: <20230830-topic-eusb2_override-v1-3-ab23825385a8@linaro.org>
References: <20230830-topic-eusb2_override-v1-0-ab23825385a8@linaro.org>
In-Reply-To: <20230830-topic-eusb2_override-v1-0-ab23825385a8@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693363215; l=4436;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=clg99SRrpP7Rr9sq765kCJ32qSeqb/MC63Wr0fr+Fsk=;
 b=lkPO+s4HhubGVZzqV8mpoo0iahoW2A7Wd+geW/BccLi+Ts93n5LWCzvlqOlLa5f7MJhXNb937
 6hFpHSz+XXeArI0DUBNJ6BlIp+w1vKdKDVcz8SlKnJP+eXu0iAmwkau
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_194024_492577_0B10480C 
X-CRM114-Status: GOOD (  13.51  )
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
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 49 ++++++++++++++++++--------
 1 file changed, 35 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 7561da01e633..645f0e95703a 100644
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
@@ -119,7 +141,7 @@ static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 static int eusb2_repeater_init(struct phy *phy)
 {
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
-	const struct eusb2_repeater_init_tbl *init_tbl = rptr->cfg->init_tbl;
+	const u32 *init_tbl = rptr->cfg->init_tbl;
 	u32 val;
 	int ret;
 	int i;
@@ -130,9 +152,8 @@ static int eusb2_repeater_init(struct phy *phy)
 
 	regmap_field_update_bits(rptr->regs[F_EN_CTL1], EUSB2_RPTR_EN, EUSB2_RPTR_EN);
 
-	for (i = 0; i < rptr->cfg->init_tbl_num; i++)
-		regmap_field_update_bits(rptr->regs[init_tbl[i].reg],
-					 init_tbl[i].val, init_tbl[i].val);
+	for (i = 0; i < F_NUM_TUNE_FIELDS; i++)
+		regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
 
 	ret = regmap_field_read_poll_timeout(rptr->regs[F_RPTR_STATUS],
 					     val, val & RPTR_OK, 10, 5);

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
