Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E862ECD6E71
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 01:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOufFLSVsmGIX+HpxJMJ8Emw0TAMteAikmwiNQcONl8=; b=dGi4lLIebiGtxe
	2YlMBwNcm5jzhfE83MkDqg//tuaDqrQDkLYJ6MmjxmWxch1HhPfD6N+zJcDhuNqt2tGs2+1CeYx+C
	EdHuagQZE5rHY97KNXJcXNmlTDrpW/ZmdkGusdZNq30dnj1OdIXvkpCUvr2eKbPQ2ZAPd8/nrF87J
	2WnOgKgr0aTvwGTWvr88zjD7HGVbLfrK6f0LdnGK6LUHITRBswU+JlszGHDHH/IcaSCyUgQmbaoBL
	iKayRzCKpLSTdviZdO5Eb+eBh5uRhE/bENV9xHoeVyef4LqifcftE2Kfb/qpypD+blNmrkF1uYPof
	wvcHKA3YITSNpfK3sajQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxi-0000000G05A-2jtN;
	Thu, 04 Jun 2026 01:33:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxg-0000000G03T-0a3i
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 01:33:33 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653GV3NC2368039
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 01:33:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5szkIkAg1aH60/0f1WIg1hk6vms8CLlPDs5chmgmuhs=; b=SnNdOSZeKhssPxQC
	QMtHA/xZnx8Si1YycqNUHJQts9sxukl2UWWywAvRHztMmxYkews3X85S11pnaI1A
	W2qQN0lGk7tLQxpjorS9Pa+MBJetPzrW/ILCcyz9it+ik2RODqE/TJ+wPSa8WbWB
	gtARacqercKZ+aaJcOGsHZRMadi9zuridx4DaDwIWIv+HSKczYANnagKSoOMjtCM
	NgSjx5XH5j80nwEwMLzF5VybESt6VGAzSAz6hZB6coEQ8Gtd/Xx26KFf9vvidejO
	E+bOQx/brVbiIVL8egRqRtPMlJIP3SVj1LqtrvBG3igUIlVnyroA42SJfKCtneT1
	jHXHyg==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejj3gkftg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 01:33:31 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-137f2083280so648342c88.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 18:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780536810; x=1781141610; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5szkIkAg1aH60/0f1WIg1hk6vms8CLlPDs5chmgmuhs=;
        b=J0r0PlkETXUToh/W6p7xTG7kWeUv5Kkc9SVhyvfgkaoLoFqbMeNiiy8AETf2tlqgwo
         BcsA30bHwz/kYJOp37suS7+OJX8ReMZu8/ayRT3t3bFUDrdm8KPNvTar+A3WyvGAIBrU
         4+2ztprL7ImmTyxYEqmrB/3Tk45PVix5Xux+ZvSXlmzYMdYDrDU+baGxaOxhWb+hxCQK
         DbeDISkiNswhyuI7ADlcEp+3pRqgatZwDVuZORRZ/3idPtpWgYwKbith8vHQGxnAoRDS
         t/6XfV051oAQlDHK470nK03gx0gkOF+wt3mbWclonsDeOUa65f8KMtZWgtP3auTAiUay
         NUMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780536810; x=1781141610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5szkIkAg1aH60/0f1WIg1hk6vms8CLlPDs5chmgmuhs=;
        b=GrJWVk5HrnKRLiH+lqbWszmkl3yLWAt2S8U23+BF1vn45CE0BpRJB7g1fHYDmfKjVn
         kEbR0sdz1f+336pGPCDHKECNQP8cFBluX/R4VkyNL7q0cFZgzYhGnJc7rLxbrajM5eoA
         Tpy4Zh43hphS2+8XVvWGxIvOhBkdv1Vrp9iBW/EVBQDeCoWjbdjlwIc9LDC9SXSx1Y3H
         mh6Z82m+PRfOt49gblybHplum9jhj7W6TmLKgoVd79VzXEUXXotF392xJuM1UFaQzS7o
         PEHiFK8n4OmDxQtycytwdTUijkrwyjQgAv6SHocmk5+EUSlQfS6r/EuYhRyuDcXSqCOW
         ec6A==
X-Forwarded-Encrypted: i=1; AFNElJ/jZ28n6W1QamxY0tTeYSilKmzuwZMTxsx3mVmhb8y4y0lM8+8YLaQ+Iehq2Uio5HgelCn0urpONB8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyuedsC+PDOFhnlQPgtSl5q6qA6T/IbV0Oh1IcWiCnP5JrhTrdi
	ahY830bkYOAJk6w5TUGeQx8XUJTNu4iNriTHGRqbSmaKBcEjY99S4VH0vEwiMD1OgrDMqKudllL
	3rEiLWizIr4SSdMTJoSpaV5PZXP2pn3MgDfIVMsmc3m0YqAYfZvr8hED7uMaXAOqpb8pJ11qAVr
	Ke
