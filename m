Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD4E8D58CBF
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 22:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tHPOJtpRmZ949WH5c6xJP1/SM8ksbyA3UezSBWXwnv8=; b=iraysAvUSs1f6V
	dTOQ97umT7vyXx+hDaIE9iau80WNPwNThTRjeE9hhcIGjZaYHasP5k/1yxyxH4juiPJEESdqpvQ4W
	e4lWd0r2rOF+x/wcXwawvKYsQeVmO3ePwPCt79CxRlLr4KkYlt96hXbuw1HIb0aAQ3sje4qNvP2iv
	CSqXyUIhUeeTKosoYf2LWfp9hNS3/ARMElFw6hT8Zag8VpTXL+tR/wxmBv3w4fvUG7IMKuMB6p+3H
	fety0BhF1h1UtbXDFiSCAIVhFO7s7MZmtMV6F4YPYq+llMTLwSfM41JQ5Fi4nFUVdUbAib/vcFHaC
	4o0b1cZlaWE3MJCvx0aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4oCd-000000006mK-1nai;
	Mon, 23 Mar 2026 22:56:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4oCa-000000006lJ-0FEp
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 22:56:53 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62NHqcVA3817779
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 22:56:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	omnRmyUQg5dIWgAiljjvcZxQHMNx7Y0vRQtYTvOpk/4=; b=TvEsgamHgDw38zJB
	hrRkgc6tquHZaQWijZjf3jQiRxOtZ9RO28qBGDQ3ZjNtgDXLz+cGbe2sfdarjJ2y
	E2pI7O5vT9m4XAZB7xu0ToQ+BaBVg047SK4bDGKi4yL+5+skDP6dEkPxPqmq103o
	Q49U7AiGKHft6rr5L2ltwrvhnf0BE1Rri4Okgt5w7UM59UamHRFIvhmcXWFRO/G2
	sat+Jq+cRUwokanmNkguXL1Z9dqcBwmBWOCTwHv4VrtE5FXPpWntjUpUgjDeprwg
	zth/NW/0THE1qFjBK2YzEOuXEpgtocpvKlDFPHqjri1+4RFCakWsXHgZy8fy5pny
	Vxun5w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d355w24nk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 22:56:50 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5094ba09affso39767711cf.2
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 15:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774306610; x=1774911410; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=omnRmyUQg5dIWgAiljjvcZxQHMNx7Y0vRQtYTvOpk/4=;
        b=ixUjHxl7Od4Mw5nVv8aCiuNnWHPmKK+lH2iSlFLfH/skuj/f3MtjPcV6SrmnJGbIiN
         RwUXTdNhpaxDaeu5U4QfJunwhhpJHo0yXu0dbUQvIgc4l6sZO/zDwy0d9WwiXWfLwPG0
         2gSPcaerTUb0j2EwMv8TTejLYpU6oDnjEEKqCSiyQeLO76yVADS90C2Jklk9+klWrbVs
         zOg6JSyXTlhxFei6BLWW4S65IXmS8goB8Cq79zwiaUU+D0U93cznN6W+a+JqvLg37D5K
         dQqomnOkKchiUEhJsjsUemQ3tyCnLSs4tFh9Rn+1Opf0Q6YXblFCtEu1iMI7te7BzoKf
         qbyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774306610; x=1774911410;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=omnRmyUQg5dIWgAiljjvcZxQHMNx7Y0vRQtYTvOpk/4=;
        b=akhCD3wq/PwqmbK+0YqCPOWhR//JYN+D6gGRmBhqba+AfyuW5yKYKJ/6z6DPETeAnD
         FARQqnZxERiakKBQlraIrTvc3AWbwmD/dwr84bX/+7l4c5wG5dLBD40mBV5DY9J/Hl3T
         6w/F9+Z+pcXOxpqg2EXxWj76RIX7P1s15KGUMRDCbULEX0WpoBeOhJOmj4l/KFEzlgaK
         BqOsD6AMGl4spyGcbvGcFw2MQp3TxY/6RebIxqthVeDwffnA0rXp4Sa9ZTJXnoDIe2X6
         ooiJAxBc7EDp05M8xFH/VkVPx0uZjgvZvUI4M4X6D6j/0hk+5gJJN1kOPMoUEUea9QAK
         QYig==
X-Forwarded-Encrypted: i=1; AJvYcCXFmEgpiu8AptY9mGnMQrrSA+oBMJfrKUAXpVExzOVXkVR6ZbaK337X3RU/WNt1nhbolauqKCz0zmQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxs+x1od+FcZyft8zpps1FvX9bziFnj+xGjiU7qvd0Qh74jbQfU
	lo/2ObyQ/wPVTTgysnebxvfRL3E0wYd+6GtIwWjSY0rASQPEsCYTBKmT1LgjeycACTvKws3uCpv
	Dir1FxBYFpOSLqL8uXDgJYZUqSnwUP6qYEJigv4QlSZdcfRnCn+enyGPSCA6k6jg1ZvDt
