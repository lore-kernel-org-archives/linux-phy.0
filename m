Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD281CCD196
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 10:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=34GdLcMdPzt4b5IlP34q9F7NG4U2yFB+3IURJkvgptc=; b=ArViaiuwJ+9zY1
	WFM/Scys2sOYLAqfyhGPIpdWWq8blkJYhgFQBK32M5h+1kRUWj+2u3pKvecb88ps7LIf8GursD6hm
	nnUWcBH4EwQWpDRHMMCg9uK8OqOnalBThNYrVs1MvIp3f5gg86nwsyAavwodma2Z7BAzxoNNPdyy2
	8artId37SxYbXeNdxTa9SodT9KWSjbx6ZzswTiNPY8YmuxmI4o72Pnt9lylwcf5KdEYJevwlPBBAt
	uW+MJg6K02g38pBx29CiesU5NMZl2N11H/C3Gssqe05jKh3+xURfOG12ud6cAtSfIE1qrOqIfYA+w
	Kq5niL+bm4rQ22BM+v7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjY-00000001Gx4-1uTB;
	Wed, 15 Oct 2025 10:27:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjW-00000001GvA-1cHY
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 10:27:51 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2s70U002556
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UsypE5wXOc0oAjNZDpo2kWWSLxG6ciEpndDtjgOZ3Wk=; b=l81r1UucvvJX36xz
	UbRAfUvmExI9s1XVG6OwjhKOqBuk9AJABMS6ZiGFphHC8tsiANJDmhBOqeoBas+F
	zkud5uzn9nM3WmxJHRouoMmNvBPcyG9m+I7FDgOCzcdQTIhRliUIVdRO+tBhQYtq
	5uTJ2o8ITol/jbA8m5K5VpBWN0okUjOEtWmzW4nUcrI1YvrxaxI4zriXQrq/YLPn
	xhxh0nwaCg2bq3mqeAYueHqmQMsSaSJOyePg9sMwEh5G2N4GXPALwiZxMxaNiJhh
	ruoCTKkDhHsZxNFT7vm6Dt/Mh7sTJApJ2fVy43a4VnUenlJ1y4NLlG4mXHR4z49b
	BadpVw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd944ae-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:50 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32ee4998c50so10479951a91.3
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 03:27:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760524069; x=1761128869;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UsypE5wXOc0oAjNZDpo2kWWSLxG6ciEpndDtjgOZ3Wk=;
        b=gUfC5RGPkffWXdxiV4d0mIqIhIxuUPDxJdOyQxBfeW/2cOQnLEvg/BuDmXa0D6h1nc
         24MqltWj30pcp8HrF38yZN2Be8iy5snPSXqWS0OQZVatUsCSpXXAgByO3nm7Jdf1UW99
         ZIko9SoZ+MQ7TX7lmJBeFhXBEUjBCW1AbxHGfJl71YRe32xWIdwu+i4MZ6k3D0QCuZlj
         fH11fZp10DhgZn4c7hvIgkecxyz/M8TfzNL/c42yeKjDd5focdFzzOehMX8ns5R4rflc
         LJqJuIg7VReUAzuP9h1vuC4NcmOxrqCSttRvCrlac0/a5ugpHw6UcRosZZV4NhuhOKw8
         A98Q==
X-Forwarded-Encrypted: i=1; AJvYcCXVWGvGLLxN71UuzPytkr2b8wDUlwJ8DGUKXJwQna2HSHrqOCemMqUb9UVXIq10/yUzqOfgWWG2dOU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxI+PMjrYZu3VPSFzHEz7CJcnJOm+MsZ8svWJnQQ4nkJlc/Lnmd
	CSEcUU5wj0eNpbqdPTo++zx4dh+fFGVlIm6qIcrRMnySIdrldhf55jLF94oC1JQSQlWNvbfGSgK
	sruommhHg7JjvdhYh13gTHzZdLei/jPGLBu5q6cI4v+ZFXOj/viwvdU0Uzb0rqACjCK+D
