Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B01810F9318
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 03:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tHPOJtpRmZ949WH5c6xJP1/SM8ksbyA3UezSBWXwnv8=; b=4fmJjM/GvY9Be9
	s0zA4FsoySrPXkjeiKDGOJOyj1Ucem7eZ9nFts91QPDh1oFkhAid7720tzNkqRNtCSOquzwtbXB9z
	GbxbKbaSl2LCcZvAGvU068hSloFPlPFvFfyaOI5IE8YefLxsGRVwS1H71MOzrIaIlft1LuNxOaKSQ
	xOSr/oliOtv2kjMAZqBOtI7QWBRLVyfrhOOkMoXf9ktyd8DfxDUrCR+CmfwLuV5WAIefIO89czdN0
	O2gIipbyiXdPxp00e0pOFgx4EqRz2VjPYbwqbrx0B3dUJMjk5yGP7G9dPH7m30CIlcHM3OkcUYUt8
	oL8sAG94qlA+uML7SbIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7mQ8-0000000DuaD-0xLd;
	Wed, 01 Apr 2026 03:39:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7mQ5-0000000DuZc-2RNh
	for linux-phy@lists.infradead.org;
	Wed, 01 Apr 2026 03:39:06 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6312J3Hf1006368
	for <linux-phy@lists.infradead.org>; Wed, 1 Apr 2026 03:39:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	omnRmyUQg5dIWgAiljjvcZxQHMNx7Y0vRQtYTvOpk/4=; b=pElYl/Hc3H1CCT8y
	mZ3LDc/acK820bG1wLb5+OAoRCygFovt+Nrpq5KmiMEGut/832L16uQDnOgYfut0
	HpYS8Rk8+bpSAMWdtTXRU0s33DiBdWlGFPgMwnL0ima3tyL+yUyxATRlxHAIz/iT
	7NNVtS7YEvoFfwmB5YTKDVHIdpxX0pdT1rPy0nlY5uFMf7kNJ8qWRk8CC0WQclrC
	V9RkLm8IUi5AD/vvwRcRmJoSLvuRtD22h7Yppc6B+a5woapNNrmISwth1KcfytXm
	drx9/E7eGX5Wcmm/JkjclzSxGt0rUbyRa86uhdPUulikphdiMFt/q3wFqfoXxNaU
	weofqg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d8tfjg8jv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Apr 2026 03:39:05 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-509219f94b0so76737191cf.3
        for <linux-phy@lists.infradead.org>; Tue, 31 Mar 2026 20:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775014744; x=1775619544; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=omnRmyUQg5dIWgAiljjvcZxQHMNx7Y0vRQtYTvOpk/4=;
        b=FUP+V9Vqe6z/MLha9aAWtONkJbIIaFdrvegfivMIJqOqJ8W6bNxBACx2S5+fD/o8Sp
         7WrYpXFjdpKk67aeVfn2etXM6XO0FKfwBzXpSv9bbXv54paGPgusZeqqdv3NwoB0KJ8M
         sY/zWoQSXqW6UAf9qbtZpMT/LrADZuUlg8iWZ4ba0Hu2gHw/2HX5WgP3q9Zw2wQ8Rosr
         iMAWbPY6poUbFNsRmHQ928fH+zwEPWgs8y5OR29tPe1wtADI2smw5pJAjfBElN/5Ntqg
         BqYDej2EHjaO/qDi+Ef56J8Fag1AabN1taCMBBMB0Mytdq61jgaFeywBott0TB0BgzF4
         4+hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775014744; x=1775619544;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=omnRmyUQg5dIWgAiljjvcZxQHMNx7Y0vRQtYTvOpk/4=;
        b=KPzHTkE78/+FkY93MScNtVMJqTc9CLjLM+/30dxnji39HSUS+lX/Cd1bJv5qsK5yVL
         V26WzsCcPKfor8Wd8LLVUh4l/JTkr4GRsdcD94bYDoe0vv7wHHGDOnFWoK69nt2ZKfI6
         TGsLLZXgU73jIh2+7+QPU8vBMPE+ZI84XDYb7fT1BbfFxc3hj/CPrLgE0VI5ia2GPM5D
         UhoYBI01Z2sLmIwCLMxPgfvdEE1jk9kP0HlFoQwlz/rLjmo3VO94zkdhR/nNpBw8INMa
         JO+xgt6AyMKprK3GC0cfJwF8SV83xKRviOHGN5WhdFZgpLKigUkoAseV1oPoTRUpeW53
         /Y1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUaQA4eyEVDs1JVehe7JiBTVqTW4DGI+5Oi4CkZkpFW0IiKNrNHpudZRa2BOcvAAnBGPMql4fRzTIY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwFG+Li+Fn4SK08DOd32Pwe2DGKOcm/eaJP0sGPggA1a4T3/4KF
	9Ap473ujRwOj6Fy7+iPwFa00QS5cWGmDIDPk6HG/WYIc1Wi1bgfiLZBqxuupJ4HgseqoozIWvEY
	2cCx36bVl1qxBlI3W7iAqFENblHY5cWxQjFq3weHZw1zGBnJ4IQV8ncQR1uBKVqwy4wZH
