Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9770CFA466
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Sc7m+gJ777FGQbbNcWsOXkwNeQZ4kIlFDyTnSQBOr4=; b=aV8bSS17oPTeKe
	L77JPhmfUHE/Y+tE/VUs6lPe3hahYxRPotbpeZ781HD7NQiyDlM1vhCft3EJ6PV0Wvrh25ThQnAws
	fgRZpJIquiQ3fCAk+OqiHS7WGg0CMtKzmXwvo+1zQqVWwrHJyEudJVrnvFFWxPOM435NS9m11iVbk
	pmj0ASwemFGoRZhwSmzpBJlK2bnSZklbOOsk/Qb9VvtL1MLB96jXTHzIPiZVsOiJ38Ti7CZpJIc3k
	MEZw/uNsE9XQd1kheN8qyolBDHDj6ObHo8rWNrfA4la7pSePet/g4+krAZvv+AVwi4uiF1D0zbMZz
	xfowerlRKga8Az0QQ09w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTlh-0000000BQCa-2Q4a;
	Mon, 24 Nov 2025 10:26:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTlf-0000000BQBL-3dmd
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:26:00 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO81B3Y1889861
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:25:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b/hMwykfqDmJcojkU+Aegd5sgEW6VKZtTzabtZT75W8=; b=pLE7c1F62ZCsCAPD
	e4ZhxKU3A92fvQkDQjrrITxIfM7qawUWye2m7Mh6sLlnrRvOJR2nQHpi7es8OSKf
	aKkJj6vXNu3jXTnEHHI8Y3gVZ9VrCMwXLgR1tU26OXA1++A9kAz8rMDw+SLmx7tl
	CKW8VdSeXwfOuKN4PvkiIJW1twb2vkwDXGczdD0B/66B0WckHZw7FzISkCkyteGd
	mznoqWSjJMkQ5PhjMtYI8XSD1EczEwDRCh4RlnvF5W3Smgbe9Km61P+YLRB2B2fz
	mX9mFTf3zu6tWnuVbvHoeTQocoxp57w1uq0Miex0jKQDC4HzQUnGxIeJkBeAy9BL
	HlAWyA==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak68dvmgw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:25:59 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-11b21dfe94dso5110854c88.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763979959; x=1764584759; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b/hMwykfqDmJcojkU+Aegd5sgEW6VKZtTzabtZT75W8=;
        b=QHrjAwpAnmjJdQpDnquixVEcUVhXMclvVZ2uAMdGIlwIHDKnsDpD/YRrlMJmaT2+iH
         z2ZiULUdAFpVispbnxqDqtt2AUp58p0U7hEfqU4Wj4u4i5EyLs0MzpJWBegl+Q6j+igf
         4RVgCX9+UMfroCJ7Sxz1OoOjAc2VGIcPJxF7BjlJRwef/P2z/BNgtFXRwjUtRPl0Zhih
         0NeCHarWJR6ED3T9+D44N5dPmBtImjdTk7oiPfh9bd2/HgB8S6DScrrovaxvy7qyls2q
         7WDjtj2FmH1F4TADyUIRaWv6RsPLtpuyJuFu2cYCGGsqHQSAG6xxTiGKkbn0uyYL6/HD
         fS1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763979959; x=1764584759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b/hMwykfqDmJcojkU+Aegd5sgEW6VKZtTzabtZT75W8=;
        b=pHarYBYgD5phkbdBbDQCvtDhydLo+gWy+gBDOLbQT4waNGsN4x+2h9s5v6XZHuchad
         W2UANaVWf2bV4inzzP+Qi9lo5SMg+/sc29zhHGWvV0VYgGjFJJVoDiYRNfg4WoLjhfwb
         4CqvIdZwojIC46sffa+xLT9ZYNEUTq3qKlzmNonHjiJsGCLlujw/aoSb4citSq+pOMAi
         GZ25eFZC0frPnun0k2AxowskR+jqYpoDqNWZ5vcNEt4+RlOzmjtStL8F4ezENPyyM6g8
         8dgcYEB7/IZ2DkPiD2sEECn0JFsD3kfCeutgAmW+i7zTr0kiBO1T9Mg2pU8purh7W1zJ
         hKUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhLmyvTSviqWIpinwa5zYVi5TpCMxpp9DCQITpcD7C/6CwgeWL4sdPU4nk0/P+ZJvAHUm7jORkPBs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1rkCTz5/gSynIvONWVgzb2EeUhjiIqdL9aKlmiLarV7ryBY/H
	I07jJf2zUe1LRA2u1cmdKMOpMTo3RFR2fGzatR1bnL6ZC9cS6eMHRqQWLSrzs5JgXvrpBhMCfyB
	OiipHJpKLg+LJZwqbxE0CZNAMqiltJlX+cK+fgYk3d3LLnd19ExyQZ2X9bs07lIYrGXdV
