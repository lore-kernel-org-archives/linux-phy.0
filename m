Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 459A7CD6E6E
	for <linux-phy@archiver.kernel.org>; Thu,  4 Jun 2026 01:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D60/vXQtpjmSNf/GJwMrykIFHLzNCZ3T7SxXI6/cqtc=; b=k+3UKgS3Fzbv0L
	o5bnDL66D41j/+ZXCsI9K23coKeqDjy29ud0rmt6FDy03Ga16iV6fPle1zdVa473YeNobyBBZ2oHH
	Juwm3wA1MIGsGJjNNAfdAFvABkiCOTwoaEwaUqWAwS2O78AxizIfJ/cImrmwYppcqPwowAoSPy/Pv
	iaavQh9SMN+81AIfgkI3mWPRar2gk2rJGBkvoNu//Zf3co1D/CQpDWQc06lo+AJ9j3viiHyRR8Bmu
	JsqdeHsDugnwhm/R/G+XYj+yykbW2MRKeIOYIRSCWioz6cZ6fUgu4l9lGYn/a3imEEeWlifZRD/pE
	AvvaJYZFy+cnBbnLmAxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxm-0000000G08a-49mN;
	Thu, 04 Jun 2026 01:33:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUwxj-0000000G05x-3yyv
	for linux-phy@lists.infradead.org;
	Thu, 04 Jun 2026 01:33:37 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653H69lO2368067
	for <linux-phy@lists.infradead.org>; Thu, 4 Jun 2026 01:33:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cZNiqJWbEkNasW3EjtPd4UizYzo77rAvgCzDeRMLYD8=; b=RnNUhkkPIxx8SGT0
	8d1+5Eko5JvHga0wGRpOggQZJQF9VbIq/QW0u4KDW4WBwqEoqdudX3yuN51sNFSx
	qZtJmNUSmr2jDOMjlWkV9qSpEPAZMGRXtTwSXY8YHUjZyxy+DMI8vhdWCGlSCD9c
	HepWjEtz6v40s68oOs1SH9v+1y6+vGIaUrXQnSxQeMlseIpaDTNToGkiPaSJVL3N
	DZUUVSfsGcyFCSCRDqYDVe4Zbt8xXN3rnGYI6eEXm9uhv8UpIWwKUaEcWjjnlQeU
	zB0DYeVPkLzdbz6ITLcFTrE9GLg2GnAsq1HjZxNaoKfQ8Bv6Vjg6FXk9dXzPxH+Y
	velyEw==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejj3gkftu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 04 Jun 2026 01:33:34 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-137f81004cbso725095c88.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 18:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780536814; x=1781141614; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cZNiqJWbEkNasW3EjtPd4UizYzo77rAvgCzDeRMLYD8=;
        b=FCkMh5hH23RLI4iH2bqIh8/s4D9nmOg6ScQkOsRl1RhXaO1E1D4xdX+w72BfpH4c0g
         7Mjn8rbdCpJ4D9KMt7zbWmUOx0yYPOgVsr1iARQxjX0jwcTIAW2zaYhALDJoaQRBQT5N
         hu4lSQZpn74xtl2/grG7H/T5VqWf/6yEFJPn6t6wVwE3wBogWW77l5ysYwA+N6ua65th
         IEpaiSb60Z6vp4tfHEaMJYq6okDaAc8g2T8yJ1Np8jjXaZWmRSzCQBNN/fevUjcTdoC/
         tr6FJ7SCB9TMHEZEitXi5Wk2BH+OgohneWv8JQ9jhbrIRp14iDf38+IuUylGQkX0iPnX
         A/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780536814; x=1781141614;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cZNiqJWbEkNasW3EjtPd4UizYzo77rAvgCzDeRMLYD8=;
        b=bfo+X2hcYH9U35sHmIJC2Ae5I+c/f7g0878UVoEQe9r1KJ87EeyVWgMNBGNWCBMeDC
         zxJAZOAbiAbqFGEZQH0fqPErGj2ibiKN71FO+N2Ua+I5zn4aDSjgI4LbA/id8UG0/R9g
         P9t2EdzKVLZvJBOvMx8MGAfsKBF/tG6imO849rvc1+XIZt/9QX9xKPnguYjnlhDGLeZY
         CQUIL78ZNgj4+1HZQdNNvFqokMLV55UVQljuUGLlJwrWDsqRbKThBm3qJg49v7ia+S1j
         Be5EewuBYozwNeYLTXwSPbBP1IZPMqoT5cnsQIa2+brKf4xcfo/HnAUaK1qteQpenLUA
         Sf/w==
X-Forwarded-Encrypted: i=1; AFNElJ8e8bXVfQOcvz1yCXmJPr00UTrnDfcVtbh3ViPscG0V6YURICZshs4Qa5OV0DcTYfKsba6GEBBXE2Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvgT2T/mD7C+MlnYzKI+OmK+xqgmtI15nnBLgo9NWXU6OY4VyB
	tvadCYPp33Lhqd85c1+qu0AWGx1KwrNsxTmJqIzvEhqgbfl6+GpWX7oeAXp/ONMYV1o+iPS3Ena
	+o7uMqq65SfTQP7Xi8/zTcnBV3VgKmhaFrivoWbB3B2C1wH+oiXEAbV5nL47PKd8PSpbdGdevlj
	sa
