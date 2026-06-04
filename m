Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8AC1CD6E71
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 01:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vzyzh4VtvQlsMoCWXrPOFPz0cf3JXnDLsmtSbvf4Nqk=; b=RKL9BUG4EUkEFm
	JI5MVNaerGivlqZsuGb8wGf0t4RxpmHRRNLTkWFkPCrdutrP8pWHyxU+MCJ6AcfH3Opzx0Pzv/T6G
	xYsPCZj6kKl6e0vtbnQBE0OM5Y9Z7AQqQcj7RSm3zdmkpAZBwpQ4NXbjECijCOUPJhRzXVu7eB560
	PABqy3/twSmIOWOhgIQB/Ul3P+xd/LwezOY+rpxYgawPiVKq9kFqboQEAtlHA+Uo+jboxGa4/1PcE
	M0DHv4IPa0h5nUJzQgp1Tbs0+ehXxZsOE1DHhej9+Mxpfz7YzXKOyywuUXipsavtD4z8Vp/tKIYQE
	aFzQ0F1xkhDzZvgoGD0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxn-0000000G08u-0R0D;
	Thu, 04 Jun 2026 01:33:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxl-0000000G07a-26uh
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 01:33:38 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6540uK9l598640
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 01:33:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lxm1AY+eckklG1rGatwU6/63VjnztNUWWzVUPAAutqc=; b=oc7AI92gbY/ynkuY
	a2tWAIOtzQWFH8Aw8LPN2IBQ5cRjUj8LV3WXrLvd1fCZP7Z/AAoR/l/8X3L73P86
	OyywFlwJg76aCmIvelIhhvwmm7Nqqy0x87FGCjLITryoaIDCwxIjK5oTYPvsqPnW
	MPzI9iJ8mfKh+zhf/YklhIEJrN2Rz/ItjN3j86S2TlkW+77A52Vc3nG286RwoIop
	1hXEYCscUf+IhDD7MaT1SDcLLCs6a+l20S5IqzocobCHgUp520gqNfhlp/VakKL5
	iTqCwjIYM16vtYr5XSQxTmkprPyXR+7wEsDyItl/od1oOPj/ULUmufogNW+yZKeu
	cg2DEA==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejy8m032e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 01:33:37 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-13709ab38a8so229559c88.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 18:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780536816; x=1781141616; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lxm1AY+eckklG1rGatwU6/63VjnztNUWWzVUPAAutqc=;
        b=kZAmfBeb8wMhJ9ybHv0GaOx/3QoCLB2jtZtTvOEfbXTHeLJHkhGSPXGV8oCmJSJG94
         2LZH/cJXtxL2eJCzpdJSEZLLzaWDwj7fcwQ4ritHSEyhuB92Zf4+MjujRcl1tlHg7uWP
         YYwWKEW/8Lw3Pj6ANpH+LQ42nSjwn4GIFrVdDWVHU7v/LKkRemIO1351OtgXi7XwHL0J
         SL1+HUi6/Ss/Q0Lwe3JajvsxblHOlUl3vDcU0dOGS+7IiAm5/k8BolpIuAWBWJ6PY4UE
         u0nL8FjbNYG1VazEfHvnm8uhwTlc09/AziY2yyINiaqCnxXEScH+GsQxZ8ZZdK6Srcyq
         nTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780536816; x=1781141616;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lxm1AY+eckklG1rGatwU6/63VjnztNUWWzVUPAAutqc=;
        b=TjGezzF/LxZUHfbc7Oqnvd42Cj5mQiSQWkyZ7BxbydT2PcKQErXTJfiHJ0aCavNtT6
         M2xCv6vBPvMiHdTSa8Ska9+25lArzgzqxHR/tfXTZzUwl+AHY3c/7EzMDMWCNpMa+RzM
         OCQnl+KQ12aIVK4FlSY3qrYYonuuGz39A8bV7pJRkYyPRTCT0O3WfvbEP73qYGxp6opG
         phFqgUIRJKa+k1a8+9LGBugOf8Z92tiUphrgZOVHTYP9Cfb87qdn0CNvDHmTgp9yFcOE
         +wb+pvLQwBsZQGIY/nAAYO71SdaA4VmEwXyQOIuhckkHCyvo0GoVG8mDCa5ZKhG98nCS
         Cs7A==
X-Forwarded-Encrypted: i=1; AFNElJ/TWYPIjd8j25PPXOyCZ6y5ph1plFLt16fyL1Cf/703WWMST0D8mo++A1d/oTt0eCXhOQCyqWToThk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1ZluEYmvHbrz9uu7qDo6Fq7pQKxmaEWTALm0F5qa3HlpMA3xr
	2fmTZaC1CxYIq/ZMuWB6kG6hSLbZprJt8vq4TSjy424sGfUm2YeL9VgnyAnfMSfRXcIiVEzfxqm
	yv+FslkP+QP4w4yJpHA9SksUgkfljajvk1I+gKeRtb7ebZ4pGNBIasqmaEtC9Guvp6VDbGrOMLi
	VR