X-Gm-Gg: ATEYQzzyZqZTSf0pLpGx8w7/GkXi9eTzWJSK67/l8WhYtQC03mgudhpDyFwfY/X1rfZ
	3NfHLrDOtlGuLv6dHrcO4nwMnz86VN+hgncdUODkGn7rQXQ2xJNptMSyoNBlpnZqhAw6U83K9/x
	bY0hOXPd2Lcq53soFQLmNxR9Ucw4y1lhkbByzMPKQic7GzrhwXFVwQjSYUhWBg2fJTidnJFWfhG
	NGHSSpCBC7EmE8jlIQUU1D5QEr91z4JlRX7CbazKqZM242dGRF1fSD/ZzVbZ1ZOuKswEVyly9I4
	5+vokkaAeEmELqmnX2FJpkkv6bhCe9fENgRdvTkV3dSa+TSlEGtE37auZrlnmoBirfKNPrWpsR+
	Wzj9k6ZxDPYrji2j+uPGBdTg+BZYYnrnMbFcXSMTGkWwVZgxcxkl4WIY7n8gJ85AfO8YyUcb1Ym
	2pBtM1do6q+jZ9Cx0NODipMWdBPKOk5r3Toos=
X-Received: by 2002:a05:622a:208:b0:50b:3e64:9b2a with SMTP id d75a77b69052e-50d3bbba0e5mr30945601cf.20.1775014744007;
        Tue, 31 Mar 2026 20:39:04 -0700 (PDT)
X-Received: by 2002:a05:622a:208:b0:50b:3e64:9b2a with SMTP id d75a77b69052e-50d3bbba0e5mr30945391cf.20.1775014743505;
        Tue, 31 Mar 2026 20:39:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38c83730f7csm24404851fa.16.2026.03.31.20.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 20:39:01 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 01 Apr 2026 06:38:47 +0300
Subject: [PATCH v8 2/4] phy: qcom: apq8064-sata: extract UNI PLL register
 defines
MIME-Version: 1.0
Message-Id: <20260401-fd-hdmi-phy-v8-2-51b0e98edf6c@oss.qualcomm.com>
References: <20260401-fd-hdmi-phy-v8-0-51b0e98edf6c@oss.qualcomm.com>
In-Reply-To: <20260401-fd-hdmi-phy-v8-0-51b0e98edf6c@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3165;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ouscQfS7cqU8c/8/Fh7An6AeO5MKx3nAag0yIE0xM6c=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpzJNLmOEeHDlMQsEi8WfV2M/FU+7jv6unYshVp
 BRBShnAhbeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCacyTSwAKCRCLPIo+Aiko
 1WXBB/0YQwCQumGtJGpmrCgUNvTNsMRnD8+VpK4wTT4nxIRaWiJmMASu4yQFBjrJLDlFTRmeM1E
 FmF19X7t3V+1yLDgx4SQ8pBLXFRTzph7z1R7CUgKDizPxyowFBwNBpMivdXhuYCQgidC/ykiA8W
 PGyqv9YPnSwC5MCSij2RAADe8Z+jWFXLNJH7YsADl5ukdE1+QYZbPo+8i/XKWTPROuM8HYf1vyl
 iKla8x0FpYpg28/JCXnoOktQwMggiYPTk4tU/GU0ewQ2YTpBQ9uSU+ztMJkXGrqaQeTIEL/k+EE
 4k+DNJmwRkT5lpkiDn+3qHtlJ13eDT8Pi5ZGsGCTSqsIw52O
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: d83v6S2ru8cQEpQKOjpjblS73LOyPhab
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDAxMDAyNiBTYWx0ZWRfX2Kz34DSRazDE
 k5DMNDCo7zUCR2sKF9yt0shKZKks+Cyk20DYq9TfZZqXprlq+COGc5JOutlkxaaRUOO46ldzr80
 d9FD/a7EgunwbA0WQaYXaJ/Fb9smEhGGMqiPnZgOcqMAGWTvP+P9LVQBd9r8OFgOzlnlj9PxDpd
 JYiGZ2Lja8hOtX7vLTV3ZzYa15XK0+0iKVeY17d7rLH3VT4T82hnQThx6CKMVS6Bi8x7ZOb3M0F
 02etdyaO6aFf+J963FWjBWjyMCyuOX4KYrmaOTZ0hj6tsISZr0ex9QcjziwlaL1WoW2E0IhVQF4
 KoxDdamSdVDipAnUQlG0OWFJOh37aR3Yr2+jIai4M/vYiuX6X8TrIkY4Q/lCzXazbA1JnNsD0+A
 0ZaMqO7Zd+ps2x0CQKDbIK3O22EQB4MXxyLEjZtZFfnceStiWbV8P9EtrpIG2Zy8fWP43Kns5wj
 EpwBEQaAqSi9pdR9SDQ==
X-Authority-Analysis: v=2.4 cv=fJc0HJae c=1 sm=1 tr=0 ts=69cc9359 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=_xNQ4P_HJxdd5osA_owA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: d83v6S2ru8cQEpQKOjpjblS73LOyPhab
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-01_01,2026-03-31_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604010026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_203905_636599_82911DC3 
X-CRM114-Status: GOOD (  14.09  )
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
 drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 23 +-------------------
 drivers/phy/qualcomm/phy-qcom-uniphy.h       | 32 ++++++++++++++++++++++++++++
 2 files changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
index cae290a6e19f..dd9929429f9a 100644
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
diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
new file mode 100644
index 000000000000..e5b79a4dc270
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy.h
@@ -0,0 +1,32 @@
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
+
+#endif

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
