Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 952B9CAC5B0
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zL6f7Pl/YYb6MnJpygtsvbemLXfeB92oEbiP3VaK4NU=; b=4ewbz9SYKPi0g8
	xIolpF/iyLKS3SHuHJl8wb7sMbox3+apGOVrMB7bP9xFaQ5ZHvo49oLVbVXM/nTArdxl8UXZgsYFb
	kIunlwsBwLBU6hiBnAAamdBae3wkZN2mn5t2vQDWbGKsTnLRr+dKsc+Abrw6yGgPAsZ4gTYkD8K1F
	MocevIDxKZ1jay44syXDuAcRIzvJ73Z87ta9xZKgeFZ4ZpcOizgLOUUw/49gxSX4hrja48dHkPCIu
	BtWvfbyrh61spd/QonocO+42ApUMbb3wyuGNUrWsGwmv9G1R9fpiDRYwFBC/dxde+EtwBbJWzriU7
	5dc4UDVTsTa2Z+1GZVUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzN-00000004icc-0u6O;
	Wed, 24 Sep 2025 23:33:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzL-00000004iZs-09vE
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:33:32 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCu4Q6018033
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DHltwgur1BfMiD6ZCGpjw2sjWFIRGbG1DzGcy24bkEk=; b=gbNx8AYxnXQxDU9Z
	v+ytH3aw3dN0O/JJZXzsjCEOBh3DN5Bp8GqCajvGmLkiV5g5SFbT6BHcCZz9bMEn
	P7KADXGGCF+rLdK/m/qoGdL5uVNuuzN6r7EReyQ8vpaxU3C3hgT+2yU+AWcUr/qy
	oJ87bjl7rhUOsKE+vk/yKKQknsqQIODlUGW2sEmI1Rq6s7kflE1Y22K5lXiHf2A4
	RVWzDMPl1Dc42jUmZ4RrNPrjy6O7YD54PT01sDaQQjYWjf4tU5i4KqGQrhDRSnI0
	bgYKnsn0LrVEp9U0Z/p1PNlvuPWyEiDIjdS9uWcaM1BIbEuEHBHP3gPUVWdgv/w3
	6XwNdg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kka0f3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:30 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b554fdd710bso193666a12.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:33:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756809; x=1759361609;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DHltwgur1BfMiD6ZCGpjw2sjWFIRGbG1DzGcy24bkEk=;
        b=rjFxdRmJ9omLZEB2pKLNvvuRPclCoj6ZypAUbGQ1qLzw3Cdx824K2W3GMR4u3VfJL2
         NKuGeAG7MLg6zcWR0RK53ASxVIv83jYKnicL809hqiNnk5yIWfcxvk8a4093gCOPJoHo
         MUVuWhqDjpbor6wItJl1ZZu9bCXwF2t2KVLvL/DXGue1tNOgn3fci6mCfQgXyvZW/PzZ
         CX6EGEqjw1jGxI+RoifvYuC3qT5i/KYJuJmsOInIqRlHcyfOu6UqfIprJLgURmGeAxmy
         s19Ohtmng22scaBK/jYT5C6dSinrVmRxpQGe8V1M/sDR+uvJWDjzdi7QGwHj29jr+tYL
         gqFA==
X-Forwarded-Encrypted: i=1; AJvYcCXEuYiTdLDd4xTud2Uok2eHFIrGVQ+aYv89wc2tBd1IhPDInABeBO8TEHviKqV2Erfud21ez+aLoUM=@lists.infradead.org
X-Gm-Message-State: AOJu0YytO8r/AErz8nkWZ2yhjF6vRRDJ8fCmcp9FY94m1aaJKcO4+ASI
	C0b2rTg40f1Jbdk3sPEwKzJnMg8cbheN6CYP6C4WNuoPsvbG1Y+NdHJxKpO3MeHQMvvckZXxI3Q
	hLK5psnz5wDyijok+zO9XJhuaARWcV/eFpnf7f4KQdJb6wvKWXYubMhnoNLyHCf5QNM32JtYHrf
	lGfZw=
