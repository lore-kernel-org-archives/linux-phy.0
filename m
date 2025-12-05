Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8942FD2F7FD
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 14:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHxQFsfn/v7X/dQn4GN0fnwgRwE4fim3wCuxDxYJBso=; b=fyzEPlilRX4Pu9
	Svuv5bVQIGfreaHXQLMGIATOXn0IxiQ8jeBvUD80b2jQDkvB1bTbVxyPSedaAFj1P58sqHWWbuyl8
	ISxt6wT4ERkXnC8LIYUpxbCXl+LySD1qviK1+QDjYCJdGjC7bjmqgIsGQCFLksEXWBeHKFFMuRkOk
	KgPHtcjjKl4Yj7WaK7kAUsofHrJsGEXGngaWnxFFZqkSoDtYLqIrfo5OTSLx/PdV+Ow942WVsEeCf
	O+TWn9mKS48Qk+Qk8g/UJmqUwTwpsJMBo75N1midVbO3IY4BuRkOcJr6+yj4NUdXOX0PRuILDFAFA
	0WJUsZTjVL5+ITrmX7kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWis-00000009aBi-142j;
	Fri, 05 Dec 2025 14:23:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWio-00000009a8z-3Lsb
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 14:23:48 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B597EpR2896551
	for <linux-phy@lists.infradead.org>; Fri, 5 Dec 2025 14:23:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=; b=MJ7uSf33hL7nxZi7
	rliHoC5Uluhxr+cm+K4gF5NDCenWVdDjOMLWv9VJsfaagTjMwmok8hWQ/BYylSfM
	Q2YrAJtIHWz7BrN+2J3ADCDRWW+3R+JDhdBOUmV+SHLT3DdcQ15q0HEl9BapQ0um
	GfSl2khryUiY/pAE7FHrdq37dD+tK9Nft2EouQnsRKLuPhCEiXlbWLTuQod1v6UR
	04gewxmoNH5Lde1ydeGI54YInDl5ilQKRGBx4ryujYAPTJRqoYN6RCb3k0qak+3f
	YVm5bqslmTd1C5ojYxRkj0sjDgkU8gCiCMl+HZfOlntRJ0Rw6GapC8bx6ksswBcd
	5Pl9Ug==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aukmj283x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 14:23:45 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b225760181so271200885a.2
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 06:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764944625; x=1765549425; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=;
        b=kAlNE3BsBAjk5RiwEm9n6YixGYuEypbxgLuwc2HPP3U4sZusEqC/JfIN85Ih1vDOTN
         m/kB+OqvDXOoRX9x4xe9JdsFN+GavJVPIawOwuq0UBi2evntSZApfyIfxHsgZ6eNC1ef
         a6geyz/+F2Qp3InC1/YT1TLScHEydGGK0TY9KaRYEnbq7vK4T65Anuvku1+yTAiZKyCd
         2CE9lhc4NVosNMx2mzvPh7TiwqiryDD8PDg2hOQAWj0TjdS5NKSfaC+nGPN3RFtjh/ot
         S5JuTn+eEdzJo1wDrnhUDMuNfl1E0P/5gx9Btap/bZ1PcUKJ/jC48qz7XkYpTVE5QEOp
         RQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764944625; x=1765549425;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2Kek/wxhWgT2Ns5tM8EW2AKp/4yPyuu9wZ1E3kn3Sak=;
        b=LEHTnInclY8VI6hjrWNtCufYyaMmpLYitXKn1gCMm3n76RnHuTJbuuKsB67vv87VCS
         +W1ifJbTjoFmD9oY24n0chv9Z7bgh+7O0wXtOmrWW//a2exLrYzU3BSBPgfhYiEVA+jv
         Q3SQxIbhgBOBxYokQB8ya3F+ZlFM7tbh8Ndfh5QSdqeHofhg02dmUWNlf+jhICJ7hzNZ
         wc2J1NaDj0AfkC/8KlJGU6JbzgFSHbG28aS0Nnu9zWZIkKUEC1+qWtkn9ABisnd1ZJsZ
         YbwYMpiPmJfSe58pG7FP8JZNVU1H9WbdpKFN+6fHtE0+o1lCTds+1tc2RLNih2CAqzmg
         frYA==
X-Forwarded-Encrypted: i=1; AJvYcCUf76HBEF1MmSEmvR1HqmNjZmbYLduT18dU+kos2SAEAvCpRIyX2LQ45Zd5YEAEfrD/ENxvjighUp4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/g/2RjCngKDyQA+gm03jflibrs1lKOKbBx1I7j7yyaoIXOhf1
	OmeSlK2RuxdSby9XsaqHcmIC5aKtVKAHz8/KnEqkCFtW3BLr4vLQvgwN/lYtLKrGPFHp+xSE62x
	KmRQ6YXZUJS9/OeUA5N+10UNvPgmTWhYruC8rBkgFcgmZbMhrxkw65O4RTAo4N2V373yb
