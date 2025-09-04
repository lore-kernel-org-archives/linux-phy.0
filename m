Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3923DCA1015
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ktKnoGgH9Cf/hiuJgWhtsg6QOso7sJQztG7ERYNdm8=; b=grDyrFR9TUglMj
	uayAzxGHHxveKEHOXOLMe4LzFvw6Jqcg47tiCsuBv4yyIBQINVVvPt12N5Y/mwEIu1XJDTQTrgH9V
	IFntqJw0mVIJ+FIRP4HICXwZtfuCrjzeRL9AnyDvpiXL4pt4KAEk0ZWFSvatMArj7Otb80s7Pudms
	cnBCx1zRHpXQBTzXLRwehPoqAo0xbT0pEJjbyXawDiHG4/EekfJ10Lndu26/x6UFMEA9ASotywL6Y
	ceeFGj7O9Oio3AjkJ+z3Q20JbSH8dkLMTpAHLLBerbIE47PnvlbgWLWD1lsZYSgXyF/uiKfvzGBGA
	CmKkI3xgIDvUQ2v9dURQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3px-00000009epB-00p1;
	Thu, 04 Sep 2025 06:52:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3pu-00000009emq-0tD2
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:52:47 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58413nMT021016;
	Thu, 4 Sep 2025 06:52:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9fX5ktVpkri
	karCWdPhk94vvmU7VBzDeouy5P+Ug+Bo=; b=UM9FbG8dDIQSAuuk511obKMhL1v
	nocpsQnc9k7/pg4Px76uwtLuqjLN6/5PxNAhzAUEjyPnHuwwzMLai5xjVkVCTpy3
	4pyGnKqK/qGoqcC+6p7gJKXn57NICprNZBdaLZgLYUGsNNSV3b/+EZ1XlXZ3xRCy
	CZsZkNmjg0GfUpmGNjjnPKAaYTaSsIqG2ff7K4GBhIu3MuOLQyG9632kZaBw+h8p
	LMvAoOvMHoSwLxCF2Bw29AuVQLUTGqlGvDta1LtAoLuf4Uat8I3qNxYt6Wzw8Z7W
	DdmOD/rt1MNVx/qSeODoBHA7knxjYjjYqGji29nusToGVi0Nb53jX6vGydw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fpcbq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Sep 2025 06:52:37 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 5846qZtb016338;
	Thu, 4 Sep 2025 06:52:35 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 48utcmhjcu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Sep 2025 06:52:35 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 5846qYx4016327;
	Thu, 4 Sep 2025 06:52:35 GMT
Received: from ziyuzhan-gv.ap.qualcomm.com (ziyuzhan-gv.qualcomm.com [10.64.66.102])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 5846qYs6016324
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Sep 2025 06:52:34 +0000
Received: by ziyuzhan-gv.ap.qualcomm.com (Postfix, from userid 4438065)
	id 1BCF14A9; Thu,  4 Sep 2025 14:52:33 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
        kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Subject: [PATCH v6 1/3] PCI: qcom: Add equalization settings for 8.0 GT/s and 32.0 GT/s
Date: Thu,  4 Sep 2025 14:52:23 +0800
Message-ID: <20250904065225.1762793-2-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250904065225.1762793-1-ziyue.zhang@oss.qualcomm.com>
References: <20250904065225.1762793-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX3Gm/fZaY9AKy
 Zo3vCsEPnOQckU8ZlktkqMDD35GjfDUkofnDpxZ2OFRhIERxpUMrNHn/NMjbjwyp5NH7+2a/t81
 sj5iQVurzCP3TFk9LveMA+kA7kMGzOJKp6Oh77GDl1TMTbYcHTBYXTB0ooAdD8AvYM79TDLW14e
 3PuNV6pD/SvkQEVV7XQZUtKzF42Y6eagvgBbhV0g82RrD6JXLkzjiPnVfD/cR54ezA90jo13w8D
 EkX6oKXybx7C1dvMlmavKSymye1QAncHKioxpzbgaFbvKRuo0FILdlKyKJB0KLQ/nh/gMmXc97f
 wGGQFswIyCnFNsOmGpJlqycI52kcS0WZjYyOmgcpdjihFg+RwQQ57yMTmzbNKVRmoWckUsfF3ig
 j7AXtSlK
