Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18CD0CCF9F8
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 03:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jS1TRPkgxD8PfklZ2JIW6m1jBzIQ6/hpjYQ7mzkZrVM=; b=nM/miyKds0tJnS
	iT7SMZ0DiYhV1znwP0WQWsvNwosa/9CllNgY6iHbcBRNdztFvZ2JWPMWC5ljvjTWRT9aXdYoydA6j
	gD1N1SsyYRULDkbBsWCUC9VcGmZOjT+yKryqAQiTZQpV1j0r73ioBVickKB8ZxjPjHvyYu+L8GTck
	iNmtc5599kOxBrZ7j76asLOUnBJkwLiYB348N6G1CQak/SCGO1/SUsqjVDbrXyqldt1PkuhflsGch
	ZKPy7z6f3X3quslDyCxKYF4BpnrRm69S/Izh1wj7WyBSiIbC+rBiiF/d5hoiEptTGphnMMofO1BJz
	T8QLedpNvWnoL/uRqqiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG7PE-0000000B1gs-3DeQ;
	Tue, 04 Nov 2025 03:08:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG7PB-0000000B1eo-1dzp
	for linux-phy@lists.infradead.org;
	Tue, 04 Nov 2025 03:08:23 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3H6hmI3693661
	for <linux-phy@lists.infradead.org>; Tue, 4 Nov 2025 03:08:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7UTngfQb7OiWwCXME1AuL5HWLJvZN0I6tRHBZbitkqc=; b=VPVPMFD24KutKE4n
	ocTaZCSLpX4W+I7tEUyguu6rY/CfOMIYyvnSbtCpcTZt/bh5AlnU/4cC9H3VyfB4
	jZmIVCH3bIp+Tqcm3zv0z7oX9f+yzioOzJ/GmLPtAsMY6xlLdW0crp67EYMSnIY4
	J7aDLAIYN2Gx0OawZIKX0Pk4F0dxEhZ2zBy4nlBy2Dw5HjAoL57bStgzarRlMbG6
	KVnnM6JSnGSbFu7BcQOfZ2JjuSGAr2HVEyfBz7cbL4g/ZhZQ85CCBqjdYuPRUCqQ
	QCbRPkC0I+j4mxm/pl49+j0crfocZfFEWbiCZRAxmQaf0t+8lylZpR0pbHzAC+ZE
	N6yN+Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70gm9e0c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Nov 2025 03:08:20 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27c62320f16so62048625ad.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Nov 2025 19:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762225700; x=1762830500; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7UTngfQb7OiWwCXME1AuL5HWLJvZN0I6tRHBZbitkqc=;
        b=aT68g62NU/OaIFV6mhgY6ZZjGH9wTofBLykZ2n+jj6WSFoaJUhmB7wczY8UD7CvYOH
         dwPnJ7wx+wy2KKiFaSvyANTb4GXBEjiCQvxIwqqgCGRqnyoRbVfrx074t0XMd4Rp0MZ+
         PwkZA831QDhOWzfMfiRLDobhKnZqD7cKyJZlA/CDkfshWO0HaMUSzU34UcAAnUAOJwWQ
         vj+hnWo7WwkNk5HSBBWQluGFKtumRGfv3XNS82cK+8GD0ZHz80JodhzsJg4bwSxjS+q2
         vOSSQuvZOOTBXByvJHtvlTmaeiGoogAFUb3pRLoBEv8/MKm/7YZTzGRb0qvlr+QxbfxU
         dkNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762225700; x=1762830500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7UTngfQb7OiWwCXME1AuL5HWLJvZN0I6tRHBZbitkqc=;
        b=kR5IOMGywSkAtmCXvJDauxRKUmG/vBe7mGFKmjtVfjtyxCka1grNN8llvlVwiBdH64
         FN+LAhV/2Nu+qFpk9MWE09Y8e15JbFzaX/zIMtQNtqd2qjVsvYwC85EVmf99zmC0k90N
         NaNrzuMPFH60U/Nu6R/nvyhLgdP+7uz6lQ6+6z1KGNeJM1Fy/nThLkp7PQkVaIN2QgxD
         Ugbkp6EE7jZM5G4/9Oeo/Xc3/qd5aulhfzo7DYSBSNNVXaoUqYc/QIiZLzVux2jubDSj
         kZCqg6fUb3LgTFnn77zGfZNxWGwSrZnlLazu06BkBJNkStu4c8eYhXcSvAQ3xj4eqftQ
         gKaw==
