Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC13BCA0EDC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 10:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9mN4kw8codoSu0nZR9KakAdLarYor4p2nQtqmkLv1w=; b=VnbxmMKi6bWRU2
	669GBuimMe4YJtCwwsENtsJ2iNxQZColFXyNixjodb6Sp+Pli/l9qh9miUbyVbSTPtHFnlg/NTINg
	42VyqMXrKvZBd9My8+eU7peIV/DgXCo8UUrfdyP5Pw9rLiyZv7D7OHjonGrb4P7YCfh04nEjYAIzR
	Al9VcfRKCXvo7fbimpsoKBh+MK/+866TbUeo10oT5XBpialilRq/FzNa9z1YEIcTxH0Elz9sEq1iS
	4I5FwTKyUrSHtfBYQLK42tjR7M4DWj36qyFnOZN5pAtDCh8hUIUhTlTVZxG+wo28zXii5jfiBTe9c
	OTklG+nWWP6Wd5yCu1hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofhI-0000000D5He-1v2Y;
	Wed, 20 Aug 2025 10:05:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofFX-0000000CxTZ-16HH
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 09:36:56 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1p3oU021262
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:36:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EiqMoI4JzvXNo2OI+vMv9/E2sr+3B1BPWFAmLWZP5+Y=; b=i5i5K51VzY3VjdIJ
	aS94w234CiSxu8WBqcM8K8tHRM9nkPNobo14VgGiiRVieIY8Lru0jaIgiOj37Gte
	hsc6iTqyIeUqgs3TsH3gtfDptsrCPZvOdtMtM7zIm1d4eNwFHw+djTixIsnHG1W4
	CJnT4b9aD1ZmbpIojN0gd88Mk3KqhSnfd91da/2nenq2j3Zv+VPVhI+ttjYz2MV/
	TmGbnAVmlsEIbMPUMiF31Dwq+rShi0LdbScbRp0xssLr/vdWWtPOOnspO6+dKZJd
	GqGm3K3rtefD9gYUzIe18m2IDYsyqbe+8pD2axC+mUqBhgaZiYQa0hS/uTSqnRjR
	WRg9/A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n529175e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:36:54 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-323267885eeso1768790a91.1
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 02:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682614; x=1756287414;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EiqMoI4JzvXNo2OI+vMv9/E2sr+3B1BPWFAmLWZP5+Y=;
        b=LuoLdGJZJJEQXSAOyfQVvtf67A318BMSQzI0QqsHujK1mvoXLEQMUvuar6JURtP2Gf
         FwhlRGfyS1eGyKMUJWqWJ4Vcf+C8z7BVq5y3ExNPhEakooNa7KLwxEeShhVb3CCgt68j
         8cKvVh82RswQqYghqnQWukwKfIFH46PBnYosKvetk1lujHtnMTReEp5+WhKSdA/uvDGJ
         dKMQQxGboc26140tl9thG+5a5sAMxacAo7RR6hqJTeaCTgquNeJT/+iWEIusd3oUmBNK
         I1U917TIzPZ5t03QSfdenZGPtsQj3gCa9nPz/MEvEVtXprmpYwsY/IQRvZ5ww/YWGW2Y
         MgQw==
X-Forwarded-Encrypted: i=1; AJvYcCVkiNnxmP3E0Ge4xHzjJakHlOQ9302FXbAFjchlukl6JChRMoKm+87UbJNialMeRy16pWGwBA3cEvE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzFH9HHIPjYfPpxcj8ZrB0JUtAESfuD7kZ/DNs5VH3yNEYGNSTd
	MbfWSwlY4jMDQcrWry3dL6Yx/M2wsiaXjt6yTW9nVybGiIYJXEDR2nUHeGzsEfxrSfAxZ1ikg+C
	V7T2ip4HFO/pIn1zN3d8OeSmO9tdDpl2DrSx1sB0lZyzeiFS3+DpYf89lhNiUe9LGgiI3
