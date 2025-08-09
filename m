Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00447C87FCF
	for <linux-phy@archiver.kernel.org>; Sat,  9 Aug 2025 09:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAjaraUY0ORSqpY+MB082l/2b/opcgjL7b0YA94vtJE=; b=XS5hFVjuQyzyO4
	gx/ZxMkpBZIbz4dBHrkWAJlBhBVuW/ETiZg8pjP3AX1x72xmF50O5lzvGAUgkv4XpEw7XCc9n8BDU
	7eqc/8LAgSpITKdF+BY12FloN6IbwNm3FewU8vdIfcK6Ag9VGgVc19B/BEwLwFd15Vvs6qgDKJ9Mm
	pI5TTXF5wA1jPPCnlF+wByMzruoVa1G9/evqDIjO0vLnlXI+FNPPl17zlMc2BNtNRn78fnb/b8E4K
	P6JAv5OMotRsg0sa0G62neVrkAVYmHiXcNAGJOnH0F4NoutF8xVNHk6+mbLVdTTu8gM5KmXSXyG6u
	aw1YS8QfywQ79O67u6qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukgMn-00000004LDl-3App;
	Sat, 09 Aug 2025 09:59:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukgMk-00000004LCV-4Afi
	for linux-phy@lists.infradead.org;
	Sat, 09 Aug 2025 09:59:56 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5793UCNp001244
	for <linux-phy@lists.infradead.org>; Sat, 9 Aug 2025 09:59:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pfdvFrrM+5jMDJwt6jwYBWVqnP+7+N88m86azEJqjh8=; b=YnoH92f3WO2xz5sq
	M2lLhaYzDSqkjvkliqEKY21uI3PrD8agmSdLTx2UCfRbKurf8WifIKkx65TsLzoy
	0T8Dcr+886WCRI57u4GTxbamoeQ00pqD6RdtAc//7oBPCI4lCBfj5JIyp2jggviI
	qkCMHlgHiajT0AlunuTj0pygiRpQmlLsJ+Xk82y8vLtknOhj13ZlQINuxtB9xOFQ
	tdAhq1nUdnNIM4qUms/fJRPfSMLCwLzT4ODAcUWF5ysuYRIzV5iCB/W5Kmn5JM1s
	saOXldg6HdJ7wWTFBDWF8OOx2sm57pzJA+Zvfb9tspQou2I/S6/q1uA1iQsXhfBJ
	2a4CCA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dw9sghvy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 09:59:54 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b42a54b7812so1239656a12.1
        for <linux-phy@lists.infradead.org>; Sat, 09 Aug 2025 02:59:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754733593; x=1755338393;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pfdvFrrM+5jMDJwt6jwYBWVqnP+7+N88m86azEJqjh8=;
        b=nJ3kelSOEuPuvfxKr1+3DWDwhES3AIWa3dOnVqOUNLb/eQiTGh8E/oBlXHxvMlFNOO
         euT7T1DitnNpHdR2KmKg+DTnXbpBiqc2zo4oJLBHcoR358fDzKvGNblangkNEM6t/NU9
         HpYuCgai7kaROAuvD+44p0i2HRWEWV3qRPM/BpP4fh5Il7hDURWhPTLq5mthSjlAYkrW
         fVgOBIK3FYLxbYibepoDQpobT1+CWSwqc7lAFQAyrAt5eYN9IE+LtG9X/zoXwhrgE//s
         btF79JmmQiSOZTLHt1/4IYypLTs8HyZdvhPih4kuL+YG2FCQNCIQWDJx/sh7o/OIDEeT
         v0wQ==
X-Forwarded-Encrypted: i=1; AJvYcCXT718rn87ZXcuaW3Prte5fxiT2YbYVZUtASbgOYQeeAtcB7CnVPF6tb0p8ss7RWL/DX1hvsog9S9g=@lists.infradead.org
X-Gm-Message-State: AOJu0YwWlyU5tlhYWMFKElMKUOJMW8H4vmo5u3wsT9p2+y9vvY7Wu372
	1L8nCHtEYG/h8s+7EWRZI7Zx3sc6hJdtMsymmDOXOwhj5PvTZTo6mkM8cXGnyOhPkneg7yzcddO
	SAjYL7aJ7aNO/3WJMr6M08MHNvbClW897OABGw1C3Bww19A0rvHzWLbxiWrrbKuv03exp
