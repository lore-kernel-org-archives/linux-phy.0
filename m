Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60A80CFD317
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82XGPvV684w3MtlaVkPOQIBjc7rduunfaWxzOWnNgt0=; b=gJsR7kCoYFUJAq
	DzSCe5BKgLuBTT9BeVMBeK02V1eSGVivbvTTAyUDb67HYwWbyXqOhKStIXpfSIkfSwAsRTrVNx0Vr
	MlTpUQfYGsj9Wp9VIOIdxjwV5YmeR3ZASe5iK/AIYtV5uAC08OlSEvWltGftItqaXoYU0WbaVD55W
	hLz2j9mw5bmsg5N2Z57Xl8FL70mA41GdB+7bsxZyKqkAmnY1VvszW8oIFCQ+TX67Yhew3ZN3wHZmN
	lhiofSNlce5Ny2nl8CwebTaGXphRuTnZXdilXbJERit/VhHxd6Bdigp7tsJqqeY/JWfwdS0WLocre
	VRfTmyhr1R4J08kMBSSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTll-0000000BQFP-0RrA;
	Mon, 24 Nov 2025 10:26:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTli-0000000BQD9-2ktt
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:26:03 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8S2Gn2520233
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:26:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UJN91Us0KYV3AYYasTfTbBMHwMDXqbQXx4B47DImadk=; b=S/ytEuFfs1AHcrvP
	aFfgaxckTjoJOpFvoTDOtUCp+pPD3701/b/e5gn9vjixNsIIbapv21cgZv1MeEHa
	tUp3i3vou34rOf9DSX76PPtlcQ0fOQqSmNU6LwQmwhv+CbeVMjNpR+5rGbCzeKZG
	nIzoy1h9KX5fEPKE7jOdJhX0MIF9FGiP3ZXCoTCn//bJG1MIlVfi1YTG+Q3H+pOm
	/rXWiROXujWnFaIY2a4S/RtYmRCBIdVc7HMHptUi3djywR2N84448uoESq31chfC
	zON6hU8E1cEkrk/3XmoyMV90ZSisrSxb+lAR73Law3oqcRxW5C/TfDqEePt5eg+3
	ZOOn8g==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak69evka4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:26:02 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b969f3f5c13so4050477a12.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763979961; x=1764584761; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UJN91Us0KYV3AYYasTfTbBMHwMDXqbQXx4B47DImadk=;
        b=dgRN0Ss+4GGMQ/87ItU/dRrd2fou8g0UlUeOudP5Q2651YI+hE6QhBgOu1TQ2TEaLx
         GtpwcVneYKi4SrUeBfuPl0ereRBm9s10kxLm+CijKFQrTws3ofxMGeMvXd2FbSqgOWAs
         pxDiWD4gs0rUNL0j7F9w/whY67FETbUtZkxIwpJmgmLID/KWSRrlZ3TAD/Rspe4xIPdr
         DTFmXXLZwaiayagEldU+aow6diZaks67uJv/ZOCyFDQm1ixWhK5cihkHsjQQ4QVq33D8
         tyQulySLAdP+osZg7JcCIbomq8VnyzZnI8z9KNdA871YOpC9RmDA1vjAJWlLCxJBtJ2l
         E69Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763979961; x=1764584761;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UJN91Us0KYV3AYYasTfTbBMHwMDXqbQXx4B47DImadk=;
        b=vANdx/vWsmXgCzqhlYkej63hOuoZaYG4hoeN0lyoUZQa52kNIZFQN9qvrepz+i5vob
         H/h7bfiSpyb8EVMou/knDW7V53AS2CvN7yEcCe7R/USlLAx8W4QPJDeOOJY4UNI1zPrE
         oAqKRmUDQcFNd/aPJdaKTuJxwpPxnoIFJyYatm64NVend7qJiZt+w1BRoV57gOMASAdu
         9eDwuOFgu6zFdFhzPnnpoFkM3nxptR7F3T2ougOfq/aj/cm5brvN+cOIb6Vi9yA9cnef
         Be9CHdVxD5L74vOnyi/ylcQK+aO0K1j8hS8+ksen2mAS4ZrzOHSQWYM5nwfCysbkNe3o
         C5CA==
X-Forwarded-Encrypted: i=1; AJvYcCWvMfBvJ4yiecmx1IftqJ5V4btkILZ09YMoUmpJUrRcYfNYNSRHR0XA1/ehTgFAq/1HMKc5b1bKy/c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxgdp8RD5tZAgFy4m0PHFEK5OIndbWeS6VTydPQHlyNN4KwpBFh
	o8rock0edAOr8ejALo9joZ5NR+P6OhxwVwSco7/XPMJHod5xyQEz+WhjUfoSl4pk5uz/pmb4ZyK
	hR+1oRNt8n6fWN92CZDrVt63QbcjinxZQZxHLAmolTKcp0ZIAtZMvpdljP5fS62JBMpwe
