Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 851AE107BCF7
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 05:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OoKLVxp7JUsiFgVlNyXhA18SFGuXCzpBC8DlaRRaFo=; b=yUxxiGS1bsWpoD
	PummrLaJxlvESQudrkuu45XKe3B/stLw4zq2TQhqP0cUqJNTcAA3QAwT5NsDRXajXIWqF65AhUoSU
	4pHWnaYfzhP5sNBWsrAb2KbWJ/M5PE7rrVwH7IJIaFs2Z5J5Jnc1oSoimg2R3EbWRsgyKhq0AmpK2
	rNHlckxnd2eVxYxM5Iw/i45+IPqQVosfY4Ab4GlV87hbq2LJgoulJ1kNyMOy/IDZu5pRTbhqalnVP
	8J0YLKYJKgPLYub/o6aSdeb8f0mhkQgxpQoiSWyltfLvx2q181O8lmyfqNfayKRfz+jvFXIKpwXWD
	xD/YEBPs6pNVOiQ3qvMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HD4-00000001VDS-43e7;
	Sat, 14 Mar 2026 05:06:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HD0-00000001VBc-0MTN
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 05:06:45 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E3npR52907825
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:06:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8AwSPheloTpUNoYn+5istaBSV5cxl2twt/OKxdGnStw=; b=lQZjx5vxbYVo39sE
	onPIbuvqFzbOqPXIoeXfPDeYECu9wpVTh4xxCTsf8qWcfX4Whyo+xnkiW1w0LGwk
	wASaA+DtyVWs5P1wG1/7O3Fq+1F3bXVgu80r9X6ael1P/CFLjbYZ+FZig8thtMUF
	iW4DhUbw+XYoZda0cZMkFlujPNWnuCO95+A/oCEyisTFdqy5tPt0MWdmCwg9WpLE
	M9XryWuabgUlANBQXWJzYZyjRK6Nj128lzcAyLugC0hX2c0VW/dRU7Wo+sPa4dCG
	z7VW7d/9/xMjq7COZ8lcLEMnTDsjNA0gELleRbhzv+wLfivdANSo62uG9eeUaTrr
	m958pQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw043g3s3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:06:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7fc27cf7so1541105585a.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Mar 2026 22:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773464800; x=1774069600; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8AwSPheloTpUNoYn+5istaBSV5cxl2twt/OKxdGnStw=;
        b=Ze7Qk+BeFz9vcI8t6c0WQeuyo0V41Bc5YgnpQN1RfQxar7wzW67aKZKB53XSiyqPZg
         N6KTuySZCMs71xckdjD2LhaulKQIe7q4ZZVu4MA88ySKyPiYpoQBp2aJcwm+5BlINICM
         Yu/ukec04nyiwSSBTfc3wstAVu2vexVuKVBq29kBAYNz0Br2a2150E3zEKBxSQmt04I9
         vzm/wJHN/6XTuctHxF4jpdYtvEcO24i7h3rO46FfE6Nu8FTNlix/SmiNasgdQAzYqrmj
         Mpr28cOPhBxsX1hUHsNWHXjn600K14SZKzeG5dX4Hzwq9tTFFeUheA31t+11KKab03yo
         xGJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773464800; x=1774069600;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8AwSPheloTpUNoYn+5istaBSV5cxl2twt/OKxdGnStw=;
        b=JQMew3c190xvU/3k0ZOXI2VmoyN/1kOSeJj2lUz3bcKJqxG3J40D7rYnLTh7R8zlTf
         /izeiEavidZ58NsKpHPnDBKryWhGjdUYY6iz/Wdt+ttio7SgNYoDTHMkseidj6HadF2i
         fklV9f/9vYkgktxcIWlgJ/uqF9Ec6aYWNeT/yciu3/F9Y7nhaibEmBFLFhAVK2fLKEtW
         5yJeHRGEmel5f9GdNGQLA/iSQI3QOrws9tKPik8AB+o0DHoG2rwHPtz3dl4u1GLRxKk0
         76vH/2/lua3yEz3aoelbIdRGzxXY2fyo6sP2cDWm/aP3k0IxMKQ7oTidikMzcF/uasXf
         X8dw==
X-Forwarded-Encrypted: i=1; AJvYcCXURg4Esjb+e862fXT+n7ufn13oTAqFpsQJj2Eq9syGTgQzDMd2H33AotrF27Y7OEm/pYdV9l+nTFQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxtfKWX/3LB3JYPlryXmQ/UTT3XupnvipUkS4zuQKZTly8K6tPA
	Jkz2Sa/ZLqSEnAiwKSyqaASsbHi1gROb60p55lKHecSi2/7IXRC4KTYxDl8lWbU29JdT8uxdrNF
	XXq+makLxF6SVAu0H49R04MM1Cm+ERD048zljfovUqYMWkqBSZ0+G2kuNsW+oghuNGgAvAhFKnk
	ig