X-Gm-Gg: ASbGncvOOMUxnF5+2gpXQPFdLpfnZveJKHeVZ7tZbRTdI1fJXyqpaCCUsv5w64ou8kW
	hoIv4cfXul5ZDDhlOR2Mq3Bvtl96c5lSFUwXawDXcnawc9E8LJkpdzSiIzz11JcYFB1grfZzhGM
	JsSWYOgJu5aJRl64PKuVPA46D3vWURUr4iq5XKd29SD0ojhwUB2JCHl8sJJyevqwWGP9uvphdPQ
	XzXjIJZxksjszQEhT9Q5lwLxJp686YCkn3yraOS8LSvQun7R9dTZERdAsBgyFtGiv0M7rcfTOpe
	cxNrEPb/undDAgiThqH9rC5SUIkq+mqS7VQ0iE5SdWC4qrVNoTILz+VE4MoWtITIMZtoUEw3p7M
	5hFo132ioMKWl8SfSPt7l/nWUMGbdj/FeirDefrgHA7YvOzFfCDL82hrz
X-Received: by 2002:a05:7022:258e:b0:119:e569:f86a with SMTP id a92af1059eb24-11c9c955bbdmr7216051c88.7.1763979958652;
        Mon, 24 Nov 2025 02:25:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGthYjAqXFcNn0P/z5iQGkCaVdROeTMnrGrxpMt+PRoQV9VJGpe0ff5LdZwq7kFCm8f9nw4Gw==
X-Received: by 2002:a05:7022:258e:b0:119:e569:f86a with SMTP id a92af1059eb24-11c9c955bbdmr7216019c88.7.1763979958054;
        Mon, 24 Nov 2025 02:25:58 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93de6d5csm46140627c88.4.2025.11.24.02.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 02:25:57 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 02:24:35 -0800
Subject: [PATCH v4 2/5] phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe
 PHY v8 register offsets
MIME-Version: 1.0
Message-Id: <20251124-kaanapali-pcie-phy-v4-2-d04ee9cca83b@oss.qualcomm.com>
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
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763979955; l=4559;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=DMyrxN6zxkwuIu9tcvyVruPaU8b9DSq9n3Sg3itKewQ=;
 b=mHFHkNX7CUJhZUqILTQw76QAOoXGlU7bjT03UK9sM2hmMi/tKWxA/8QDBgZxPnYlYajw0Kyt1
 P51urhadpmIBJkgcdYJguq4mpy0h8uVZovdEV1usQ3FwXW0IjddX66k
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MiBTYWx0ZWRfXwIjBvPFZCdBn
 PeubOS3qF+cnUJ12s+8s0XBIvik68N3WR+oMx9wcRYfwPu5+yDYQ5iH+UJzZ+hnjtFk7fSpMH45
 nUBj5rXYEM7ZCg2YLZPbAlPxmJ7aEBkXST2Ez4CtHkq06NDztccTuGEvb2mexTIkJE7V+DVyRpa
 B9uHNdkjtpz4V9BB3ckIjP1lhkYiQ1PzI4suZI0ANvw6TpdNlIZ54mlS4bNngoN06J/xq46AY/S
 aZFOyRCGVVphr37MR0C0yFOHkdviAjzvIT1xexUExoX+EadLEt5G4R7EpFxIOhJHTe+ztdOljAR
 IbhurPZ5ZNIwW8KqPAAN3hx+0rXlJJQk17R9eo/efODFltZcq4Yeuz0KJo4blGKotpU8bcExU7H
 fKDIvgEUBoweUHzxWUO2ZhZh6PEiYA==
X-Proofpoint-GUID: 1mVMWYXm_0V_k3uoUMV-s5R7fGZTtkQr
X-Proofpoint-ORIG-GUID: 1mVMWYXm_0V_k3uoUMV-s5R7fGZTtkQr
X-Authority-Analysis: v=2.4 cv=UsBu9uwB c=1 sm=1 tr=0 ts=692432b7 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=AMX_CUzcla2ZGstc20cA:9 a=QEXdDO2ut3YA:10 a=Fk4IpSoW4aLDllm1B1p-:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_022559_916534_417D9829 
X-CRM114-Status: GOOD (  12.25  )
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

Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but requires
a completely unique qserdes-txrx register offsets compared to existing v8
offsets.

