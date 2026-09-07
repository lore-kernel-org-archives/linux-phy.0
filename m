Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E011C79F9F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 08:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ru2R7VtkDjiEaIshXoSeP9qZgGArWcRTyQ3Yc/xqy9w=; b=I+IYlekmAixRx3
	ZGagjojrezMWQSMEZDVM5/j7KlnyZjFgk5Mk0YTNT1jW7rB6+U72PRNAmRkT3Kbk0D8FDRDGQLCbl
	KZf9cHvItypuMls3P1Hj5rvKyOTr3im0ODHgwzSPowsqVaXMweO+qrZDuncO8kvD5KG3QNIyfXYII
	Y3KUwMJXcPaA6sysT+mrCsNbDLbmnPELFkYtkDlS+c2IEchkLJUBKOV02XuY5UkyE+8gntzxy4f7s
	t7qX38Q6peJLvCRdbJV2DWpk/3HlWcnl9YxiB54d8QN+j8rBdTKnyK5xzq+ojxXhsF6Lq0h/7wZWG
	AecSbt0v/yZZk/VGn3zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UUw-00000006Euu-03rW;
	Mon, 07 Sep 2026 08:14:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3UUt-00000006Etv-1IyT
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 08:14:36 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68787SCJ3411490
	for <linux-phy@lists.infradead.org>; Mon, 7 Sep 2026 08:14:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MxZtWLIDm7ldSkRHItWGY+C+A/qmFG+JKSeortVNEa0=; b=oymA8yZB7khJG8b4
	qLQSA93jpeaay0ZVwI7iRidkkJ0H2+N7pRIGfQ0/vrlHbhg53kfnyXaC/d8ub75s
	Ef943+5o028GhD1R+iYog5uIqZMFessn1Bi2dRaUnVRgkM+kYWLP6tbkRuZhETQI
	DAVwTbcbmlLAjGmCP060rP6nsoZGFrHq6jvCzWeak0IBa+ElT3NV6N5BE8Kom02H
	yLthIqsRgeBA5wbtu0yP1ymBOsomUrhG/sdtZV1l+lDthMq07w8T2R1STTpE99+D
	z3h0aUqKg091BUF6CxbaS/ICvfl+dGlyA1fj5RQeoCp9Eg5t35vj0KcIW3uyz84M
	OUe5RQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ghsfyg0u9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 08:14:34 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2d6fed0652bso39583155ad.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 01:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788768873; x=1789373673; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MxZtWLIDm7ldSkRHItWGY+C+A/qmFG+JKSeortVNEa0=;
        b=IQj33UIqW5sp+5y23TTcvU6h5iepaAQkMEG2wtNJlMFfgzsHAxSLe+yS6vl1TGanWp
         gZos9s+xE1sMOGPzOyYJcDsRX4GRHO+ycgDgez0a0kJy2iUTNr5rCbcNH8hSp7E5k25D
         G0RTxl+DYOVsTRSuVjXXL8keg/2243FcHfQU1tdbEb2Q4JNtmVWUW2iIVSSM8fldhRET
         xt6V6SpGZtIrzr3oX5S8nQ4H6gbM3HDtGni9jBIbWkQN2SANEosnExdTtZoHi5HlR6Xv
         X38oKQPiiHwvPAIXps1PXR/P+GSXdbZ5TQWPfWwsToLCkN3Tk3M6aC+TaLi9r5Y2R4gR
         OPUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788768873; x=1789373673;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MxZtWLIDm7ldSkRHItWGY+C+A/qmFG+JKSeortVNEa0=;
        b=ItCTVOpY/mEFsRDKudTeG2qAFLQ06U9bSxB2LjLla8XvNEG5ntHjWEg1OdztsneUvt
         amOIFub5A+q+JAjBi7Pe4zNDVQ3GGt/TAgpctNjdpaBhAqwa02NpUSWkeiat4krt2LCY
         ZQWDesyvxfBp0DBqsmc6IwQAyPt0lO1AHv1b6RxMZrmU+nicOyRNClzexuqv9HptRzO7
         OMVYcHdh9Ondc65MoWVNDnEsMraRUkBIZGcfp4hrO2nckGzdEkty2TvHiDE2G7mD8NjE
         2iQqXihDaFGk9hgfbraHMw9L8hjQFFcYsXaKPiot5uG2XdA+6XzRRhTtIUUzCFGgc1Le
         C4/A==
