Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6974CA0FFF
	for <linux-phy@archiver.kernel.org>; Sat, 30 Aug 2025 07:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbD5lpnhdqTa0FhOv5x0Zy9bD6WjBgwu1VvKq5PHeBs=; b=2ipxYqcaUeGEYQ
	n6KaWFm/4X6UE+/3DZZqmWtUBsiwhPMUI+9w4IyaVEIE7qKp8XoHnhVMMbWJKfN430zXmJEsNFVVY
	9p4BeU37ZQJRHoo85A4J6PLWZLOdZ2tkqHLz1tdm+Sd077G+x9elIc1R4qCl689cpv0IU21mNdR1B
	yelg0sIOsoiYAvuZrgp7d4aSpK9DxT8Q5p9mVizYx+AI4V5kF5z4q+tqf+3sIaeAl8mphuJg4pFvv
	ti2nVBluDVLifZfumRo40nrRklbOBsP6jVxyETausW4nrhbv1aiIT8+98dAV7gAPvtLhI5DZn25pb
	AGc95Osnb7Rm6Zamo9FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usFdB-00000007WZE-2RIp;
	Sat, 30 Aug 2025 07:04:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usFd7-00000007WXM-0an5
	for linux-phy@lists.infradead.org;
	Sat, 30 Aug 2025 07:04:07 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57U2Y2P0025032;
	Sat, 30 Aug 2025 07:04:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=RlmMDoTDvTo
	LbRr7VcTOfkOdE1NYg9BOkG3K1ZScNQE=; b=Lv2DHqJ+1fEWvfKC4s1SquoqMha
	A0CMtbzth8Ty0/leahyMXKreLFMfw91o4RslhoEElUXKvDqyiZkr8UnZ33jw8IZT
	n0+0G+BEI4gqDcQubL1EpGWKaaRAJKtvtrYq40o+aKExlIY7ZpgTE32Bi777MhYy
	IsOWCLyrEvMgNwiekGZvKB5QIob/x5JZd1vCI5B2g2c3hnJx5aVJOWBwwtuRJKcy
	x262voKyuFQcmcg19AUGZA+WK7YSGcXN1N6c1m7FcK8J1QciG+aD+vfdJz3QQ5Fz
	jKtizIHgbzgd3HwawKJiCtfCOcIIKkp4wQ1PAWllxMuB3a9JEIBsl2d9pgw==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmj89yj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 30 Aug 2025 07:04:01 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 57U73vYY001764;
	Sat, 30 Aug 2025 07:03:58 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 48utckgbyr-1;
	Sat, 30 Aug 2025 07:03:58 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 57U73veI001756;
	Sat, 30 Aug 2025 07:03:58 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 57U73vxK001765;
	Sat, 30 Aug 2025 07:03:57 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 33F9A6009E0; Sat, 30 Aug 2025 12:33:57 +0530 (+0530)
From: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org,
        neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V4 2/2] phy: qcom-qmp-ufs: Add PHY and PLL regulator load
Date: Sat, 30 Aug 2025 12:33:53 +0530
Message-ID: <20250830070353.2694-3-nitin.rawat@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250830070353.2694-1-nitin.rawat@oss.qualcomm.com>
References: <20250830070353.2694-1-nitin.rawat@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b2a261 cx=c_pps
 a=Ou0eQOY4+eZoSc0qltEV5Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=_rUofex8YGelV1mYENQA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: xAgs862_If0ad-SbO42ENkWUOz3y7Rv4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfXyyyBw6Pyl0wJ
 nnIfVew/eyzqyZwXLIQrTVxV7VHMbPIRq6oUBb1qoD2/pvubPWDqyqOVfpg5GXwz8KL9XEvZTl5
 1ORx9bXP0cXCR+Uwz5fiA26zBA9HIwBn9TrsaueBaNsYWLwRGYTlKcChgk99ru9TsZPRXgBD+2W
 FYgon5Vau53h7jVbP5f0VqhUlDco5KRq/945qAGvUEn/ZqCuCmpF6fm1dVM52eK0F4qmjGAXiXN
 u3ZF8c817c4ICEYRbsBT+8v/ka6QmuZObJ5Y3NHCO5u65oMm+YKKzyYNPl9u+oUpEOHkMtF3gTp
 c5aFyDQd4yUbr89g8rcQXhpI2G/3prp5Z+AFh1hPqp2HEnhTwpqUOkt7aYqra7030H4XNiC2iTY
 pI6ZlUWI
