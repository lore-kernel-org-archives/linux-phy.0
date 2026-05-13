Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97F8BCD4F3D
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 18:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2XrR0OQGPcyd+9tk6T2xnJHFJDfmImMjDP2NFiB//8=; b=W1a+bBlmxaxb7f
	nS1Q7CeQ6o2ygKHI1GUD1TrpIYiVrbbp1QkwsOu1kfzugxeGa9fGTGmBMrJtVZUClPPy5MH1pUSPa
	Hv2FOricSoW+weU7He/tUKGdqN/dlZF/ip890XpzH5ufkoAW20GEKWA0S5H1Sgf39k37bAIS8Hmo0
	iV1ZxaA7MXdhmsCanwVMbK31FclODsO7MrQMtfk9ARvWgqgHgLIn6299sMh1ggrDF1tZSwo8fGQ6B
	nZTrqpV1JOFyaMvKLJ1oOILCYozNZmUHHpv1+xoyVrv1B1ADDmqAWoEs7XxDa5Deqleh8g5rK2qCf
	K4Nkkmv1UvyJwsASqnjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNE65-00000003RUz-00U4;
	Wed, 13 May 2026 18:14:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNE62-00000003RTT-2Tsh
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 18:14:15 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64DEqDpR4160087
	for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 18:14:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/zVPSIIUWKZIXl9Pgp6/Eie1lp8Tnk+2GrtmbNvXeno=; b=OGuYv31NAgMi70jX
	sb07jsqMpvjddqFhCaI9Lsi1KVHPbuyo0+LDz1E1EHLTOnAHNjd5I4c5lRv2rmCT
	SmspIkjRIcAmqDZlHVl13K8sF63vRDPXnAao2YmtSrvz57BR1FkWjo6tMLcewSfr
	v/5DP46+gKZhb26zBSNP/SHAzo/DZM/vGr3OzA52gm1OBUHWVCfuRpjfVYZDqCMS
	LeRuHfRdDVcyMlFksMhlWB0G/hVX/9BEBxaxlYVSYtzsbmPeuMB5XKiP27UT/M57
	mB6xoHXYYWchvzNn3w5/zwyEFZ6vFvhBIlFrUUhUrpzCgdf41pqlsz+a7kFGZJu3
	V2Af6g==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4p91t6wk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 18:14:14 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-6374098885eso2187728137.3
        for <linux-phy@lists.infradead.org>; Wed, 13 May 2026 11:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778696053; x=1779300853; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/zVPSIIUWKZIXl9Pgp6/Eie1lp8Tnk+2GrtmbNvXeno=;
        b=RIFHrUxhohnKwF6lDfuIniA/Kr058rfX3F+901e82ONxwJ97KlHr2hodZw8/AOM4cy
         O7E4UL/W4pqykc2zXl/FASqmEypv2CSTFcW1VJ/l3Qxdqy7Y3Lhpd6kv+q1BPIZa+8Rq
         TljijpW33nQOMnjIy9tHr5y3JMsBq20yF7Ug+R0gTKNoxgPTfTptHXaN3+bnx2LR45WF
         7G8yip3EghMqmoB3wh92ZALdLg5hOIhlfjx/tvWi8fvDKQGlkb+bi38n975MwMLidtyg
         /XAHA6//2koKiBZgPG9lqbRiIbsSHIucZADnGPwAGwBRWIf9z9wuslCWhCaW6bTjFeGA
         sYYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778696053; x=1779300853;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/zVPSIIUWKZIXl9Pgp6/Eie1lp8Tnk+2GrtmbNvXeno=;
        b=V0IO75aR5RoJmkStebBCbJw+2fb5D3T1GbyD8MFy2OZmY9ZluZkYxpgOS+WoC6pAcL
         rck9f/T9L9A2REHW62ruYlWEwwx0qG5Gu6rjgzqQ14fcvDR1kLIhpwPRADrznlyo3l6L
         TJmYdXJIrRqL0RvXoEos5CkDDYtv8R5AFOMtcdXG+Sgn/sJQfqM0OluNIWzNM5r3BGJT
         k+I7bbNuHmQGi+4VMvubVpFg3J2MACZvwxOCDICYDFm2xVCsY/MAcK0Wl2jV5syyORhQ
         MA7QUcII7pxLnfDfMfGoQYLs3WDgM3RvZVd4FslcTNgvh9/hZUnMHEsyaV5IdOCPMnzG
         6EeQ==
X-Forwarded-Encrypted: i=1; AFNElJ9PkWjSqnKjK4A0okRlYzKDCTQyDTrPoQWaE/2Hzm+2bpRcDIY3GaMiGShFVVdrjYtY4knLzS09OXU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwdXuj1+qLXN+/NHtt7U9SVR8RZOrrMzO5Od9vZZQzsLgWV7mbg
	9qaeSEtthu+KImt2Tn1dxXbeoZamlYJJfS8f2UDLW9aegucBuf5YZJbtu2Gnm2XkFi+BxVbrmOU
	PPzxaIDrCfXpfFCnbo3wIVKB3MQK2ZQg9Zw4TNM7vI1RazIE+boqEtnQl9u2wJh5ZNkey