X-Forwarded-Encrypted: i=1; AKwUvBxrqMfYT7XZtV2DXvDaEsnKO5/2sy3nA7CGZfzl2lZ5V6OqGtco4FuuarBczN+AZcvIPth4RLkgW/0=@lists.infradead.org
X-Gm-Message-State: AFuF++ll7hbsk8k7ywA6hskNXNWBWI01JkXa9Bxk5GlZk3CfIr96pJOq
	vGBdsbyCQe8dauy8l7DVbeRTPPwynwY/KE3TheXlAX66Xc/udcuz2h46Z9FTKPwBs2YegjnRPVV
	bhNuLK51svnU6vSQ5WEOK3XEyayb8DBB5uodXwW/fswAyNUSUgxfWyiMR1kV0QhrVEqhv
X-Gm-Gg: AYBFou2ZMljKj2VYMLh4dM9j/ljn7ouGZ7RzyRCbyj7yN8wGvAAUTEcz8N/fJ9kh0bJ
	KPRmtZz9VN6JBLMDP0AMpBY7z3lqQwPiB/nMTGLYoiRPhAwO7Pa63ILN0OAWgi5HUROoXCFC5is
	ZGIp30nChHnV1CQJor9+YSowUCWsT4cm3IYC1/gPicrdxXncIRBhR83F/QcSE7sKoV/0vfB2jV9
	li3eQyhHPMDu24ck9DUw82tWRBmWb9Gy87M2aS1mE3kGjhmtTq3EMSgP9Rm4xWuaGf+3qCHn0yp
	Kb3fctrbcuBSnFAii5XyrgJXcNmIFY4iCnL6UVWJ9bn5ZMtSv1Ehg4dPWxtqOCkRCP2x5jCYAef
	m5KXs2R1plm6ux2zpS4Mr07yGZE88ZUQ=
X-Received: by 2002:a17:90b:4fca:b0:38e:5b59:c2ff with SMTP id 98e67ed59e1d1-39b260dd278mr32332658a91.3.1788768873000;
        Mon, 07 Sep 2026 01:14:33 -0700 (PDT)
X-Received: by 2002:a17:90b:4fca:b0:38e:5b59:c2ff with SMTP id 98e67ed59e1d1-39b260dd278mr32332577a91.3.1788768872372;
        Mon, 07 Sep 2026 01:14:32 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-143243767e1sm21724220c88.6.2026.09.07.01.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 01:14:32 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Mon, 07 Sep 2026 13:43:41 +0530
Subject: [PATCH v2 5/6] mfd: qcom-pm8008: Add support for PM8010 PMIC
MIME-Version: 1.0
Message-Id: <20260907-glymur_camss-v2-5-75f7982dc983@oss.qualcomm.com>
References: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
In-Reply-To: <20260907-glymur_camss-v2-0-75f7982dc983@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee@kernel.org>,
        Guru Das Srinagesh <linux@gurudas.dev>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mfd@lists.linux.dev,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Dhruvin Rajpura <drajpura@qti.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788768826; l=7418;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=0Gi/ylANHIiBcnYUiyLavUhDki5MHfyeqAZtbpfGAho=;
 b=sKlg1f2Qdmw9O7qLug0a1qsJ7UI93rmZ+ttvVhckyl66TatEbs7SRCGoYUQconlouOUZAaNc/
 IW+E3SsF9TWCWb5X0d4JrO7ACGpCuVYNjxDHcD7eJ81drW9Lv+87tug
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-ORIG-GUID: Fnk4NN-Jf5NiUGn8vtTu_NaYbZY0rgo4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA3MDA4OCBTYWx0ZWRfXxEQ8InimxA7z
 Fm8VdzJHEwPThx7K5TzMWBQ0vktFx76zojHaiwwDX8tn4trvCOxT8EyK/GRVuW+zJShPIFRDfMa
 uagUkBDrMDrymEJxrh4pvAJhchCFsv2SlTNMBxE1DvOoJ9qpeYmiVhEdjB8est4bni6m64XWlgK
 6fb+Sgl6kAqTdnfuof7kqmL7UCl4+jB9yfQ89D1oIwKxWzZnXdzjp2CfUOqXRxEIwidkCS0cR4B
 HvPmmmniMB9T1murwgoEkLzTR2m2b+hAfcb7Zk+EFeD/w7JI63f3XiJULsBOMObXxrwI4IYR014
 ctJFkwl4AwBFAY+TGSeROuzpaj+x3VhRiZ5N/jmX0ZF6ddRtNWpGz4m5iOFX8/hhNPNvURmvsT0
 5jhixTsJN7YH5Xzj6pfIusJScLZqKGaEFH78N1LTmmVEKxtx1jyA9A0/DPexjCte4OhVQWw7sYQ
 BUfQAz62iXkW/YnEffQ==
