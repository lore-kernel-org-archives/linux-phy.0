Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7731CAC5B5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9eAl2f7uwuIg6cE9o/jAP2SnjOjoHdqPr8MsDK1KLo=; b=kw4mbWmn3Cfwd8
	a9RPXgxoQTVTHxtxLpbgK/ttpmFMScDY3wYDP1+Zfd4bry7aG0LOoCgD9LvdsS5vMtgHujMKK9sCt
	lfMBsYvm2wK1NQcDns7nRaAOHGyDQEltqN3eJHZ8c7kva/9kRdB6/aGoOiH3aPxinQ4tBhmSChkBg
	Eufty13ErHBGWZv8GrRO68VCuD8k/UnhyJUGoKfNyM6pfTyhvSVmktSrMR4+GAv7thw0NNaXfNecz
	KpzuA+DgvOtHmbtlgDBSEQCLXyhoNAjr693LWkxzc4+90rDGyEZte61XAAg3hIkjfkIO40+M7CyrR
	8Pcxx/ZocuBftBPZlvuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzO-00000004ie9-2wJm;
	Wed, 24 Sep 2025 23:33:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzM-00000004ibC-1CX8
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:33:33 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODKWlR024010
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ndw+rqs1qizTVWC5reblwW5J0ZiIr5WD2TSz5Cliqlo=; b=HR0Zk/AJRp6407YY
	eIvGNh6kUVESKF93V0hMQYoJWv7qmPcN33UXFe3Y5crrW8tTW0+jSgMHTJJXVsvd
	huJJDduF5E2VwB3mhSqftHNbcftWmjzEeM2aMG1KD/tGmGUxMlXyYx96a+R1jJA3
	k2HjgGCNO1SeYQqyfhxV+beVBojHaKzX6Xpty5OHm65S2r4FIrHjJeDYj8jBQrHo
	M9ZakkPXql7b9nV7nq6Mjh0mElY37Kb+jTEIvKSXqT945eUZjGZl/QDlrCvPgVRv
	WqqOGLf6v++FRRHUWy8wkeFmq+l0rVqg2mZrmUOaCR7aZ9uWKvMlCcSRFWSLjSch
	tFGDog==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0d2s2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:31 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b55153c5ef2so227135a12.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:33:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756810; x=1759361610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ndw+rqs1qizTVWC5reblwW5J0ZiIr5WD2TSz5Cliqlo=;
        b=Be/tNu+SN9k9kEG960Volvc0bAp9/x3fd8uefjPa2yRfQ5XSXpzWvsfPnvpZkf7aXT
         NduM5v6uXjWBCqAkcD5Q1WIjP7yCg2ruvW5MpTFIp53T775DdVuHBzNhILUcnOmQT92q
         JzfAJecsLLDFaLAP/anm8yGDDwXXNXJH0sEV7HZW/imnUzrPQVmIBNIpciYeq6kB7zp2
         fqOvxJNrVtGhWOSDjztotvk1GJ2+aN020tPMXwLm56i2Ub9PMXfpMXJWAXkCN2sjqB9H
         7ccI1iJfqx/p11Ji9jxtIRov0O4uP0+EskeJiEVaXcEcmmOZP3+xNZXcQ1zZhXHyIh0w
         apaA==
X-Forwarded-Encrypted: i=1; AJvYcCVgoUUgPXauasur/K47MnvyM0MnGBGQLCZZG9b3ZogIBQKLPdCGGeDE/myC9g3HKzw4JbLdDJOlZCo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy96TGreJfDutfwhrAB9SJ+iQw7CgqPOavznBZ6NJe9wf7OF98F
	1qyA88tr02XxRYG1d3zZtdZsxSNiD6y19OfUEJ0+A0W+Gbd6uFc2/KRgSzJCW6WG331ZcsG5AXy
	A+wi84K+eMglNsJWyWd+3EhQUKjhwbYoCrS42guo/Oll7UYT7vFFoSJLPNPLSHot87EiG
X-Gm-Gg: ASbGncsbFslJ8F0XtFPn21XuW8bqKMQYWB0TGFJIavtoNNAjukPlYwshuOehiIA6K0j
	hK2Z6sjeRqzh2mW0GKspvIOXlVP1cKxMDAyYGqz+yYX8IRKKcH4EYw3uZYnpGOeur1AzR0gf7wr
	hktf69eRbHuRvVQbukOt0Ba4TgasoaQyWw3nHKcrKRYcfZwpDY2VG8Hf+L8QyathaNPr+XQ1b9n
	8YM76LqcCsPR1oqg1E8NFCrkcKcbIkKT7ttcdj+YB7M24yL8e7oNb6GFbul/hbybdMEd39Z6VyM
	eDbAGXuPbkkpJNuYmyctKZyiXcmRBmCTjeYLTfwWA4SoItVbVyeOjqW0CmZ0zymc2jmxjUu5kaS
	oQWmZxvtE+e3620I=
