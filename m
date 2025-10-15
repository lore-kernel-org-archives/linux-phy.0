Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F163FCCD18E
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 10:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1seOq5QKs3+8I/4m9wVpReOiv9LPgVpGvkcR+JVn5hw=; b=GTTU2+cQToLLZ6
	m6UlLDRzba766Fulh1+cIQ7+e8P3FSObWPUdKE35QN7Q8wDMbdzF0PqqvjnQak/7OJdy2TJ2zPl+x
	y1uKSMhHRlMF1rdAWnBh25mrgxoyTF5kTtiTi3HgWYuLPo9XGiHvTOF/nDOJyZz2cCWvdU18w3ums
	LKQjqC6QYTnr321sAawm9mWreitzmpSp8zLfyPS+JDyhDlYtksyH901U+++8enMoAbU3WZNdvxoAD
	sutM7TnfvDf1EXosJNxz0hX4uiFelYXtwAPZsnNEvq1w9xj4xrOHZPsy7EWdguH6kUjYCmhqPNKlm
	L4XMDDrnGHTRANYlms2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjZ-00000001GyE-3viW;
	Wed, 15 Oct 2025 10:27:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjX-00000001Gvu-3W2H
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 10:27:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sWm1004682
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZvqRobnVL+EM1S4yYHAfLhWvmx/XDIy9zng/ovwtFeM=; b=R1F59vJ2adb6X1Td
	qPJazQeCPv7m81HQrBL+MTJ2jz/UxQ7uIk0giZMKCf5jzQT/pHRgANjhgcgNqTcO
	fj9je+60PzD0jg6jCPae30+IivpMHFCufyzzA7EPZ8s58ndjZM0jwcloqRlG0LYu
	lVBvQw2o9UPAAGGL87yFIAAjLylnN2Fi4+Z04PydO4U/a135gVsMO7OnUc0VA2Uh
	OBYIXIHhv/OXMjexd6ukada/ZN1abCYUHPbzL1ZIEC7VCDh+B59hJXfe1PjRqpag
	S653bNJCQXxk1XBYWAj4klcKemC3AmqJ44v8ItkEaLhlndmiyjNwhjzr00ZZsDdU
	XrUg+A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwpbkw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:51 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32ec2211659so10262780a91.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 03:27:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760524071; x=1761128871;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZvqRobnVL+EM1S4yYHAfLhWvmx/XDIy9zng/ovwtFeM=;
        b=YIrAMGAVhYQGcOeXobT5SMISJBKmK0r3hnF2Rc30nwEZidCenSdFcBa2/GiOwuO1cw
         EM18vgeiXjyaxYfakexViG+ln0DVG44bG7eRoUa6nF/Wp1joDl1T2phkJRebLxmcvXBg
         Oekbkqd3VWBQRcyCBJ1h5j0akf//gmU6N548cZBesK3Q1u0F4r0IeOHHNfKgiGFgDRcO
         d45AT9dcxJpr5Db/jBq6R1V21PzA5pvHgMmQcMGgvxziWHyHMP6XWnHyKP6FbwOQhy8f
         67fw/oPfu7qdm5OkqPcf0/cAYMZ2cUYbn2sFgpdw+eK0/Quyvx8qDKZ/n7weegUMO7y2
         Y3+A==
X-Forwarded-Encrypted: i=1; AJvYcCVKIjGWO2cy3rJ6/RFqn/phhT5PJRFF+y7R8UsAvopcKVj+7is/TxNM/7Y5sCBPM4RuDk+6DVqymLM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5ZxtLF8hSg9TX0vl02X0//KP6qx866+CPPtQkgqliaKO3k0Ky
	sX1miirW6jObsFZrnh550bIR3CAVi4cDVpC8yPTxlJtslMbBj4Sd8oY/+NXDuzuT3ZL3bJNBSUa
	TtKdYapxwo156WJgU9AtMxHN4U/kd5k9VZtz3x6gca6L8unIchDjfD0W04zv5qUdlELAJ
X-Gm-Gg: ASbGncswWWTty2byMP0dcqwEVcj2EHj0fo24GsslgPZGyZCzfOPYRvWH/VSdbra4/09
	a3Y6s8U9Pd9mYeq2mBYKg22P/VLOtiFsFywbithNCPdj1QP0QqeGlbxR4PRsgu4FmZdbjft9HW3
	DmUQdZTgor862RVPtlrpK+qmQr2v7v2y7d7kQGyXt6oMnRMwndu3VRh57brWCh16o2iU/aMgGX0
	k9mlTCf+1QQcB9IJTZ3DIWExsB2Ge8oDYrj6KgX+GthItjqZdqE9w426AfnGaorUktHMpIr5SkU
	3o5jALqMA4+xLtwxE24MqPG8vS/ZvIHwh11ViwMgrUZpULV/S9WV/EHz8bI1OOQvuDz85MwWPp7
	iUVvVElHinUI=