X-Proofpoint-ORIG-GUID: xAgs862_If0ad-SbO42ENkWUOz3y7Rv4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-30_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1011 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_000405_308260_812920CF 
X-CRM114-Status: GOOD (  11.02  )
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

From: Nitin Rawat <quic_nitirawa@quicinc.com>

Add phy and pll regulator load voting support for all supported
platforms by introducing dedicated regulator bulk data arrays
with their load values.

This ensures stable operation and proper power management for these
platforms where regulators are shared between the QMP UFS PHY and
other IP blocks by setting appropriate regulator load currents during
PHY operations.

Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 138 ++++++++++++++++++------
 1 file changed, 104 insertions(+), 34 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index aaa88ca0ef07..8a280433a42b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1164,10 +1164,80 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 	readl(base + offset);
 }

-/* Default regulator bulk data (no load used) */
-static const struct regulator_bulk_data qmp_phy_vreg_l[] = {
-	{ .supply = "vdda-phy" },
-	{ .supply = "vdda-pll" },
+/* Regulator bulk data with load values for specific configurations */
+static const struct regulator_bulk_data msm8996_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 51400 },
+	{ .supply = "vdda-pll", .init_load_uA = 14600 },
+};
+
+static const struct regulator_bulk_data sa8775p_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 137000 },
+	{ .supply = "vdda-pll", .init_load_uA = 18300 },
+};
+
+static const struct regulator_bulk_data sc7280_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 97500 },
+	{ .supply = "vdda-pll", .init_load_uA = 18400 },
+};
+
+static const struct regulator_bulk_data sc8280xp_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 85700 },
+	{ .supply = "vdda-pll", .init_load_uA = 18300 },
+};
+
+static const struct regulator_bulk_data sdm845_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 51400 },
+	{ .supply = "vdda-pll", .init_load_uA = 14600 },
+};
+
+static const struct regulator_bulk_data sm6115_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 51400 },
+	{ .supply = "vdda-pll", .init_load_uA = 14200 },
+};
+
+static const struct regulator_bulk_data sm7150_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 62900 },
+	{ .supply = "vdda-pll", .init_load_uA = 18300 },
+};
+
+static const struct regulator_bulk_data sm8150_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 90200 },
+	{ .supply = "vdda-pll", .init_load_uA = 19000 },
+};
+
+static const struct regulator_bulk_data sm8250_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 89900 },
+	{ .supply = "vdda-pll", .init_load_uA = 18800 },
+};
+
+static const struct regulator_bulk_data sm8350_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 91600 },
+	{ .supply = "vdda-pll", .init_load_uA = 19000 },
+};
+
+static const struct regulator_bulk_data sm8450_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 173000 },
+	{ .supply = "vdda-pll", .init_load_uA = 24900 },
+};
+
+static const struct regulator_bulk_data sm8475_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 213030 },
+	{ .supply = "vdda-pll", .init_load_uA = 18340 },
+};
+
+static const struct regulator_bulk_data sm8550_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 188000 },
+	{ .supply = "vdda-pll", .init_load_uA = 18300 },
+};
+
+static const struct regulator_bulk_data sm8650_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 205000 },
+	{ .supply = "vdda-pll", .init_load_uA = 17500 },
+};
+
+static const struct regulator_bulk_data sm8750_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 213000 },
+	{ .supply = "vdda-pll", .init_load_uA = 18300 },
 };

 static const struct qmp_ufs_offsets qmp_ufs_offsets = {
@@ -1203,8 +1273,8 @@ static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 		.rx_num		= ARRAY_SIZE(msm8996_ufsphy_rx),
 	},

-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= msm8996_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(msm8996_ufsphy_vreg_l),

 	.regs			= ufsphy_v2_regs_layout,

@@ -1240,8 +1310,8 @@ static const struct qmp_phy_cfg sa8775p_ufsphy_cfg = {
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
 		.max_gear	= UFS_HS_G4,
 	},
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sa8775p_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sa8775p_ufsphy_vreg_l),
 	.regs			= ufsphy_v5_regs_layout,
 };

