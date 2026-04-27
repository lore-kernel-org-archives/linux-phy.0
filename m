Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F9A1FF8867
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 21:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PHgKz8oAnrR2kA9IXGFdhdiXSYJVOyh9XJhWaFd6XI=; b=xj5zvENTq/RofI
	Q1jmFMR6BYDe8yWHLMjZaOgkZKSBZaKiycBDeOyBVC9q0sFCGjOhFo3+UsFs9ttUwR80RHvKG25PB
	fIVYVQa2MCAIprim6LfYC0W/WXFON9xMzNoR/4h4a9bA/yyJlY+drPc+4orIwpihJvPtU/M1P/DT4
	OOs+DqjRXlrA1OllgZg0CpO9MhWX+PnWBqzzxN512ssyEQdqJZQkhpjAlKf3Folp5oHq1E1KQ/Tag
	6qgh7phPtycw45jeRFCtRYys7aTiPqvw37mzRK3J628VQ22KDTVRIcbEBJF/TVQYSC8KZ5y6Kav42
	ffxtbfppEGJ2CbBRmx/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTj6-00000000Bv7-3Ls6;
	Mon, 27 Apr 2026 21:42:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTj3-00000000BtV-44Qr
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 21:42:47 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63RIxeLW2006439
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 21:42:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=jOnqOHnDIgR
	D38YYduiVZKhDrJNGyymPdUYwPxflU+g=; b=QmnCGXP7w66E4B3ZVS2p+RudyVG
	txhXOVcurLkyYuWbxxy26asXZTPOyyoy1BiYnc5uuDNprh19ZFfoQ65y6DogcogP
	kL+YZvHIjnznjbRmEXAIu0+mgcoG5xYQYRUbfeTMbCIsuyHWmRmEhvshy0Q2cHrR
	gMcQLdUnl5nwSFAniecwYVg4OfHLfueuzhL5d5U0vsUtzHuGsQt1m6U6kLaEaTEg
	ebjSXWg1rraME9FKkhWnpl6DA+tFmJzU6byjqqV4vPfyDAuNyDMtHydfiQpv1WwM
	Sr6Rhq4jeS5ToOdyxM3YlrWjY9vLgn+BcBrFJr2wwcHNqOMT+skC4NPmL3w==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dt7gkj3f7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 21:42:44 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-12c20d5d7f4so51817505c88.1
        for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 14:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777326164; x=1777930964; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jOnqOHnDIgRD38YYduiVZKhDrJNGyymPdUYwPxflU+g=;
        b=g5BQte/bTEgPk7OqM5htSqt6JoqrQ/sKmBL8oMz2xZ9T174yjGIK0dPGHJzutifYRo
         qnzPiqCRF/S5VPy8SBl+P9oB/VXMHnWAl0SVOII3f3E/2NGEuOmx0XteKBWvRGC7BxiZ
         iqDqdrHhj919hrNbpi7l4AD31B9QXcAOYJbq9QpEp6G4HwQDtFRLHP583Y+O8cC+B5fX
         5ZgENpqcFW7WNhA1cO9ggYXXawrUbI3utpvRZCYs7NAcQm4YzilrHxTSO5KfAIYqJwql
         /Zfcp3uLM6xJbY3jc99oQBR1H4Ktx7nR3CyqGPqw3AwakLk3VkGC0pcEGuzyQYGSygnO
         y4HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777326164; x=1777930964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jOnqOHnDIgRD38YYduiVZKhDrJNGyymPdUYwPxflU+g=;
        b=XkwdZlAXF5SiykHG3PINOe4wqHUVaAkL2e5CfYCI5lR/W4Qme8NTWfH/Lm8bwufREv
         2ezVumh4vW0y/XqvBymRLv3hm9hiXtKa4V1xVIxsubctcLvXxMUuqO+hTBQI/92U/9J6
         oIsZHUGX+WA+5rG7TFuzlgZpc3fo/6OShzLzMmG/f61vzSFc/lC9MEwMc8/1wJikH1bt
         feNorEYKseQk+i2eRZFogKjPevI9dc5RSXbqps/BON90XyBOr3y7ynZESC+Gg0/QrM4C
         PiH2n08nMn8uTyqIBxABe9euqwZpR83bHmradfaWCx8StVWX5xpDcplXeYH0lI6yhtGs
         +BDw==
X-Forwarded-Encrypted: i=1; AFNElJ/U7KEAlNIUl+bCAXen5VCmqPulKq50+M3oYkxyWT0SfoTq1wzoj2tp9hwTQ3UaVHgzZZm5T9qczjw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzIsqj7rlg034CAKgAg6oRJIZZEjp008P4IDqR6erGK7+Pe5YiJ
	6lWsJAG/YrCGYbG+aQZsPy4e21enr2gZM0SxWodJDs0TO73du1XtJaOweTDPmD7MUdQlp6g23nY
	KXmgXvrrH5mULqZH9uh2UIUTphdgjq6I9nc8vXvuJp+TBtF+PLCuSlzr2wDEn27RgpmNg
