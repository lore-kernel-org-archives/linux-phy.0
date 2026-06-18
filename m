Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6EECCD98FC
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jun 2026 21:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WogpSx5tpGgzGYa7hX11yaKjPlarYh9FRNRErBdlfWE=; b=Wjl3rEFxgVrYwd
	fogDtoQ8enjzmcql5IR8UWhIqU2iwqyZMzkugpYxYkafegu48HWbr2i2x+ezS+IfacLGyNFJ4Ffyk
	aOpNeW6wY+PFdgpuaWrxwa7CNVuvE+0HQFsJFJIJlAPdcxMB9o+Fev9P01Ur3hWDL6C7U+p8taFi0
	KC3u9UnbQtkDTFDgwcNEzfUvracWp4bsp+vIu+QOobMCX2neAQMx/2sJez1pizxU3/bN1h5XEmUxe
	8oq9R3e45x2GIUikF3yftnBY9m0FEI8vlGvLAR56WG1aNCeS40OQw7D8nbS7aLhqWaHxvF0tZ2KV6
	jT57BRybU4XI5sVOMXsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waKhU-00000001ouL-233p;
	Thu, 18 Jun 2026 21:55:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waKhR-00000001os9-3qpl
	for linux-phy@lists.infradead.org;
	Thu, 18 Jun 2026 21:55:03 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65ILsTra2820278
	for <linux-phy@lists.infradead.org>; Thu, 18 Jun 2026 21:55:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3aF5IthKle4500a7MHYZ2IS0F3E3AUdkvd7Z5HJtNRA=; b=QH8AvE/a+uANiBCm
	sAGirmgXAXQD8yYOdkAMvpqyKv2Fmxt/pnNOYVlPYmjIqZHB0/M3gj3Q2+V5JfGD
	S01e3lYcJAUqXoUjH8qNJUFvYxSVuKQdm0qqQdStji4zup/cySqD5J09jUYrvyB4
	luw19oJRD43fID7mGybak2L7CPrThlxDQLFhqxlUkwvqsP1hIER0yle/DerIc4jq
	Z1vZgzAbo2sQb8cOPSduqb40jNI1E6ShqoLnwC8jKJMThvJebzU+k6xLOvs/BQNG
	CxTFjQVlhXGiArzbdQOKyU6+j6EOp6Bcbzgta7VcNPDwsdXRdJnd7zyHC8acXgDS
	02L4XQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4evp6s8ss5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 18 Jun 2026 21:55:00 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-30c03c1dda3so2226054eec.1
        for <linux-phy@lists.infradead.org>; Thu, 18 Jun 2026 14:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781819700; x=1782424500; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3aF5IthKle4500a7MHYZ2IS0F3E3AUdkvd7Z5HJtNRA=;
        b=dLn1yoKmPoko3Z+XJhX6Z0YN7R5O/Xat2rL1ArpaDZB6KFxl7MAMLtLJ99XHPu93RA
         AjyhA6qRe9J+ezUoibfkl1T3hb2n8h177TAf18o7XtZ2uLMt2GhbTivTgaJ212KUBz6+
         2Ody44c9F/HmcYkcfAFE/MyytTEx7Hz58tBkJCvIYowSor/OMrMtWDaLL0IUyv4bF7NP
         J7e+QkjRqEEMedmPuBO5qygurIRMn4+7A0RA29J2Zqx99RjHxfse/qJbdAxwBA4J59iQ
         bejQX/hw0zsdlp5Y8xMJVyLVj2Z2Dygar6By/VVf5OCCMwWRjwVHdHzWYs79aYG2C82u
         9v5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781819700; x=1782424500;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3aF5IthKle4500a7MHYZ2IS0F3E3AUdkvd7Z5HJtNRA=;
        b=UKnafbTclEZ+8AwhDXzngNbmULnRHa7GNC2Pr9vhntdRW7SDWgMvI4ER2Ad7DQ6uJ8
         Vid5LfHTOmcy0pvfEbBX/1S13V4Ct+86yJC9GtQ8SEqc9ztQyHm5f558pt2Sgax76Ooq
         jkH9mW6tzczl087LhqLlAoXa5Lkxr814MgnMjSw0Iknsfqal9qPLaRyEUnxfOqEmhALd
         KfWjkvjGY23MfmvM67fiu9PiQVJAn2SfkProiU0r+smfay5q1utqNigwxYZX4VIp1beE
         WTOheB3/3qo7vPtPlWNYFyk5NaIzqoogutlun5Zvq23/yU41JcDl1+mK5FjUlRukjTGn
         dHjg==
