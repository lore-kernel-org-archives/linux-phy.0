Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F1E4CD6E60
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 01:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pXNGUGCZFfx3a7Nqk95oKmq19CYV5LQAfZq22VFn/E=; b=skBUn09u6NiTpK
	C9aP6UhYPGNi8xOtXppeKmkHAEqjXwv9Q5vyrCAxE0+5ULrTB5921xuVltjlG+F6Aahw4DJ4Gwv7x
	pTiOU0p/djXDU9j83ne4m4jFUd1BM1dYpOFtuSwqRqp3j+gjWfTrZ5FJtluFQ+rp2Av/DW69pxH33
	6KOEQmHPft+hNqxBhX1y2hdNN1gZzyrCS1zglTbLmHfxx7OGp2Y7da0Q5ozP8w/3CzfDmg9mSKnha
	ve8wnx/TLGmfaSc8pQcfzbQil91AHh3yF1iORL6DtAvj4Uym1NjKVzv/U6a4ZnrQx8bFkuE+kn82i
	+XmipObrrYZyHP1PHTkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxl-0000000G080-3veq;
	Thu, 04 Jun 2026 01:33:37 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxi-0000000G054-2n9G
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 01:33:35 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653I6rU51994316
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 01:33:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HbuSh7qg+z5cv7EQdenG/3gCq/0U8ci8jC/n3KJ+wyA=; b=AzkVtazNqpn4P5j+
	Rdw4fuFNHeszyEjiMCntXGVTDYVCe4uvtS6UoxaUBCsYQfEWNGjXcBVWKn2CcG2V
	3WiFJxeBHool05XoDIadGE9RcEiIzaeOEoVeud78SkEHQKI5j7v4jSosUc20Wbq6
	7mxGOh6KZ9dHpa40fmR9QajAZrH+c/PcIbTInr4mx3iJABZpmPstGVqNPKIzzvim
	uV/iCpfvWMMOF8t4GzohbdOM12V6FHjIhkhzimfAZpIF8OPp/SIqHh5/n+Vmv8qI
	ME5RQi/npWnxnB1P2b3QOxv354rjA0uv5gmyA1L3BTV8dOuoe6M8Q1yoLRgXfWS+
	1bY+Qg==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejs8psdph-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 01:33:33 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-137d003cf09so631733c88.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 18:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780536813; x=1781141613; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HbuSh7qg+z5cv7EQdenG/3gCq/0U8ci8jC/n3KJ+wyA=;
        b=LxTa8o4s1XovY8xMoD8h/GoHRStlHFCqtqT9OkwjVi6R4eFaDJr25OIJ6B9ja+0Isz
         YFf4pzqyabuEMUN8UFjGACDEisYc8l2//oDeZMJf8lbaIsi4CcCStUp0Fopr5yBFrhN6
         RPdH6i00L0wwWjzY7I7+3kDw5zCqICowsRsB96pDc8009UkugdmvL1TwCJ0ihU4Xviaj
         b+NSyC3yDbrl/7+TjqTYRKXn1IX4CbdCpSV4PgQgAl5wVc3aRbjSQK2/VKbUSn7clQY4
         cQi2scZmPxnMg+ORQVrfKoXaCMb7XGIF3Cy4P6CMYiF69vMXwuK6k/wh3R7X50lgwCR3
         +fSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780536813; x=1781141613;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HbuSh7qg+z5cv7EQdenG/3gCq/0U8ci8jC/n3KJ+wyA=;
        b=Yn9zYibNDv+KtTx0sHxSZ7srtN0Z7jAPLY4M6N0abESmjVY8KyqLajo/Nov16UUvmd
         S5Fli3FhQ2z57RkP6G1nGG/3OBGHe0XWhbvquo3enQkr0152RyzVTZC9GoM7pN7q2DP1
         ol0E/97Uy/Up+LpcvolQw83cm7wcwMIeY2n0Ke4STPD946OUZT2owAzjZKRANkwqCT8l
         rQ92h/CGOc1SXFCuRtN6vQVp5Ii0HeLeRGLlsBSOhhIYoJQ4EfYGPOWnWbpxGdYKY1iN
         LQr0DC4y22sQC9NIFs6x3/IwDQwaBQwh+AqlQye3KtX66MqP8qb1a9378HEVKZqRtpGn
         SUNA==
X-Forwarded-Encrypted: i=1; AFNElJ/MIrgfK6nS23DKOcFT/x+Q2pKrv6czG1Npued1NCUedSnd9HbbUHum1W/4jo7mTf/GWCyxPKfHmgo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzn08kUeUwUoc5ZfpB9fOLxTa/j0KlymTOmAsPOGM4z0tI60tnj
	uEuksUBdzcWPid+W58F6WHGN5t3vhvRUOViYuRVt7lKJhsgcRLiJOuyN2xV3m+CixRP9EhmgocJ
	w0vrHvA8tJu7PL5kTya8r6sVtNQZ/DZw9NggBOS7DDTLsABqfrXfgp+gRte5BViWTXAuSFnjkPQ
	gt