X-Gm-Gg: AeBDiesVMlUm7d8C1tyOrZSX90xbuYQF0yLHaDPBmBS+FyXUm82vxsOuydVx7pPzR8x
	OUo7HtRqo83ScICscG0LvythnfODVQGi59rKdMZoGurt7T8I41G5gRxId+dHAoIv56RdZEc1b2G
	4igT0RTHzcnvuMLwGVhkT1xNIjciOS8j57YSzibEHhYP0Z/HmZE0aasT6FD82m4BcD+Wuex/MKI
	6oJFMI3Y/6dCNdyp+x3MlmL4E3olssIUe2nJDRBlOEPFGA9HD70X/tSOwh7KE/wbmOc5Pf3o7pb
	3w68xrt/bFOH4+uzPGXAQAswknfzDQ2zyTXcO96pJPu87T/WX+O+zC5RhyBMei9ZQS4LJQIr6mf
	4JEn6eLQri6F5utBljUqt/l/cdRpWs7BNNmJ4jTzuAJ7hDjTjowR4p3T321SMG2f/I8qUtwUaCZ
	POBJ0kmNFCRA==
X-Received: by 2002:a05:7022:b8a:b0:12d:b8e5:5b4 with SMTP id a92af1059eb24-12ddd986d02mr322130c88.17.1777326163555;
        Mon, 27 Apr 2026 14:42:43 -0700 (PDT)
X-Received: by 2002:a05:7022:b8a:b0:12d:b8e5:5b4 with SMTP id a92af1059eb24-12ddd986d02mr322096c88.17.1777326162779;
        Mon, 27 Apr 2026 14:42:42 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12ddd927bbbsm653119c88.2.2026.04.27.14.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 14:42:42 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org
Cc: dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        krzysztof.kozlowski@oss.qualcomm.com, ronak.raheja@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] phy: qualcomm: qmp-combo: Add support for Hawi SoC
Date: Mon, 27 Apr 2026 14:42:17 -0700
Message-Id: <20260427214217.2735240-5-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
References: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: Iqqc-n6vdELO8EXhd4cCr6bmaFaVcw7j
X-Proofpoint-ORIG-GUID: Iqqc-n6vdELO8EXhd4cCr6bmaFaVcw7j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDIzMCBTYWx0ZWRfX6QioA8njk168
 yfrrVlJ4TW4n5MQFfAihkYfdy8b5lrRvqw7t6y8T4gg4wYC762swQ1Nbu81VEi8Z0LYouO5CBPL
 IPBPnawUCQKQaVOLnInE7ipr9GPQQuRkaHp+FPCgw5x3hl0P2wmfFFroCIpU7qnIBbIbim3GoGH
 I5YzZsvU80r3R05fvMyKhxOBRElGAlF9FI5UllssOgapma18HKfC6dNG1tDm8qOrJ/ritV8IyN3
 cPYRSfAicIasqQomrZg442wn/66AIGQrJ8gAgQofz20tznn+Slpztjilri8y/iphuloY/jlGm0v
 oh+QR9JHoJmWHjhZbW/FzeHRYaFVLTBfkF6S7YOdQLD+j4pYez1VEm5prEGAYBsjBBTxuOfCA7r
 Pi5CFdwF6m0R7dZE/7joH+p3UceVz01FMpqwakpYkBL+RjsaDJ+kBZjSqTP1Nd43AQQTLVFzzk1
 1sJ0Fn1SVb6ozzWSj8Q==
X-Authority-Analysis: v=2.4 cv=bJsm5v+Z c=1 sm=1 tr=0 ts=69efd855 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=94TNKR-hkEinp_EYofMA:9 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 suspectscore=0 malwarescore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_144246_139508_90E13020 
X-CRM114-Status: GOOD (  20.68  )
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

Add support for the USB3-DP combo PHY found on Hawi platform.

The QMP PHY for Hawi uses QSERDES V10 register layouts. Add the required
PHY sequences from the hardware programming guide and new V10 register
header files. Also add a new v10 offset structure to incorporate the new
COM AON register module.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 .../phy/qualcomm/phy-qcom-qmp-com-aon-v10.h   |  15 ++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 231 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h    |  15 ++
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h   |  13 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h   |  19 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h   |  34 +++
 .../qualcomm/phy-qcom-qmp-qserdes-com-v10.h   |  89 +++++++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h  |  89 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   5 +
 9 files changed, 506 insertions(+), 4 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-com-aon-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-com-aon-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-com-aon-v10.h
new file mode 100644
index 000000000000..6542b586be89
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-com-aon-v10.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2026, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_COM_AON_V10_H_
+#define QCOM_PHY_QMP_COM_AON_V10_H_
+
+/* Only for QMP V10 PHY - COM AON registers */
+
+#define QPHY_V10_COM_AON_USB3_AON_TOGGLE_ENABLE         0x00
+#define QPHY_V10_COM_AON_DP_AON_TOGGLE_ENABLE           0x04
+#define QPHY_V10_COM_AON_DUMMY_STATUS                   0x08
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 93f1aa10d400..53b709ea93d5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -32,6 +32,7 @@
 #include "phy-qcom-qmp.h"
 #include "phy-qcom-qmp-pcs-aon-v6.h"
 #include "phy-qcom-qmp-pcs-aon-v8.h"
