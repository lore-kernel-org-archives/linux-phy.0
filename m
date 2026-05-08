Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E48CCD342F
	for <linux-phy@archiver.kernel.org>; Fri,  8 May 2026 23:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5aGtaSdkuqBju3qR10AE/Gx4wtUa/iTRZG/hthBoHA=; b=OLJT3a6XkAL75M
	jKOAyKyQlMwEEj7Mhu1QieXvsmozf71xb5jVfFwJP+sJuSlZ7nS67/5CrSMVNa3kvcQbuLYH3NO1r
	b2phsXYY3WIo2+uCIZuIgt4/x4p9Ikj7srYz+23qZGO2OAQNxtehMJtLcD31BbSTbFq0ql2L1On4U
	Nj37yoqWHZJ5FaYN0GLxC4o3PE/6wP1cdFkDHP8CPwG9Cz7BGA3y4h9uK1AMnYANF6WwWnBuoB4ob
	K4Cg3Ure+OMXGpMG5D0nXzKpp3hdrMTGBNT4CYzxV+ey5Dp3ZyTDiCOLhwS21iipVHgF/yXt7MU3o
	EX9YF+Uxt+1+JRq7TEhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfS-00000007l3V-1fQl;
	Fri, 08 May 2026 23:31:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUfM-00000007kzd-3F4G
	for linux-phy@lists.infradead.org;
	Fri, 08 May 2026 23:31:34 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 648Hedh81661894
	for <linux-phy@lists.infradead.org>; Fri, 8 May 2026 23:31:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4Jwq4UTLu8GMYR6Kz5tygrHUgfDSbc+Ycn5uxVJf+w4=; b=ieC100vVZUxzDJgS
	cey/DAr9bVWpAizP+6VCR1rM+6LHiClNFtHvGF8GcWgCPWn/QIqdmwhAdOrrbHA7
	mNvVs0vKNKxR66YUvwiK7zqfpz2+RyHLAUKt30zhpeAHPYcHiQjiYn+7VGpih/OT
	wpJMiWzRclAy+xplg28v0L5J9+HQl/SPWCaeH8eIrRy0XnWuMVf4CnNTe15OJDGX
	TNp7JrxLCW2Rs+7us53fefj3cVDYPwRup/ATEge0CgSPIE7quB+z3YDUY07hxALP
	2sQI+0boQxn8sSQATG4URjTXQokq07X9rXKkCI7u6bLBcRhWYD0Foz2eAEQUjXnN
	JgFfng==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e1men0xvr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 23:31:31 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2efc342ef15so3736231eec.1
        for <linux-phy@lists.infradead.org>; Fri, 08 May 2026 16:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778283091; x=1778887891; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Jwq4UTLu8GMYR6Kz5tygrHUgfDSbc+Ycn5uxVJf+w4=;
        b=VpPBEGFxpv7zH6taL4GA3BwzjKlUin+WbpsnQOdhJ8EEEVBi1NRUxdeKwbdePqyyNn
         83gbLMQvu36xogfeH1DIxa6OjAZYr+8aWUvpMfirSPQkPSuDTkvb/1bGO2u3n1ItR+oB
         KGlidMX/qiNvvLjoblfySXyKN/ofSEBgD9Uj8UEARycxSGg4jJ5rE/nc+hdFVAOFd2vG
         AH1fgD79kdK/bU7mt67qHa1DkB9e2HTzaV39ZXPef2aEiyMyDWDuaxYvxooScKGH0qko
         SW2iQlkOyQAzx/HX0BcUXU6wHz5tL94t37SpKhySs6Vj+Elvy95ONwpsNbuI3x0bT17+
         ik2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778283091; x=1778887891;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4Jwq4UTLu8GMYR6Kz5tygrHUgfDSbc+Ycn5uxVJf+w4=;
        b=TtgM7dr1Iv5Pei39OtvReufzIDzsPCahrm16g973TXl6f0mwTVXrIMW5OgeYM/GpMo
         xmp3lv6XH/OOSdUldf+1b254ZBFyapJWrxPKcd8AW5JmmUZN7Bmz9MQLNMK4r+6uW1Wp
         OAfky1XUb7Tm11qP/75G/0ZvGQ2l/1FWCYUEpMWayicIshyBIphF7xtw8eWHfLb7Zqfb
         LC5/0HjriRnl05YQUuKNOe7WZBOc6/YuN65lzrkm6X9IO9S4iSMmwUtbcfVC+cTwj8jo
         ifguNDATfnlNlKYZgzWEvbRFU4FCweNqUjN5ro/SyhjSMxB4IzKEz5y7vdp8UswoBeDy
         hl9Q==
