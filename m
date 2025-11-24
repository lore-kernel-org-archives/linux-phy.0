Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E850CFD31F
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rtw2I1PGKoQJhweVhigmLh/XXc7mvmNgJOhCo7CTgFk=; b=RETtjSVWWDGh2r
	2jx0x5tm5v+1CcRibX43OiCHdl/Kb8jBzeHsdQOVE3MIDSBxaysinV+cnAR1UOOF9RcrxTkE9+2T+
	g0/AC9m0CDtok00NISXtTzxT3svDpMFpcETjfquUAs77ZBDabFJLhJdgjJ1JAhl9jAvvzwpTvgYRi
	enmK5S5Hc3v/DnbpkJdFsJVWX6E9sr5UdjisMQlIvcmx+F+4Svmq69GbQqlNnDM8JQYUCxqoc71uv
	cAmEb1TfhUwPtuIHg+5JnklxDTF93BugYAyqrwjlR9aAyU3GOCtypCZMvU9HdIIC/M5wbgZK1vX4g
	P6DZJR348BT0VL0ztW/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTlj-0000000BQDw-0M4u;
	Mon, 24 Nov 2025 10:26:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTlh-0000000BQBv-0Se3
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:26:02 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO7xCwo2403975
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:26:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dQXVl7HhYAGGwBcSc00STLR56wP1a28fkEjKawQeBt4=; b=ku5PfHY/QKNjqFFE
	e2fg6K7ZbjHxoMxPMiv1bFFzcfnhBpUAs1ac+8UBGv4sy5EjFSM5KQ0IN0S6A2mt
	SvbCBX5cbJj6HXphdFuNQ3MTyGCvHzehr5qLdG5GZdDU+9ZCobhDgJxKeNoBg+0C
	rEFbMDL2KV1MTO0ZAuhBtZmdmbYc5aVVGeUzUqskY4FIiOtEKCtxbzyfvCxwXqJM
	6jgt+zMVfE0u8Od50J70rhQTjbLwKP+QMOwnnU4CW5dPdK/mu3+r89XCh8ObnTzn
	0GS1vUeAAVb8VmFJqikhqNnhjEhUO5sH0A1sC5sK/jWnMzzAaPxIqfyG4Ow3KYEz
	y60aNA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak67x4n9e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:26:00 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-ba265ee0e34so3729830a12.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763979959; x=1764584759; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dQXVl7HhYAGGwBcSc00STLR56wP1a28fkEjKawQeBt4=;
        b=Qj/IjQqd0nKuYelgOijHJ87NfYBzHzMuyfDyYrVov8AqrINGavVQwNbjsmXX0uWKCb
         4NzpAxUftjdYMqT+5ECS9TtueXqdkMF2cEXtpfWO2ctor6PYvG6uoQgHaZjFEEdkboC6
         yn8mOEHhUUnW3/7NA5UlZzVFm+vyU5//+8VP2hetUC7+XmHvEKEBrb+NzpT8cQTL0LzZ
         7rS5KNuEwHuz3vuyPvWmxEilbsYKNB5Oo9i8gM+f04t2yPI5DT+f5KrxeL4Dznk+0q3d
         io+u+UlteS2w+KnMoRf7FcWVntSCzqD/nM8bO7jPrVGMgo9DGmuqSfiQ/Hm0xDhAgUhc
         lLlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763979959; x=1764584759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dQXVl7HhYAGGwBcSc00STLR56wP1a28fkEjKawQeBt4=;
        b=l8rdzyXiJcYpy4x5RIPL9o9t9kpzZp3mWOn/Ic3qsUa8StV6KYPEQV2PxR70Z8o2lU
         upNbcRHy0EKgF7vyfpV2E3OFKr7UH21smQjT0w1Q+vD/7b9l2fTML7Gn11bbio5JeYP1
         Wg1aUIO96KiPKUdjoQSKpbfQHGiwWQ3853Zv7VJqotC8YSUwxgeZG6pd4jI0WnPKJMVj
         M/N7CvoXiSlX4srDsNhz4wTVRs5Oaqsc1wU1rejClcKv96ggA+ZWUjqz2Bl0XC6PhjP+
         0/6njJD4NMpnf1xacJHk8XvNgZn1dlTbdohKLxAblX5svXvZvSIPlcikewbgf/KFrq7x
         txXg==
X-Forwarded-Encrypted: i=1; AJvYcCV+iWm7cMOmc5K+2ClF7QrR0MLrD2OC7qPl1xvvm5lEHAACyfEmzZbXnt/TzSaem5Q5q+mIv0pw5Mw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyiJNJexitcMz6pTBh3kTvmj5K1RZWR8IhVMog7FtCdvOpKrrtD
	aWudYe0GugZbAEwKd03K4l4YQckghK7tkjdW18P1QTqYDOZ41T/CWvyQj3aFJbYdMz6beXQ/gJW
	OW8TwiMbpnJUiTEtHHLqrgwVBxDJ54XF5WeVW3nfwIEEceiOBxAerZMehfW8n4yqei0+a
X-Gm-Gg: ASbGncsIjBxt22SAGIKZGIkgvy9385xEkGBinHCAdaYYu3CEkeoK3+3dioe+WHtbWxu
	ld0IcwEAIJ/ZJUBDrq85Vr4OxZc87VFFhmRKqlgI/8NUaEFq0tpmUROedh1jQ8MG5QoN2z8/VZi
	3rwhZftNCmLIDo2TVM/EP2Wet3Gis5x1QAGU4V1Kl+8+dQjOuhKlIYLfwbkfVoO9tL7J8VMkOsK
	nbpD/9DJxG5KlJWCR/4JFNOPxlukLC0gIJ4C0yLc4CueGoGgPR8UYH8nGHnqIBIz7eyYZLJyKhV
	2GQ89bih/fZk1Y2FvBTUBQxT4L1tDL4hgfCHVNmv4HodEC+MNz4cKB7Xn6EVEr3TmfIVHpCXHLG
	Flw3aVtSFyYCpJ9e+6B8gY/hKrDoNDNL/jHZnIdvXvSEthDXmaeFJCNDX