+#include "phy-qcom-qmp-pcs-aon-v10.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 #include "phy-qcom-qmp-pcs-misc-v4.h"
 #include "phy-qcom-qmp-pcs-misc-v5.h"
@@ -40,6 +41,7 @@
 #include "phy-qcom-qmp-pcs-usb-v5.h"
 #include "phy-qcom-qmp-pcs-usb-v6.h"
 #include "phy-qcom-qmp-pcs-usb-v8.h"
+#include "phy-qcom-qmp-pcs-usb-v10.h"
 
 #include "phy-qcom-qmp-dp-com-v3.h"
 
@@ -49,9 +51,12 @@
 #include "phy-qcom-qmp-dp-phy-v5.h"
 #include "phy-qcom-qmp-dp-phy-v6.h"
 #include "phy-qcom-qmp-dp-phy-v8.h"
+#include "phy-qcom-qmp-dp-phy-v10.h"
 
 #include "phy-qcom-qmp-usb43-pcs-v8.h"
 
+#include "phy-qcom-qmp-com-aon-v10.h"
+
 /* QPHY_V3_DP_COM_RESET_OVRD_CTRL register bits */
 /* DP PHY soft reset */
 #define SW_DPPHY_RESET				BIT(0)
@@ -268,6 +273,36 @@ static const unsigned int qmp_v8_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V8_TX_TRANSCEIVER_BIAS_EN,
 };
 
+static const unsigned int qmp_v10_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V10_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V10_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V10_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V10_PCS_POWER_DOWN_CONTROL,
+
+	/* In PCS_USB */
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V10_PCS_USB3_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V10_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
+
+	[QPHY_PCS_CLAMP_ENABLE]		= QPHY_V10_PCS_AON_CLAMP_ENABLE,
+
+	[QPHY_AON_TOGGLE_ENABLE]	= QPHY_V10_COM_AON_USB3_AON_TOGGLE_ENABLE,
+	[QPHY_DP_AON_TOGGLE_ENABLE]	= QPHY_V10_COM_AON_DP_AON_TOGGLE_ENABLE,
+
+	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V10_COM_RESETSM_CNTRL,
+	[QPHY_COM_C_READY_STATUS]	= QSERDES_V10_COM_C_READY_STATUS,
+	[QPHY_COM_CMN_STATUS]		= QSERDES_V10_COM_CMN_STATUS,
+	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V10_COM_BIAS_EN_CLKBUFLR_EN,
+
+	[QPHY_DP_PHY_STATUS]		= QSERDES_V10_DP_PHY_STATUS,
+	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V10_DP_PHY_VCO_DIV,
+
+	[QPHY_TX_TX_POL_INV]		= QSERDES_V10_TX_TX_POL_INV,
+	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V10_TX_TX_DRV_LVL,
+	[QPHY_TX_TX_EMP_POST1_LVL]	= QSERDES_V10_TX_TX_EMP_POST1_LVL,
+	[QPHY_TX_HIGHZ_DRVR_EN]		= QSERDES_V10_TX_HIGHZ_DRVR_EN,
+	[QPHY_TX_TRANSCEIVER_BIAS_EN]	= QSERDES_V10_TX_TRANSCEIVER_BIAS_EN,
+};
+
 static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= QPHY_V8_USB43_PCS_SW_RESET,
 	[QPHY_START_CTRL]			= QPHY_V8_USB43_PCS_START_CONTROL,
@@ -2058,6 +2093,141 @@ static const struct qmp_phy_init_tbl x1e80100_usb43dp_pcs_usb_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
 };
 