X-Gm-Gg: ASbGncv/foLsW5e7aObrnyg284904MDYzmjyB1bPr1JJteugnNzqavaTg0/2+afVPNe
	YYn0JjanUClt6bdI3Vv3/dotHEDB7EIKlmWfLbvkyddAb/Xwth1bUVd0AnxxRc8qgoUjprB40SR
	T20H9bv1kjEzPFvKLfqQZ/jGH1eK+qrRYbRg3gpZx9zdE4lnBhJnN/2qRtt40DxyXHhxcHQ8Oz9
	l1bfxtvVnJYbQJiYmBq6mBp3b2cWVpF4KfHKLuvQIBEmDb0A4P/wTzRb0+1zzrT8KIvIyxvE+t7
	i6XfumiVfyruD+NejoLC4P5Z9dvVBbNbLtcii2Q+30cWTbvimoaa07SUFgp/jNb7rdag+FwCB4X
	OxeZ8n4jgsuYjLcg=
X-Received: by 2002:a05:6a20:9192:b0:277:f962:3163 with SMTP id adf61e73a8af0-2e7c29376b1mr1642743637.19.1758756808594;
        Wed, 24 Sep 2025 16:33:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTJ71K9g+469uClLmZwSoL9DavnoWtdXEI7DsRgFdlBq0ISrCZ69X/FgwyFw4ueQ317L5Drw==
X-Received: by 2002:a05:6a20:9192:b0:277:f962:3163 with SMTP id adf61e73a8af0-2e7c29376b1mr1642702637.19.1758756808129;
        Wed, 24 Sep 2025 16:33:28 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53ca107sm392911a12.13.2025.09.24.16.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:33:27 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:33:19 -0700
Subject: [PATCH 3/6] phy: qcom-qmp: qserdes-txrx: Add QMP PCIe PHY
 v8-specific register offsets
MIME-Version: 1.0
Message-Id: <20250924-knp-pcie-v1-3-5fb59e398b83@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756801; l=4314;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=jFjxkAF3nqQJ+9TobMmzv/05mm+4KFnWIHbV2tnmmys=;
 b=zA7wfPQ/vlNf/7X4Du1r8wbvarwm3TBfLjDd3lQhjTbIeeg9h3LBVgegrL6ORnIdveVaet98z
 Fl0r4It3ZgIBstk0+1Weuglswx5BfuOMDUA7FCDECNvMSCVfjbfKgzM
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 3LSFkhJvk4irW-0wzIX4djmC3P7wvJze
X-Proofpoint-ORIG-GUID: 3LSFkhJvk4irW-0wzIX4djmC3P7wvJze
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX+UVFJN0lTarC
 +mlZuQO0lM3YRuLBrOVK+bepuOsQKNcaiKc55YuSfRXYEkCzsCnetUhf16dZle81MUPhzAJ1jQM
 hLd5UdCxX1g1BgZzOrY0yh1FTwC5jUI34JbZLqtqt46Fmhmz7Aj7LfzYLBiTpDZTNL/qHTISz9c
 NDolhApg1lApiZLYZf7a0LZc5IL7l1/X8EVg5B55FjHEx6VBMORAqNioUO0CAxy+TCbC7kvo1oP
 yeLgOCZucExyGN7ovmp5ciRH8hRAhsGn/MwVnPq6POHUoEaNEy5xkGf39NPElJgz+ztS5Vl1UjK
 vahvLMFsv/Vkijqf8srd6in7DqSIFbnKdquCSDHGm/cDsaTcK3JbXHIn4uw3qy5jVfOUm/IM2zP
 sxr1dhrL
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d47fca cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=4xyYOQZvY-QN-ePQHmMA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1011 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163331_202648_76CC8BE2 
X-CRM114-Status: GOOD (  14.50  )
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

Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but its
qserdes-txrx register offsets differ from the existing v8 offsets. To
accommodate these differences, add the qserdes-txrx specific offsets in
a dedicated header file.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   | 71 ++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h
new file mode 100644
index 000000000000..181846e08c0f
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
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