X-Gm-Gg: ASbGncv7XvVTojL1LAZqXwK8FMWqIQ6PP3Ycku5QiDsgkpyOutbF3gDRtP71c9kLN2P
	ygUMSPjei6IzQhXGt3RsReNq5W5rYK9MJdD8Szv6HMcTuS3W5+QuKMm9iyeW1t4r+lB8hBkGACz
	XjV4bDZ1C+C/tW35XKO9n+SRO1x9l3YtGIr5546gD8w5ijbamuSQdMhv+GD2NiintRKZT/di+BI
	1FJfH/daOCSVPLaoAXzP1Yfpi23Sf3JUXtYAkWnu2qTHaI39GCpIMLEnokxKiVHGejjK+UzJ8nl
	OdwxAVXtx60oAhadTZWZkOb/nwOxSy0dCKlI/XEtZlBy1YjczVC/ajbrYmCt9Oc8kIGP7geFa4g
	=
X-Received: by 2002:a17:902:d2c4:b0:240:c962:fc8d with SMTP id d9443c01a7336-242c2003390mr76192555ad.9.1754733593278;
        Sat, 09 Aug 2025 02:59:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0k50RXo2/XRe5WIxd97PyuNrA6Lgia/QnBxamC0wzjqJqGvgSoOb6gGDkyYDDjPA/unZg7A==
X-Received: by 2002:a17:902:d2c4:b0:240:c962:fc8d with SMTP id d9443c01a7336-242c2003390mr76192245ad.9.1754733592815;
        Sat, 09 Aug 2025 02:59:52 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899b783sm225962845ad.133.2025.08.09.02.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 02:59:52 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 15:29:17 +0530
Subject: [PATCH 2/4] phy: qcom-qmp-pcie: add dual lane PHY support for
 SM8750
MIME-Version: 1.0
Message-Id: <20250809-pakala-v1-2-abf1c416dbaa@oss.qualcomm.com>
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
In-Reply-To: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754733575; l=11213;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=1N42w3w6DH/VymcotWPDEfatBEx3romphjTi1yXqqwA=;
 b=dIj203c04jKKdYvKKPIbduGkRR50HEENnvaYcanwg+Qax9MpH6vkZh3jUmhP/y4c+wOONTJcT
 d+osmmgrtI8AhujzEGIiYuKMv3vetOM54xEcKcd9Vmu4/B7+jt0d73x
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=J+Wq7BnS c=1 sm=1 tr=0 ts=68971c1a cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=gYF5Rn17l6h1GS1JcBsA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: eeNuF3RlnNMLqeV7lm-f4COpajgOt3KH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAxNSBTYWx0ZWRfX3I/gMmYqthJn
 RT03Rbd5u61kX+UTIeXHJhaZISq03BlNesx0rfxdUzSNjDyoXOu51l1r238NeOFjUCcS+mIQP+m
 y24gT2Pkty+6P3hIWtBDi1Q31+C9DfbcTuBoCAcLT4CQ19e8cyb9ObLSe8/bgesNokxUCqLUEuE
 w+/jRDDBUYj4RwRNcrgY7iC6oojUjvJw3j0Qi15PZO+TcEvrc2zS9J1osQoH/Z9lOqqh24fz4q9
 gXoPSzB8k0iJY2cZHKCVPgE51i4cFI9EHat/0RDbVnSv7b79YgFiKwbMzG2UfqAE+l/XwysedU6
 TkHLpFNRxFJYqM3lkGl81/tPVgD3M6F0jDytpwgJuTvkFd5J38aFe6WlAYnOoHc6/vLdAMkvSXo
 bKJN5KfR
X-Proofpoint-GUID: eeNuF3RlnNMLqeV7lm-f4COpajgOt3KH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 spamscore=0 clxscore=1011 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250809_025955_047946_84B01A5D 
X-CRM114-Status: GOOD (  14.23  )
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