X-Gm-Gg: Acq92OHwVXesDgTwRQIJGFTsHF1ZeENCajuwGLVKn8zyvPf/qjK6W8yXDvy5whjxY4o
	a1osnobBJT+Lb4MSBhmzoCUWXOhNTxJXHTNQFOSUGpTDRpknLHGNnT0QxD6GwTPuUkEtJgG98XM
	DbN8aJHWN9FDLoTjpDJ36tSGEl71F16RoVPsdJyW4NG6RAIvX303aXc9AbaRUcNKSWPNi3vPIY7
	mNFlEk8iIBL+9L5vMO19nhqJTm3BkHXY7znKupK1uiqCd1kuZd2apy4cm8d11+36Aveg1mOBX0c
	aud0JXrXvfowS7Uh3UsH8s/YMWI1rrxkmNB+ErOThJmBcWri0Jmflj7re3nuBTFtNKYb/5U6fC3
	v7vEgm0D9bNATaS4cMdPjlg1ZX7cGK/rKF4ctZgKz3jvwqdpYzkNSvALrjZjnlCgcJKx/zJ+GlG
	hI6Cwan66DKGsCTV10XAYrVSsR9HfZSrfmuMo=
X-Received: by 2002:a05:6102:3581:b0:631:4e9a:ba3 with SMTP id ada2fe7eead31-63775d35309mr2383197137.21.1778696052979;
        Wed, 13 May 2026 11:14:12 -0700 (PDT)
X-Received: by 2002:a05:6102:3581:b0:631:4e9a:ba3 with SMTP id ada2fe7eead31-63775d35309mr2383166137.21.1778696052465;
        Wed, 13 May 2026 11:14:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a8bd7d8974sm3174770e87.64.2026.05.13.11.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 May 2026 11:14:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 13 May 2026 21:14:06 +0300
Subject: [PATCH v9 3/5] phy: qcom: apq8064-sata: extract UNI PLL register
 defines
MIME-Version: 1.0
Message-Id: <20260513-fd-hdmi-phy-v9-3-ca98c72f1f9f@oss.qualcomm.com>
References: <20260513-fd-hdmi-phy-v9-0-ca98c72f1f9f@oss.qualcomm.com>
In-Reply-To: <20260513-fd-hdmi-phy-v9-0-ca98c72f1f9f@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3408;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=HsnaYsV5sY0OkAw5eu/o4daj/nHtfAshF8JWidON18Q=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqBL9tjLrY83UXLmEunVYGYLAM+Hg0YNzJYpfrq
 96k9e4FlDeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCagS/bQAKCRCLPIo+Aiko
 1VZzB/9B2E/N1NfXzdEpQOpWpJYaqJ4JY4cFaruTvIQuvIIOydYHm/rnl4TPJ+Dzk0xu/XU3C4h
 kgKr8ffT+PaJ2nzpHU8ccDCD+GVLpY1N6+UhPNRcLQ0DLgSG/9kMZXe1G80EGO4+gAOjaMEhP3I
 Zo1w635FY2rocR/XSEOL26z9fv68ZtKLRKQQ2QBfwqnQbGO7y/mtKRsECKPdiSF7kJLXBfQi1lU
 yCz5JUFTY+s6XL/VHZUk5S+4CZ9VD6kqhjXKFwWNBXmjORys4v87YpGQxsPceXilHESDLF9BdMP
 ob7h0vrDH5CXPlsNO5fzEnWbqwbpnUn8u90DPvj5SzPxgdxQ
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 2VCECvBAatRfhB_-EDJ9di0_I51kDdAm
X-Proofpoint-GUID: 2VCECvBAatRfhB_-EDJ9di0_I51kDdAm
X-Authority-Analysis: v=2.4 cv=G9Ys1dk5 c=1 sm=1 tr=0 ts=6a04bf76 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=_xNQ4P_HJxdd5osA_owA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDE4MiBTYWx0ZWRfX9vfIsROUUdrC
 0eHHMOW/nVvlkc3k6knpMbOdn8iEqw9QGaU6XNowNCS59dIaEECgiQB0Qfp2DwllRyDMc2/Epqc
 0+7X++E01msu37dpjeOrOgHMSd7oS1oShlKZxg3+MJYkmLV2O/D7FWIDJu5OFgacRjQgeexWTch
 JqIrT1qWY0wfYRCJJLJZTJBquA06mbRXXWy8qszXK+MrYGh76O5FxO22AM9ht2iTZKeUgBRac5w
 utrFp6cUO4o5sygDLbyBsHNUNU7KVM2OE/xag6OzTplhOdkqGUuIe+XmrM+Y439Mcam4u8hJoWa
 LY/6+LKb3WExc2Xle8mMhk4LwkzESJz3RT1owGsfkbLlAUKgx0B8mg0C67sC2mR0agtpv5TXNBh
 /MWL6Si1VRu8+XRru7ijedznQo0q/oAeBh50A8RjeOGZx2SHcH8AcrfRF20spYx3hNNr1kyPpSX
 XkHwMcnI1Aokah9NSPQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 adultscore=0 spamscore=0 phishscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605050000
 definitions=main-2605130182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_111414_652413_DEAAC0AA 