X-Proofpoint-ORIG-GUID: Fw5zn4HQXoCn882FFBMnMbvnCHC10RjZ
X-Proofpoint-GUID: Fw5zn4HQXoCn882FFBMnMbvnCHC10RjZ
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b93735 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=kqkkFEbYj6cKICComXkA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_235246_256528_9AAEB07E 
X-CRM114-Status: GOOD (  16.54  )
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

Add lane equalization setting for 8.0 GT/s and 32.0 GT/s to enhance link
stability and avoid AER Correctable Errors reported on some platforms
(eg. SA8775P).

8.0 GT/s, 16.0 GT/s and 32.0 GT/s require the same equalization setting.
This setting is programmed into a group of shadow registers, which can be
switched to configure equalization for different speeds by writing 00b,
01b and 10b to `RATE_SHADOW_SEL`.

Hence program equalization registers in a loop using link speed as index,
so that equalization setting can be programmed for 8.0 GT/s, 16.0 GT/s
and 32.0 GT/s.

Fixes: 489f14be0e0a ("arm64: dts: qcom: sa8775p: Add pcie0 and pcie1 nodes")

Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware.h  |  1 -
 drivers/pci/controller/dwc/pcie-qcom-common.c | 58 +++++++++++--------
 drivers/pci/controller/dwc/pcie-qcom-common.h |  2 +-
 drivers/pci/controller/dwc/pcie-qcom-ep.c     |  6 +-
 drivers/pci/controller/dwc/pcie-qcom.c        |  6 +-
 5 files changed, 41 insertions(+), 32 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index b5e7e18138a6..11de844428e5 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -123,7 +123,6 @@
 #define GEN3_RELATED_OFF_GEN3_EQ_DISABLE	BIT(16)
 #define GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT	24
 #define GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK	GENMASK(25, 24)
-#define GEN3_RELATED_OFF_RATE_SHADOW_SEL_16_0GT	0x1
 
 #define GEN3_EQ_CONTROL_OFF			0x8A8
 #define GEN3_EQ_CONTROL_OFF_FB_MODE		GENMASK(3, 0)
diff --git a/drivers/pci/controller/dwc/pcie-qcom-common.c b/drivers/pci/controller/dwc/pcie-qcom-common.c
index 3aad19b56da8..969c34f738a9 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-common.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-common.c
@@ -8,9 +8,11 @@
 #include "pcie-designware.h"
 #include "pcie-qcom-common.h"
 
-void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci)
+void qcom_pcie_common_set_equalization(struct dw_pcie *pci)
 {
+	struct device *dev = pci->dev;
 	u32 reg;
+	u16 speed;
 
 	/*
 	 * GEN3_RELATED_OFF register is repurposed to apply equalization
@@ -19,32 +21,40 @@ void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci)
 	 * determines the data rate for which these equalization settings are
 	 * applied.
 	 */
-	reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
-	reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
-	reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
-	reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
-			  GEN3_RELATED_OFF_RATE_SHADOW_SEL_16_0GT);
-	dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
 