X-Gm-Gg: Acq92OEZlSKO3ELelBeaQqIYOLyd0MRriOPIsc2l1Qfgc0vURe8cv3kjsZXApNl990H
	nHBtpkuhepkccpBTpZF/ufyjaNZI1Jm8XmwGPcxcuwNyAUNci6aC119RQpNvP3AVVH3LNhcDHar
	ja7eM0KrdmXMHbB/brqqnvYLBE089PtdFYoGG29iMWYDRPuc30x3i9+kvh7gyApGo0wlaJ9gN7w
	Z/G++5UM4GOFkYBijl4PrdmSAlaPGKkvOJKF/8eBLjS2oagqtS3EkeYTs7BTUFwksTVFvmPw0QO
	rGMYpDS6yYxawdmF6X9/dkQDEQLGyPrBwPVTqjgmXspFr4HOuRvn6ibfXw8kArt7sEV5ZUCU+ws
	mlt3Kx/bD915ET5M/kwlP3Mn2srrA5PtAhZdaHxkjsJijyhUHzy+JOStJnr9MQZl+bjnwvg==
X-Received: by 2002:a05:7022:684:b0:136:e639:9c05 with SMTP id a92af1059eb24-137f6c2f5d4mr2946184c88.31.1780536816452;
        Wed, 03 Jun 2026 18:33:36 -0700 (PDT)
X-Received: by 2002:a05:7022:684:b0:136:e639:9c05 with SMTP id a92af1059eb24-137f6c2f5d4mr2946175c88.31.1780536815953;
        Wed, 03 Jun 2026 18:33:35 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f553ab33sm2870659c88.10.2026.06.03.18.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 18:33:35 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Thu, 04 Jun 2026 01:33:03 +0000
Subject: [PATCH v2 09/10] phy: qcom-qmp: pcs-pcie: Add v10.60 register
 offsets
MIME-Version: 1.0
Message-Id: <20260604-hawi-phy-pcie-v2-9-be908d3560db@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780536795; l=2258;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=F00WY5r3KpYlfjir5reJlgcKGKiWQ/l5Y3iLOGo4EiY=;
 b=9k9W1PbNAjQCFOz1jM9h88Z49vdjzddVAvYJrHWcjCPTa+RtCtE5TRBw+dR7XgbiegtN0XSJo
 8k739u9GzfnAn2ovtmbmsR69fWTwLxUERUUB0Fn+nX7Y15hsM+7bCg6
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Authority-Analysis: v=2.4 cv=KfDidwYD c=1 sm=1 tr=0 ts=6a20d5f1 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=YnN_nBVA4yaojiBpU0IA:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDAxMiBTYWx0ZWRfX/P+5xGCTf1D6
 soBsJ3ovAw0Ztw5AQv6kVKwEPEoViQuovFiIzf1FPDwqJ7/7fACtIh84CjB+Y2wYbKRSx2LvBJI
 fA6NCG3u6OnmAhYEys8hlmzqkoLCI+HqjwJFYBfdrFu9u3/x+lbQOmAyu4eXROBq9sN6YfZtRB6
 So9r/5pWKuLP6i6zV5N/tTkdTtbdwY0GZMjGmuLiuaK9w3PRCc0O18VPWHDwKulxjR2dc5OYq55
 Y6fmkfCKgV/GmHsWg/23N/YiyfTJao0bLWj8VV7Lz/216vOCFnEni9gNK7pNDFTxYl5DWcbODG5
 N2vbiPCwAO8wQrIaGSdzB77MvXtEF8SXpFgijq0Bm1cJQ7B42TPAKN9vBdWOmph2p2BcBN5PhQA
 fUrQHH5JLBRhaiPn+4TMnw/9S/jtcAV7bMDJ1KuJKpYMmymx7CE875w0lLP9/CW1y2q8nDXbka7
 KdfBws7ujSf/UqncM+w==
X-Proofpoint-GUID: HWadS7X4IogbpT_AiIDNyAcjXGluI2dI
X-Proofpoint-ORIG-GUID: HWadS7X4IogbpT_AiIDNyAcjXGluI2dI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_01,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_183337_549169_E9C75B48 
X-CRM114-Status: GOOD (  14.71  )
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

Hawi SoC uses QMP phy with version v10.60 for PCIe Gen4 x1. Add the new
PCS PCIe specific offsets in a dedicated header file.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |  1 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h    | 26 ++++++++++++++++++++++
 2 files changed, 27 insertions(+)

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

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