X-Forwarded-Encrypted: i=1; AJvYcCVmx9hHvbv2OoCOH0jlp7CY/A3dVGBpxMJFJ1qWpJaixLnkmIWCYyPlqT6QGSDT0qMA6dwhL6kMrTY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3htLavhOGx1n+RXLuvikuIvZzifer5GA930BVrJ0UTmAtvs2L
	VEXjI92AsDVZX0as1QDIC6Q0TfurHDnSToDylGrMjn4ae8YBM/HxAo6dW+rfSG7Yadz8GM+5Pik
	v/erTybSN10/03shiO2QsDExquhlpoZRx2Kk9Hlf0l1vaOZbINzgZxOxb16Y0VftTSNDW
X-Gm-Gg: ASbGnctQgHIpzNxhdX+lQr7YL/2oLzmtDM5YfBuuEInoMZXQNhCg68GE/YR7Tb+q2lr
	yOZkkbFPILSBmt7WR2YOWIEIi44z+++CF2yTX48qm47nMueeRM7Z4QiWljHm4h2JEY5xT0vjEL9
	cuDV0x0BOzOTRGR1+FivVo2bU0sc95bUijjfcFNuItfK3MYgbsyZ9llwTmo65GHaJ1FoOIMK5hE
	ebTCveB9/rFImCJKhi11JaJVT2izhVLVJwzvvI6A8VpF14/qF/C+0tIlBiIgW7BtWLLoPsJmB5G
	T/MvDKcrLf8bo95Bs+X35hhswj56Z5b9Fx93bQbhGaU6bKAFExNUBz8ZN0v1NKAwYTDODDcjtY9
	+F5nEmxXit9d3O35GEJKqUvdcDMrqo+nC/Jn3qCZ7bYgBtg==
X-Received: by 2002:a17:903:1ac4:b0:296:217:33ff with SMTP id d9443c01a7336-296021735abmr13096105ad.48.1762225700237;
        Mon, 03 Nov 2025 19:08:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEoBy9xeqM+w9pbf8kkbaxnk9EfLbWsrjPpujaMoET2BweXfyp3FMZqYAikiF+5qUH18gB8CQ==
X-Received: by 2002:a17:903:1ac4:b0:296:217:33ff with SMTP id d9443c01a7336-296021735abmr13095665ad.48.1762225699686;
        Mon, 03 Nov 2025 19:08:19 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998da3sm7357365ad.27.2025.11.03.19.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 19:08:19 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 19:08:14 -0800
Subject: [PATCH v3 2/5] phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe
 PHY v8 register offsets
MIME-Version: 1.0
Message-Id: <20251103-kaanapali-pcie-phy-v3-2-18b0f27c7e96@oss.qualcomm.com>
References: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
In-Reply-To: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762225695; l=4502;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=IAHLCq1unJtd5LiilYFr79f645gxD9ry6SK9tlt4gwo=;
 b=+geqzEglYYNIOHPbx1JCBiTT7R52dh6jKroVW3Bk2Ips8w3XI6Df3D3GayoIeZPkScLDh88Dz
 hNZPZbA10GUDKXnj0L3SbcoiU0rIs9BVLH9wQRH0GNJafnyaz3hJTb7
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: C_QEXIGwJyXB2MN2EYIBK4dgRKr7DqG7
X-Proofpoint-GUID: C_QEXIGwJyXB2MN2EYIBK4dgRKr7DqG7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNCBTYWx0ZWRfX3se+nPuUWewo
 HxRrkEx3La84hfWRUUMx73h8ajNBOtUfCkrrBMCrDTxP5pfIRVAqSpCFolrgajEU209JAgz61xs
 vRQWZnwXEnCXwFd7GSaQaEvfSacypxtm43l83WHPcqfwBIRUy+Pe+8keKPr/FYaCkzyvD8hpbML
 obe5eVLVmYc6V/82fQWnLIr/9rOypnd0XtG/c9GDYTc6KEXrZNkMspbvjIzC+NZC2uhTZ0vFSvQ
 mCFH30rcB7NDvipZko8/QRQVyYddzseZ2okU2Mp3UBHfBZRnvvEwd0br7/pQrr3BxgjPycRyKyI
 K8XLCARMVk1Zivvo6vy4ub9eagJ+v7ozdJXrTADnnnMFLVtushJiwDs//sMs0lctxVtFjwr9QN2
 Sfdk+qFzSYCE2h3GAKAgVVJUowMWrQ==