X-Proofpoint-GUID: Fnk4NN-Jf5NiUGn8vtTu_NaYbZY0rgo4
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA3MDA4OCBTYWx0ZWRfX/FjY6mEEO3oS
 yp1p7o2nhwfFPz8pwYvX0aGYS2htL+Q0NyySZ3nIBrFWHGvsUfd/7CcCUqcOArK/6+oTio7wKL5
 bxDkRlKTbQaVJU4lHs8kRbdj7Uyazl8=
X-Authority-Analysis: v=2.4 cv=AduB2XXG c=1 sm=1 tr=0 ts=6a9e726a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=A6So869mJGH3nWG3DMgA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-07_02,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 phishscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609070088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_011435_476654_0CDA96D0 
X-CRM114-Status: GOOD (  22.64  )
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

From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

The PM8010 is a variant of the PM8008 PMIC with a slightly different
IRQ layout and MFD cells. Introduce per-variant match data (IRQ chip
descriptor and MFD cells) selected via the new "qcom,pm8010-i2c"
compatible string, and support probing without an interrupt line by
falling back to a reduced set of MFD cells when the client has no IRQ
assigned.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Dhruvin Rajpura <drajpura@qti.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 drivers/mfd/qcom-pm8008.c | 140 ++++++++++++++++++++++++++++++++++++----------
 1 file changed, 112 insertions(+), 28 deletions(-)

diff --git a/drivers/mfd/qcom-pm8008.c b/drivers/mfd/qcom-pm8008.c
index 60204cc9a2dc60cc1fe1b64030f5d803100e7874..28532cef7908ef3409a3dfc0779aae3b1a3885b9 100644
--- a/drivers/mfd/qcom-pm8008.c
+++ b/drivers/mfd/qcom-pm8008.c
@@ -34,6 +34,7 @@ enum {
 	PM8008_GPIO1,
 	PM8008_GPIO2,
 	PM8008_NUM_PERIPHS,
+	PM8010_NUM_PERIPHS = 2,
 };
 
 #define PM8008_PERIPH_0_BASE	0x900