X-Gm-Gg: ASbGncuSWmhOsL9lTYpI4pbJtJ3MxeyxwRtkFw1M32Ipj2Nzh/0Csl7ms7p+20jbiSG
	LfbkXNkYWNLwbj/un6nagORo1P2dEwKM4ciGDeRO9dyrAR4KlGJiINC34Q5IQYiEq2Z9TQtCdVY
	aNS8nhOLqW1MjDu1wFYukBG1Q7DwT+r2wzs+Uh/Uqr8WGZipB5M+y7zxWG86n3bxLV3yfXYE8gH
	jK9JwjnTDvpkIXPExZFQ7AaQX4TihsafHhXKRufFgKrquaGUgx3nnGyqUa3MrkP8idEHLG6e/1X
	KyNij2TNZmkNZ3+mq7ZhqhYho71L74+o3qR5ySTu+0ds/4vCQ6Z3ba/ivUOktSVRtV7NXTgzB3u
	hWa60huzu0kOCvFb2tMmoUiYCk2EY4rRUv++wZG1okIvDDZMax7vHILpf
X-Received: by 2002:a17:902:daca:b0:234:a734:4abe with SMTP id d9443c01a7336-245ef1194b6mr14859935ad.1.1755682613876;
        Wed, 20 Aug 2025 02:36:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEV7XczXGg+baMxpdPCDKJVe4daNFvXZ8uriv0ZV0NgSr3ufsFfCG+bU3sovl88l80hbl3fxQ==
X-Received: by 2002:a17:902:daca:b0:234:a734:4abe with SMTP id d9443c01a7336-245ef1194b6mr14859415ad.1.1755682613297;
        Wed, 20 Aug 2025 02:36:53 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.36.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:36:53 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 17:34:52 +0800
Subject: [PATCH v3 10/14] phy: qcom: qmp-usbc: Add TCSR parsing and USB/DP
 mode mutex handling
MIME-Version: 1.0
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-10-a43bd25ec39c@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682521; l=4819;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=8SfAQGpi+yUv2dTRnynA3znbrVsz13vaL37uOPN+CiE=;
 b=NZbfeQ7MIews2c994APJqTp1cKp2WwFGhQ9P3iCZ9j30J14hF6JXR77pmUSBHOcaZgXBF4Iut
 APGQfDl0cyiDRdS4epEMP/Xd4Y2x5f3zQA8w1SnQupEMTBo2cBLsRgy
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: nB_AfZz9hgDF83JjgbOBcjkFXvQpiPvx
X-Proofpoint-ORIG-GUID: nB_AfZz9hgDF83JjgbOBcjkFXvQpiPvx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX6zTB6T/Kcx9D
 L1BB2Cyq/HOsUniOKvkK4ZOUqEZyfuRh9VjnomNaOFFLa6AkXFkenZNdy9cX2tph/mvilqxoax6
 ZwClV89TIV2sTrApdN1/FAQGhT+nsCSecuiIcnAYGFIvkHlMCwMFpInR+omJAl3jok4+Xt8WhuE
 yuQXU2Jtzru4NjZRuyLflbXW9kqmhoiiTb+uwa+gAB8XifeOMQO9V7ceEc6PAMz/foAvUq7sxlh
 2Z1nEdZnvVeXqa28yibDvofaLAh3Jh+yr8LhE5OiMSH7l8QUxm06ggapTZLxMoAttNQDC3y1ZVz
 JsAtEYbYXtQlOkptSMYKK4JT9JFBKXqlzzO7cBrZhNw2lUrByx0tfG0cz+20WKmbOIoPN4FNgZC
 1L9KLTqPv8Q6PK7OGtc5qI4EICtXRw==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a59736 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=tJYjrKaco4gsmSPR8FUA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_023655_308544_10F91C5B 
X-CRM114-Status: GOOD (  18.91  )
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

Parse TCSR registers to support DP mode signaling via dp_phy_mode_reg.
Introduce mutual exclusion between USB and DP PHY modes to prevent
simultaneous activation. Also update com_init/com_exit to reflect DP
mode initialization and cleanup.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 60 +++++++++++++++++++++++++-------
 1 file changed, 47 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index a1495a2029cf038bb65c36e42d0a4f633e544558..821398653bef23e1915d9d3a3a2950b0bfbefb9a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -674,7 +674,7 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_usbdp_vreg_l),
 };
 