X-Gm-Gg: Acq92OEYGkoa06j5R3TlD2J7sEt08eFRiXKGpdfTpxSYw8Droco3ymAUkuJF7HqNB+n
	sTjOx/AhBzKoTK0FIGvLCRuJqoa2Oc/6y7N/tmCWnfE9utCWxgXkgn7VntxWJTja9p//9B/C/Pm
	lx945XuaDmLthMgCjM64Q1VKXKfJD1rtmnhvy+WFGHu9ntdMeYBkIKdTpEK4Y3OLIBQF8swc0qM
	d130fONT25/YgeAJQLmhTQrTMlY+SDGD+KMgZppFCzxLp00TCgSI1x5rmkXWy49US6Q4ywX46rp
	5V7EqyApF6n+Qw8WAycBNVbntQ4/geErWmwShyG53W7P5Pk6CR9pkEZGUOjoL9ie2aFA1CVJlB4
	zPM6a+VQY1IF6rWrCB0/kSR3qK3SotGNOVVt9oZqWUuCbvVGbwy9jNhAtTxbFM+fW7e4wBA==
X-Received: by 2002:a05:7022:3d03:b0:137:fccb:8105 with SMTP id a92af1059eb24-137fccb874bmr1240773c88.4.1780536812747;
        Wed, 03 Jun 2026 18:33:32 -0700 (PDT)
X-Received: by 2002:a05:7022:3d03:b0:137:fccb:8105 with SMTP id a92af1059eb24-137fccb874bmr1240753c88.4.1780536812222;
        Wed, 03 Jun 2026 18:33:32 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f553ab33sm2870659c88.10.2026.06.03.18.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 18:33:31 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Thu, 04 Jun 2026 01:33:00 +0000
Subject: [PATCH v2 06/10] phy: qcom-qmp: qserdes-com: Add v10.60 register
 offsets
MIME-Version: 1.0
Message-Id: <20260604-hawi-phy-pcie-v2-6-be908d3560db@oss.qualcomm.com>
References: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
In-Reply-To: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780536795; l=3662;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=l+CJCriIHCqSTKfqB3yNlnKfu4zi16GuU5MaRzEG1I0=;
 b=MZm+aCncu38l+zWUIRpDRU+AV8Fc8rZFnCkg0kLRYsteagLM9JX74qo6PlV7Ncy//w34KX7c7
 vs3Cw7kKTEuAlX7R+I2mFDrbUPDE0mkZQGyKLsEJ6xdTvZ1JDwNBEQQ
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-ORIG-GUID: 46fl0ej4BOO27X7oyu9NpiVBq422oD7I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDAxMiBTYWx0ZWRfXxJPJc2+yDdos
 aD2QWF3QEg40M+5BOmHqWh5lJ6BuXUvJQv6bi6UTovywjIkGhSKhmbFEhvqLbQaoX9UJYX0huVs
 2QYGV9cfaME6dufZWwb1ibdUOUxx4xfYMDbpeb+pw1sFJPJrJ1TTC3HlI8kSTbJlg7c+j34Cqi8
 e1oYqUc4wR/Z4kOy8r+lgvKe5DKWRdwpc4nAuSq9XaYtzTC7RFvzq3CmqlIRZEs0gKE7dE0uifp
 WQVtrTIvlOpYdV+kN+g1jfcNhe8c1QIdBkQQPIJScpSixTVrfOASqlWkv63Eoz2idE1f5477elL
 9nZBqAzwGlZkqY0c3V2wv+h1C77w7PjlhCAMj2ldaEKy0qx6D1G/6QnjSGeEGg3+70ZaITLVCTy
 a8zfdilmMYtqIVrl4ih/dMjteKNswgJStZE/qQLpkoCRWemAAV3nzZgkxWWxKqvflwHy3epjh+k
 vnY8hfbiqAiWmhMxGXw==
X-Authority-Analysis: v=2.4 cv=E779Y6dl c=1 sm=1 tr=0 ts=6a20d5ed cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=MN0C-abDVP1yrleAEAUA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-GUID: 46fl0ej4BOO27X7oyu9NpiVBq422oD7I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 impostorscore=0 malwarescore=0
 spamscore=0 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_183334_826898_025C3744 
X-CRM114-Status: GOOD (  14.21  )
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

Hawi SoC uses v10.60 register definitions for PCIe Gen4 x1. Add the new
QSERDES-COM offsets in a dedicated header file.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h | 55 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 +
 2 files changed, 57 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h