X-Forwarded-Encrypted: i=1; AFNElJ/jbpRNDXaCBf0sF1iuF+J3MmxK6vf3pGcvP+mrF+9s0DZ7Qy6prUijOTyl7uSSzPFkAY714cbtUck=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfAxCYA34DxvzJ6wfH6etLNXHntfEX4nrGwfApDkI4T8Xk/e+0
	h8wXnmltso5Py6akGLgcjVz8jjzglE7365mI1LvBLKQVha7/rd4x8C6czvlN3pAHLik/rpLbLoJ
	mmhZqyttmv2MDbzlT8bQJAm9hQBFjUJ7JHd34lNEEi2H2ePkjJ3WgIeDb+FHD5bIuo6oSQQOEdU
	HZ
X-Gm-Gg: AfdE7cnFTp/I2sXKN/JXBSdIX7p08Tp9deIx31OQHF+Y9jk7kpRxCxPUTx5ZTS1leo0
	+pB3niy7S/iTbcDFvCbHr5aaSyrFrFllBlPSzRfuNFR4NzDC35cUpKkkaggu7HwHAHdHSaieUsQ
	eJcvzVLzGyyj3M0UJx8Kb23v75JbljNUJJlWMUx5+cNPc4T9kmcWrR/fF7I/Tfh/hcCpjVcpRXP
	vPvaEt0YlwvfyTo2pzVqkszXzh5pVV8CStnszuEnWWmmpTu7XkwFsyvJoQz/znp04ko62NofEeb
	swI49HycAbmkjhOiYY4iVJPirQn/Jo8GlVwlnFPQtfEAAh38TYRmV4Q3vrgKemBwaxXmXd8K6gX
	+CTmlxr/FVGC6UK0UTpXOifjwCqpDW+iMTKK6BC4zwujb+hoc
X-Received: by 2002:a05:7301:4083:b0:304:997c:d43b with SMTP id 5a478bee46e88-30c0736ed55mr935509eec.34.1781819699397;
        Thu, 18 Jun 2026 14:54:59 -0700 (PDT)
X-Received: by 2002:a05:7301:4083:b0:304:997c:d43b with SMTP id 5a478bee46e88-30c0736ed55mr935487eec.34.1781819698789;
        Thu, 18 Jun 2026 14:54:58 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c0670a1b4sm619430eec.8.2026.06.18.14.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 14:54:57 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Thu, 18 Jun 2026 21:54:38 +0000
Subject: [PATCH v3 3/4] phy: qcom-qmp: Add v10.60 register offsets
MIME-Version: 1.0
Message-Id: <20260618-hawi-phy-pcie-v3-3-3fa42ca45ea4@oss.qualcomm.com>
References: <20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com>
In-Reply-To: <20260618-hawi-phy-pcie-v3-0-3fa42ca45ea4@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781819694; l=13421;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=FXDxYjYS8KJ/lrRiPR8b1zmRd16pf7+FIu37Wr9h2N0=;
 b=22x7g5F+LF0kEwVGKhsi3Obe2EvYrWbtFMRwHBkm3ZW6pbi0sQu1sd5ktZ+mnuBQGipXythG8
 buq9/8Tn1Z+CBbmdK+oO7q8dtCsfnUm6HIBRorqdizf0GPvUaLsinV0
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-GUID: vjV4C_0IBOFW-xiT3OFKdaLbNh02sqaW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE4MDIwMCBTYWx0ZWRfX3wMPpVqcXmAJ
 xjynZaPHLFom1K5j61HQ9s1nmw3XnL6ppQzWtCFT0z723zZ88GXF0VjPIe2FTq1CWOWD0Pm5tXZ
 Jp6q0IrnBXTsPUATQSZHqJy5dj/lJIuORdp2VSAny2Mxz7JPvNmC55jR21WaTxfl48X+fW+Fi6o
 eKqFif/p6rzvrgZMqThTWR3P22PuKvXI09OLqDUydcTH4m3hHYB3D05cxppfIEwQGmsVY6pQeT7
 S62Dou/KWEKm2WNVvf5Ft6w1saduJqQ72JJrLMrti82Wg9RTzWFYtFdk1fAkiZcQEUAiYcnDZPH
 3eLV2tqEJU8iciXqfNw5SDeIUs9/byN1WIJ3G6uSbcQjdAgOLUQ8MqN3jzeEvRBaP4pzeSbBEOu
 7VSFcDWpJzJUF2cICXxA9mai8f06dk8iQ4JwFz799EKMu8skMdJmumgnf+Nc9j4LcQXV3z8ncQ2
 qnD13Bjk7rfVlezqFYw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE4MDIwMCBTYWx0ZWRfX5cVWNzTAAQZY
 cTlcACh/nzDcL3hRiuct2HgD5rAsf/vQuCIvQNGCY0UhXn00E3UAX4Xb8oxtf/86P4NXOwPxaIx
 20sWwPtgu+J/aRi4Wk97sCd9sUpfUpU=