-static int qmp_usbc_com_init(struct phy *phy)
+static int qmp_usbc_com_init(struct phy *phy, bool is_dp)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -704,15 +704,20 @@ static int qmp_usbc_com_init(struct phy *phy)
 	if (ret)
 		goto err_assert_reset;
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
+	if (!is_dp) {
+		qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
 
 #define SW_PORTSELECT_VAL			BIT(0)
 #define SW_PORTSELECT_MUX			BIT(1)
-	/* Use software based port select and switch on typec orientation */
-	val = SW_PORTSELECT_MUX;
-	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
-		val |= SW_PORTSELECT_VAL;
-	writel(val, qmp->pcs_misc);
+		/* Use software based port select and switch on typec orientation */
+		val = SW_PORTSELECT_MUX;
+		if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
+			val |= SW_PORTSELECT_VAL;
+		writel(val, qmp->pcs_misc);
+	}
+
+	if (qmp->tcsr_map && qmp->dp_phy_mode_reg)
+		regmap_write(qmp->tcsr_map, qmp->dp_phy_mode_reg, is_dp);
 
 	return 0;
 
@@ -733,6 +738,9 @@ static int qmp_usbc_com_exit(struct phy *phy)
 
 	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 
+	if (qmp->tcsr_map && qmp->dp_phy_mode_reg)
+		regmap_write(qmp->tcsr_map, qmp->dp_phy_mode_reg, 0);
+
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
 	return 0;
@@ -1045,6 +1053,17 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
 	return 0;
 }
 
+static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)
+{
+	if ((is_dp && qmp->usb_init_count) ||
+	    (!is_dp && qmp->dp_init_count)) {
+		dev_err(qmp->dev, "%s PHY busy\n", is_dp ? "USB" : "DP");
+		return -EBUSY;
+	}
+
+	return 0;
+}
+
 static int qmp_usbc_usb_enable(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
@@ -1052,7 +1071,11 @@ static int qmp_usbc_usb_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
-	ret = qmp_usbc_com_init(phy);
+	ret = qmp_check_mutex_phy(qmp, false);
+	if (ret)
+		goto out_unlock;
+
+	ret = qmp_usbc_com_init(phy, false);
 	if (ret)
 		goto out_unlock;
 
@@ -1103,7 +1126,11 @@ static int qmp_usbc_dp_enable(struct phy *phy)
 
 	mutex_lock(&qmp->phy_mutex);
 
-	ret = qmp_usbc_com_init(phy);
+	ret = qmp_check_mutex_phy(qmp, true);
+	if (ret)
+		goto dp_init_unlock;
+
+	ret = qmp_usbc_com_init(phy, true);
 	if (ret)
 		goto dp_init_unlock;
 
@@ -1467,7 +1494,7 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
 		qmp_usbc_usb_power_off(qmp->usb_phy);
 		qmp_usbc_com_exit(qmp->usb_phy);
 
-		qmp_usbc_com_init(qmp->usb_phy);
+		qmp_usbc_com_init(qmp->usb_phy, false);
 		qmp_usbc_usb_power_on(qmp->usb_phy);
 	}
 
@@ -1602,13 +1629,13 @@ static int qmp_usbc_parse_usb_dt(struct qmp_usbc *qmp)
 	return 0;
 }
 
-static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
+static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
 {
 	struct of_phandle_args tcsr_args;
 	struct device *dev = qmp->dev;
 	int ret;
 
-	/*  for backwards compatibility ignore if there is no property */
+	/*  for backwards compatibility ignore if there is 1 or no property */
 	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 0,
 					       &tcsr_args);
 	if (ret == -ENOENT)
@@ -1623,6 +1650,13 @@ static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
 
 	qmp->vls_clamp_reg = tcsr_args.args[0];
 
+	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 1,
+					       &tcsr_args);
+	if (ret == -ENOENT)
+		return 0;
+
+	qmp->dp_phy_mode_reg = tcsr_args.args[0];
+
 	return 0;
 }
 
@@ -1665,7 +1699,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = qmp_usbc_parse_vls_clamp(qmp);
+	ret = qmp_usbc_parse_tcsr(qmp);
 	if (ret)
 		return ret;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