X-Gm-Gg: ASbGncsf8NnEBkF3W8BXWXi24qUVJGAJsKLAcaso24xTiCSZVORi06IckLCmgpvp+g8
	qPZ8YjC7OEt98wENJeHnmjbraanWhhEecL0yIUAWP/fpjZaub9ZLBGEt19w0BSaueOPlK/rXCud
	YNS67BtFdrrJCwvEv1VCxuoTFNjX0cY8RpbXveg1IRb6fxMk8cde7wtn3WaeJo4nwHNitUGPUUh
	BQSAiDeJEZfSPOlf6iTdDWXEucReaG6GL3vdaM8mKafnAcPEqgOjo82Dm4gD7C2y8H1P91o2uvZ
	1p3Wm71PkQbrTh9+uqrn5p9zy9Q0tMMLAliV56+l+uKcYP4/X6Rr/fD1+JGi5zSlxHO5D7NsQXs
	u1Fb/1UhAJSjVhSs=
X-Received: by 2002:a05:620a:46a7:b0:8b2:a0cd:90f1 with SMTP id af79cd13be357-8b618213bfdmr975855685a.61.1764944625184;
        Fri, 05 Dec 2025 06:23:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwTFJ75f6zPp3Hwtuc0DU5SbaR7konyK28vR9/S2wLiY6rAjsKcr6nVShjImGvHgxyZDi7QQ==
X-Received: by 2002:a05:620a:46a7:b0:8b2:a0cd:90f1 with SMTP id af79cd13be357-8b618213bfdmr975847785a.61.1764944624532;
        Fri, 05 Dec 2025 06:23:44 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331df0sm9414161f8f.36.2025.12.05.06.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 06:23:43 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 05 Dec 2025 16:23:22 +0200
Subject: [PATCH v5 3/4] phy: qcom-qmp: qserdes-com: Add v8 DP-specific
 qserdes register offsets
MIME-Version: 1.0
Message-Id: <20251205-phy-qcom-edp-add-glymur-support-v5-3-201773966f1f@oss.qualcomm.com>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
In-Reply-To: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=3129;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UObXtePHY5dMQlAbJZdKc4jLD0I2BhVpyz2GDbDUvrM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpMurmc0yydXBW+eGjbZfyhFjEA9fTYkU45sq5N
 HC4NNcZxrCJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTLq5gAKCRAbX0TJAJUV
 VqkfD/0U7/8zLXdH8qxx667poKA4euZHsOq/CxNqQqJFqL525c5YYcZ6lWQqMB3MvgU7KxRzkC+
 Uh+JMvFhYxyQ1q8q9u5auSUFk/mSqe6/CzINIiLPQYrsUaul8f6WSt/602Umqavo/6siIDUXRCw
 SlMrnIR9n9jQBV6W7GXxc1QlDEd1u1GMM9vWyyLtc+lQ6R2zC84NDRLpUQE8uXLMr/+8eLFCt22
 NTLPtzdoRWTX1aQbinSrYMX+3iFrLU8ZhL3kynOMxag6J/D4h/6p9So/DbFAV+rgBUWZeeX5RHV
 AEnkETxzJZph0bVDwqr8Y8ofAG+gEt1MMy56xGgS55LPz2oCyoTLhKCrUBb6hiYvAJljBq6MzMK
 TIR2hD1UYL6Pav4L7IfJlsKHANTI6scyu+er39E5wq1hnPDblgsI1RkQc8SqLHxJXhewl14WKDY
 LV4fzqVibuOnfIinMV7APOnKlLoGVpFAR9pZh0F6X32pXNv2lPO6r9bUi2oi2T7aVHy2xa0N6pN
 aq4ZLTT80L74adYyfosLfx9Q5qGghGVolxKVeNtClk/YnZ6Bj2r5fgeMQetKuYpHKVd8PfEl1Li
 jIHH4zURqMXBBcRg3UYoyXZ95ftng1ibcCjSpOaFVTumcU8QIEO7fauT1BKoxzoAyWCjLMm59NE
 ezrHpACILuEdfZw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=bYtmkePB c=1 sm=1 tr=0 ts=6932eaf1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=ibtu9XGAwxROLk4EXI8A:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: FvlaK_5zSSsXBbLschwwTMqGo1ttWcLU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEwMyBTYWx0ZWRfX3HlHqN0ggrwe
 9a7mdOwggMi8sFp04wrKH53PeU81ussEZ1rzO29k1Lav+fSaLNBCOgjsfpKHDErmt4vAeDdKNsN
 znb/DG9o+AI8SczFOnHJEf00A/73h+2O5+VQbE96eAHnEQ/Lii2Yr3yTtqAq8KQAld8NwsS1n6h
 wZFnQiqALBqMT/2B3O8P2YRrqR/6A1y9fFqivolqaWkVpZU72oDEgjXIuBDzQjpWJeEu4h0iyIx
 qzMNyNCUG2YmMG2m79V+2SoYj8xXPvqvicguwgeUAmIkh8OOfFDY/AMYR7wCYhfVaEu7v1sTNIk
 QwOS7AN6SWxGWzganFalVb4dr282r/asrFMHRZ5/qmjOdq9nPFF4LhrAcB4sGZCzzORSlSyqkPs
 WvlwEF+kixR+PrivZA0AN/R/pvTQSw==