-	reg = dw_pcie_readl_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF);
-	reg &= ~(GEN3_EQ_FMDC_T_MIN_PHASE23 |
-		GEN3_EQ_FMDC_N_EVALS |
-		GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA |
-		GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA);
-	reg |= FIELD_PREP(GEN3_EQ_FMDC_T_MIN_PHASE23, 0x1) |
-		FIELD_PREP(GEN3_EQ_FMDC_N_EVALS, 0xd) |
-		FIELD_PREP(GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA, 0x5) |
-		FIELD_PREP(GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA, 0x5);
-	dw_pcie_writel_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF, reg);
+	for (speed = PCIE_SPEED_8_0GT; speed <= pcie_link_speed[pci->max_link_speed]; ++speed) {
+		if (speed > PCIE_SPEED_32_0GT) {
+			dev_warn(dev, "Skipped equalization settings for speeds higher than 32.0 GT/s\n");
+			break;
+		}
 
-	reg = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
-	reg &= ~(GEN3_EQ_CONTROL_OFF_FB_MODE |
-		GEN3_EQ_CONTROL_OFF_PHASE23_EXIT_MODE |
-		GEN3_EQ_CONTROL_OFF_FOM_INC_INITIAL_EVAL |
-		GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC);
-	dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, reg);
+		reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
+		reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
+		reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
+		reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
+			  speed - PCIE_SPEED_8_0GT);
+		dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
+
+		reg = dw_pcie_readl_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF);
+		reg &= ~(GEN3_EQ_FMDC_T_MIN_PHASE23 |
+			GEN3_EQ_FMDC_N_EVALS |
+			GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA |
+			GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA);
+		reg |= FIELD_PREP(GEN3_EQ_FMDC_T_MIN_PHASE23, 0x1) |
+			FIELD_PREP(GEN3_EQ_FMDC_N_EVALS, 0xd) |
+			FIELD_PREP(GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA, 0x5) |
+			FIELD_PREP(GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA, 0x5);
+		dw_pcie_writel_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF, reg);
+
+		reg = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
+		reg &= ~(GEN3_EQ_CONTROL_OFF_FB_MODE |
+			GEN3_EQ_CONTROL_OFF_PHASE23_EXIT_MODE |
+			GEN3_EQ_CONTROL_OFF_FOM_INC_INITIAL_EVAL |
+			GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC);
+		dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, reg);
+	}
 }
-EXPORT_SYMBOL_GPL(qcom_pcie_common_set_16gt_equalization);
+EXPORT_SYMBOL_GPL(qcom_pcie_common_set_equalization);
 
 void qcom_pcie_common_set_16gt_lane_margining(struct dw_pcie *pci)
 {
diff --git a/drivers/pci/controller/dwc/pcie-qcom-common.h b/drivers/pci/controller/dwc/pcie-qcom-common.h
index 7d88d29e4766..7f5ca2fd9a72 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-common.h
+++ b/drivers/pci/controller/dwc/pcie-qcom-common.h
@@ -8,7 +8,7 @@
 
 struct dw_pcie;
 
-void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci);
+void qcom_pcie_common_set_equalization(struct dw_pcie *pci);
 void qcom_pcie_common_set_16gt_lane_margining(struct dw_pcie *pci);
 
 #endif
diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index 60afb4d0134c..aeb166f68d55 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -511,10 +511,10 @@ static int qcom_pcie_perst_deassert(struct dw_pcie *pci)
 		goto err_disable_resources;
 	}
 
-	if (pcie_link_speed[pci->max_link_speed] == PCIE_SPEED_16_0GT) {
-		qcom_pcie_common_set_16gt_equalization(pci);
+	qcom_pcie_common_set_equalization(pci);
+
+	if (pcie_link_speed[pci->max_link_speed] == PCIE_SPEED_16_0GT)
 		qcom_pcie_common_set_16gt_lane_margining(pci);
-	}
 
 	/*
 	 * The physical address of the MMIO region which is exposed as the BAR
diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 294babe1816e..31841ab9498b 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -322,10 +322,10 @@ static int qcom_pcie_start_link(struct dw_pcie *pci)
 {
 	struct qcom_pcie *pcie = to_qcom_pcie(pci);
 
-	if (pcie_link_speed[pci->max_link_speed] == PCIE_SPEED_16_0GT) {
-		qcom_pcie_common_set_16gt_equalization(pci);
+	qcom_pcie_common_set_equalization(pci);
+
+	if (pcie_link_speed[pci->max_link_speed] == PCIE_SPEED_16_0GT)
 		qcom_pcie_common_set_16gt_lane_margining(pci);
-	}
 
 	/* Enable Link Training state machine */
 	if (pcie->cfg->ops->ltssm_enable)
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
