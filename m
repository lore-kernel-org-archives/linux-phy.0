Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB802C3DA6D
	for <linux-phy@archiver.kernel.org>; Tue, 20 May 2025 20:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wKbXVuK368nAKTMkS36jv2QdqDVjyWjw9QgN8h6rk2k=; b=NHGVxpyLhvO681
	zHJmqQ+5D1bLfIl62KoDqEa9fPHFQzSxAXV5cKYGmIKGbWovilEZ2K374zdecY30oBU0jaWkyJDfv
	4Hld0nJxDQyTxgq3ISrp4xvpc2bsWwsB8q4gB1MjG5qM/r6V+hWoBl+BDSJ3Mv5l78ut/96S88XjV
	hznEJc3wwl1uTMC+Hqzp85el+FZztYHVuwXc8gKCG99bmc29XWY762eyaWuMamKubWvWiRS/xrNe/
	ZF0ncxgRz14nClDpZame7IhDUY9lseV+SZ6G7CYXLUcbycZMMSnksypbNms3pGkkp7d41cU9adxnt
	DNl+0tJZlQLwEp4+6Blg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHTqU-0000000E6z0-2MXe;
	Tue, 20 May 2025 20:45:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHTpa-0000000E6bx-0IS0
	for linux-phy@lists.infradead.org;
	Tue, 20 May 2025 20:44:59 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54KGdlcK024639
	for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 20:44:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ykPlUua1WYJOj8gRH4+W8xOqCf2Wt8uktxwJQmda3VQ=; b=bqeIfzI6O775RuX9
	XEgANszm+qJzkfQrZA3KYborl8uhrcVVj7Eg/e4CGQ9prJkt+SjWbhrrBrwCLGuW
	/p7FkazLnkV5ThJYB4slpamVeZF/RIxhAVbmbW492wt34VyrPi/jh8dUL1kA6HYc
	DXmx3mwqFIyhbxCkwYb/KeeHS1mnt1/ibX2JsumDUXgzvYoD42Q0XFfoNssuEJdA
	yn4K5nxeESVgo8zQqBMiy9VQqrkjpkjhynxrHFB4gDgwF63uaetFniueJekZ5OTj
	ZdPul4yoexnADtMLaS7A8A/rsNTFOyXkE6Vncq8eeME/A87MWQZPWz6YiDzUygMb
	sDdbAA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf30k2r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 20:44:57 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f8c0a83f9cso76138866d6.2
        for <linux-phy@lists.infradead.org>; Tue, 20 May 2025 13:44:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747773896; x=1748378696;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ykPlUua1WYJOj8gRH4+W8xOqCf2Wt8uktxwJQmda3VQ=;
        b=kPTaLJiIbpJVUs6I0Kv1YYvvUbuY8mggeUxB3w6ScsZhRQgIt/bFX6acJJfS7bmwFu
         vuysq0XyeohIgafe4q+lzsvR6eijW856jG+oiYoDySzebCayJcgfINbMgm07pxKaQzQk
         sds2xzQ85qRQGJirkpeXI0K52FJ9O7mk8mzDx8jklHLY34KFSO/fPEx+pYDzt3pOfIx7
         TNkRi8FjUN7rGemrjQ7Os2dTibfwPYPriBM2gepovd7SI5yeAabkXbS/M+n4ITKbbltK
         yQA5IqmHw21dAdp11cz35e/mO5AaL+amkDXLqRlOO8WVspOdqw1e2c3wG9V6HiGykdyR
         Rx9w==
X-Forwarded-Encrypted: i=1; AJvYcCU/oBV+JIXTmAn+VBduEGTpgmry8EzXK/dKsMLNz2bUVom5dyvgmSjYz4SfZf6fP6qNoOCZiB+adeE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxtFzNPWBjTYBpRKlKK09epZIG4gJXmW2MR2bTuY+2owjVC1Bcq
	HCb+ZJJIl4UHFkyaluto7arKyRn8lQlYkEsCdkMZUlZAo+SdiQ0SJLQi/7yt+aBPqVbVPVy9RsU
	IansxpIHXoXK3UhWNLZUWmVd2UxJM+YBAl4+qhugzua+H4sUIQ5PdecQQ/4IQA6laQCu/
X-Gm-Gg: ASbGncu3z6RfNBuA46H4hMw1IH/Xn/5xoP9j4pmqXA9pqlZw/08tC9SY9rIw9aJz7Aw
	mYBIAqiRq75dLnSAJ2JCVwtbmokAkYNZEwoXd7FxgYjJijV8Qezs08TrfU/L55UpnW453hbBc27
	4urmrq5fyuH3qYjIbyFG/RJARrsMRkROcsJ/SQBMYrxz0AlWmTCjzWCdigtcPebiqhmZMsIgDI7
	Vhv+6TiN6xLZzyXlW8/3nclPS+nVICeXPWKFcZdhSU8eZXGCpNac++ncFEgZjVlY8Oy/4yfTKMt
	ZAWHTdvHVEtYiY3V9RafFS2Kwp7fWBOTtftcX9uDwqL1Dok1zcO4jmdT797kQAvNtZ4izDIkp8e
	WE63Dadz6W/wtC0k5UbljukqZ
