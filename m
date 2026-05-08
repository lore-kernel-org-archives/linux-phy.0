Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3E32CD37B0
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pXNGUGCZFfx3a7Nqk95oKmq19CYV5LQAfZq22VFn/E=; b=fkGXYqtk7Y7tT0
	I2/XtEE/XV24r+7ayJoedcYzXq4NeaFRHlhglq+R8BkSwSr0MRw2ozl6BK5A2ORab9hugC+bH8DTN
	qIqbXL/q6BgUi7PaOhRXiOalFPV9rMPaHfqz2oHdfGXoQBEZ/Lq3CCE0EvMV/aHN9RS6adxUj1P4e
	4lGvY2355E4L4TxCoBnbRAZDh245pdNVFxph+/KglTc2zZvlTEFK0BVOIdCOuxsQfdt+xRzWO2obX
	fpWOXLiXDHlxhWIcEiUU8t4+QF5Ka5frnpN8z+KFLU8YQLnBAiKdgaXXZsg8Z3cym4rimWwGP0TZN
	4DF3Bec6m3xyMDVg4Q5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfO-00000007l1q-1hC2;
	Fri, 08 May 2026 23:31:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfK-00000007kwy-1ZcS
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:31:32 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648Hen7i1662684
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 23:31:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HbuSh7qg+z5cv7EQdenG/3gCq/0U8ci8jC/n3KJ+wyA=; b=U2HsJQUVcvNL/6ve
	2Yr8rAZ3bxsPjYRnRlfHXCIZtuy2v5LMtU7Fo893QQY1XcPvYW3zH3d3qLsrm8Ee
	jatSjk57aLf88dWoHhKnd3Wg8Z7Eh0iVRq6qcvxFUMILDRhpRPY85K4cbpxwfR+m
	h6J2fN/XW/nXzPD3LBHzQhBSRdyz3IUunaWtyLlOS34pfJ760gcSE25BPvkXQnqE
	QjJqmqdWjpAo2MpDYXsNfBVrFee6Edr5rYwOI8Q9uSbR6CYn3MZCYuYtBnJ8T2D/
	qz0PGhKYM8VdwtABAMv4cgY9w/WXcyD7p4q+PJf92GXDnOX8u4HPH06kW/xWMjmM
	YFo7OQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1men0xvj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 23:31:29 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-2f525565b33so3354368eec.0
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 16:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778283088; x=1778887888; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HbuSh7qg+z5cv7EQdenG/3gCq/0U8ci8jC/n3KJ+wyA=;
        b=F6HVMFbUa36w2EnoBDD6GDsLIm0PB1mW/XmptfhDFZ90G+JULDrbWYIb3IxYCgd0v/
         U6GDo7Mdt9u7d8xUVk6IlfWSyA1ML3uC8RxtdZZ+ako6C2YbZ1Gt04BtS6JmkzXt9aCT
         4FSQ+Rmk2ghUMWq+zqH6V9S1CEgtZWugfIioBugKEBVxcG6emLDuNuIpAcLnTiz/UTnO
         TdT7DRPb96rqG9r+Pq8fp7Xo5Hg1ZrTd/P863wseCQmfDoL5jYdhFGN3Jr2VTziWLfYp
         Jw75eDazwPyxTewbX5L0Lol02UgQfTorX1Sx17Me6VQZ5P9dVZnWTfkquz+JNtkEgZrT
         Bzuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778283088; x=1778887888;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HbuSh7qg+z5cv7EQdenG/3gCq/0U8ci8jC/n3KJ+wyA=;
        b=DnK3ZHe6KEhnNeFQDoz4JA92L471FTFZ0uULV4Xl4I3cdhS0W+EHcr1BGxqW3sX/SP
         W3xclGCeSLHd12XTpU69QnF6KjnLNri9RXV9ggGsTKqqOUUoi4MBj69+CbCZC703zNnp
         zP+rNka9B7LU6xiv7m+uEJSBVoYTbrl59wJnpT7UjfPyzbPW2UrKhSI0DThsFsPDLE7P
         a2xlC4MxhV9DlG/J8FVVWoUBlPd7P4jdPOXNGnHv8u/FLhJEcfs++eATE3WuwKCIkCsx
         qia2/DwR2kCxGSjPZLVA1IqaDw//S/HTXnjNyqn6kbk/eEXFaZK+Ge8e9Dd7SnjmxDlq
         ggIQ==