X-Gm-Gg: ASbGncu/Im8jQxpezkQPX+mWI8nqhWTrvHSjViwXX6VwGMvRASZRCTj/ze9aA+DX+F8
	z5YPLhtmBQdfHUZ11MTauF9wYFYQRBeixWo+bdsQw5yjaUfS4DQvvJOC3wyrAJ6YAc80+VS8cFB
	ZZc2vqv89bVea7Bww53kKpbWdrYTpatdH5SSmUvWHfxKLLSECTH5hPGkEeCrNFCEZ8at5n/DFBB
	rqKd7Ta2035PNDFRXRfGaG6+Q77/54r57vcyXeCISzjELhphbbgKOjUrui1WXDd/gjLMsx3LVG7
	B1AHfKqOhQeecu/1A/5KfQ1hEuyAO+G1vmWhDa5+9sRls/fcFRiOjSoiYDeLceyhiyv2Lgh0vVT
	zFu6P5PPkq8s=
X-Received: by 2002:a17:90b:1651:b0:330:ba05:a799 with SMTP id 98e67ed59e1d1-33b5111708amr42052230a91.16.1760524069028;
        Wed, 15 Oct 2025 03:27:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRFkLffYhJNP7XAH/u0Aq7wHtAEYsMusMRG0+7QAyf2Gp9T9gOYvAM94GZz2D2lqHfrbQ5tQ==
X-Received: by 2002:a17:90b:1651:b0:330:ba05:a799 with SMTP id 98e67ed59e1d1-33b5111708amr42052192a91.16.1760524068469;
        Wed, 15 Oct 2025 03:27:48 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787a1a7sm1993574a91.18.2025.10.15.03.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:27:47 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 03:27:33 -0700
Subject: [PATCH v2 3/6] phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe
 PHY v8 register offsets
MIME-Version: 1.0
Message-Id: <20251015-kaanapali-pcie-upstream-v2-3-84fa7ea638a1@oss.qualcomm.com>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760524063; l=4435;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=oFnKNL4LlT5/93e0cQNiy8Qw+BXY3+8dDZtcph0oAzE=;
 b=VxG3wO8sb5ZPOC81rpuJygWhJuojZpFxlbQ9VEBmRmzwFw9u1rCZFRghi7ePU7RjwLoflrg2+
 0PevlZaF4kfBnzV8rWHFr/OPYt/G8NqjTln4UVx+XwSULgApq1eRQ0s
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: LmQX19PMj6K2Bg4aDkdPufcobZB6WCTT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXyhl3oZUvN6CL
 JCJgOgZrCxTGcO8aO1x/sxaE6BGJF/tBtw3pGL5xy/cdCXIARJRhYa1C+nGbNkjP+AIEkKo2q2l
 yKpYk12451A8UAUf4r0qE020VBg4IrvLU6hImR766Sjp9NMXL3/YyD+0duRmZ7ln7BXY8rpcgPr
 YpXCmk4hOUO0vt4vDTyCnU/YQcHMPCpA5ad8bPa4QRfnYU5pmZp8dsW0LWNhBcoikpj7h5hwIJc
 FaWqLq+53lVozSv2QKO3m310nO0fM0qFd/DhBIMR40SigHGDN0KJX/1IUN6weoP/tOWjU9cOTXV
 M4hjmddCjVWhCjUS1j9ummt7X3epxQ6RIB2eSwzRHtFXn2OaqOuFN8u3bvudSnbcBZclUP8R4TG
 oWfjGRbsJ8TyFUFP5VT5vMp+DzPoKQ==
X-Proofpoint-GUID: LmQX19PMj6K2Bg4aDkdPufcobZB6WCTT
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ef7726 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=AMX_CUzcla2ZGstc20cA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_032750_429380_0EA6DADA 
X-CRM114-Status: GOOD (  12.48  )
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