X-Forwarded-Encrypted: i=1; AFNElJ+acSQx4Fc2OrkG7mZIfpSVPIQgu95lJaZuYa3At9NqrjuMFeye1lPLfBToOwunBo+zg5QUkXEndn0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyzlP7nrsENo/Itj3rbnCkVpt3RWLBXwl6MDm831RKXbrjG7rvr
	eS+CbkvgfDBaLuvV3ySadxAQXgF9j4h6ClUCpBde3braqG21exnBKjDku1w23u4SJiQ0XHP7/Mq
	pNMRBgd/DHJkHJQBVv0WsD13O4tPvVZaxxNzEWsDE2i7ahe5DhRZLXtQtWUU0N9V5y9j8
X-Gm-Gg: Acq92OFV/Vc7rPrdFNY8ynDAlTRmrpRs69/hoo6RMI7I26cIxzpUUvZs/FrOeM/667h
	82+tMZSAVuLie+gLvxry/GsjMNWP7+m6RDqNvM2WFt0eo6kRUN6pTC0vV86Q2HA64b4TfeXLjHW
	kNZW6ecgKAnsnfmbsVY9Jfjye5IX11Bpzluthjn1dww2zY8zftrOXTOduA04sw0C4/sOE3tD7QW
	E0UYIInV74K44jBj1LKyt29JxYMW2Vv16QBp5LJnBE9Pf9Ku1ju3Fs5TvWvA4vNXO9KKXKegmZP
	XpNCxfrGmu0tYPCmh36pOur/XDj1vbR/9DYx6UECGVZUFGNctHlRqjb2YpWFJ8V5P0DYFssiSWw
	381PhddffEX2WRbrkjtzsjC80QjI9Dax/ICT9awbf+rCLXpmJ5rg7aumMIkQ=
X-Received: by 2002:a05:7300:f403:b0:2f9:c83:19f with SMTP id 5a478bee46e88-2f90c83140dmr1101294eec.31.1778283090750;
        Fri, 08 May 2026 16:31:30 -0700 (PDT)
X-Received: by 2002:a05:7300:f403:b0:2f9:c83:19f with SMTP id 5a478bee46e88-2f90c83140dmr1101280eec.31.1778283090198;
        Fri, 08 May 2026 16:31:30 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f88885b87dsm5033122eec.21.2026.05.08.16.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:31:29 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Fri, 08 May 2026 23:31:24 +0000
Subject: [PATCH 09/10] phy: qcom-qmp: pcs-pcie: Add v10.60 register offsets
MIME-Version: 1.0
Message-Id: <20260508-hawi-phy-pcie-v1-9-237b894353fc@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778283082; l=2262;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=wMHU3nK1VVHDCcTUl8O7/aLbjFc69oBh4Oult/TQmuk=;
 b=A8hKtWx1BXZIcVMuBhwjPbB6JcBQbBq0R8Vw2PupYFSFeoGe2Vb+lQXGvAEYAJavU4QF2GcFp
 lDPWq/1LXOuBg9wdITkNrIPoveZk00bCwJIaKyADpwcyY95wQ49BIwz
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA4MDIzMiBTYWx0ZWRfX/vEDHPuVOaAi
 wGBa0UqEX8OVBQKbE6fRaHz9Nwm9Yj68odNgRHuGxbq2DH3XhZczulIxsqsBhZ9kwIpUYpbI6Oj
 t93KjJqJTT8Ys9IeUWgvWvVOlUZBjEYd76eqaC/N0mRA5U+q6RabiSEdSN4s7YjdxhFGhXHOY05
 GyJD4ORBndVhBqrxk2qSwXFp/0dmChb67PXF1lv5BmTEuGk3WDnaUA9TR63M/j9VNMHD1ItI7bH
 Af4W2sFnMW5m5h4t1naIR4rj77hfaUN9vWK8wjmyYrgmN6ZAMBMfyU7fUfV3LntrF2KtM4LFX2z
 /Ba1ZImH6Lk0wDYSNtrtnD8faglYmT4dZ2Pvt1E7JsS0tvboT+IYE9ANnJUB2LdLYSssbFU74WE
 KWr2qUinDfKcyZqjvAIglSXNr3ArCMpQ0kwLdWidGinx6obRkmHLC8+AnZ+oEHqkso2az2Kr3tN
 yVvz946mf8pee70Wf+A==
X-Authority-Analysis: v=2.4 cv=LORWhpW9 c=1 sm=1 tr=0 ts=69fe7253 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=YnN_nBVA4yaojiBpU0IA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-ORIG-GUID: VwYcsq3n4rUKzYi1hd6dpxxixU0XMsDh
X-Proofpoint-GUID: VwYcsq3n4rUKzYi1hd6dpxxixU0XMsDh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-07_02,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 malwarescore=0 clxscore=1015 phishscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605080232
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_163132_953230_D4F60C86 
X-CRM114-Status: GOOD (  13.69  )
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
index 000000000000..e4a2bdc7c3f0
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
+#define QPHY_PCIE_V10_60_PCS_PCS_TX_RX_CONFIG			0x018
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