X-Gm-Gg: Acq92OHgwXFM1jIzH7L16UynkWjZy30LoJCrzU5vwvdlQWXjDEX+Jai9hZH78+vPsEK
	Gn7QRJQ+WYz2vfhOf4OZqycxKFG3R/PQA3VZYcMt04/UEQqY57UBtY98muhNNWBKegmWIAlMQmE
	LaiUb3if3HTCYZCFKWN30LN78TqDKrbGGdOFLuIQ5MOo+805Wes1MrDcbtx6XWtRnuBzRtHyXLx
	WJhHMZgOKgNERfLZJMyNbtfx4N6VSYZV6O4gKx3wnEJAWI+blxZKNho3OSXFsuTIT1h9T3I7KAy
	9C8uS4JS3QAOA62icrUes2MEUnh2xGQEg7OaXQpU3wGxQQAijYgXX+3g+C748Ps7exze9OjWuRJ
	Dq8APGU2niQaBXUQG/16298OloffgOFx3+tX5CgKd7lnT1xdUy5pS06CLxOzGaheQZAdJJg==
X-Received: by 2002:a05:7022:481:b0:137:ec47:8ff2 with SMTP id a92af1059eb24-137f663ef61mr2413006c88.0.1780536814003;
        Wed, 03 Jun 2026 18:33:34 -0700 (PDT)
X-Received: by 2002:a05:7022:481:b0:137:ec47:8ff2 with SMTP id a92af1059eb24-137f663ef61mr2412998c88.0.1780536813497;
        Wed, 03 Jun 2026 18:33:33 -0700 (PDT)
Received: from [169.254.0.3] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-137f553ab33sm2870659c88.10.2026.06.03.18.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 18:33:32 -0700 (PDT)
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
Date: Thu, 04 Jun 2026 01:33:01 +0000
Subject: [PATCH v2 07/10] phy: qcom-qmp: qserdes-txrx: Add v10.60 register
 offsets
MIME-Version: 1.0
Message-Id: <20260604-hawi-phy-pcie-v2-7-be908d3560db@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780536795; l=7004;
 i=matthew.leung@oss.qualcomm.com; s=20260428; h=from:subject:message-id;
 bh=vfLZQA0CCbl1QXldfy6CoH4yZcYAenCkW3y8IH9Sbb8=;
 b=4z3h9nJGsLrWX7Rbt90jH/YhZjffMn+6VLL+O6t364FEubuIr7RFUgugDA0sEdkYQbDb3Gt9R
 sZwKgvV7OU2DyS2FfybTduLAFj32cO1pUCa/zOwX0M++d2s0RI39ui9
X-Developer-Key: i=matthew.leung@oss.qualcomm.com; a=ed25519;
 pk=aT25ggJo5PMHLN9N+TsZ3s/BVU++kEYuiFebPWe21+o=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDAxMiBTYWx0ZWRfX4xkVR419w1HS
 MsPmM1Cw/NvJqbC94j+kMva/AqiIhZ+eOLc0mRhD4/aQPWuxnoxwwHBBzJfjDlpGDVoBd8Bk10P
 dAUyT8Z6Aa3ZtNMD25RkaRNVKjpSWLU7hrpx7fsjJJhjoqSsahXwkC1mfa20h2AHUbElKwBDKQn
 hs3DSUlM/qDGIusLNS5sjUOxgadHwfY0bDrQTdtLKKZYhY/rYdjOiPkkvVfK0ORGx5T/OwavFm/
 JXeEKkulKMynS9eatzI756Or33j52A9quyI3scvsM7ENXxHg91pDOg6IMqHaijAKzFC9aN666ly
 b73QiW3jhJjHNxK08fb8jmG/TB0bqG4N+Os2N6MW3e24eBQecEnNenrV66hyJDxvJ0FTNNknUCF
 y0H6EKW+RM++vqbSxuVEtEKHqiW9Rt3H0pgk3AjGA0Dq92BdLwW6q99FLQ1BOPdRW3uppzPvrtP
 Pw8ZYuCvwMt43+Ew59g==
X-Proofpoint-GUID: VId95X_O2_VEkie--vRexMa9eRxnuFgQ
X-Proofpoint-ORIG-GUID: VId95X_O2_VEkie--vRexMa9eRxnuFgQ
X-Authority-Analysis: v=2.4 cv=UvhT8ewB c=1 sm=1 tr=0 ts=6a20d5ef cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=3YFJjVyaoLhYZoL7l5QA:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
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
X-CRM114-CacheID: sfid-20260603_183336_116588_AC53EBC1 
X-CRM114-Status: GOOD (  14.48  )
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

Hawi SoC bumps the HW version of QMP phy to v10.60 for PCIe. Add the new
qserdes TX RX offsets in a dedicated header file.

Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
---
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h    | 109 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |   1 +
 2 files changed, 110 insertions(+)

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
index 85da2581ef90..e461a000da48 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -43,6 +43,7 @@
 #include "phy-qcom-qmp-qserdes-txrx-v10.h"
 
 #include "phy-qcom-qmp-qserdes-com-v10_60.h"
+#include "phy-qcom-qmp-qserdes-txrx-v10_60.h"
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