X-Gm-Gg: ATEYQzww6rh8+cQNV1pB8KupJCA7bJ1XoHXFVIF09jvz/T9p5LaXc/r+toURirXRXk/
	K2R3PdG8wSg85oSFpwvEQD7/TiNSQVKQHoOeAub1KAqPfP6A7NoMo/2x6c0ELLYcBz6eydPU5bz
	W3nLGslT5pSuKpQ2SRIEmnAy+Wff1FDR10CMaPmAxNFcbTzaIZPRTAkgsK4vfiCEmLv0QCvPFjw
	pIMJ313gtdxSVtznLdlbqhIqdst0DEgxwHZzq6Ga7tgDZRrvTXd5VZwCd3ROChBLGeGx78xMMru
	THGmf3urpWG7DM2CUZ92C755U+RyylkaQYHh86d7IVdnP3wU4znb5uil+Wnx475uiyJ0zRHjUfJ
	PN3cP799uePmC7uxuf0KoQOuX8Uu/xZjAC/OfLMjGutbkaJ7CfgdtFsKCy8bo6SviIWiaWyvVPg
	Pmvi1A0Q3DbR7H0E0nc/M8Sqz77B2fAPcFI2I=
X-Received: by 2002:a05:622a:480f:b0:50b:3d9f:384e with SMTP id d75a77b69052e-50b3d9f3a40mr216687911cf.44.1774306610109;
        Mon, 23 Mar 2026 15:56:50 -0700 (PDT)
X-Received: by 2002:a05:622a:480f:b0:50b:3d9f:384e with SMTP id d75a77b69052e-50b3d9f3a40mr216687601cf.44.1774306609661;
        Mon, 23 Mar 2026 15:56:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2963fa304sm156489e87.27.2026.03.23.15.56.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 15:56:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 24 Mar 2026 00:56:35 +0200
Subject: [PATCH v7 2/4] phy: qcom: apq8064-sata: extract UNI PLL register
 defines
MIME-Version: 1.0
Message-Id: <20260324-fd-hdmi-phy-v7-2-b41dde8d83b8@oss.qualcomm.com>
References: <20260324-fd-hdmi-phy-v7-0-b41dde8d83b8@oss.qualcomm.com>
In-Reply-To: <20260324-fd-hdmi-phy-v7-0-b41dde8d83b8@oss.qualcomm.com>
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
X-Mailer: b4 0.15.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3165;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ouscQfS7cqU8c/8/Fh7An6AeO5MKx3nAag0yIE0xM6c=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+bBo2pJwa6LfvUzxd9IeFTd6NSv7/Nu2v0F0939LSztZ
 b+Xu//pZDRmYWDkYpAVU2TxKWiZGrMpOezDjqn1MINYmUCmMHBxCsBEFF9wMEw5syHQdV2j8wzx
 VnnJ/3f8FnnmJAYITdkl9/HRD9GIN0+C2pvkFH5W3u66XluleTRV3/+RQF2WSIlniPux4BusjwQ
 DmvbcDv6YeNzq2JNzqz/JfjJ3/3tNbnNMb3SU3oLzquf0hcq1TxgXf76+ZVuHfsk1Rkdn04qgzU
 l5h/Rb/X5+51Sa5sSRrhk/S8Dp793Zq7USIzc8V1h7pIxPfesPH0U5zSfeElGnot8+lRO/93Fdz
 1T7bVLiQmvY81RZu5jbjt6bE1Nu92br9Gqnud8M6/8X7PVk2aw89Xkj8+93Fnneuu//ZtRet8p/
 286VEco2qXdHd3bvf9NfDRza5i0b1x98NYnpsuwyg+AoAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=fq7RpV4f c=1 sm=1 tr=0 ts=69c1c532 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=_xNQ4P_HJxdd5osA_owA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: jBqIcrQF2teBqWAHX44kqOtwY8qLKid1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDE2OSBTYWx0ZWRfX9/nMNw2hnl1h
 fjjb0VFeH8Wx2gtxDs52nWESibcUQ0EqB5H1Lqh97zLSCd6vW8Cm342LrvMBGB8Db+oR9WE+v8y
 gDEaPo+kypXC49mywVNkvje6fGVZC6ktjD3CaqBCGGSv4KYzpOCfelImbZHWzWdrhp8/mXdQjWe
 v0HyFliXU0ZWRSXgfm4YFNa3TKBWcpX5lGw2Xc1FX3prFDriZnj8GrQwL5RtOKhFnGbU4g42uhR
 qxKv6Yz68u7AH+S2WqUPCWIXkaO/88yT2rQQWg9kfRAqv8I+FuCPGVoYbouSzwhx26cmn76nyID
 zKPRul/20t8egh81Fp2GRVyDofUdfVWNRcFecKGUYdZbVR2bMVzs+/vTV+ABn7069QnyeDLcWyB
 DibfzTtk4azK9lOE3M3NEdOwuteJf3Shz9TLWdlFtBS1INupesXKjKLE8OkjOiLBwHwaMIJVey0
 E5AFgmHVeTIx2HA0JwQ==
X-Proofpoint-GUID: jBqIcrQF2teBqWAHX44kqOtwY8qLKid1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_06,2026-03-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 adultscore=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_155652_220760_E1FCF35E 
X-CRM114-Status: GOOD (  13.95  )
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