X-Received: by 2002:a05:7022:2214:b0:11b:95fe:bedf with SMTP id a92af1059eb24-11c9d84e0bamr7668022c88.27.1763979959485;
        Mon, 24 Nov 2025 02:25:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjOw0JxYuSliQthQWESX5rWtgkd9v5Hu0yOrbQZZUX2pVdDCFqf7mmbXihgRVb7dZpwkZdVQ==
X-Received: by 2002:a05:7022:2214:b0:11b:95fe:bedf with SMTP id a92af1059eb24-11c9d84e0bamr7667995c88.27.1763979958924;
        Mon, 24 Nov 2025 02:25:58 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93de6d5csm46140627c88.4.2025.11.24.02.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 02:25:58 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 02:24:36 -0800
Subject: [PATCH v4 3/5] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
MIME-Version: 1.0
Message-Id: <20251124-kaanapali-pcie-phy-v4-3-d04ee9cca83b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763979955; l=2279;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=ZbSDkniGcxNnPJzqaBaMjAhjt1v3sdTM3DUt2uBqCaM=;
 b=BUvw/OMtIT27B7yF4TR0hcOyBUtfnd/h5DkFUgJZ4FRueKtOuiH2eZ+MqYmLeXuK2j+388FKa
 8nILT89GyEEBVfVW29kHhgoneTXg1ipLBqX6/B9mdRajWTRDf6xPxW3
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-GUID: IHlsgpxLAXwIqWHa8CSYnPOJXd40zXld
X-Authority-Analysis: v=2.4 cv=AcC83nXG c=1 sm=1 tr=0 ts=692432b8 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=cXB1dxBGfnZZ65A63A0A:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: IHlsgpxLAXwIqWHa8CSYnPOJXd40zXld
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MiBTYWx0ZWRfXwwwSmaINEcul
 om9aQDE5/+vq0Gy2OOkRZIMs3sqIfWtjqAHhS7R9dWxSrQ/+DLBU9QKkyexE0Ecgjl89+mYPOQM
 xitheabq3V1G5iLlTUpyTQ/ZBw98h60IT31oEvwu1GxzPFoI9P0OnXb/65H5qb5xiJuDsePbBYs
 AH9N+JppG/81pHmHqFHkz+i13bGXNK19qW+Lay8W3c1ec5aBLGdykeizaYDCzCx3xojCG1Ql3eS
 CtCtjxIzDHEKoOGJR2G4R4yt8hodni8D7LDtJJqan5pB8k5vIr9okW2YkATZGWOGix7eC45bzxJ
 K4zZi+/RRoENsP5FMMFUPvDPWckyvscRJxv4zcvYGRvPemmiX2clvP7SAJWnbxjqg0ECbdT68dS
 FhzBJFOacJ2lGp/DsG8EeSXExjKXlw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_022601_157382_BF8A6FA5 
X-CRM114-Status: GOOD (  12.68  )
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

Kaanapali SoC uses QMP phy with version v8 for PCIe Gen3 x2. Add the new
PCS PCIE specific offsets in a dedicated header file.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h | 34 +++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
new file mode 100644
index 0000000000000000000000000000000000000000..1e06aa9d73d588aacc86fc1b87fb17396de700b8
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_PCIE_V8_H_
+#define QCOM_PHY_QMP_PCS_PCIE_V8_H_
+
+/* Only for QMP V8 PHY - PCIE PCS registers */
+
+#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG2		0x00c
+#define QPHY_PCIE_V8_PCS_TX_RX_CONFIG		0x018
+#define QPHY_PCIE_V8_PCS_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_PCIE_V8_PCS_OSC_DTCT_ACTIONS		0x090
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG1			0x0a0
+#define QPHY_PCIE_V8_PCS_G3_RXEQEVAL_TIME		0x0f0
+#define QPHY_PCIE_V8_PCS_G4_RXEQEVAL_TIME		0x0f4
+#define QPHY_PCIE_V8_PCS_G4_EQ_CONFIG5		0x108
+#define QPHY_PCIE_V8_PCS_G4_PRE_GAIN			0x15c
+#define QPHY_PCIE_V8_PCS_G12S1_TXDEEMPH_M6DB			0x170
+#define QPHY_PCIE_V8_PCS_G3S2_PRE_GAIN			0x178
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG1	0x17c
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG3	0x184
+#define QPHY_PCIE_V8_PCS_RX_MARGINING_CONFIG5	0x18c
+#define QPHY_PCIE_V8_PCS_RX_SIGDET_LVL			0x190
+#define QPHY_PCIE_V8_PCS_G3_FOM_EQ_CONFIG5		0x1ac
+#define QPHY_PCIE_V8_PCS_ELECIDLE_DLY_SEL			0x1b8
+#define QPHY_PCIE_V8_PCS_G4_FOM_EQ_CONFIG5		0x1c0
+#define QPHY_PCIE_V8_PCS_POWER_STATE_CONFIG6			0x1d0
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG1			0x1dc
+#define QPHY_PCIE_V8_PCS_PCS_TX_RX_CONFIG2			0x1e0
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG4			0x1f8
+#define QPHY_PCIE_V8_PCS_EQ_CONFIG5			0x1fc
+#endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