@@ -1274,8 +1344,8 @@ static const struct qmp_phy_cfg sc7280_ufsphy_cfg = {
 		.pcs_num        = ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
 		.max_gear	= UFS_HS_G4,
 	},
-	.vreg_list              = qmp_phy_vreg_l,
-	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list              = sc7280_ufsphy_vreg_l,
+	.num_vregs              = ARRAY_SIZE(sc7280_ufsphy_vreg_l),
 	.regs                   = ufsphy_v4_regs_layout,
 };

@@ -1308,8 +1378,8 @@ static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
 		.max_gear	= UFS_HS_G4,
 	},
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sc8280xp_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sc8280xp_ufsphy_vreg_l),
 	.regs			= ufsphy_v5_regs_layout,
 };

@@ -1333,8 +1403,8 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 		.serdes		= sdm845_ufsphy_hs_b_serdes,
 		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_hs_b_serdes),
 	},
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sdm845_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sdm845_ufsphy_vreg_l),
 	.regs			= ufsphy_v3_regs_layout,

 	.no_pcs_sw_reset	= true,
@@ -1360,8 +1430,8 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 		.serdes		= sm6115_ufsphy_hs_b_serdes,
 		.serdes_num	= ARRAY_SIZE(sm6115_ufsphy_hs_b_serdes),
 	},
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sm6115_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm6115_ufsphy_vreg_l),
 	.regs			= ufsphy_v2_regs_layout,

 	.no_pcs_sw_reset	= true,
@@ -1387,8 +1457,8 @@ static const struct qmp_phy_cfg sm7150_ufsphy_cfg = {
 		.serdes		= sdm845_ufsphy_hs_b_serdes,
 		.serdes_num	= ARRAY_SIZE(sdm845_ufsphy_hs_b_serdes),
 	},
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sm7150_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm7150_ufsphy_vreg_l),
 	.regs			= ufsphy_v3_regs_layout,

 	.no_pcs_sw_reset	= true,
@@ -1423,8 +1493,8 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 		.pcs_num	= ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
 		.max_gear	= UFS_HS_G4,
 	},
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sm8150_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8150_ufsphy_vreg_l),
 	.regs			= ufsphy_v4_regs_layout,
 };

@@ -1457,8 +1527,8 @@ static const struct qmp_phy_cfg sm8250_ufsphy_cfg = {
 		.pcs_num	= ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
 		.max_gear	= UFS_HS_G4,
 	},
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sm8250_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8250_ufsphy_vreg_l),
 	.regs			= ufsphy_v4_regs_layout,
 };

@@ -1491,8 +1561,8 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
 		.max_gear	= UFS_HS_G4,
 	},
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sm8350_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8350_ufsphy_vreg_l),
 	.regs			= ufsphy_v5_regs_layout,
 };

@@ -1525,8 +1595,8 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
 		.max_gear	= UFS_HS_G4,
 	},
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sm8450_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8450_ufsphy_vreg_l),
 	.regs			= ufsphy_v5_regs_layout,
 };

@@ -1561,8 +1631,8 @@ static const struct qmp_phy_cfg sm8475_ufsphy_cfg = {
 		.pcs_num	= ARRAY_SIZE(sm8475_ufsphy_g4_pcs),
 		.max_gear	= UFS_HS_G4,
 	},
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sm8475_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8475_ufsphy_vreg_l),
 	.regs			= ufsphy_v6_regs_layout,
 };

@@ -1606,8 +1676,8 @@ static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
 		.pcs_num	= ARRAY_SIZE(sm8550_ufsphy_g5_pcs),
 		.max_gear	= UFS_HS_G5,
 	},
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sm8550_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8550_ufsphy_vreg_l),
 	.regs			= ufsphy_v6_regs_layout,
 };

@@ -1638,8 +1708,8 @@ static const struct qmp_phy_cfg sm8650_ufsphy_cfg = {
 		.max_gear	= UFS_HS_G5,
 	},

-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sm8650_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8650_ufsphy_vreg_l),
 	.regs			= ufsphy_v6_regs_layout,
 };

@@ -1676,8 +1746,8 @@ static const struct qmp_phy_cfg sm8750_ufsphy_cfg = {
 		.max_gear	= UFS_HS_G5,
 	},

-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= sm8750_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8750_ufsphy_vreg_l),
 	.regs			= ufsphy_v6_regs_layout,

 };
--
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
