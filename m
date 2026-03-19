Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53B421088E70
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tHPOJtpRmZ949WH5c6xJP1/SM8ksbyA3UezSBWXwnv8=; b=cLMJ9X/LhdXMRl
	cdDmPhCcjr+d9U6kNcOx8QgpaJOujdVDjYCx2tAwLUswwVGY9d2Eb5TKnCkh8UN/rBIOdwiThIeEi
	hZWzy9fKy9qhmN/B8fNaR4pHwFEDMim/NjbbS6Bw2POr+9p0hJbh4F2I7NoHNCvYWFmBiyf88LFrb
	agzaebu7nkD2vav6JzA9msOeEhlBq4AlCL0TiWklWQOtE7n9n3Cz7RRPzdJe1mr87UElTVW8sPtRQ
	rQEafoiZGzbBH/jfkWJZVTdCYDk3z8jErotv/t7n6kx7o3EoVW+WEJqYE2nJaiCYLK4t4fL+3Dr/t
	0Dt7U4PnBGYwbnxGOX3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w34N7-00000009r1N-05qu;
	Thu, 19 Mar 2026 03:48:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w34N4-00000009r0v-1zh9
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 03:48:31 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J1gu6Q005327
	for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 03:48:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	omnRmyUQg5dIWgAiljjvcZxQHMNx7Y0vRQtYTvOpk/4=; b=BNmEnLY3GIBW4LUT
	qu7tTWdpaA1C/APSaGUKAz+99326cWQmMl63Nkjoupy9RRLWLLxnt0VvJKl+KtuB
	wSf+JYQbVGP/GX2KcVErAKZwIwHIz9EQe1dZZpOGu3dH/Gj3YYRtZJUgFIDaFaO2
	c3SbYGgVPRVUcYLR8+x2OgLp/9R29qLns1DDPtITSKshhDXY2fDHaHYPFAN4ym7v
	te3Ep1oUq2oI7R1g2pBKdtA2NJJXAYyY9BDmEU/bemWLsS9yQ24Vq5G/GFJ+hREe
	LF7ykL2InouxOGjum33qwzq2o+skhyJ+w6a/HdawNCqe8MA86abHBE3xC2YiCVzA
	4ZFXdQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyyhg9wvd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 03:48:29 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50937cf66b5so71729861cf.3
        for <linux-phy@lists.infradead.org>; Wed, 18 Mar 2026 20:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773892109; x=1774496909; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=omnRmyUQg5dIWgAiljjvcZxQHMNx7Y0vRQtYTvOpk/4=;
        b=CJ/dwyRf8kg9ACL8kNo0i8qXP1T1teKL12POp1XKzYFT4pkcGuKs9/O+IyazKgNkjz
         3qQs+oAAhu0pXK73Jw0iwXDaanY5I1qmHyjY62ff7swV3koVJeMsCNdfxNhpb28gp8NQ
         QAm6d5aJwxdFrQwDBNCuEeE33aEFllrBMhLhiDge0EPefZLraCP5xVm0oodSGNlifcqO
         RGaoILviObJy+4LzO1OSt5j3+OQlFw/+Dm5vwdU/7uLVW4MJttEkPFsMTEIZWFV1s4Ww
         qJtOtx6ulMQw86l8BsH2mbouH+Mp2NU5FU9+nAB7TVCVXdrc7dgyrE2nHFwtBE67qVN2
         bvwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773892109; x=1774496909;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=omnRmyUQg5dIWgAiljjvcZxQHMNx7Y0vRQtYTvOpk/4=;
        b=CJnjEljhoiCCccRw/Mz1c+JQ5tUaQX28yjeGaZCnKSr91dEjXY4kzS+28+Qc6iPwNh
         XlVxqHZ1i2OuZhkgp69Sz6j995Zcwt2VlRhcgjFfIz2RHtnOb4NMq7d45Pvfr3YNNj9Y
         a97Rryju60QJ99QF9oJW/RXg7vAKWT10muOUvn8fsuu0UgPo5KQS1mGi42n1IAfbhHhP
         XYzPoOj39oSg8e5PJkWQfpBThAmbRnWo5vBolMB43MGgQw4dt8uh3yQQvzG62AvqPTK9
         c2iYVI1VpGU6hOMJ6RRbcgXAChV5YXLLuKaGrxG8499bJc1Tl0h/G0i4EkipMxRgSFHq
         tz+A==
X-Forwarded-Encrypted: i=1; AJvYcCWepo6RD292+gGKMdenfGPm186uhnyjgWgMYBXDRzf5FgyUbIjZGVhekyTjYJ/iNLc1WHH+W7/5qpo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzTcOn9/wASmZYeWyBscY06zGALGDSo32Ctm8df2e5dguZimswi
	1VvLd1NGjoBo7zFvc/nfROWNo78ekj38CIyKP9hDRYjHuUDdxvsEQr21Kz/4DxHXxVntuULagtb
	0I996v5BqS8pLsTg1BQd0zS9AsMNRhRv1az3CGKc3ZLTF9jrgOwrZmi56Ywi2c5f4DbKy