X-Forwarded-Encrypted: i=1; AFNElJ/k1g8oBYA9XH3+pHPX2rjs7PPxXF7+LDb8vegRBUYTbu4yzVrkjlwvmBI77TdEqfnVptrSQUBM+10=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3scgNNdpWtRnkJBf2B6xyyvth3JMf/W6ypzNp+zjI0aKGqW3J
	T/i8Q8Td0C6jkfmYknXjEeLWH/P4XN8NYoUImlSqCW+L7EGjmJgDHeAPmDQRnXBmT9QqqL1ovjC
	F1CPoPqiM3nhVZOct4ZGZ3zInHxna6evNaZ+h9K9Vh6GIqc9yMdrm0A4MLM9fZFBIEf3E
X-Gm-Gg: Acq92OFMwhFJXPQKzsnGF6e8gemQLhOGmtSkOBy5BnoB/AkgM31lB9RzRnzWEFZ6LhF
	uZhxxCu3dzRmYwPeA1oLKbZU3ZGM9gO7R+L2ULrKC4Cw8HksEsQ2ILpPRUSNZpwwWek+46wZPuS
	Gdu7Hno9+sJy6GA/ggg9ZIvoYC9MbNOEuagRAkNYXqISx6s47zHf2xCK2+9Wx0jlP+zVRSUvM0k
	4B172Pygc879BXTFD7T+a2Qq78jt2AdkkTjOOnvmX7kTTmSShqQnwPvBV9wJ7aXgyUH3ZC4JzKf
	YoRC4xzWgCG5eSE9fsfdtv1ncMCPMS0OlPDPWOPhbJF3LYmCN5QdwwBbM1R3xp0WI/aM5YMEkM5
	p3CtL+y4Y0aeGtPFNM/F3WMA9wbt/ppSCOuCclYkNGBBKlHXhOyOAkdPKq1g=
X-Received: by 2002:a05:7300:72c8:b0:2f5:23fb:9aac with SMTP id 5a478bee46e88-2f550b4320amr7478821eec.31.1778283088389;
        Fri, 08 May 2026 16:31:28 -0700 (PDT)
X-Received: by 2002:a05:7300:72c8:b0:2f5:23fb:9aac with SMTP id 5a478bee46e88-2f550b4320amr7478799eec.31.1778283087845;
        Fri, 08 May 2026 16:31:27 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f88885b87dsm5033122eec.21.2026.05.08.16.31.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:31:27 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Fri, 08 May 2026 23:31:21 +0000
Subject: [PATCH 06/10] phy: qcom-qmp: qserdes-com: Add v10.60 register
 offsets
MIME-Version: 1.0
Message-Id: <20260508-hawi-phy-pcie-v1-6-237b894353fc@oss.qualcomm.com>
References: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
In-Reply-To: <20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778283082; l=3662;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=l+CJCriIHCqSTKfqB3yNlnKfu4zi16GuU5MaRzEG1I0=;
 b=SQPGvg0Vr7HJhUFr2y1XzSHCV/4M0ZuKpm/xAp2rbdav4FYRezMMGfW6djNo9UDc6Q1udRlzM
 wBb7DPMmy8sAgTTaPdTZx8UOt9oAOCceVxbT6skE1QgVtk14BXGR+ap
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIzMiBTYWx0ZWRfXz/S0+h0NMP7k
 vpyIdt6UMKve5fIBTBEHqibV38xr9XZVOxzhdk65Fqj1QDiupe8DdFcX6immtkOgBFxBC8WBvhd
 wm1zKDX6+S+I0Ms83zzAaCxe0FNCqNfz1yWt537Z35WfHTKlMFW2BdVMKJzleVS4iPD6g3nCKEo
 nRAuHxm9Mfnj3QVwG9PN98zNflccBpR7BjJAMiFddcyoTqUBggLUcryPBdI8v+mvXGBIiuCH8Hr
 xZ/7mCNp3ADpCByXe1BcGnxHxnfjkKsacpES+GhmqNAkue9Gu+v4Ms5wdRWKL3Sm3cNZ8Dz44UE
 OBq7Ch2ipJjQfBoH7ift9gvVLVrp6bL6aaaMlYTEe2D+0UFaA3JLAbN/XZE5tW+rOH/yE0R4HEU
 xXeNEPPCeQp5OACCWt+981keoqE5NzfBr7v2iJGQA6bPYBfXfwucsR86ScsWaSWzg5iim+um13Z
 l+W0JMqDdxvROwGG6TA==
X-Authority-Analysis: v=2.4 cv=LORWhpW9 c=1 sm=1 tr=0 ts=69fe7251 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=MN0C-abDVP1yrleAEAUA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: 0i8F-oaO-HleOI5rAwgdBxmwMIWwA2Um
X-Proofpoint-GUID: 0i8F-oaO-HleOI5rAwgdBxmwMIWwA2Um
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 malwarescore=0 clxscore=1015 phishscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_163130_544904_A0BD83CF 
X-CRM114-Status: GOOD (  13.66  )
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