X-Gm-Gg: ATEYQzwzvne5CeEhi4m260npWOoAoi8RIkhU/8Y+3+hQuBgqgtZdJkQywKw+M3PTOmZ
	f8jAbpVge3SEx207uG1DEHuEUI5Zy/QORthzKPSQZsHwKjdpd9DDOksA9viXOvNIe7fh1J1tV3e
	0bmh0Xxe9DWxCjIy8hHecpjlS1LYC0eG8T+ll4VCevgzc4xLoa1jc0l5osd9hG4BHzEO6OdolYG
	CzPqF4tdNytxS9LeC5nRYSCLaFqJvGCpfez3WHEnY5EvQOrYCNcatpQKju5z6asO+rDET+iLwht
	q3pVFcILyBD1YfjeUtrq4MwU71SbcxHaqTG2GE5QzKfiKVp37DePIj732rL14Im+9Aj82po05nK
	+j3RiYSNhMeauIOixOs6zkFtbdEXnbXnJ/j1NlFkiAIaX6r6uQVfWu4eYJmJP+bf+xKqXGncJgv
	DGgI+kzrpcLNHzeDAouoXCkcFFasKv5YtIy18=
X-Received: by 2002:a05:620a:28c7:b0:8cb:3e86:d98b with SMTP id af79cd13be357-8cdb5b7cfe1mr760119585a.70.1773464800195;
        Fri, 13 Mar 2026 22:06:40 -0700 (PDT)
X-Received: by 2002:a05:620a:28c7:b0:8cb:3e86:d98b with SMTP id af79cd13be357-8cdb5b7cfe1mr760117985a.70.1773464799747;
        Fri, 13 Mar 2026 22:06:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15636206bsm1982771e87.67.2026.03.13.22.06.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 22:06:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 14 Mar 2026 07:06:20 +0200
Subject: [PATCH v5 2/4] phy: qcom: apq8064-sata: extract UNI PLL register
 defines
MIME-Version: 1.0
Message-Id: <20260314-fd-hdmi-phy-v5-2-58122ae96d3b@oss.qualcomm.com>
References: <20260314-fd-hdmi-phy-v5-0-58122ae96d3b@oss.qualcomm.com>
In-Reply-To: <20260314-fd-hdmi-phy-v5-0-58122ae96d3b@oss.qualcomm.com>
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
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3033;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=/2opfqPS0Z1wOkjLcsVaxdSxpYtXDoOpRdO9yoyCyhk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBptOzV9dQ3IRR3dl2CePfQ3h2lOGFzcWFc5DwB/
 QC8aeToTeeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabTs1QAKCRCLPIo+Aiko
 1Rf2B/9IsNKOTt8CRhTBF2S1R2VxM1pu6ZXCj0A+LmADjJAZE8h8Ojxm566dhtlDA5iZ1tOyqD7
 S12ow6wqPrWtMM1Tc0/3t/YLscu3+YDuH5WvSPBfasreNVQjR2JYnREgN4YPioqAiZrWilkb2Yj
 oQYCDofTswSf0a+FHmRqKJg+AxJXpOcCyWJ9UTYJs6T6mhySlmBI0t5WcYyWBRu/mPxEB0py4jK
 9SpgR0GbWShMKaNfZ/FLcWfmmzRjeOO414ZnaDzODPK88kWOid6acA1TrdCJ6bLvsd/n8Y9WNgh
 qoiXAzxiNIuWKxUPu+do1DXWuIp1057kJvHKL2UaJf660A5V
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAzNyBTYWx0ZWRfX5U4MdFsr3lU7
 b1efJ8iNBiknMmAZRXDjS+/qAUHIFjhP+Kft3AhqRl/gFg0BpyGt4HE6L6ScS74ovF2gOxvhoEQ
 Q4pITibfQqElLddcRVI5kLAMwS9nz8bqPdvUncCzeKgnVEdKekJmQkOjr8H54G+jgSqlsJyjKNo
 ztyJ1bMmuHMHVdP9vr/FILqaYEZcJASEZ2My1xRwgVBmFpntUf6Mph8s/Le+CybFbKyElTMKFdH
 cOovy60VpZVFwAj/9NN2jPP8jxOLOg1yPDka8oj+vwizzUrolFzG1L0xaQ+1pcuzZysBXcPosMe
 Nv0ibnNj5YkJne2J6kdhxUYZGGflowLWnTyWjhN/qmB3QXsqX09r7zsIsuNdcRnZHHFzry/IMI2
 8uAERAyP7lxVxv8mCMrZX0xCgRkRCKfBITZMSXzq1PRk+WIBAvuW0Qjsy1vKNSgslt8o4yImKm7
 qjf1Mm4aisMQHl4ARUQ==
X-Proofpoint-GUID: -rJ0YH4AeI0YkCVSrYVLhlcS3tj9iFfl
X-Authority-Analysis: v=2.4 cv=fLs0HJae c=1 sm=1 tr=0 ts=69b4ece1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=_xNQ4P_HJxdd5osA_owA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: -rJ0YH4AeI0YkCVSrYVLhlcS3tj9iFfl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603140037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_220643_840089_3506CBEF 
X-CRM114-Status: GOOD (  12.11  )
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