X-Proofpoint-ORIG-GUID: vjV4C_0IBOFW-xiT3OFKdaLbNh02sqaW
X-Authority-Analysis: v=2.4 cv=KbzidwYD c=1 sm=1 tr=0 ts=6a346934 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=HHGjQcAHHd3EETTUzJIA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-18_04,2026-06-18_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606180200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_145502_105133_B7ECC86E 
X-CRM114-Status: GOOD (  14.87  )
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
register offset headers for all four sub-blocks:

 - QSERDES-COM offsets
 - QSERDES TX/RX offsets
 - PCS offsets
 - PCS PCIe-specific offsets

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |   1 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h    |  26 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h     |  23 +++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h |  55 +++++++++++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h    | 109 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |   5 +
 6 files changed, 219 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index ba17e53d000f..fb66e2a97ce0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -41,6 +41,7 @@
 #include "phy-qcom-qmp-pcs-pcie-v8.h"
 #include "phy-qcom-qmp-qserdes-txrx-pcie-v8.h"
 #include "phy-qcom-qmp-pcs-pcie-v10.h"
+#include "phy-qcom-qmp-pcs-pcie-v10_60.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h
new file mode 100644
index 000000000000..2df5a45010a4
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V10_60_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V10_60_H_
+
+/* Only for QMP V10_60 PHY - PCIE PCS registers */
+#define QPHY_PCIE_V10_60_PCS_POWER_STATE_CONFIG2		0x00c
+#define QPHY_PCIE_V10_60_PCS_TX_RX_CONFIG			0x018
+#define QPHY_PCIE_V10_60_PCS_ENDPOINT_REFCLK_DRIVE		0x01c
+#define QPHY_PCIE_V10_60_PCS_OSC_DTCT_ACTIONS			0x090
+#define QPHY_PCIE_V10_60_PCS_EQ_CONFIG1				0x0a0
+#define QPHY_PCIE_V10_60_PCS_G3_RXEQEVAL_TIME			0x0f0
+#define QPHY_PCIE_V10_60_PCS_G4_RXEQEVAL_TIME			0x0f4
+#define QPHY_PCIE_V10_60_PCS_G4_EQ_CONFIG5			0x108
+#define QPHY_PCIE_V10_60_PCS_G4_PRE_GAIN			0x15c
+#define QPHY_PCIE_V10_60_PCS_RX_MARGINING_CONFIG1		0x17c
+#define QPHY_PCIE_V10_60_PCS_RX_MARGINING_CONFIG3		0x184
+#define QPHY_PCIE_V10_60_PCS_RX_MARGINING_CONFIG5		0x18c
+#define QPHY_PCIE_V10_60_PCS_G3_FOM_EQ_CONFIG5			0x1ac
+#define QPHY_PCIE_V10_60_PCS_G4_FOM_EQ_CONFIG5			0x1c0
+#define QPHY_PCIE_V10_60_PCS_POWER_STATE_CONFIG6		0x1d0
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h
new file mode 100644
index 000000000000..e4558b69489d
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V10_60_H_
+#define QCOM_PHY_QMP_PCS_V10_60_H_
+
+/* Only for QMP V10_60 PHY - PCIe PCS registers */
+#define QPHY_V10_60_PCS_SW_RESET			0x000
+#define QPHY_V10_60_PCS_PCS_STATUS1			0x014
+#define QPHY_V10_60_PCS_POWER_DOWN_CONTROL		0x040
+#define QPHY_V10_60_PCS_START_CONTROL			0x044
+#define QPHY_V10_60_PCS_G12S1_TXDEEMPH_M6DB		0x170
+#define QPHY_V10_60_PCS_G3S2_PRE_GAIN			0x178
+#define QPHY_V10_60_PCS_RX_SIGDET_LVL			0x190
+#define QPHY_V10_60_PCS_ELECIDLE_DLY_SEL		0x1b8
+#define QPHY_V10_60_PCS_PCS_TX_RX_CONFIG1		0x1dc
+#define QPHY_V10_60_PCS_PCS_TX_RX_CONFIG2		0x1e0
+#define QPHY_V10_60_PCS_EQ_CONFIG4			0x1f8
+#define QPHY_V10_60_PCS_EQ_CONFIG5			0x1fc
+
+#endif
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
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h
new file mode 100644
index 000000000000..3150a494685e
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h
@@ -0,0 +1,109 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V10_60_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V10_60_H_
+
+#define QSERDES_V10_60_TXRX_RES_CODE_LANE_OFFSET_TX			0x034
+#define QSERDES_V10_60_TXRX_RES_CODE_LANE_OFFSET_RX			0x038
+#define QSERDES_V10_60_TXRX_LANE_MODE_1					0x080
+#define QSERDES_V10_60_TXRX_LANE_MODE_2					0x084
+#define QSERDES_V10_60_TXRX_LANE_MODE_3					0x088
+#define QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE1			0x0c8
+#define QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE2			0x0cc
+#define QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE3			0x0d0
+#define QSERDES_V10_60_TXRX_UCDR_FASTLOCK_FO_GAIN_RATE4			0x0d4
+#define QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE1			0x0e0
+#define QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE2			0x0e4
+#define QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE3			0x0e8
+#define QSERDES_V10_60_TXRX_UCDR_FASTLOCK_SO_GAIN_RATE4			0x0ec
+#define QSERDES_V10_60_TXRX_UCDR_PI_CTRL1				0x12c
+#define QSERDES_V10_60_TXRX_UCDR_PI_CTRL2				0x130
+#define QSERDES_V10_60_TXRX_UCDR_PI_CTRL3				0x134
+#define QSERDES_V10_60_TXRX_UCDR_PI_CTRL4				0x138
+#define QSERDES_V10_60_TXRX_SVS_MODE_CTRL				0x19c
+#define QSERDES_V10_60_TXRX_RXCLK_DIV2_CTRL				0x1a0
+#define QSERDES_V10_60_TXRX_RX_BAND_CTRL0				0x1a4
+#define QSERDES_V10_60_TXRX_RX_TERM_BW_CTRL0				0x1ac
+#define QSERDES_V10_60_TXRX_RX_TERM_BW_CTRL1				0x1b0
+#define QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE1				0x1b8
+#define QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE2				0x1bc
+#define QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE3				0x1c0
+#define QSERDES_V10_60_TXRX_UCDR_FO_GAIN_RATE4				0x1c4
+#define QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE1				0x1d0
+#define QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE2				0x1d4
+#define QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE3				0x1d8
+#define QSERDES_V10_60_TXRX_UCDR_SO_GAIN_RATE4				0x1dc
+#define QSERDES_V10_60_TXRX_UCDR_PI_CONTROLS				0x1e4
+#define QSERDES_V10_60_TXRX_AUXDATA_BIN_RATE3				0x200
+#define QSERDES_V10_60_TXRX_AUXDATA_BIN_RATE4				0x204
+#define QSERDES_V10_60_TXRX_EOM_MAX_ERR_LIMIT_LSB			0x218
+#define QSERDES_V10_60_TXRX_EOM_MAX_ERR_LIMIT_MSB			0x21c
+#define QSERDES_V10_60_TXRX_VGA_CAL_CNTRL1				0x280
+#define QSERDES_V10_60_TXRX_VGA_CAL_MAN_VAL				0x288
+#define QSERDES_V10_60_TXRX_GM_CAL					0x29c
+#define QSERDES_V10_60_TXRX_RX_EQU_ADAPTOR_CNTRL6			0x2b8
+#define QSERDES_V10_60_TXRX_SIGDET_ENABLES				0x2d4
+#define QSERDES_V10_60_TXRX_SIGDET_CNTRL				0x2d8
+#define QSERDES_V10_60_TXRX_SIGDET_LVL					0x2dc
+#define QSERDES_V10_60_TXRX_SIGDET_DEGLITCH_CNTRL			0x2e0
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B0				0x314
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B1				0x318
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B2				0x31c
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B3				0x320
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B4				0x324
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B5				0x328
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B6				0x32c
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B7				0x330
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B8				0x334
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B9				0x338
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE_0_1_B10			0x33c
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE2_B0				0x340
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE2_B1				0x344
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE2_B2				0x348
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE2_B3				0x34c
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE2_B4				0x350
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE2_B5				0x354
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE2_B6				0x358
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE2_B7				0x35c
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE2_B8				0x360
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE2_B9				0x364
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE2_B10				0x368
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE3_B0				0x36c
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE3_B1				0x370
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE3_B2				0x374
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE3_B3				0x378
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE3_B4				0x37c
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE3_B5				0x380
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE3_B6				0x384
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE3_B7				0x388
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE3_B8				0x38c
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE3_B9				0x390
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE3_B10				0x394
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B0				0x398
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B1				0x39c
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B2				0x3a0
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B3				0x3a4
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B4				0x3a8
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B5				0x3ac
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B6				0x3b0
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B7				0x3b4
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B8				0x3b8
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B9				0x3bc
+#define QSERDES_V10_60_TXRX_RX_MODE_RATE4_SA_B10			0x3c0
+#define QSERDES_V10_60_TXRX_Q_PI_INTRINSIC_BIAS_RATE32			0x478
+#define QSERDES_V10_60_TXRX_Q_PI_INTRINSIC_BIAS_RATE45			0x47c
+#define QSERDES_V10_60_TXRX_SIGDET_CAL_CTRL1				0x4c8
+#define QSERDES_V10_60_TXRX_SIGDET_CAL_CTRL2				0x4cc
+#define QSERDES_V10_60_TXRX_SIGDET_CAL_TRIM				0x4d0
+#define QSERDES_V10_60_TXRX_TX_BAND0					0x4e8
+#define QSERDES_V10_60_TXRX_TX_BAND1					0x4ec
+#define QSERDES_V10_60_TXRX_SEL_10B_8B					0x4f4
+#define QSERDES_V10_60_TXRX_SEL_20B_10B					0x4f8
+#define QSERDES_V10_60_TXRX_EQ_RCF_CTRL_RATE3				0x53c
+#define QSERDES_V10_60_TXRX_EQ_RCF_CTRL_RATE4				0x540
+#define QSERDES_V10_60_TXRX_PHPRE_CTRL					0x5e8
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 7af77572970e..3a4a0a9a9e4d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -42,6 +42,9 @@
 #include "phy-qcom-qmp-qserdes-com-v10.h"
 #include "phy-qcom-qmp-qserdes-txrx-v10.h"
 
+#include "phy-qcom-qmp-qserdes-com-v10_60.h"
+#include "phy-qcom-qmp-qserdes-txrx-v10_60.h"
+
 #include "phy-qcom-qmp-qserdes-pll.h"
 
 #include "phy-qcom-qmp-pcs-v2.h"
@@ -70,6 +73,8 @@
 
 #include "phy-qcom-qmp-pcs-v10.h"
 
+#include "phy-qcom-qmp-pcs-v10_60.h"
+
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
 /* QPHY_POWER_DOWN_CONTROL */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