X-Gm-Gg: Acq92OEsu5NW6trGlDsVIMVIxnDfoIfgwAEgCT0l53V5+Kcq/4PcgKetEdNoCh9/6OE
	WYe4436bo4NFs29quim5Kj27MVG7ZkzQlkOrPIRLWMeYftdRJ+UOHmtXvidKF8LOuJXmXlsbtQx
	lj6wz3+VwoAAmqv+FpqFTp+tKrLrpKb0q+vethWL0UaHUpLyh8p5K4W3yoLFYsl4izBJwPFLvsz
	FGe3PusJY8QWylIOYJub9qs7INaa390OgSvqzkDETfjbVrMSPJ9Idq4oZPIPYBaraXsJp9oe5LJ
	S6hJEzGBjBwtuLMWM3meMCSxQ0Ipw2zp3c1oihHnFzJe0k2lhJ4d9CvNbbszys7j/mr2XpR1ldW
	iPKMiY3pqR8l8CSO9Thz7/V+FxfByhZ5+VceqEelE+16+ihxIv3NM+X/bluKE2HbkdCioYA==
X-Received: by 2002:a05:7022:e15:b0:137:f5dd:84a4 with SMTP id a92af1059eb24-137f6bf51d0mr2802489c88.41.1780536810195;
        Wed, 03 Jun 2026 18:33:30 -0700 (PDT)
X-Received: by 2002:a05:7022:e15:b0:137:f5dd:84a4 with SMTP id a92af1059eb24-137f6bf51d0mr2802466c88.41.1780536809695;
        Wed, 03 Jun 2026 18:33:29 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f553ab33sm2870659c88.10.2026.06.03.18.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 18:33:28 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Thu, 04 Jun 2026 01:32:58 +0000
Subject: [PATCH v2 04/10] phy: qcom-qmp: pcs: Add v10 register offsets
MIME-Version: 1.0
Message-Id: <20260604-hawi-phy-pcie-v2-4-be908d3560db@oss.qualcomm.com>
References: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
In-Reply-To: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Matthew Leung <matthew.leung@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780536795; l=1794;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=cIrdj8/8qr+RDIhnZn+O7Cu+D6iGtXuFpw2ZdlFjXfY=;
 b=c6mBXCFpB6UsMq03JTTOU5Ckldp+W9UICY4nsLzcYP1H1ervM9SbUDwq8/pltZxG6OW6CT+9w
 SHHiFgKUtWrCFIRuLbLmY9uNsfsrzrdrE9G+/NQaM4UcjhMfkew5l/6
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDAxMiBTYWx0ZWRfX+ZDQ3aagN011
 7dpXTJaB8v6llxK8wASYr9EvlVn+oD968oRgJ/vMybO81Y0fKOLBpn2Dykrr6Q5tK2ONcjZ2j7Q
 rjnTV3RllAWXr0QTJsvzNVqBJQmjttBTDFVltmnpOp4dep0gUAHEQ9YM+sf/9NQPShat5L5PgC6
 N+IMTo1XPP3pFJHiZPT7tdhCsA+6Ihzr+GJxa/pWQr8pfjl4lwUrSCtD10rhdW4vbvhCVZcSsas
 ejSHDAXbI3Lg1SlIugCrqV2AThqESdtf+Xhxwumo2Z27wn8y6nU30to4mFwTIjJL9kJbH9nhw7o
 o0aEMyue36WlceqrQrGr/PRpiDoLigZlu00qOpB7KxXps9DPG2FR9GBho9yGNaNDXhegiFktAkR
 Dz8oZhNCigjKEsvKYfLj7z5fE1wwujicjTP+hbOvmVLin0FsNqy2erZlSzVI6DwydaMjbKG8bW/
 VOYq26EoLsM8GlLA2pQ==
X-Proofpoint-GUID: 5Yfu6hPOztk5MfdK0wRqns_5k4h6yWlb
X-Proofpoint-ORIG-GUID: 5Yfu6hPOztk5MfdK0wRqns_5k4h6yWlb
X-Authority-Analysis: v=2.4 cv=UvhT8ewB c=1 sm=1 tr=0 ts=6a20d5eb cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=TapfYG-AjLmxlko4O74A:9 a=QEXdDO2ut3YA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606040012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_183332_300209_1067316A 
X-CRM114-Status: GOOD (  14.60  )
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

Hawi SoC bumps up the HW version of QMP phy to v10 for PCIe Gen3 x2.
Add the new PCS offsets in a dedicated header file.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h | 22 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h         |  2 ++
 2 files changed, 24 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h
new file mode 100644
index 000000000000..6faca6d8736a
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
+/* Only for QMP V10 PHY - USB/PCIe PCS registers */
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
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 76ac72410d31..7af77572970e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -68,6 +68,8 @@
 
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
