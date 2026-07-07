Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2123C43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 20:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDHTq9cWd6wSsX6C0h8YmcR+Ro2l+oYUtF1hozhXcBo=; b=vFMRMeo7v49ayB
	jaTRsW9iA8Ux2F+YHxSwzBllThIHw63WzYDzCmsXfIGcEYa9PCX9w94P1+LyVPNfqKAmdA3nqqu69
	MVpDO+fTfvXqZaj1r7n6YWsyELONVukQ+KVMUCETXob2vcOxwGBCEaAu05oWSd0mK1wzxSfCieJL7
	ZzUt06X7pDvcqW70ZpqXoqOXE6UsLEG+O0eqWQdOzIOfWwX3QJv+ak+EMWfB2uAOXIAmPAe6oZqsm
	kt7DpsIF/MAjTVY4ZXiDxmoQQNHO3xZZbrkJ8dq2Are4C/iysc5ixOqKBS39R+eLDMW1JRpzhLrJD
	CpXz0+MsK7Od20nXXtnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whCTp-0000000FroS-2Aid;
	Tue, 07 Jul 2026 20:33:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whCTn-0000000FrnT-1Vpb
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 20:33:20 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 667J5Sxf370244
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 20:33:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CCkDZQmQnkTpF+OJAwOBLl/IzCnTr0eTl+X1vlkLePI=; b=lJS5yX7igehqHCWL
	MvsWfq/mT0HesLdvfmsqPtwl6N0CRbgABS9CFwQ1Qaml2FL6KUMCGsXLR/AYhRmq
	+R5Hc43gVMeHvo2dU43wfMNp2LiROn3QG/h9WZFPRSTVn4WM4E4P2GN59uattxlT
	wUesH+3DiYbOmO2PvDDzkNiwJwFBcHqK+xwfnU+/2ecB+J9GpKVSEITlDxbL5o0n
	QT2tDxCC8w1neabPUhWONtQkMwW7jskPUEXsweuIqTLI+SWCBAwvlUw7bWV2F20l
	TV82n1EhLwvRFeOO8yXb7JN4LZOHxj6kFRkDQqH9N+ZyjKE38UA8lJo5WJnJKst3
	YqFRlQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8vun3a9e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 20:33:18 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c88da04b719so4002840a12.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 13:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783456398; x=1784061198; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CCkDZQmQnkTpF+OJAwOBLl/IzCnTr0eTl+X1vlkLePI=;
        b=ZRD67rv+sYN76fHs4L90lGBpJREyhianCJycF0R5muwbYNFhqNhZeBHuIvoDwS8UFQ
         OunRwlRKFnmyIASLFn6oLFUKQwezAIHlwuRHQ7xqdiBLiOya3yJW9KfdDkIVUMM1XXQJ
         ZtuY4iWF89DwDqAyr+bjutxkqDVA6DN2Gjvw00QAL7tKrcZX5qcaReTsvGYB7EXKFoI5
         059ep5oeEDAcsMDGghq/3hWlaAjsK1RKuj34QXQeVA4oa2VWBdMwWI/D8zKAycM1sxn/
         PK0dyJT+jSoeA+Wh2B8voLZAmN41ubVzA8k7xXqUNqe3xm+f7wKSu+bS4GN/I4LJTWAD
         AYfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783456398; x=1784061198;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CCkDZQmQnkTpF+OJAwOBLl/IzCnTr0eTl+X1vlkLePI=;
        b=fsXTVXETRppWDFlSvSdqZgxqn0Jp5FLFBeO9kCxXat/5sRkomxAqqYAJGHhsie1X9e
         MVRSlP55juVWpZarmNuGv9JTWKp8zWDAR2F1PkBqmCCySm588BXzpP6xpCiV4+V/N46E
         hMojRrRrz/R67nWqNwukmWMPMvX3h6yBe1KQwgXxlhDeUTqaOa4mHUBA23uP0ZyPPPt8
         1G06H9IEWi6LAngEtd3VzZIKucNDaZEtmbOuxrBFTA4HUGzDA9XqKNceQZaLOAnohjW3
         w4V2Gbj4ORqlgl8TCMnXq9IGQVDmP9Al96kMqUdUi7UynY1hmETTa/q78fRYdNoQsa/z
         h2Ow==