X-Gm-Gg: ASbGncsyxCSQEJQY1PSovBsIqM1G9PliT9Z4+EbxW90fSedycbeBNrZoVdX24eDM4Ke
	xjSPR/jgNFIO9RhmjVSeaEK1APmFF7Dc8nZqPQmffqQENK609Tm3urkB39m01FHzMz/AnVG+WDV
	HRsAIlom42N6y3ziERbIZ6/T/6vlIAJkP/FaeuzYAvq+N1DHiBir+8OEnyCK9o3L4JjyDOqyMY8
	pCtbLTdkvW0mc2rvIgsaskBHZ7wYpmcBvBgyMTC0GhLgZC2ZNce+/QUHwASjVOr0C87X13J42kn
	f3QWt2qE8Q6qTb1q7jcANjUhLBkfcG2z2RjaQncxniZmevxCSDVtMd1/JxDJYHasJ/KAfntBsXJ
	nd84Dh1lVLkEq+ARrJj7x/syLDqVgIsjglO35aOlnScG3y7qT4StzQ7n0
X-Received: by 2002:a05:7022:150d:b0:119:e55a:9bff with SMTP id a92af1059eb24-11c9d855514mr6772709c88.27.1763979961243;
        Mon, 24 Nov 2025 02:26:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFRPcGr2ZPw3plOZb/NU+yiCKmsxJ8dkqeI5hv+8CseZTHcgFD85apxoyhdzZYVDS0QOQp1GA==
X-Received: by 2002:a05:7022:150d:b0:119:e55a:9bff with SMTP id a92af1059eb24-11c9d855514mr6772698c88.27.1763979960687;
        Mon, 24 Nov 2025 02:26:00 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93de6d5csm46140627c88.4.2025.11.24.02.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 02:26:00 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 02:24:38 -0800
Subject: [PATCH v4 5/5] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 Kaanapali
MIME-Version: 1.0
Message-Id: <20251124-kaanapali-pcie-phy-v4-5-d04ee9cca83b@oss.qualcomm.com>
References: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
In-Reply-To: <20251124-kaanapali-pcie-phy-v4-0-d04ee9cca83b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763979955; l=12376;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=jmtaogZbn9aOkGw6hyCg/Go/LMmt8JGCXuKMkAY7JYI=;
 b=XKWvpQhQeSb16Uvtm1rc/MmaBLHDu3UNj+s58v+YfOSb692R2o+bqv11ClARzISoEXBTd7NkM
 xHU21roCc2KDq1Lr/WEyv853tCCXNeZZHAiR4kUov4P881Sv2AUyEbN
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MiBTYWx0ZWRfX2xjKIiDqcKJc
 LgedyMOrb0lRnWic2NrrZBcVrs3zPO/ZOO0mmRFDGsBpR9H/IySRmJ7pDyYC6g5il3KAQNbocZU
 Z1ta/q+F4WDqgvN5QkDC0mnKlR773Q7Z3AMfPv8fyEuyTD08pbloXqES5xG5JFsPsI9iEvN0vJf
 XaMrrZs+qs+7ypceT/zjeQXRqzQXaKpSAcSKLJkP3Ly6JhUPZvF0g7XHo0BTJ7c2k+IYHlgOmKV
 8Ad1gbY2oDFUPLdVLVSt+T9166j1gky1+FxNhhQXWBvfvfgnPCCIWAy1tR3soAOoUYLsnwVm7Sz
 tS6kXj/b+HEiB4Kw0pEF9HURllmZzXvIgyNyrJXDWY581OK+WuuSU+zUbLucsCq3yPWhax+pU3D
 WVF/Fr+27kyQ3UReSMt+1Td3TMnJIw==
X-Authority-Analysis: v=2.4 cv=cMjtc1eN c=1 sm=1 tr=0 ts=692432ba cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=-dRu7WzfXNltm1_hq2sA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 2Uei_Ea_e0c2pr0sOT65aY2mqORbYZnK
X-Proofpoint-GUID: 2Uei_Ea_e0c2pr0sOT65aY2mqORbYZnK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0
 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_022602_724958_21BEA87B 
X-CRM114-Status: GOOD (  11.92  )
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

Add QMP PCIe PHY support for the Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 194 +++++++++++++++++++++++++++++++
 1 file changed, 194 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 86b1b7e2da86a8675e3e48e90b782afb21cafd77..7671aed5635f4f7295136e734452caf41a37c5fa 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -37,6 +37,9 @@
 #include "phy-qcom-qmp-pcs-pcie-v6_30.h"
 #include "phy-qcom-qmp-pcs-v6_30.h"
 #include "phy-qcom-qmp-pcie-qhp.h"