X-Received: by 2002:a17:903:244d:b0:25c:392c:33be with SMTP id d9443c01a7336-27ed4a5c567mr15661535ad.59.1758756810030;
        Wed, 24 Sep 2025 16:33:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5CADDonj4Tj3EKc7HnMksbjmMI+Bu1zU78weaqGMcam4AMLJAz+8098+e9XI7Mmhcp0yHBA==
X-Received: by 2002:a17:903:244d:b0:25c:392c:33be with SMTP id d9443c01a7336-27ed4a5c567mr15661345ad.59.1758756809568;
        Wed, 24 Sep 2025 16:33:29 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53ca107sm392911a12.13.2025.09.24.16.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:33:29 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:33:20 -0700
Subject: [PATCH 4/6] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
MIME-Version: 1.0
Message-Id: <20250924-knp-pcie-v1-4-5fb59e398b83@oss.qualcomm.com>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756801; l=2102;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=lh5soms/PW05Acpi9g8AxeEqOMMit9vCSgZ1ViTmATo=;
 b=5tMPZ0N4k9d3RS+mJPp3yzpfG9uOjUB3PGKnR/MMsJHFt75AMbLGDGORXo1/pTnX2w1v6Ctso
 0OHJhRjQjxHAtqp/3XVN9c0OF/4OPIVcxiIsGLc9IG85bCKf1oKDjFE
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d47fcb cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8UDt2JBBUKJrZSEALGsA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: VkVJijy6Wz6tBEXrVjVi8lH1CLlmCR89
X-Proofpoint-ORIG-GUID: VkVJijy6Wz6tBEXrVjVi8lH1CLlmCR89
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX5s+gyiJ5rJbP
 OB6XNK1IAdk7YYlsAcJHb4XuWtTsCCpFttzxZx77KYG9uOygvtMbMV5LGsIiy5mSI63atnU0G8r
 OFego3yPL6KHbC9RFGG44P+mbA4FBCgqBIQggFLBHUtpkNZidDaJM0WtPu3Snwbhh0ZsRgu+w/O
 Xq6/NMRmMfEATRtow7XTDHVrgnyN5m3QYwfpKmQvL+f7ACjYLE4aVoWj5Irir1c497tIh5+XtoV
 1uP3hYXyATGbvvDQJY+haGeoJJ1SNMHLkpOwGFNbPEq63k25tDcBl5jwkuS0+fS29mIXEkQTNrP
 eMmpWdc/JoGIv4RVu8QiUuBFISVzCzjoN9Y/49s5HSWzkm4N6O3nCgmRYKa0JYCaEvEqifNfVPb
 fRfuqlM3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163332_484977_B0A15C53 
X-CRM114-Status: GOOD (  13.41  )
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

From: Qiang Yu <qiang.yu@oss.qualcomm.com>

Kaanapali SoC uses QMP phy with version v8 for PCIe Gen3 x2. Add the new
PCS PCIE specific offsets in a dedicated header file.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h | 35 +++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
new file mode 100644
index 000000000000..5d630e5123a5
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V8_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V8_H_
+
+/* Only for QMP V8 PHY - PCIE PCS registers */
+
+#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG2		0x00c
+#define QPHY_PCIE_V8_PCS_TX_RX_CONFIG		0x018
+#define QPHY_PCIE_V8_PCS_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_PCIE_V8_PCS_OSC_DTCT_ACTIONS		0x090
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG1			0x0a0
+#define QPHY_PCIE_V8_PCS_G3_RXEQEVAL_TIME		0x0f0
+#define QPHY_PCIE_V8_PCS_G4_RXEQEVAL_TIME		0x0f4
+#define QPHY_PCIE_V8_PCS_G4_EQ_CONFIG5		0x108
+#define QPHY_PCIE_V8_PCS_G4_PRE_GAIN			0x15c
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG1	0x17c
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG3	0x184
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG5	0x18c
+#define QPHY_PCIE_V8_PCS_G3_FOM_EQ_CONFIG5		0x1ac
+#define QPHY_PCIE_V8_PCS_G4_FOM_EQ_CONFIG5		0x1c0
+#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6			0x1d0
+
+#define QPHY_PCIE_V8_PCS_G12S1_TXDEEMPH_M6DB			0x170
+#define QPHY_PCIE_V8_PCS_G3S2_PRE_GAIN			0x178
+#define QPHY_PCIE_V8_PCS_RX_SIGDET_LVL			0x190
+#define QPHY_PCIE_V8_PCS_ELECIDLE_DLY_SEL			0x1b8
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG1			0x1dc
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG2			0x1e0
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG4			0x1f8
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG5			0x1fc
+#endif

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