The PCIe Gen3 x2 PHY for SM8750 uses new phy, add the
required registers and offsets for this phy.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 149 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h         |   2 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    |   4 +-
 3 files changed, 154 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..8fdc146ef73221392371c00afb21d673dbf46d49 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -93,6 +93,13 @@ static const unsigned int pciephy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V7_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V7_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V7_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -2590,6 +2597,108 @@ static const struct qmp_phy_init_tbl sm8650_qmp_gen4x2_pcie_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B6, 0xff),
 };
 
+static const struct qmp_phy_init_tbl sm8750_qmp_gen3x2_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_SSC_EN_CENTER, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_SSC_PER1, 0x62),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_SSC_PER2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_SSC_STEP_SIZE1_MODE0, 0xf8),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_SSC_STEP_SIZE2_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_SSC_STEP_SIZE1_MODE1, 0x93),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_SSC_STEP_SIZE2_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_SYS_CLK_CTRL, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_PLL_IVCO, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_CP_CTRL_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_CP_CTRL_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_BG_TIMER, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_LOCK_CMP2_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_LOCK_CMP1_MODE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_LOCK_CMP2_MODE1, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_DEC_START_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_DIV_FRAC_START3_MODE0, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_DIV_FRAC_START1_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_DIV_FRAC_START2_MODE1, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_DIV_FRAC_START3_MODE1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_ADDITIONAL_MISC_3,	0x0F),
+	QMP_PHY_INIT_CFG(QSERDES_V7_COM_CORE_CLK_EN, 0xA0),
+};
+
+static const struct qmp_phy_init_tbl sm8750_qmp_gen3x2_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_GM_CAL, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_00_HIGH,	0xBF),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_00_HIGH2, 0xBF),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_00_HIGH3, 0xB7),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_00_HIGH4, 0xEA),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_00_LOW, 0x3F),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_01_HIGH, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_01_HIGH2, 0x49),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_01_HIGH3, 0x1B),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_01_HIGH4, 0x9C),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_01_LOW, 0xD1),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_10_HIGH, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_10_HIGH2, 0x49),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_10_HIGH3, 0x1B),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_10_HIGH4, 0x9C),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_MODE_10_LOW, 0xD1),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_TX_ADAPT_PRE_THRESH1, 0x3E),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_TX_ADAPT_PRE_THRESH2, 0x1E),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_TX_ADAPT_POST_THRESH, 0xD2),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_UCDR_FO_GAIN, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_UCDR_SO_GAIN, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_UCDR_SB2_THRESH1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_VGA_CAL_CNTRL2, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_SIGDET_ENABLES, 0x1C),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_SIGDET_CNTRL, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_RX_IDAC_TSETTLE_LOW, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V7_RX_SIGDET_CAL_TRIM, 0x08),
+};
+
+static const struct qmp_phy_init_tbl sm8750_qmp_gen3x2_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V7_TX_LANE_MODE_1,	0x35),
+	QMP_PHY_INIT_CFG(QSERDES_V7_TX_LANE_MODE_3,	0x10),
+	QMP_PHY_INIT_CFG(QSERDES_V7_TX_LANE_MODE_4,	0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V7_TX_LANE_MODE_5,	0x7F),
+	QMP_PHY_INIT_CFG(QSERDES_V7_TX_PI_QEC_CTRL,	0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V7_TX_RES_CODE_LANE_OFFSET_RX, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V7_TX_RES_CODE_LANE_OFFSET_TX, 0x14),
+};
+
+static const struct qmp_phy_init_tbl sm8750_qmp_gen3x2_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_REFGEN_REQ_CONFIG1, 0x05),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_RX_SIGDET_LVL, 0x77),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_RATE_SLEW_CNTRL1, 0x0B),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_EQ_CONFIG2, 0x0F),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_PCS_TX_RX_CONFIG, 0x8C),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_G12S1_TXDEEMPH_M6DB, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_V7_PCS_G3S2_PRE_GAIN,	0x2E),
+};
+
+static const struct qmp_phy_init_tbl sm8750_qmp_gen3x2_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_EQ_CONFIG1, 0x1E),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG2, 0x1D),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xC1),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
+};
+
 static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_serdes_alt_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_IVCO, 0x0f),