+static const struct qmp_phy_init_tbl hawi_usb3_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE1_MODE1, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CP_CTRL_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP1_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP2_MODE1, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DEC_START_MODE1, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DEC_START_MSB_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START2_MODE1, 0x75),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_VCO_TUNE1_MODE1, 0x25),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_VCO_TUNE2_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0x5c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x5c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE1_MODE0, 0xc0),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CP_CTRL_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_PLL_CORE_CLK_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP1_MODE0, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP2_MODE0, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DEC_START_MSB_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START2_MODE0, 0x75),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_VCO_TUNE1_MODE0, 0x25),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_VCO_TUNE2_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SYSCLK_BUF_ENABLE, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_SYSCLK_EN_SEL, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_LOCK_CMP_CFG, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_VCO_TUNE_MAP, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CORE_CLK_EN, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_AUTO_GAIN_ADJ_CTRL_1, 0xb6),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_AUTO_GAIN_ADJ_CTRL_2, 0x4a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_AUTO_GAIN_ADJ_CTRL_3, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V10_COM_ADDITIONAL_MISC, 0x0c),
+};
+
+static const struct qmp_phy_init_tbl hawi_usb3_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_RES_CODE_LANE_TX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_RES_CODE_LANE_RX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_RES_CODE_LANE_OFFSET_TX, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_RES_CODE_LANE_OFFSET_RX, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_1, 0xe5),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_3, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_4, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_LANE_MODE_5, 0x5d),
+	QMP_PHY_INIT_CFG(QSERDES_V10_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V10_TX_PI_QEC_CTRL, 0x21, 1),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V10_TX_PI_QEC_CTRL, 0x05, 2),
+};
+
+static const struct qmp_phy_init_tbl hawi_usb3_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_FO_GAIN, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SO_GAIN, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_FASTLOCK_FO_GAIN, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_FASTLOCK_COUNT_LOW, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_PI_CONTROLS, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SB2_THRESH1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SB2_GAIN1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_UCDR_SB2_GAIN2, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_AUX_DATA_TCOARSE_TFINE, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_VGA_CAL_CNTRL1, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_VGA_CAL_CNTRL2, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_GM_CAL, 0x13),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_IDAC_TSETTLE_LOW, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x27),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_ENABLES, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_CNTRL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_DEGLITCH_CNTRL, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_LOW, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH2, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH3, 0xdf),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_00_HIGH4, 0xed),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_LOW, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH2, 0x91),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH3, 0xb7),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_RX_MODE_01_HIGH4, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_DFE_EN_TIMER, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_DCC_CTRL1, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_VTH_CODE, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_CAL_CTRL1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V10_RX_SIGDET_CAL_TRIM, 0x08),
+};
+
+static const struct qmp_phy_init_tbl hawi_usb3_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_LOCK_DETECT_CONFIG1, 0xc4),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_LOCK_DETECT_CONFIG2, 0x89),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_LOCK_DETECT_CONFIG3, 0x20),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_LOCK_DETECT_CONFIG6, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_REFGEN_REQ_CONFIG1, 0x21),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_RX_SIGDET_LVL, 0x55),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_RX_CONFIG, 0x0a),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_ALIGN_DETECT_CONFIG1, 0x88),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_ALIGN_DETECT_CONFIG2, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_PCS_TX_RX_CONFIG, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_PCS_TX_RX_CONFIG2, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_EQ_CONFIG1, 0x4b),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_EQ_CONFIG5, 0x10),
+};
+
+static const struct qmp_phy_init_tbl hawi_usb3_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V10_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
+};
+
 /* list of regulators */
 static struct regulator_bulk_data qmp_phy_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 21800, },