+#include "phy-qcom-qmp-qserdes-com-v8.h"
+#include "phy-qcom-qmp-pcs-pcie-v8.h"
+#include "phy-qcom-qmp-qserdes-txrx-pcie-v8.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
@@ -100,6 +103,13 @@ static const unsigned int pciephy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v8_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]                 = QPHY_V8_PCS_SW_RESET,
+	[QPHY_START_CTRL]               = QPHY_V8_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]               = QPHY_V8_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V8_PCS_POWER_DOWN_CONTROL,
+};
+
 static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= QPHY_V8_50_PCS_START_CONTROL,
 	[QPHY_PCS_STATUS]		= QPHY_V8_50_PCS_STATUS1,
@@ -3067,6 +3077,149 @@ static const struct qmp_phy_init_tbl sar2130p_qmp_gen3x2_pcie_ep_pcs_misc_tbl[]
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
 };
 
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE1, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_HSCLK_SEL_1, 0x01),
+
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0, 0xf8),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CP_CTRL_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORECLK_DIV_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP2_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SYS_CLK_CTRL, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP_EN, 0x46),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_LOCK_CMP_CFG, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CORE_CLK_EN, 0xa0),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_MISC_1, 0x88),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_CMN_MODE, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_VCO_DC_LEVEL_CTRL, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_COM_PLL_SPARE_FOR_ECO, 0x02),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_TX, 0x1b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_RX, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_LANE_MODE_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_LANE_MODE_2, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_LANE_MODE_3, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TRAN_DRVR_EMP_EN, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_BAND0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_BAND1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_SEL_10B_8B, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_SEL_20B_10B, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_PARRATE_REC_DETECT_IDLE_EN, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH2, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE3, 0x53),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE4, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_TX_PHPRE_CTRL, 0x20),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_FO_GAIN_RATE4, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE3, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE4, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_PI_CONTROLS, 0x15),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VGA_CAL_CNTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VGA_CAL_MAN_VAL, 0x89),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_EQU_ADAPTOR_CNTRL4, 0x2d),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_SIGDET_LVL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RXCLK_DIV2_CTRL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_BAND_CTRL0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_SVS_MODE_CTRL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_PI_CTRL1, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_PI_CTRL2, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SB2_THRESH2_RATE3, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN1_RATE3, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN2_RATE3, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B0, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B1, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B2, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B7, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B0, 0xe4),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B1, 0x63),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B2, 0xd8),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B3, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B4, 0x67),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B0, 0xa4),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B1, 0xa4),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B2, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B3, 0x9f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B4, 0x48),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B5, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE32, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE4, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_LSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_MSB, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE23, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE4, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE3, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE4, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V8_PCIE_RX_GM_CAL, 0x0d),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G12S1_TXDEEMPH_M6DB, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G3S2_PRE_GAIN, 0x2e),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_SIGDET_LVL, 0xcc),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_ELECIDLE_DLY_SEL, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG1, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG2, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_EQ_CONFIG4, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_EQ_CONFIG5, 0x22),
+};
+
+static const struct qmp_phy_init_tbl kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_TX_RX_CONFIG, 0xc0),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG2, 0x1d),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_ENDPOINT_REFCLK_DRIVE, 0xc1),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_OSC_DTCT_ACTIONS, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_EQ_CONFIG1, 0x16),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G3_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_EQ_CONFIG5, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_PRE_GAIN, 0x2e),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG1, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG3, 0x28),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG5, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G3_FOM_EQ_CONFIG5, 0xf2),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_G4_FOM_EQ_CONFIG5, 0xf2),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6, 0x1f),
+};
+
 struct qmp_pcie_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -3363,6 +3516,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_0 = {
+	.serdes		= 0x1000,
+	.pcs		= 0x1400,
+	.pcs_misc	= 0x1800,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
 	.serdes     = 0x8000,
 	.pcs        = 0x9000,
@@ -4425,6 +4588,34 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 	.phy_status             = PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg qmp_v8_gen3x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v8_0,
+
+	.tbls = {
+		.serdes			= kaanapali_qmp_gen3x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_serdes_tbl),
+		.tx			= kaanapali_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_tx_tbl),
+		.rx			= kaanapali_qmp_gen3x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_rx_tbl),
+		.pcs			= kaanapali_qmp_gen3x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_tbl),
+		.pcs_misc		= kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(kaanapali_qmp_gen3x2_pcie_pcs_misc_tbl),
+	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v8_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 	.lanes = 4,
 
@@ -5209,6 +5400,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,ipq9574-qmp-gen3x2-pcie-phy",
 		.data = &ipq9574_gen3x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,kaanapali-qmp-gen3x2-pcie-phy",
+		.data = &qmp_v8_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,msm8998-qmp-pcie-phy",
 		.data = &msm8998_pciephy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