Hence, add a dedicated header file containing the FULL SET of qserdes-txrx
register definitions required for Kaanapali's PCIe PHY operation.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   | 71 ++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h
new file mode 100644
index 0000000000000000000000000000000000000000..181846e08c0f053c5cc7dbaa39a1d407ffdcbcdc
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h
@@ -0,0 +1,71 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V8_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_PCIE_V8_H_
+
+#define QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_TX		0x030
+#define QSERDES_V8_PCIE_TX_RES_CODE_LANE_OFFSET_RX		0x034
+#define QSERDES_V8_PCIE_TX_LANE_MODE_1		0x07c
+#define QSERDES_V8_PCIE_TX_LANE_MODE_2		0x080
+#define QSERDES_V8_PCIE_TX_LANE_MODE_3		0x084
+#define QSERDES_V8_PCIE_TX_TRAN_DRVR_EMP_EN		0x0b4
+#define QSERDES_V8_PCIE_TX_TX_BAND0		0x0e0
+#define QSERDES_V8_PCIE_TX_TX_BAND1		0x0e4
+#define QSERDES_V8_PCIE_TX_SEL_10B_8B		0x0f4
+#define QSERDES_V8_PCIE_TX_SEL_20B_10B		0x0f8
+#define QSERDES_V8_PCIE_TX_PARRATE_REC_DETECT_IDLE_EN		0x058
+#define QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH1		0x118
+#define QSERDES_V8_PCIE_TX_TX_ADAPT_POST_THRESH2		0x11c
+#define QSERDES_V8_PCIE_TX_PHPRE_CTRL		0x128
+#define QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE3		0x148
+#define QSERDES_V8_PCIE_TX_EQ_RCF_CTRL_RATE4		0x14c
+
+#define QSERDES_V8_PCIE_RX_UCDR_FO_GAIN_RATE4		0x0dc
+#define QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE3		0x0ec
+#define QSERDES_V8_PCIE_RX_UCDR_SO_GAIN_RATE4		0x0f0
+#define QSERDES_V8_PCIE_RX_UCDR_PI_CONTROLS		0x0f4
+#define QSERDES_V8_PCIE_RX_VGA_CAL_CNTRL1		0x170
+#define QSERDES_V8_PCIE_RX_VGA_CAL_MAN_VAL		0x178
+#define QSERDES_V8_PCIE_RX_RX_EQU_ADAPTOR_CNTRL4		0x1b4
+#define QSERDES_V8_PCIE_RX_SIGDET_ENABLES			0x1d8
+#define QSERDES_V8_PCIE_RX_SIGDET_LVL			0x1e0
+#define QSERDES_V8_PCIE_RX_RXCLK_DIV2_CTRL			0x0b8
+#define QSERDES_V8_PCIE_RX_RX_BAND_CTRL0			0x0bc
+#define QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL0			0x0c4
+#define QSERDES_V8_PCIE_RX_RX_TERM_BW_CTRL1			0x0c8
+#define QSERDES_V8_PCIE_RX_SVS_MODE_CTRL			0x0b4
+#define QSERDES_V8_PCIE_RX_UCDR_PI_CTRL1			0x058
+#define QSERDES_V8_PCIE_RX_UCDR_PI_CTRL2			0x05c
+#define QSERDES_V8_PCIE_RX_UCDR_SB2_THRESH2_RATE3			0x084
+#define QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN1_RATE3			0x098
+#define QSERDES_V8_PCIE_RX_UCDR_SB2_GAIN2_RATE3			0x0ac
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B0			0x218
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B1			0x21c
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B2			0x220
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B4			0x228
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE_0_1_B7			0x234
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B0			0x260
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B1			0x264
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B2			0x268
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B3			0x26c
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE3_B4			0x270
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B0			0x284
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B1			0x288
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B2			0x28c
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B3			0x290
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B4			0x294
+#define QSERDES_V8_PCIE_RX_RX_MODE_RATE4_SA_B5			0x298
+#define QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE32			0x31c
+#define QSERDES_V8_PCIE_RX_Q_PI_INTRINSIC_BIAS_RATE4			0x320
+#define QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_LSB			0x11c
+#define QSERDES_V8_PCIE_RX_EOM_MAX_ERR_LIMIT_MSB			0x120
+#define QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE23			0x108
+#define QSERDES_V8_PCIE_RX_AUXDATA_BIN_RATE4			0x10c
+#define QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE3			0x198
+#define QSERDES_V8_PCIE_RX_VTHRESH_CAL_MAN_VAL_RATE4			0x19c
+#define QSERDES_V8_PCIE_RX_GM_CAL			0x1a0
+
+#endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