X-Proofpoint-GUID: FvlaK_5zSSsXBbLschwwTMqGo1ttWcLU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_062346_969299_6C08B108 
X-CRM114-Status: GOOD (  11.74  )
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

From: Abel Vesa <abel.vesa@linaro.org>

Starting with Glymur, the PCIe and DP PHYs qserdes register offsets differ
for the same version number. So in order to be able to differentiate
between them, add these ones with DP prefix.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h  | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
new file mode 100644
index 000000000000..93edabb830af
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-dp-com-v8.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2025 Linaro Ltd.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_DP_COM_V8_H_
+#define QCOM_PHY_QMP_QSERDES_DP_COM_V8_H_
+
+/* Only for DP QMP V8 PHY - QSERDES COM registers */
+#define DP_QSERDES_V8_COM_HSCLK_SEL_1			0x03c
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0	0x058
+#define DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x05c
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0		0x060
+#define DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0		0x064
+#define DP_QSERDES_V8_COM_CP_CTRL_MODE0			0x070
+#define DP_QSERDES_V8_COM_PLL_RCTRL_MODE0		0x074
+#define DP_QSERDES_V8_COM_PLL_CCTRL_MODE0		0x078
+#define DP_QSERDES_V8_COM_CORECLK_DIV_MODE0		0x07c
+#define DP_QSERDES_V8_COM_LOCK_CMP1_MODE0		0x080
+#define DP_QSERDES_V8_COM_LOCK_CMP2_MODE0		0x084
+#define DP_QSERDES_V8_COM_DEC_START_MODE0		0x088
+#define DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0		0x090
+#define DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0		0x094
+#define DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0		0x098
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0		0x0a0
+#define DP_QSERDES_V8_COM_VCO_TUNE1_MODE0		0x0a8
+#define DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0		0x0a4
+#define DP_QSERDES_V8_COM_VCO_TUNE2_MODE0		0x0ac
+#define DP_QSERDES_V8_COM_BG_TIMER			0x0bc
+#define DP_QSERDES_V8_COM_SSC_EN_CENTER			0x0c0
+#define DP_QSERDES_V8_COM_SSC_ADJ_PER1			0x0c4
+#define DP_QSERDES_V8_COM_SSC_PER1			0x0cc
+#define DP_QSERDES_V8_COM_SSC_PER2			0x0d0
+#define DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN		0x0dc
+#define DP_QSERDES_V8_COM_CLK_ENABLE1			0x0e0
+#define DP_QSERDES_V8_COM_SYS_CLK_CTRL			0x0e4
+#define DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE		0x0e8
+#define DP_QSERDES_V8_COM_PLL_IVCO			0x0f4
+#define DP_QSERDES_V8_COM_SYSCLK_EN_SEL			0x110
+#define DP_QSERDES_V8_COM_RESETSM_CNTRL			0x118
+#define DP_QSERDES_V8_COM_LOCK_CMP_EN			0x120
+#define DP_QSERDES_V8_COM_VCO_TUNE_CTRL			0x13c
+#define DP_QSERDES_V8_COM_VCO_TUNE_MAP			0x140
+#define DP_QSERDES_V8_COM_CLK_SELECT			0x164
+#define DP_QSERDES_V8_COM_CORE_CLK_EN			0x170
+#define DP_QSERDES_V8_COM_CMN_CONFIG_1			0x174
+#define DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL		0x180
+#define DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1		0x2f4
+#define DP_QSERDES_V8_COM_CMN_STATUS			0x314
+#define DP_QSERDES_V8_COM_C_READY_STATUS		0x33c
+
+#endif

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