@@ -55,6 +56,10 @@ enum {
 #define PM8008_IRQ_GPIO1	6
 #define PM8008_IRQ_GPIO2	7
 
+#define PM8010_IRQ_MISC_MBG_FAULT	0
+/* 1-3 are unused */
+#define PM8010_IRQ_MISC_LDO_OCP	4
+
 enum {
 	SET_TYPE_INDEX,
 	POLARITY_HI_INDEX,
@@ -88,6 +93,12 @@ static const struct regmap_irq pm8008_irqs[] = {
 	_IRQ(PM8008_IRQ_GPIO2,	      PM8008_GPIO2,	BIT(0), IRQ_TYPE_SENSE_MASK),
 };
 
+static const struct regmap_irq pm8010_irqs[] = {
+	_IRQ(PM8010_IRQ_MISC_MBG_FAULT, PM8008_MISC, BIT(0), IRQ_TYPE_EDGE_RISING),
+	_IRQ(PM8010_IRQ_MISC_LDO_OCP, PM8008_MISC, BIT(4), IRQ_TYPE_EDGE_RISING),
+	_IRQ(PM8008_IRQ_TEMP_ALARM, PM8008_TEMP_ALARM, BIT(0), IRQ_TYPE_SENSE_MASK),
+};
+
 static const unsigned int pm8008_periph_base[] = {
 	PM8008_PERIPH_0_BASE,
 	PM8008_PERIPH_1_BASE,
@@ -158,6 +169,25 @@ static const struct regmap_irq_chip pm8008_irq_chip = {
 	.get_irq_reg		= pm8008_get_irq_reg,
 };
 
+static const struct regmap_irq_chip pm8010_irq_chip = {
+	.name			= "pm8010",
+	.main_status		= I2C_INTR_STATUS_BASE,
+	.num_main_regs		= 1,
+	.irqs			= pm8010_irqs,
+	.num_irqs		= ARRAY_SIZE(pm8010_irqs),
+	.num_regs		= PM8010_NUM_PERIPHS,
+	.status_base		= INT_LATCHED_STS_OFFSET,
+	.mask_base		= INT_EN_CLR_OFFSET,
+	.unmask_base		= INT_EN_SET_OFFSET,
+	.mask_unmask_non_inverted = true,
+	.ack_base		= INT_LATCHED_CLR_OFFSET,
+	.config_base		= pm8008_config_regs,
+	.num_config_bases	= ARRAY_SIZE(pm8008_config_regs),
+	.num_config_regs	= PM8010_NUM_PERIPHS,
+	.set_type_config	= pm8008_set_type_config,
+	.get_irq_reg		= pm8008_get_irq_reg,
+};
+
 static const struct regmap_config qcom_mfd_regmap_cfg = {
 	.name		= "primary",
 	.reg_bits	= 16,
@@ -179,10 +209,32 @@ static const struct resource pm8008_temp_res[] = {
 
 static const struct mfd_cell pm8008_cells[] = {
 	MFD_CELL_NAME("pm8008-regulator"),
-	MFD_CELL_RES("qpnp-temp-alarm", pm8008_temp_res),
+	MFD_CELL_RES("spmi-temp-alarm", pm8008_temp_res),
 	MFD_CELL_NAME("pm8008-gpio"),
 };
 
+static const struct mfd_cell pm8010_cells[] = {
+	MFD_CELL_NAME("pm8010-regulator"),
+	MFD_CELL_RES("spmi-temp-alarm", pm8008_temp_res),
+	MFD_CELL_NAME("pm8008-gpio"),
+};
+
+static const struct mfd_cell pm8008_no_irq_cells[] = {
+	MFD_CELL_NAME("pm8008-regulator"),
+};
+
+static const struct mfd_cell pm8010_no_irq_cells[] = {
+	MFD_CELL_NAME("pm8010-regulator"),
+};
+
+struct pm8008_match_data {
+	const struct regmap_irq_chip *irq_chip_desc;
+	const struct mfd_cell *mfd_cells;
+	const struct mfd_cell *no_irq_mfd_cells;
+	int num_mfd_cells;
+	int no_irq_num_mfd_cells;
+};
+
 static void devm_irq_domain_fwnode_release(void *data)
 {
 	struct fwnode_handle *fwnode = data;
@@ -192,15 +244,22 @@ static void devm_irq_domain_fwnode_release(void *data)
 
 static int pm8008_probe(struct i2c_client *client)
 {
-	struct regmap_irq_chip_data *irq_data;
+	struct regmap_irq_chip_data *irq_data = NULL;
+	const struct pm8008_match_data *data;
 	struct device *dev = &client->dev;
 	struct regmap *regmap, *regmap2;
 	struct fwnode_handle *fwnode;
+	const struct mfd_cell *cells;
 	struct i2c_client *dummy;
 	struct gpio_desc *reset;
+	int num_cells;
 	char *name;
 	int ret;
 
+	data = device_get_match_data(dev);
+	if (!data)
+		return dev_err_probe(dev, -ENODATA, "Missing driver match data\n");
+
 	dummy = devm_i2c_new_dummy_device(dev, client->adapter, client->addr + 1);
 	if (IS_ERR(dummy)) {
 		ret = PTR_ERR(dummy);
@@ -231,37 +290,62 @@ static int pm8008_probe(struct i2c_client *client)
 	 */
 	usleep_range(1000, 2000);
 
-	name = devm_kasprintf(dev, GFP_KERNEL, "%pOF-internal", dev->of_node);
-	if (!name)
-		return -ENOMEM;
-
-	name = strreplace(name, '/', ':');
-
-	fwnode = irq_domain_alloc_named_fwnode(name);
-	if (!fwnode)
-		return -ENOMEM;
-
-	ret = devm_add_action_or_reset(dev, devm_irq_domain_fwnode_release, fwnode);
-	if (ret)
-		return ret;
-
-	ret = devm_regmap_add_irq_chip_fwnode(dev, fwnode, regmap, client->irq,
-				IRQF_SHARED, 0, &pm8008_irq_chip, &irq_data);
-	if (ret) {
-		dev_err(dev, "failed to add IRQ chip: %d\n", ret);
-		return ret;
+	if (client->irq) {
+		name = devm_kasprintf(dev, GFP_KERNEL, "%pOF-internal", dev->of_node);
+		if (!name)
+			return -ENOMEM;
+
+		name = strreplace(name, '/', ':');
+
+		fwnode = irq_domain_alloc_named_fwnode(name);
+		if (!fwnode)
+			return -ENOMEM;
+
+		ret = devm_add_action_or_reset(dev, devm_irq_domain_fwnode_release, fwnode);
+		if (ret)
+			return ret;
+
+		ret = devm_regmap_add_irq_chip_fwnode(dev, fwnode, regmap, client->irq,
+						       IRQF_SHARED, 0, data->irq_chip_desc,
+						       &irq_data);
+		if (ret) {
+			dev_err(dev, "failed to add IRQ chip: %d\n", ret);
+			return ret;
+		}
+
+		/* Needed by GPIO driver. */
+		dev_set_drvdata(dev, regmap_irq_get_domain(irq_data));
+		cells = data->mfd_cells;
+		num_cells = data->num_mfd_cells;
+	} else {
+		cells = data->no_irq_mfd_cells;
+		num_cells = data->no_irq_num_mfd_cells;
 	}
 
-	/* Needed by GPIO driver. */
-	dev_set_drvdata(dev, regmap_irq_get_domain(irq_data));
-
-	return devm_mfd_add_devices(dev, PLATFORM_DEVID_AUTO, pm8008_cells,
-				ARRAY_SIZE(pm8008_cells), NULL, 0,
-				regmap_irq_get_domain(irq_data));
+	return devm_mfd_add_devices(dev, PLATFORM_DEVID_AUTO, cells,
+				    num_cells, NULL, 0,
+				    regmap_irq_get_domain(irq_data));
 }
 
+static const struct pm8008_match_data pm8008_data = {
+	.irq_chip_desc = &pm8008_irq_chip,
+	.mfd_cells = pm8008_cells,
+	.no_irq_mfd_cells = pm8008_no_irq_cells,
+	.num_mfd_cells = ARRAY_SIZE(pm8008_cells),
+	.no_irq_num_mfd_cells = ARRAY_SIZE(pm8008_no_irq_cells),
+};
+
+static const struct pm8008_match_data pm8010_data = {
+	.irq_chip_desc = &pm8010_irq_chip,
+	.mfd_cells = pm8010_cells,
+	.no_irq_mfd_cells = pm8010_no_irq_cells,
+	.num_mfd_cells = ARRAY_SIZE(pm8010_cells),
+	.no_irq_num_mfd_cells = ARRAY_SIZE(pm8010_no_irq_cells),
+};
+
 static const struct of_device_id pm8008_match[] = {
-	{ .compatible = "qcom,pm8008", },
+	{ .compatible = "qcom,pm8008", .data = &pm8008_data },
+	{ .compatible = "qcom,pm8010-i2c", .data = &pm8010_data },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, pm8008_match);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