X-Forwarded-Encrypted: i=1; AHgh+RrTLIvNnoQZOnQsrMY8gp3AFpHa7zhj3TSqMQz8PsMNQQYZMX/7vaw+r3hmZlssqek4dttTlpyOl50=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+gk+g6NOwiGRxIsg50UMvMI3CIEdQ9wBRSQAPgMIqQPYrQwIQ
	KCjsRid6qsdTohBBfJys646xbYFQNv8Hm96yvT8WH1cPYzU9Dwpl8gZuHN36xVTuIKuphaRsdWF
	b/feNA2MO7MwspiyGrddQDtgju+9wWv9kRwwD5rglbmVun3KiDHyIJjzPelykRxoR8pGI
X-Gm-Gg: AfdE7cm0eeNvlVuSw9HSPWhWRZ8phxX1EUo+ggVp9AYfgpuGiPG1dzeAHGpt0pbBxqc
	zZMixQXIGhCxuF6Gerpr7V33Gj8aYgbhJsqv9dZF2aLDE5YFmMuZxH1d16uABiNCMAdNdy0BNKj
	xbsp3mTbxi1ecst4Q+Vh2ppcInlcDCHgmjxTliAONQRrcyN8avAXRTYGL5IkaXyb92f4xUz2yeF
	Yn12Sy5r+JWei934s8g++6FfKE0s/aSL0Uv3V3qyM4AGtgCHCNNFCSspWeZ6MaSvF0cvj8Xp3H6
	LL9pV3AjGXZ0khZ4WUyN9yW10YA7XoePcY4cY/jJJJxKdV6hDAEcreyyUyZqbt+1RmNsv0mlGYs
	aR8MOQFwHvX/FAQiWEubDbRYXvRAdNgVpa3Q/SB9O9uQX2TIu
X-Received: by 2002:a17:90b:3c86:b0:381:b64b:5a28 with SMTP id 98e67ed59e1d1-38757d76a1amr5839873a91.30.1783456397967;
        Tue, 07 Jul 2026 13:33:17 -0700 (PDT)
X-Received: by 2002:a17:90b:3c86:b0:381:b64b:5a28 with SMTP id 98e67ed59e1d1-38757d76a1amr5839855a91.30.1783456397459;
        Tue, 07 Jul 2026 13:33:17 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31174839f89sm11975804eec.10.2026.07.07.13.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 13:33:16 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Tue, 07 Jul 2026 20:32:47 +0000
Subject: [PATCH v4 2/4] phy: qcom-qmp: Add v10 register offsets
MIME-Version: 1.0
Message-Id: <20260707-hawi-phy-pcie-v4-2-8d9cc6324947@oss.qualcomm.com>
References: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
In-Reply-To: <20260707-hawi-phy-pcie-v4-0-8d9cc6324947@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783456392; l=8539;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=0xAUSEOAr2rhWZfhsiNyllLVTAhJYJxfqRAjkQ20CNo=;
 b=GwVozCguACuUhdhoqzqo6pMOMbGYUmtDjbLnG/twYwzuIwr97GDU9QrR7Zv0Pt7UU4KXE4wc4
 5HNAR2oduIVAnexnINxyrqk/Udz1IvHSUVPWm0Xz4CpWWoU/PTc9odt
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDIwMSBTYWx0ZWRfXz6xMRb7icX+M
 McQg+D/VaW7lpBaOUCUGKoWW9ZgnrQuPQn3W45VJOUERucyZXdIcVDepeITNzcoQJcfS9oj2cHA
 46LxJKR4ZWyjVzxNXY/GkdzjwoCjrnw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDIwMSBTYWx0ZWRfX411hR/PWTvqp
 C6sU8sd6E4j0AuH1aPwCVfZd2uEffEPdqzQ4uOGVbfZoZW4sc3ZmumA+xwCBVFvNrBcyomaaMh1
 9jqUFOEAufYaKaUxXVCL3uaMv2T00yIdRXm/JmxUxuhDbx4UKM75aPdYksEevMH35qpNSMPd4FY
 z3EBGpTbzIjQSvMjhNTzKt3BpblHPeY6J9WY9pZo4A82DjVNKgm2TLy7T26A4UfhR06zvboRqQH
 gSFcHeL8yRRcAcJql0MyDodtpc3ads1L3g3HPbTLph9A/IyMBazu5IM/PZJiwPvWYSrCBugv8q2
 jb999KwHXVZY255psWHyxZ5GCjt1/TF32YrZXVcP5qpQ67e3dkk1X7y6iUF5sw7qWFGX4B51+4f
 MhHXH1j9B1px0ECH8WQof5h5sUtNy7QNh7gxMOZBSIVvcPE2rveyh0rZmM1F2Laho69Q/PYZKup
 GOzBVXoRETxPmbIiUdw==