@@ -2198,6 +2368,7 @@ struct qmp_combo_offsets {
 	u16 dp_txa;
 	u16 dp_txb;
 	u16 dp_dp_phy;
+	u16 aon_toggle;
 };
 
 struct qmp_phy_cfg {
@@ -2270,6 +2441,7 @@ struct qmp_combo {
 	const struct qmp_phy_cfg *cfg;
 
 	void __iomem *com;
+	void __iomem *aon_toggle;
 
 	void __iomem *serdes;
 	void __iomem *tx;
@@ -2416,6 +2588,24 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v8 = {
 	.dp_dp_phy	= 0x3c00,
 };
 
+static const struct qmp_combo_offsets qmp_combo_offsets_v10 = {
+	.com		= 0x0000,
+	.aon_toggle	= 0x0400,
+	.txa		= 0x1400,
+	.rxa		= 0x1600,
+	.txb		= 0x1800,
+	.rxb		= 0x1a00,
+	.usb3_serdes	= 0x1000,
+	.usb3_pcs_misc	= 0x1c00,
+	.usb3_pcs	= 0x1e00,
+	.usb3_pcs_aon	= 0x2000,
+	.usb3_pcs_usb	= 0x2100,
+	.dp_serdes	= 0x3000,
+	.dp_txa		= 0x3400,
+	.dp_txb		= 0x3800,
+	.dp_dp_phy	= 0x3c00,
+};
+
 static const struct qmp_combo_offsets qmp_combo_usb43dp_offsets_v8 = {
 	.com		= 0x0000,
 	.usb3_pcs_aon	= 0x0100,
@@ -2705,6 +2895,27 @@ static const struct qmp_phy_cfg x1e80100_usb3dpphy_cfg = {
 	.regs			= qmp_v6_n4_usb3phy_regs_layout,
 };
 
+static const struct qmp_phy_cfg hawi_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v10,
+
+	.serdes_tbl		= hawi_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(hawi_usb3_serdes_tbl),
+	.tx_tbl			= hawi_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(hawi_usb3_tx_tbl),
+	.rx_tbl			= hawi_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(hawi_usb3_rx_tbl),
+	.pcs_tbl		= hawi_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(hawi_usb3_pcs_tbl),
+	.pcs_usb_tbl		= hawi_usb3_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(hawi_usb3_pcs_usb_tbl),
+
+	.regs			= qmp_v10_usb3phy_regs_layout,
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+};
+
 static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
 	.offsets		= &qmp_combo_offsets_v3,
 
@@ -3662,13 +3873,18 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *com = qmp->com;
-	void __iomem *pcs_aon = qmp->pcs_aon;
+	void __iomem *aon_toggle;
 	int ret;
 	u32 val;
 
 	if (!force && qmp->init_count++)
 		return 0;
 
+	if (qmp->aon_toggle)
+		aon_toggle = qmp->aon_toggle;
+	else
+		aon_toggle = qmp->pcs_aon;
+
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
@@ -3699,9 +3915,9 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
 
 	/* override hardware control for reset of qmp phy */
-	if (pcs_aon && cfg->regs[QPHY_AON_TOGGLE_ENABLE]) {
-		qphy_clrbits(pcs_aon, cfg->regs[QPHY_AON_TOGGLE_ENABLE], 0x1);
-		qphy_clrbits(pcs_aon, cfg->regs[QPHY_DP_AON_TOGGLE_ENABLE], 0x1);
+	if (aon_toggle && cfg->regs[QPHY_AON_TOGGLE_ENABLE]) {
+		qphy_clrbits(aon_toggle, cfg->regs[QPHY_AON_TOGGLE_ENABLE], 0x1);
+		qphy_clrbits(aon_toggle, cfg->regs[QPHY_DP_AON_TOGGLE_ENABLE], 0x1);
 	}
 
 	/* Use software based port select and switch on typec orientation */
@@ -4733,6 +4949,9 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
 	}
 	qmp->dp_dp_phy = base + offs->dp_dp_phy;
 
+	if (offs->aon_toggle)
+		qmp->aon_toggle = base + offs->aon_toggle;
+
 	ret = qmp_combo_clk_init(qmp);
 	if (ret)
 		return ret;
@@ -4986,6 +5205,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,glymur-qmp-usb3-dp-phy",
 		.data = &glymur_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,hawi-qmp-usb3-dp-phy",
+		.data = &hawi_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sar2130p-qmp-usb3-dp-phy",
 		.data = &sar2130p_usb3dpphy_cfg,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h
new file mode 100644
index 000000000000..6f3ea7d13556
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v10.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2026, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_DP_PHY_V10_H_
+#define QCOM_PHY_QMP_DP_PHY_V10_H_
+
+/* Only for QMP V10 PHY - DP PHY registers */
+
+#define QSERDES_V10_DP_PHY_VCO_DIV			0x070
+#define QSERDES_V10_DP_PHY_AUX_INTERRUPT_STATUS		0x0e0
+#define QSERDES_V10_DP_PHY_STATUS			0x0e4
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h
new file mode 100644
index 000000000000..b858381bc238
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v10.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2026, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_AON_V10_H_
+#define QCOM_PHY_QMP_PCS_AON_V10_H_
+
+/* Only for QMP V10 PHY - PCS AON registers */
+
+#define QPHY_V10_PCS_AON_CLAMP_ENABLE			0x00
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h
new file mode 100644
index 000000000000..0cc25e6acf58
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v10.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2026, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_USB_V10_H_
+#define QCOM_PHY_QMP_PCS_USB_V10_H_
+
+/* Only for QMP V10 PHY - USB PCS registers */
+
+#define QPHY_V10_PCS_USB3_POWER_STATE_CONFIG1		0x00
+#define QPHY_V10_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x08
+#define QPHY_V10_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x14
+#define QPHY_V10_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
+#define QPHY_V10_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
+#define QPHY_V10_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
+#define QPHY_V10_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x44
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
new file mode 100644
index 000000000000..ac0fc434984b
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2026, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V10_H_
+#define QCOM_PHY_QMP_PCS_V10_H_
+
+/* Only for QMP V10 PHY - PCS registers */
+
+#define QPHY_V10_PCS_SW_RESET				0x000
+#define QPHY_V10_PCS_PCS_STATUS1			0x014
+#define QPHY_V10_PCS_POWER_DOWN_CONTROL			0x040
+#define QPHY_V10_PCS_START_CONTROL			0x044
+#define QPHY_V10_PCS_POWER_STATE_CONFIG1		0x090
+#define QPHY_V10_PCS_LOCK_DETECT_CONFIG1		0x0c4
+#define QPHY_V10_PCS_LOCK_DETECT_CONFIG2		0x0c8
+#define QPHY_V10_PCS_LOCK_DETECT_CONFIG3		0x0cc
+#define QPHY_V10_PCS_LOCK_DETECT_CONFIG6		0x0d8
+#define QPHY_V10_PCS_REFGEN_REQ_CONFIG1			0x0dc
+#define QPHY_V10_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_V10_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
+#define QPHY_V10_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
+#define QPHY_V10_PCS_RATE_SLEW_CNTRL1			0x198
+#define QPHY_V10_PCS_RX_CONFIG				0x1b0
+#define QPHY_V10_PCS_ALIGN_DETECT_CONFIG1		0x1c0
+#define QPHY_V10_PCS_ALIGN_DETECT_CONFIG2		0x1c4
+#define QPHY_V10_PCS_PCS_TX_RX_CONFIG			0x1d0
+#define QPHY_V10_PCS_PCS_TX_RX_CONFIG2			0x1d4
+#define QPHY_V10_PCS_EQ_CONFIG1				0x1e0
+#define QPHY_V10_PCS_EQ_CONFIG2				0x1e4
+#define QPHY_V10_PCS_EQ_CONFIG5				0x1f0
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
new file mode 100644
index 000000000000..92fbde7c9c7c
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
@@ -0,0 +1,89 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2026, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_COM_V10_H_
+#define QCOM_PHY_QMP_QSERDES_COM_V10_H_
+
+/* Only for QMP V10 PHY - QSERDES COM registers */
+
+#define QSERDES_V10_COM_SSC_STEP_SIZE1_MODE1			0x00
+#define QSERDES_V10_COM_SSC_STEP_SIZE2_MODE1			0x04
+#define QSERDES_V10_COM_CP_CTRL_MODE1				0x10
+#define QSERDES_V10_COM_PLL_RCTRL_MODE1				0x14
+#define QSERDES_V10_COM_PLL_CCTRL_MODE1				0x18
+#define QSERDES_V10_COM_CORECLK_DIV_MODE1			0x1c
+#define QSERDES_V10_COM_LOCK_CMP1_MODE1				0x20
+#define QSERDES_V10_COM_LOCK_CMP2_MODE1				0x24
+#define QSERDES_V10_COM_DEC_START_MODE1				0x28
+#define QSERDES_V10_COM_DEC_START_MSB_MODE1			0x2c
+#define QSERDES_V10_COM_DIV_FRAC_START1_MODE1			0x30
+#define QSERDES_V10_COM_DIV_FRAC_START2_MODE1			0x34
+#define QSERDES_V10_COM_DIV_FRAC_START3_MODE1			0x38
+#define QSERDES_V10_COM_HSCLK_SEL_1				0x3c
+#define QSERDES_V10_COM_INTEGLOOP_GAIN0_MODE1			0x40
+#define QSERDES_V10_COM_INTEGLOOP_GAIN1_MODE1			0x44
+#define QSERDES_V10_COM_VCO_TUNE1_MODE1				0x48
+#define QSERDES_V10_COM_VCO_TUNE2_MODE1				0x4c
+#define QSERDES_V10_COM_BIN_VCOCAL_CMP_CODE1_MODE1		0x50
+#define QSERDES_V10_COM_BIN_VCOCAL_CMP_CODE2_MODE1		0x54
+#define QSERDES_V10_COM_BIN_VCOCAL_CMP_CODE1_MODE0		0x58
+#define QSERDES_V10_COM_BIN_VCOCAL_CMP_CODE2_MODE0		0x5c
+#define QSERDES_V10_COM_SSC_STEP_SIZE1_MODE0			0x60
+#define QSERDES_V10_COM_SSC_STEP_SIZE2_MODE0			0x64
+#define QSERDES_V10_COM_CP_CTRL_MODE0				0x70
+#define QSERDES_V10_COM_PLL_RCTRL_MODE0				0x74
+#define QSERDES_V10_COM_PLL_CCTRL_MODE0				0x78
+#define QSERDES_V10_COM_PLL_CORE_CLK_DIV_MODE0			0x7c
+#define QSERDES_V10_COM_LOCK_CMP1_MODE0				0x80
+#define QSERDES_V10_COM_LOCK_CMP2_MODE0				0x84
+#define QSERDES_V10_COM_DEC_START_MODE0				0x88
+#define QSERDES_V10_COM_DEC_START_MSB_MODE0			0x8c
+#define QSERDES_V10_COM_DIV_FRAC_START1_MODE0			0x90
+#define QSERDES_V10_COM_DIV_FRAC_START2_MODE0			0x94
+#define QSERDES_V10_COM_DIV_FRAC_START3_MODE0			0x98
+#define QSERDES_V10_COM_HSCLK_HS_SWITCH_SEL_1			0x9c
+#define QSERDES_V10_COM_INTEGLOOP_GAIN0_MODE0			0xa0
+#define QSERDES_V10_COM_INTEGLOOP_GAIN1_MODE0			0xa4
+#define QSERDES_V10_COM_VCO_TUNE1_MODE0				0xa8
+#define QSERDES_V10_COM_VCO_TUNE2_MODE0				0xac
+#define QSERDES_V10_COM_BG_TIMER				0xbc
+#define QSERDES_V10_COM_SSC_EN_CENTER				0xc0
+#define QSERDES_V10_COM_SSC_ADJ_PER1				0xc4
+#define QSERDES_V10_COM_SSC_PER1				0xcc
+#define QSERDES_V10_COM_SSC_PER2				0xd0
+#define QSERDES_V10_COM_POST_DIV_MUX				0xd8
+#define QSERDES_V10_COM_BIAS_EN_CLKBUFLR_EN			0xdc
+#define QSERDES_V10_COM_CLK_ENABLE1				0xe0
+#define QSERDES_V10_COM_SYS_CLK_CTRL				0xe4
+#define QSERDES_V10_COM_SYSCLK_BUF_ENABLE			0xe8
+#define QSERDES_V10_COM_PLL_IVCO				0xf4
+#define QSERDES_V10_COM_PLL_IVCO_MODE1				0xf8
+#define QSERDES_V10_COM_CMN_IETRIM				0xfc
+#define QSERDES_V10_COM_CMN_IPTRIM				0x100
+#define QSERDES_V10_COM_SYSCLK_EN_SEL				0x110
+#define QSERDES_V10_COM_RESETSM_CNTRL				0x118
+#define QSERDES_V10_COM_LOCK_CMP_EN				0x120
+#define QSERDES_V10_COM_LOCK_CMP_CFG				0x124
+#define QSERDES_V10_COM_VCO_TUNE_CTRL				0x13c
+#define QSERDES_V10_COM_VCO_TUNE_MAP				0x140
+#define QSERDES_V10_COM_VCO_TUNE_INITVAL2			0x148
+#define QSERDES_V10_COM_VCO_TUNE_MAXVAL2			0x158
+#define QSERDES_V10_COM_CLK_SELECT				0x164
+#define QSERDES_V10_COM_CORE_CLK_EN				0x170
+#define QSERDES_V10_COM_CMN_CONFIG_1				0x174
+#define QSERDES_V10_COM_SVS_MODE_CLK_SEL			0x17c
+#define QSERDES_V10_COM_CMN_MISC_1				0x184
+#define QSERDES_V10_COM_CMN_MODE				0x188
+#define QSERDES_V10_COM_PLL_VCO_DC_LEVEL_CTRL			0x198
+#define QSERDES_V10_COM_AUTO_GAIN_ADJ_CTRL_1			0x1a4
+#define QSERDES_V10_COM_AUTO_GAIN_ADJ_CTRL_2			0x1a8
+#define QSERDES_V10_COM_AUTO_GAIN_ADJ_CTRL_3			0x1ac
+#define QSERDES_V10_COM_ADDITIONAL_MISC				0x1b4
+#define QSERDES_V10_COM_ADDITIONAL_MISC_2			0x1b8
+#define QSERDES_V10_COM_ADDITIONAL_MISC_3			0x1bc
+#define QSERDES_V10_COM_CMN_STATUS				0x2c8
+#define QSERDES_V10_COM_C_READY_STATUS				0x2f0
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h
new file mode 100644
index 000000000000..84f1adee5ff7
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h
@@ -0,0 +1,89 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2026, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V10_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V10_H_
+
+/* Only for QMP V10 PHY - QSERDES TX/RX registers */
+
+/* TX registers */
+#define QSERDES_V10_TX_CLKBUF_ENABLE				0x08
+#define QSERDES_V10_TX_TX_EMP_POST1_LVL				0x0c
+#define QSERDES_V10_TX_TX_DRV_LVL				0x14
+#define QSERDES_V10_TX_RESET_TSYNC_EN				0x1c
+#define QSERDES_V10_TX_PRE_STALL_LDO_BOOST_EN			0x20
+#define QSERDES_V10_TX_TX_BAND					0x24
+#define QSERDES_V10_TX_INTERFACE_SELECT				0x2c
+#define QSERDES_V10_TX_RES_CODE_LANE_TX				0x34
+#define QSERDES_V10_TX_RES_CODE_LANE_RX				0x38
+#define QSERDES_V10_TX_RES_CODE_LANE_OFFSET_TX			0x3c
+#define QSERDES_V10_TX_RES_CODE_LANE_OFFSET_RX			0x40
+#define QSERDES_V10_TX_TRANSCEIVER_BIAS_EN			0x54
+#define QSERDES_V10_TX_HIGHZ_DRVR_EN				0x58
+#define QSERDES_V10_TX_TX_POL_INV				0x5c
+#define QSERDES_V10_TX_PARRATE_REC_DETECT_IDLE_EN		0x60
+#define QSERDES_V10_TX_BIST_PATTERN7				0x7c
+#define QSERDES_V10_TX_LANE_MODE_1				0x84
+#define QSERDES_V10_TX_LANE_MODE_2				0x88
+#define QSERDES_V10_TX_LANE_MODE_3				0x8c
+#define QSERDES_V10_TX_LANE_MODE_4				0x90
+#define QSERDES_V10_TX_LANE_MODE_5				0x94
+#define QSERDES_V10_TX_RCV_DETECT_LVL_2				0xa4
+#define QSERDES_V10_TX_TRAN_DRVR_EMP_EN				0xc0
+#define QSERDES_V10_TX_TX_INTERFACE_MODE			0xc4
+#define QSERDES_V10_TX_VMODE_CTRL1				0xc8
+#define QSERDES_V10_TX_PI_QEC_CTRL				0xe4
+
+/* RX registers */
+#define QSERDES_V10_RX_UCDR_FO_GAIN				0x08
+#define QSERDES_V10_RX_UCDR_SO_GAIN				0x14
+#define QSERDES_V10_RX_UCDR_FASTLOCK_FO_GAIN			0x30
+#define QSERDES_V10_RX_UCDR_SO_SATURATION_AND_ENABLE		0x34
+#define QSERDES_V10_RX_UCDR_FASTLOCK_COUNT_LOW			0x3c
+#define QSERDES_V10_RX_UCDR_FASTLOCK_COUNT_HIGH			0x40
+#define QSERDES_V10_RX_UCDR_PI_CONTROLS				0x44
+#define QSERDES_V10_RX_UCDR_SB2_THRESH1				0x4c
+#define QSERDES_V10_RX_UCDR_SB2_THRESH2				0x50
+#define QSERDES_V10_RX_UCDR_SB2_GAIN1				0x54
+#define QSERDES_V10_RX_UCDR_SB2_GAIN2				0x58
+#define QSERDES_V10_RX_AUX_DATA_TCOARSE_TFINE			0x60
+#define QSERDES_V10_RX_TX_ADAPT_POST_THRESH			0xcc
+#define QSERDES_V10_RX_VGA_CAL_CNTRL1				0xd4
+#define QSERDES_V10_RX_VGA_CAL_CNTRL2				0xd8
+#define QSERDES_V10_RX_GM_CAL					0xdc
+#define QSERDES_V10_RX_RX_EQU_ADAPTOR_CNTRL2			0xec
+#define QSERDES_V10_RX_RX_EQU_ADAPTOR_CNTRL3			0xf0
+#define QSERDES_V10_RX_RX_EQU_ADAPTOR_CNTRL4			0xf4
+#define QSERDES_V10_RX_RX_IDAC_TSETTLE_LOW			0xf8
+#define QSERDES_V10_RX_RX_IDAC_TSETTLE_HIGH			0xfc
+#define QSERDES_V10_RX_RX_IDAC_ENABLES				0x100
+#define QSERDES_V10_RX_RX_TERM_AC_BYPASS_DC_COUPLE_OFFSET	0x104
+#define QSERDES_V10_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x110
+#define QSERDES_V10_RX_SIGDET_ENABLES				0x118
+#define QSERDES_V10_RX_SIGDET_CNTRL				0x11c
+#define QSERDES_V10_RX_SIGDET_DEGLITCH_CNTRL			0x124
+#define QSERDES_V10_RX_RX_MODE_00_LOW				0x15c
+#define QSERDES_V10_RX_RX_MODE_00_HIGH				0x160
+#define QSERDES_V10_RX_RX_MODE_00_HIGH2				0x164
+#define QSERDES_V10_RX_RX_MODE_00_HIGH3				0x168
+#define QSERDES_V10_RX_RX_MODE_00_HIGH4				0x16c
+#define QSERDES_V10_RX_RX_MODE_01_LOW				0x170
+#define QSERDES_V10_RX_RX_MODE_01_HIGH				0x174
+#define QSERDES_V10_RX_RX_MODE_01_HIGH2				0x178
+#define QSERDES_V10_RX_RX_MODE_01_HIGH3				0x17c
+#define QSERDES_V10_RX_RX_MODE_01_HIGH4				0x180
+#define QSERDES_V10_RX_RX_MODE_10_LOW				0x184
+#define QSERDES_V10_RX_RX_MODE_10_HIGH				0x188
+#define QSERDES_V10_RX_RX_MODE_10_HIGH2				0x18c
+#define QSERDES_V10_RX_RX_MODE_10_HIGH3				0x190
+#define QSERDES_V10_RX_RX_MODE_10_HIGH4				0x194
+#define QSERDES_V10_RX_DFE_EN_TIMER				0x1a0
+#define QSERDES_V10_RX_DFE_CTLE_POST_CAL_OFFSET			0x1a4
+#define QSERDES_V10_RX_DCC_CTRL1				0x1a8
+#define QSERDES_V10_RX_VTH_CODE					0x1b0
+#define QSERDES_V10_RX_SIGDET_CAL_CTRL1				0x1e4
+#define QSERDES_V10_RX_SIGDET_CAL_TRIM				0x1f8
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index a873bdd7bffe..7af77572970e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -39,6 +39,9 @@
 #include "phy-qcom-qmp-qserdes-txrx-v8.h"
 #include "phy-qcom-qmp-qserdes-lalb-v8.h"
 
+#include "phy-qcom-qmp-qserdes-com-v10.h"
+#include "phy-qcom-qmp-qserdes-txrx-v10.h"
+
 #include "phy-qcom-qmp-qserdes-pll.h"
 
 #include "phy-qcom-qmp-pcs-v2.h"
@@ -65,6 +68,8 @@
 
 #include "phy-qcom-qmp-pcs-v8_50.h"
 
+#include "phy-qcom-qmp-pcs-v10.h"
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