@@ -3207,6 +3316,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_30 = {
 	.rx2		= 0x3a00,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v7 = {
+	.serdes		= 0x0,
+	.pcs		= 0x400,
+	.pcs_misc	= 0x800,
+	.tx		= 0x1000,
+	.rx		= 0x1200,
+	.tx2		= 0x1800,
+	.rx2		= 0x1a00,
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_20 = {
 	.serdes		= 0x1000,
 	.pcs		= 0x1200,
@@ -3996,6 +4115,33 @@ static const struct qmp_phy_cfg sm8550_qmp_gen3x2_pciephy_cfg = {
 	.phy_status		= PHYSTATUS,
 };
 
+static const struct qmp_phy_cfg sm8750_qmp_gen3x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v7,
+
+	.tbls = {
+		.serdes		= sm8750_qmp_gen3x2_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8750_qmp_gen3x2_pcie_serdes_tbl),
+		.tx		= sm8750_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8750_qmp_gen3x2_pcie_tx_tbl),
+		.rx		= sm8750_qmp_gen3x2_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8750_qmp_gen3x2_pcie_rx_tbl),
+		.pcs		= sm8750_qmp_gen3x2_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8750_qmp_gen3x2_pcie_pcs_tbl),
+		.pcs_misc	= sm8750_qmp_gen3x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8750_qmp_gen3x2_pcie_pcs_misc_tbl),
+	},
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v7_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
 static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 	.lanes = 2,
 
@@ -5099,6 +5245,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8650-qmp-gen4x2-pcie-phy",
 		.data = &sm8650_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8750-qmp-gen3x2-pcie-phy",
+		.data = &sm8750_qmp_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,x1e80100-qmp-gen3x2-pcie-phy",
 		.data = &sm8550_qmp_gen3x2_pciephy_cfg,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h
index c7759892ed2ea046b372ffac23c3ab75c8015a2b..4b7fcaa6a37458647d03e451ec22dae6337326d1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v7.h
@@ -17,6 +17,8 @@
 #define QPHY_V7_PCS_LOCK_DETECT_CONFIG3		0x0cc
 #define QPHY_V7_PCS_LOCK_DETECT_CONFIG6		0x0d8
 #define QPHY_V7_PCS_REFGEN_REQ_CONFIG1		0x0dc
+#define QPHY_V7_PCS_G12S1_TXDEEMPH_M6DB		0x168
+#define QPHY_V7_PCS_G3S2_PRE_GAIN		0x170
 #define QPHY_V7_PCS_RX_SIGDET_LVL		0x188
 #define QPHY_V7_PCS_RCVR_DTCT_DLY_P1U2_L	0x190
 #define QPHY_V7_PCS_RCVR_DTCT_DLY_P1U2_H	0x194
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h
index 91f865b11347af82c38a33e08bcae7b67a7bec26..6ab943ff57ff666e4f23f4ad0b4eff211c6dbfd0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h
@@ -40,6 +40,8 @@
 #define QSERDES_V7_RX_UCDR_SB2_GAIN1				0x54
 #define QSERDES_V7_RX_UCDR_SB2_GAIN2				0x58
 #define QSERDES_V7_RX_AUX_DATA_TCOARSE_TFINE			0x60
+#define QSERDES_V7_RX_TX_ADAPT_PRE_THRESH1			0xc4
+#define QSERDES_V7_RX_TX_ADAPT_PRE_THRESH2			0xc8
 #define QSERDES_V7_RX_TX_ADAPT_POST_THRESH			0xcc
 #define QSERDES_V7_RX_VGA_CAL_CNTRL1				0xd4
 #define QSERDES_V7_RX_VGA_CAL_CNTRL2				0xd8
@@ -50,7 +52,7 @@
 #define QSERDES_V7_RX_RX_IDAC_TSETTLE_LOW			0xf8
 #define QSERDES_V7_RX_RX_IDAC_TSETTLE_HIGH			0xfc
 #define QSERDES_V7_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x110
-#define QSERDES_V7_RX_SIDGET_ENABLES				0x118
+#define QSERDES_V7_RX_SIGDET_ENABLES				0x118
 #define QSERDES_V7_RX_SIGDET_CNTRL				0x11c
 #define QSERDES_V7_RX_SIGDET_DEGLITCH_CNTRL			0x124
 #define QSERDES_V7_RX_RX_MODE_00_LOW				0x15c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