X-Received: by 2002:a17:90b:33d0:b0:338:3789:2e89 with SMTP id 98e67ed59e1d1-33b51117428mr35275108a91.10.1760524070483;
        Wed, 15 Oct 2025 03:27:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFEIUwt8ry8GF/UZzYIWnFH7w4xxumx865zk/mV7pQ3v9s5tfY6ECzCVX6vaoGYmfnaMbNHNQ==
X-Received: by 2002:a17:90b:33d0:b0:338:3789:2e89 with SMTP id 98e67ed59e1d1-33b51117428mr35275076a91.10.1760524069888;
        Wed, 15 Oct 2025 03:27:49 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787a1a7sm1993574a91.18.2025.10.15.03.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:27:49 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 03:27:34 -0700
Subject: [PATCH v2 4/6] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
MIME-Version: 1.0
Message-Id: <20251015-kaanapali-pcie-upstream-v2-4-84fa7ea638a1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760524063; l=2155;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=UD0+HagPVLlzWUDwZRKdbmDniVS8JgRHk8wGYNgYMM0=;
 b=zp9TyVP+mYZ8RnVJBIQUAjkqkL7P6Wvku8xYCpBilrwdujS6A+eY1whdjPrBE7kFCAVI2deRd
 j/7ASHrJSfDB0Q3Njyvu57A2Xlht6V3Ls2IWCvQaiM8wfavjZFfAY35
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX5c9Znx9BnhsJ
 xs/S15hjKzGDYLM3ROuGZRBKPctJfuXZK8/5B2MSAk9PwLY/6OANEOiczHZzKeLciZwZ5SqTEo0
 KTiTAYUwrRyzVeAD/N97ZEcIyJpsvfhlmKSoejLof1PBCiDSU7UzOunEY5YtLWK6hy5bLMmxd/0
 KCGKKuXJweWqjAdHbBnDhZX3Jv+X/q+j4i2T1+4kdXv5x72GZ7sigkSGcDIyXcpO4PNdNWL39z8
 8bx75ruwsTHfdoevMqXRl8w1nPG07FF+/9HZj61dHOOWxFKNO9Guox0T6PWgnnjgBGyVAK37t3w
 RPHZeiDVnvnKVHqWW8fMviGFSedxQZjRSrY5tH/IHTlzLf/cXO3zDynHVKZXXs9UbLjmXe3B4Bo
 g9kMn+OzTG3GdRpAMx5Sh0GKUKaEeQ==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68ef7727 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=GjIj-kmtzo1uPuhiLq4A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: Y_d_pYzwF-eBXqWEh7m0NeL8vTRp1C1r
X-Proofpoint-ORIG-GUID: Y_d_pYzwF-eBXqWEh7m0NeL8vTRp1C1r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_032751_887946_954F18FB 
X-CRM114-Status: GOOD (  12.82  )
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

Kaanapali SoC uses QMP phy with version v8 for PCIe Gen3 x2. Add the new
PCS PCIE specific offsets in a dedicated header file.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h | 34 +++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
new file mode 100644
index 0000000000000000000000000000000000000000..1e06aa9d73d588aacc86fc1b87fb17396de700b8
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
@@ -0,0 +1,34 @@
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
+#define QPHY_PCIE_V8_PCS_G12S1_TXDEEMPH_M6DB			0x170
+#define QPHY_PCIE_V8_PCS_G3S2_PRE_GAIN			0x178
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG1	0x17c
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG3	0x184
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG5	0x18c
+#define QPHY_PCIE_V8_PCS_RX_SIGDET_LVL			0x190
+#define QPHY_PCIE_V8_PCS_G3_FOM_EQ_CONFIG5		0x1ac
+#define QPHY_PCIE_V8_PCS_ELECIDLE_DLY_SEL			0x1b8
+#define QPHY_PCIE_V8_PCS_G4_FOM_EQ_CONFIG5		0x1c0
+#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6			0x1d0
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG1			0x1dc
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG2			0x1e0
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG4			0x1f8
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG5			0x1fc
+#endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