X-Authority-Analysis: v=2.4 cv=CeMFJbrl c=1 sm=1 tr=0 ts=69096e24 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=AMX_CUzcla2ZGstc20cA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 phishscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_190821_438789_05E70CB7 
X-CRM114-Status: GOOD (  13.19  )
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

Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but requires
a completely unique qserdes-txrx register offsets compared to existing v8
offsets.

Hence, add a dedicated header file containing the FULL SET of qserdes-txrx
register definitions required for Kaanapali's PCIe PHY operation.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   | 71 ++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h
new file mode 100644
index 0000000000000000000000000000000000000000..181846e08c0f053c5cc7dbaa39a1d407ffdcbcdc
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V8_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V8_H_
+
+#define QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_TX		0x030
+#define QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_RX		0x034
+#define QSERDES_V8_PCIE_TX_LANE_MODE_1		0x07c
+#define QSERDES_V8_PCIE_TX_LANE_MODE_2		0x080
+#define QSERDES_V8_PCIE_TX_LANE_MODE_3		0x084
+#define QSERDES_V8_PCIE_TX_TRAN_DRVR_EMP_EN		0x0b4
+#define QSERDES_V8_PCIE_TX_TX_BAND0		0x0e0
+#define QSERDES_V8_PCIE_TX_TX_BAND1		0x0e4
+#define QSERDES_V8_PCIE_TX_SEL_10B_8B		0x0f4
+#define QSERDES_V8_PCIE_TX_SEL_20B_10B		0x0f8
+#define QSERDES_V8_PCIE_TX_PARRATE_REC_DETECT_IDLE_EN		0x058
+#define QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH1		0x118
+#define QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH2		0x11c
+#define QSERDES_V8_PCIE_TX_PHPRE_CTRL		0x128
+#define QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE3		0x148
+#define QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE4		0x14c
+
+#define QSERDES_V8_PCIE_RX_UCDR_FO_GAIN_RATE4		0x0dc
+#define QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE3		0x0ec
+#define QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE4		0x0f0
+#define QSERDES_V8_PCIE_RX_UCDR_PI_CONTROLS		0x0f4
+#define QSERDES_V8_PCIE_RX_VGA_CAL_CNTRL1		0x170
+#define QSERDES_V8_PCIE_RX_VGA_CAL_MAN_VAL		0x178
+#define QSERDES_V8_PCIE_RX_RX_EQU_ADAPTOR_CNTRL4		0x1b4
+#define QSERDES_V8_PCIE_RX_SIGDET_ENABLES			0x1d8
+#define QSERDES_V8_PCIE_RX_SIGDET_LVL			0x1e0
+#define QSERDES_V8_PCIE_RX_RXCLK_DIV2_CTRL			0x0b8
+#define QSERDES_V8_PCIE_RX_RX_BAND_CTRL0			0x0bc
+#define QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL0			0x0c4
+#define QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL1			0x0c8
+#define QSERDES_V8_PCIE_RX_SVS_MODE_CTRL			0x0b4
+#define QSERDES_V8_PCIE_RX_UCDR_PI_CTRL1			0x058
+#define QSERDES_V8_PCIE_RX_UCDR_PI_CTRL2			0x05c
+#define QSERDES_V8_PCIE_RX_UCDR_SB2_THRESH2_RATE3			0x084
+#define QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN1_RATE3			0x098
+#define QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN2_RATE3			0x0ac
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B0			0x218
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B1			0x21c
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B2			0x220
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B4			0x228
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B7			0x234
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B0			0x260
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B1			0x264
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B2			0x268
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B3			0x26c
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B4			0x270
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B0			0x284
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B1			0x288
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B2			0x28c
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B3			0x290
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B4			0x294
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B5			0x298
+#define QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE32			0x31c
+#define QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE4			0x320
+#define QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_LSB			0x11c
+#define QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_MSB			0x120
+#define QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE23			0x108
+#define QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE4			0x10c
+#define QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE3			0x198
+#define QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE4			0x19c
+#define QSERDES_V8_PCIE_RX_GM_CAL			0x1a0
+
+#endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