X-CRM114-Status: GOOD (  14.35  )
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

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

The "uni" PLL is shared between several PHYS: APQ8064's SATA,
MSM8974/APQ8084 HDMI, MSM8916 DSI, MSM8974/APQ8084 DSI. Extract the
common register names to a separate header with the hope of later having
the common code to handle PLL in those PHYs.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 24 +-------------------
 drivers/phy/qualcomm/phy-qcom-uniphy.h       | 33 ++++++++++++++++++++++++++++
 2 files changed, 34 insertions(+), 23 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
index cae290a6e19f..52f180e0cfb4 100644
--- a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
+++ b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
@@ -15,28 +15,7 @@
 #include <linux/platform_device.h>
 #include <linux/phy/phy.h>
 
-/* PHY registers */
-#define UNIPHY_PLL_REFCLK_CFG		0x000
-#define UNIPHY_PLL_PWRGEN_CFG		0x014
-#define UNIPHY_PLL_GLB_CFG		0x020
-#define UNIPHY_PLL_SDM_CFG0		0x038
-#define UNIPHY_PLL_SDM_CFG1		0x03C
-#define UNIPHY_PLL_SDM_CFG2		0x040
-#define UNIPHY_PLL_SDM_CFG3		0x044
-#define UNIPHY_PLL_SDM_CFG4		0x048
-#define UNIPHY_PLL_SSC_CFG0		0x04C
-#define UNIPHY_PLL_SSC_CFG1		0x050
-#define UNIPHY_PLL_SSC_CFG2		0x054
-#define UNIPHY_PLL_SSC_CFG3		0x058
-#define UNIPHY_PLL_LKDET_CFG0		0x05C
-#define UNIPHY_PLL_LKDET_CFG1		0x060
-#define UNIPHY_PLL_LKDET_CFG2		0x064
-#define UNIPHY_PLL_CAL_CFG0		0x06C
-#define UNIPHY_PLL_CAL_CFG8		0x08C
-#define UNIPHY_PLL_CAL_CFG9		0x090
-#define UNIPHY_PLL_CAL_CFG10		0x094
-#define UNIPHY_PLL_CAL_CFG11		0x098
-#define UNIPHY_PLL_STATUS		0x0C0
+#include "phy-qcom-uniphy.h"
 
 #define SATA_PHY_SER_CTRL		0x100
 #define SATA_PHY_TX_DRIV_CTRL0		0x104
@@ -58,7 +37,6 @@
 #define SATA_PHY_TX_IMCAL_STAT		0x1E4
 #define SATA_PHY_RX_IMCAL_STAT		0x1E8
 
-#define UNIPHY_PLL_LOCK		BIT(0)
 #define SATA_PHY_TX_CAL		BIT(0)
 #define SATA_PHY_RX_CAL		BIT(0)
 
diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
new file mode 100644
index 000000000000..5f18f9593cda
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2014, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef PHY_QCOM_UNIPHY_H
+#define PHY_QCOM_UNIPHY_H
+
+/* PHY registers */
+#define UNIPHY_PLL_REFCLK_CFG		0x000
+#define UNIPHY_PLL_PWRGEN_CFG		0x014
+#define UNIPHY_PLL_GLB_CFG		0x020
+#define UNIPHY_PLL_SDM_CFG0		0x038
+#define UNIPHY_PLL_SDM_CFG1		0x03c
+#define UNIPHY_PLL_SDM_CFG2		0x040
+#define UNIPHY_PLL_SDM_CFG3		0x044
+#define UNIPHY_PLL_SDM_CFG4		0x048
+#define UNIPHY_PLL_SSC_CFG0		0x04c
+#define UNIPHY_PLL_SSC_CFG1		0x050
+#define UNIPHY_PLL_SSC_CFG2		0x054
+#define UNIPHY_PLL_SSC_CFG3		0x058
+#define UNIPHY_PLL_LKDET_CFG0		0x05c
+#define UNIPHY_PLL_LKDET_CFG1		0x060
+#define UNIPHY_PLL_LKDET_CFG2		0x064
+#define UNIPHY_PLL_CAL_CFG0		0x06c
+#define UNIPHY_PLL_CAL_CFG8		0x08c
+#define UNIPHY_PLL_CAL_CFG9		0x090
+#define UNIPHY_PLL_CAL_CFG10		0x094
+#define UNIPHY_PLL_CAL_CFG11		0x098
+#define UNIPHY_PLL_STATUS		0x0c0
+#define UNIPHY_PLL_LOCK				BIT(0)
+
+#endif

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