new file mode 100644
index 000000000000..39351bef8b63
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h
@@ -0,0 +1,55 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_COM_V10_60_H_
+#define QCOM_PHY_QMP_QSERDES_COM_V10_60_H_
+
+/* Only for QMP V10_60 PHY - QSERDES COM registers */
+#define QSERDES_V10_60_COM_SSC_STEP_SIZE1_MODE1		0x00
+#define QSERDES_V10_60_COM_SSC_STEP_SIZE2_MODE1		0x04
+#define QSERDES_V10_60_COM_CP_CTRL_MODE1		0x10
+#define QSERDES_V10_60_COM_PLL_RCTRL_MODE1		0x14
+#define QSERDES_V10_60_COM_PLL_CCTRL_MODE1		0x18
+#define QSERDES_V10_60_COM_CORECLK_DIV_MODE1		0x1c
+#define QSERDES_V10_60_COM_LOCK_CMP1_MODE1		0x20
+#define QSERDES_V10_60_COM_LOCK_CMP2_MODE1		0x24
+#define QSERDES_V10_60_COM_DEC_START_MODE1		0x28
+#define QSERDES_V10_60_COM_DIV_FRAC_START1_MODE1	0x30
+#define QSERDES_V10_60_COM_DIV_FRAC_START2_MODE1	0x34
+#define QSERDES_V10_60_COM_DIV_FRAC_START3_MODE1	0x38
+#define QSERDES_V10_60_COM_HSCLK_SEL_1			0x3c
+#define QSERDES_V10_60_COM_SSC_STEP_SIZE1_MODE0		0x60
+#define QSERDES_V10_60_COM_SSC_STEP_SIZE2_MODE0		0x64
+#define QSERDES_V10_60_COM_CP_CTRL_MODE0		0x70
+#define QSERDES_V10_60_COM_PLL_RCTRL_MODE0		0x74
+#define QSERDES_V10_60_COM_PLL_CCTRL_MODE0		0x78
+#define QSERDES_V10_60_COM_CORECLK_DIV_MODE0		0x7c
+#define QSERDES_V10_60_COM_LOCK_CMP1_MODE0		0x80
+#define QSERDES_V10_60_COM_LOCK_CMP2_MODE0		0x84
+#define QSERDES_V10_60_COM_DEC_START_MODE0		0x88
+#define QSERDES_V10_60_COM_DIV_FRAC_START1_MODE0	0x90
+#define QSERDES_V10_60_COM_DIV_FRAC_START2_MODE0	0x94
+#define QSERDES_V10_60_COM_DIV_FRAC_START3_MODE0	0x98
+#define QSERDES_V10_60_COM_HSCLK_HS_SWITCH_SEL_1	0x9c
+#define QSERDES_V10_60_COM_BG_TIMER			0xbc
+#define QSERDES_V10_60_COM_SSC_PER1			0xcc
+#define QSERDES_V10_60_COM_SSC_PER2			0xd0
+#define QSERDES_V10_60_COM_BIAS_EN_CLKBUFLR_EN		0xdc
+#define QSERDES_V10_60_COM_CLK_ENABLE1			0xe0
+#define QSERDES_V10_60_COM_SYS_CLK_CTRL			0xe4
+#define QSERDES_V10_60_COM_PLL_IVCO			0xf4
+#define QSERDES_V10_60_COM_SYSCLK_EN_SEL		0x110
+#define QSERDES_V10_60_COM_LOCK_CMP_EN			0x120
+#define QSERDES_V10_60_COM_LOCK_CMP_CFG			0x124
+#define QSERDES_V10_60_COM_VCO_TUNE_MAP			0x140
+#define QSERDES_V10_60_COM_CLK_SELECT			0x164
+#define QSERDES_V10_60_COM_CORE_CLK_EN			0x170
+#define QSERDES_V10_60_COM_CMN_CONFIG_1			0x174
+#define QSERDES_V10_60_COM_CMN_MISC1			0x184
+#define QSERDES_V10_60_COM_CMN_MODE			0x188
+#define QSERDES_V10_60_COM_VCO_DC_LEVEL_CTRL		0x198
+#define QSERDES_V10_60_COM_PLL_SPARE_FOR_ECO		0x2b4
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 7af77572970e..85da2581ef90 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -42,6 +42,8 @@
 #include "phy-qcom-qmp-qserdes-com-v10.h"
 #include "phy-qcom-qmp-qserdes-txrx-v10.h"
 
+#include "phy-qcom-qmp-qserdes-com-v10_60.h"
+
 #include "phy-qcom-qmp-qserdes-pll.h"
 
 #include "phy-qcom-qmp-pcs-v2.h"

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