X-Gm-Gg: ATEYQzysFrfbqyJPgJMUdmEXHoHTi+WFEn+8jNcILau4FvwLxcbwzo9QnkbWYJBdNSn
	2Y8x3JaJDH/zxmh9BA1ng3yulSKsoq7BhhR+5tTMABDJPMWY1M5+aVMjAoRFqUgXNhjgKiXxAGF
	+jNY0Zab/mnDV6hp9gM7cUq988wSN6EvBrrs1H0K45fVEhXI4zIANU+PU1WtFDxu6zRd4Wpiw0U
	5fBHoGx8GNpr//L+2obg3MWtKTt/yJRYOhiIwbB+wd+uUMMIaiL/H7qW/4kfk810c5+6cpwrojP
	LpciYXmt/2Sbv2Ky4bd5Yhp79PWAln+PAC9z1CNzLDiIOp95qT8QqjVLWl8Btd6kdKjgy5c6Kul
	sVLRIzlhB3GaSPthpq9xQiOUqgg6NCGyfWUE4e7iesZnKrudTMxgKWktK06SNvtaP2CWo8DUtta
	LQe0SCARHb53BSWuG8EZpIubFWDBn5OINNkuw=
X-Received: by 2002:a05:622a:191f:b0:509:211e:3624 with SMTP id d75a77b69052e-50b147459a3mr71590251cf.4.1773892108966;
        Wed, 18 Mar 2026 20:48:28 -0700 (PDT)
X-Received: by 2002:a05:622a:191f:b0:509:211e:3624 with SMTP id d75a77b69052e-50b147459a3mr71590081cf.4.1773892108505;
        Wed, 18 Mar 2026 20:48:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c79442sm907649e87.70.2026.03.18.20.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:48:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 05:48:19 +0200
Subject: [PATCH v6 2/4] phy: qcom: apq8064-sata: extract UNI PLL register
 defines
MIME-Version: 1.0
Message-Id: <20260319-fd-hdmi-phy-v6-2-cefc08a55470@oss.qualcomm.com>
References: <20260319-fd-hdmi-phy-v6-0-cefc08a55470@oss.qualcomm.com>
In-Reply-To: <20260319-fd-hdmi-phy-v6-0-cefc08a55470@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3165;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ouscQfS7cqU8c/8/Fh7An6AeO5MKx3nAag0yIE0xM6c=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpu3IDDi645peGptL7/F79A71XAhmb6MVeBqCUx
 Bssp3LIXqWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabtyAwAKCRCLPIo+Aiko
 1RkLB/95cspi3AcyS1PADLsVFrzCyg/JkttSiEFW1tZnkZVnuslG2tzA8avFg7mtLAnlq1Gd3UA
 3uIn997wVGIos/XKYO/rSnehYJNNfFg2G6lg6mYKN05p6icobqPm6Tmy7q5C2y2q58aLoKTPlEA
 F+IHvwRc+T7QIk7JIzWUpSDsmYU/7DLcRupggEGXbmAf8McKFBBMYl6JONqQCkbSuWksYMPrJeQ
 lT1I9j8lkxj3jB2oS9tJY3ZMXmyGLzMps4TzZlDVkqgepOQURu3SMnPXKgijYnJvVjlek3HaJMM
 TFABjZlk5a4QYpQLhHrUA/GjZG1gR7uSN8i675OyJ/xcY15S
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDAyNiBTYWx0ZWRfX1KZlNfFxSUm1
 RYbhVxhrceBSf0pWG8dh6X+6d4D5ESrjmrdgsBzpc2hrrSzBcUzyNAtCyFqMOM9h3yseMu7HrlM
 dGLOyfIEzkUkN5o1QumRIbpinn5s85QjICRrPCc8xfxmtGZ43NcnTxpzG0C7ykV4wOHOLPkdlF4
 ZYZW8AMoGLS+9dPN39zrYj6b2Jzv11jIaA0zd9emI9/ZnOXToA2FLrPencJzFDBEcdPWQotaX/n
 tH7ncCdziDuJxlH/YRU1VGK3DPk5+B7preqIpGRslYuwj1y7jWUmRC+zIN0+yjjMEE6iEVkmLph
 MmBTk3A/ub9LjsCTraIM1SZZUCgcuZyMi39g4tEmTsl6p+DicEh7BVu7xdnV22WF4Cd68Ioxwp4
 e7SIHolrhdG2Widj9w8h9rD9AuP8GFK/dDHjXokHamWZm91AjxQ9X7a/m22qexT7eDA/lUmZvL4
 bItxCDSil/n0c4ZtI7w==
X-Proofpoint-ORIG-GUID: xCl8MRHAv7ASNuVYTnbV9ShyWc4PN8HZ
X-Authority-Analysis: v=2.4 cv=IbSKmGqa c=1 sm=1 tr=0 ts=69bb720e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=_xNQ4P_HJxdd5osA_owA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: xCl8MRHAv7ASNuVYTnbV9ShyWc4PN8HZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_02,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_204830_528562_CF790C2F 
X-CRM114-Status: GOOD (  14.12  )
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