X-Proofpoint-GUID: CNlLKqq-buHSOY2P9AppliXxqfYLMmiE
X-Authority-Analysis: v=2.4 cv=N+IZ0W9B c=1 sm=1 tr=0 ts=6a4d628e cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=n0CoORYsuzxYYYjHsOkA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: CNlLKqq-buHSOY2P9AppliXxqfYLMmiE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_05,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070201
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_133319_433433_6333CBAB 
X-CRM114-Status: GOOD (  15.80  )
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

Hawi SoC uses v10 register definitions for PCIe Gen3 x2. Add the new
register offset headers for all four sub-blocks:

 - QSERDES-COM offsets
 - QSERDES TX/RX offsets
 - PCS offsets
 - PCS PCIe-specific offsets

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h   | 18 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h        | 22 ++++++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h    | 49 ++++++++++++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h   | 47 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  5 +++
 6 files changed, 142 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d3effad7a074..5a26347d0fc9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -40,6 +40,7 @@
 #include "phy-qcom-qmp-qserdes-com-v8.h"
 #include "phy-qcom-qmp-pcs-pcie-v8.h"
 #include "phy-qcom-qmp-qserdes-txrx-pcie-v8.h"
+#include "phy-qcom-qmp-pcs-pcie-v10.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h
new file mode 100644
index 000000000000..2cdcc211bd93
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V10_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V10_H_
+
+/* Only for QMP V10 PHY - PCIE PCS registers */
+#define QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG2		0x00c
+#define QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG4		0x014
+#define QPHY_PCIE_V10_PCS_ENDPOINT_REFCLK_DRIVE		0x020
+#define QPHY_PCIE_V10_PCS_OSC_DTCT_ACTIONS		0x094
+#define QPHY_PCIE_V10_PCS_EQ_CONFIG1			0x0a4
+#define QPHY_PCIE_V10_PCS_RXEQEVAL_TIME			0x0f4
+#define QPHY_PCIE_V10_PCS_POWER_STATE_CONFIG6		0x0f8
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
new file mode 100644
index 000000000000..165ce8a28f61
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V10_H_
+#define QCOM_PHY_QMP_PCS_V10_H_
+
+/* Only for QMP V10 PHY - PCIe PCS registers */
+#define QPHY_V10_PCS_SW_RESET				0x000
+#define QPHY_V10_PCS_PCS_STATUS1			0x014
+#define QPHY_V10_PCS_POWER_DOWN_CONTROL			0x040
+#define QPHY_V10_PCS_START_CONTROL			0x044
+#define QPHY_V10_PCS_REFGEN_REQ_CONFIG1			0x0dc
+#define QPHY_V10_PCS_G12S1_TXDEEMPH_M6DB		0x168
+#define QPHY_V10_PCS_G3S2_PRE_GAIN			0x170
+#define QPHY_V10_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_V10_PCS_RATE_SLEW_CNTRL1			0x198
+#define QPHY_V10_PCS_PCS_TX_RX_CONFIG			0x1d0
+#define QPHY_V10_PCS_EQ_CONFIG2				0x1e4
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
new file mode 100644
index 000000000000..09199e7b4aac
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_COM_V10_H_
+#define QCOM_PHY_QMP_QSERDES_COM_V10_H_
+
+/* Only for QMP V10 PHY - QSERDES COM registers */
+#define QSERDES_V10_COM_SSC_STEP_SIZE1_MODE1		0x00
+#define QSERDES_V10_COM_SSC_STEP_SIZE2_MODE1		0x04
+#define QSERDES_V10_COM_CP_CTRL_MODE1			0x10
+#define QSERDES_V10_COM_PLL_RCTRL_MODE1			0x14
+#define QSERDES_V10_COM_PLL_CCTRL_MODE1			0x18
+#define QSERDES_V10_COM_CORECLK_DIV_MODE1		0x1c
+#define QSERDES_V10_COM_LOCK_CMP1_MODE1			0x20
+#define QSERDES_V10_COM_LOCK_CMP2_MODE1			0x24
+#define QSERDES_V10_COM_DEC_START_MODE1			0x28
+#define QSERDES_V10_COM_DIV_FRAC_START1_MODE1		0x30
+#define QSERDES_V10_COM_DIV_FRAC_START2_MODE1		0x34
+#define QSERDES_V10_COM_DIV_FRAC_START3_MODE1		0x38
+#define QSERDES_V10_COM_HSCLK_SEL_1			0x3c
+#define QSERDES_V10_COM_SSC_STEP_SIZE1_MODE0		0x60
+#define QSERDES_V10_COM_SSC_STEP_SIZE2_MODE0		0x64
+#define QSERDES_V10_COM_CP_CTRL_MODE0			0x70
+#define QSERDES_V10_COM_PLL_RCTRL_MODE0			0x74
+#define QSERDES_V10_COM_PLL_CCTRL_MODE0			0x78
+#define QSERDES_V10_COM_LOCK_CMP1_MODE0			0x80
+#define QSERDES_V10_COM_LOCK_CMP2_MODE0			0x84
+#define QSERDES_V10_COM_DEC_START_MODE0			0x88
+#define QSERDES_V10_COM_DIV_FRAC_START1_MODE0		0x90
+#define QSERDES_V10_COM_DIV_FRAC_START2_MODE0		0x94
+#define QSERDES_V10_COM_DIV_FRAC_START3_MODE0		0x98
+#define QSERDES_V10_COM_BG_TIMER			0xbc
+#define QSERDES_V10_COM_SSC_EN_CENTER			0xc0
+#define QSERDES_V10_COM_SSC_PER1			0xcc
+#define QSERDES_V10_COM_SSC_PER2			0xd0
+#define QSERDES_V10_COM_CLK_ENABLE1			0xe0
+#define QSERDES_V10_COM_SYS_CLK_CTRL			0xe4
+#define QSERDES_V10_COM_PLL_IVCO			0xf4
+#define QSERDES_V10_COM_SYSCLK_EN_SEL			0x110
+#define QSERDES_V10_COM_LOCK_CMP_EN			0x120
+#define QSERDES_V10_COM_VCO_TUNE_MAP			0x140
+#define QSERDES_V10_COM_CLK_SELECT			0x164
+#define QSERDES_V10_COM_CORE_CLK_EN			0x170
+#define QSERDES_V10_COM_CMN_CONFIG_1			0x174
+#define QSERDES_V10_COM_ADDITIONAL_MISC_3		0x1bc
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h
new file mode 100644
index 000000000000..d81ebdde0063
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V10_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V10_H_
+
+#define QSERDES_V10_TX_RES_CODE_LANE_OFFSET_TX			0x03c
+#define QSERDES_V10_TX_RES_CODE_LANE_OFFSET_RX			0x040
+#define QSERDES_V10_TX_LANE_MODE_1				0x084
+#define QSERDES_V10_TX_LANE_MODE_3				0x08c
+#define QSERDES_V10_TX_LANE_MODE_4				0x090
+#define QSERDES_V10_TX_LANE_MODE_5				0x094
+#define QSERDES_V10_TX_PI_QEC_CTRL				0x0e4
+
+#define QSERDES_V10_RX_UCDR_FO_GAIN				0x008
+#define QSERDES_V10_RX_UCDR_SO_GAIN				0x014
+#define QSERDES_V10_RX_UCDR_SB2_THRESH1				0x04c
+#define QSERDES_V10_RX_UCDR_SB2_THRESH2				0x050
+#define QSERDES_V10_RX_TX_ADAPT_PRE_THRESH1			0x0c4
+#define QSERDES_V10_RX_TX_ADAPT_PRE_THRESH2			0x0c8
+#define QSERDES_V10_RX_TX_ADAPT_POST_THRESH			0x0cc
+#define QSERDES_V10_RX_VGA_CAL_CNTRL2				0x0d8
+#define QSERDES_V10_RX_GM_CAL					0x0dc
+#define QSERDES_V10_RX_RX_IDAC_TSETTLE_LOW			0x0f8
+#define QSERDES_V10_RX_SIGDET_ENABLES				0x118
+#define QSERDES_V10_RX_SIGDET_CNTRL				0x11c
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
+#define QSERDES_V10_RX_DFE_CTLE_POST_CAL_OFFSET			0x1a4
+#define QSERDES_V10_RX_SIGDET_CAL_TRIM				0x1f8
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 11b7e03b4fab..e4237e374404 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -36,6 +36,9 @@
 #include "phy-qcom-qmp-qserdes-txrx-v8.h"
 #include "phy-qcom-qmp-qserdes-lalb-v8.h"
 
+#include "phy-qcom-qmp-qserdes-com-v10.h"
+#include "phy-qcom-qmp-qserdes-txrx-v10.h"
+
 #include "phy-qcom-qmp-qserdes-pll.h"
 
 #include "phy-qcom-qmp-pcs-v2.h"
@@ -62,6 +65,8 @@
 
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