X-Received: by 2002:a05:6214:1cce:b0:6e8:f4e2:26ef with SMTP id 6a1803df08f44-6f8b2d853a5mr303605766d6.31.1747773896229;
        Tue, 20 May 2025 13:44:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExse+TXH1VriLP4f0U2rBvd0pIcWTRd0DsJ4Y79tLbGTK08qfgjRloMVmoV33Gc93nL2+Brw==
X-Received: by 2002:a05:6214:1cce:b0:6e8:f4e2:26ef with SMTP id 6a1803df08f44-6f8b2d853a5mr303605316d6.31.1747773895791;
        Tue, 20 May 2025 13:44:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f163ccsm2497950e87.39.2025.05.20.13.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 13:44:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 20 May 2025 23:44:44 +0300
Subject: [PATCH v4 2/5] phy: qcom: apq8064-sata: extract UNI PLL register
 defines
MIME-Version: 1.0
Message-Id: <20250520-fd-hdmi-phy-v4-2-fcbaa652ad75@oss.qualcomm.com>
References: <20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com>
In-Reply-To: <20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-phy@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3088;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=2R5NhT4/9vDNb/+f8UkhB7hzE5bEH/Asz87X2bNQLwQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoLOnAdDwo49oDYbS1+t5ukVG1d9uFbRIxpBN+H
 Tz8Z0JgZ+iJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaCzpwAAKCRCLPIo+Aiko
 1XhcCACv+if9OWNeFEos1mVk7rlmiEnK1NhPAIrFf8t3Q2zI+I/VveqtxklSEp1Q8Iq0ggj3NFw
 junUhBnk6cLbZa06b6uxSaIwKd9GbYwSX1ysiZjwHunNJy3T3mW4YXRPF1HLVYirwIgJNGhumoN
 Gm1pWzwUWCVhYUEGkxtbJMQeQERwFdmvMBSa1gfgqNjWrVNHGio+VS7egsjwgC3QJiyqZkTA9tU
 yVA3DWtsoEhmOuU4AiBK295kU1jCA47DWuKhSwU3EO612CPAsAhtM6C3qT1xK59vNtPrbYoxN8X
 ZTEF4T5Y3rAJ4VY90TbNdqxK2m1mY59Ar+P5ymM2uzFl7+wu
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: iwzaT5-O9ERl33a1ZwiMSde3F-2mEgTv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDE2OCBTYWx0ZWRfX4V1zPLUUFX+b
 hsASGx21AZDtZvpD/tI89lgdyHIDQob0wRvaiwtwDdnn+OP4LAXkrrZJkwJKy32ckIcfKVcvdAS
 HurQc8FH4wIQEnV2N1yflXYVQT6Tk6szAniRHyoKCNAMaZFf66MF3smBrQk262PPE3ReryB0XhJ
 YZj91ewD0E3tJhj1LRrYsV1IHTCVcaaj1E9MNNWjQr5JIE7G8jtyPUAGLa/jV30lxFAOK7FJ/m7
 vJahUhQdOGn2X5zsoQSuXPvXBpVOGhBCaIpmugfJBSFTEcAuUuJ+xp8qNEuRP2mJuTcPBG6vDGy
 6w9nUGAl2wfLvA8Lt5h2zYnxHc9gpFixvSrikkjzTa8sIt01JgW85aiwuZRb6YVFgGQsFRbYLkw
 ctOYw8OPPlkQjQZJd9pQxoW/PD+A18fbCoXJmKwURqNw5fPABpXMompXhSV0BtX4ZPiOLgYK
X-Proofpoint-GUID: iwzaT5-O9ERl33a1ZwiMSde3F-2mEgTv
X-Authority-Analysis: v=2.4 cv=a9kw9VSF c=1 sm=1 tr=0 ts=682ce9c9 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=O3Nj34nO-tYaQW5E_hgA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_09,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 phishscore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=849 bulkscore=0 spamscore=0 adultscore=0
 malwarescore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505200168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_134458_123187_3FD2C1C3 
X-CRM114-Status: GOOD (  13.49  )
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
MSM8974/APQ8084 HDMI, MSM8916 DSI, MSM8974/APQ8084 DSI.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 23 +-------------------
 drivers/phy/qualcomm/phy-qcom-uniphy.h       | 32 ++++++++++++++++++++++++++++
 2 files changed, 33 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
index cae290a6e19fcb7fd68fe6cd0229b9b00d47131c..dd9929429f9a0e2f265180e8d3f390451d91adde 100644
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
index 0000000000000000000000000000000000000000..e5b79a4dc270f25d8979f51bf4acd6c76998032e
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
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
