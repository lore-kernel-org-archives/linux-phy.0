Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E0C1C71137
	for <linux-phy@archiver.kernel.org>; Wed, 11 Jun 2025 14:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGVCdnoBxjNpMN6hEx6dWTfNwIgWiHm6gGtKFEQNpbQ=; b=1Tr81TzI8MqZg7
	LTdig8Y+9ygazbXMLWiDXclBd6P+v0CGYGzoVFlAOZ9W613F+4ITW+Ov/DsoVU0sifNW2gPTD5KBu
	0hbmFohFdQYt+kQd0cfODCfHbl1GEb6nZ+HnNlLqIXagpk4cv9+ZPAXbzZFMKdyQWU9A6kAwkoTGh
	Dz4I3yIiHliQlneM1+z4ePn+SsUvyPVWo+wzdl+QqelV1vOQjjO0Na9EOy66oS6bgpxy5Mn6BYEk5
	VHrv7jYSXy8YXJSFQSbPjxI90CcEcdWSsfj/n1vFnIj5W4X1tX0mhhaSBh4nEsfhgqKeHjJaC3fnI
	Uu4lVKga2mbItyyGvEuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPMmn-0000000ACiP-2gDy;
	Wed, 11 Jun 2025 14:50:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPIJe-00000009Z8I-3LSL
	for linux-phy@bombadil.infradead.org;
	Wed, 11 Jun 2025 10:04:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=IdU7J7Hgfw3s56tviI6cZ1txvrD/ADhUVqsJKEs6hqc=; b=mkoBBI3MFV7m2KzzbDLZh+x7Ba
	RdSv70qsjj2HFHcnhMBIJZIjwCUK8wJyCKKye8WNvV7pNZN3ATl9eouMfddNleHSEo+MXvutakA4M
	VUax6ILjVIxLe5CShDuHh1zaAXpT/U/SdsdSMCLkq4ml7/SaW+9LKNX3KfMmFQ+xTXxlgOF5KiR0D
	UGRnWiyfWB6Btb+fLPvXaZOqfk47y2EnbcASRSHlyKw/xHNrTYQhw0ZF3XReH4M3xMYdeWoC0Lvyz
	Zd+ztCzaBPVSrAk6l6yJP0q0f0ROwb7sUek2EcxSSI/Ba4Xo2cOwMzJjoqeSVQQTHnezOR/ZUXdmF
	/NZ0BVaQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPIJb-00000002Fia-1ycg
	for linux-phy@lists.infradead.org;
	Wed, 11 Jun 2025 10:04:18 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DNGs013010;
	Wed, 11 Jun 2025 10:04:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=IdU7J7Hgfw3
	s56tviI6cZ1txvrD/ADhUVqsJKEs6hqc=; b=dGoM5Aq8RITz4Vk3NNR67UNAg2u
	LOJaGkwVSy7Fj0r3mfurNAowXA49GaOX2SSOpzyw970f0ETvCVQ6X0lizrpzkv+z
	VCnMDOpU5LgI09a3Xx1K+GcU/hRwoA+xEzYemeRbjkiZtmjo3PCg60Va8aNAvQTz
	z7jPrzHqjThaDRAi4vXDZe0o8Nglce6owkt5KekbeQVxe5qxhVHvnoS6Rp79thWp
	HKfVdfYZjHe/6CgAku5tJIkE2J/w8lbrTkd+LtWH4mihUerlbz5d7Te3FdKpcsS7
	DWyMIVK/EqvXRlLNhHf0buL2Xyn58PMvri1ouoYOkzAe1M73U+ewCXlHy2A==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47736drt8k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Jun 2025 10:04:02 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55BA3xGC019083;
	Wed, 11 Jun 2025 10:03:59 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 474egmgc5m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Jun 2025 10:03:59 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55BA3wSK019074;
	Wed, 11 Jun 2025 10:03:59 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 55BA3vxC019060
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Jun 2025 10:03:58 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id A0EA83698; Wed, 11 Jun 2025 18:03:56 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
        bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, dmitry.baryshkov@linaro.org,
        manivannan.sadhasivam@linaro.org, neil.armstrong@linaro.org,
        abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v2 1/2] PCI: qcom: Add equalization settings for 8.0 GT/s
Date: Wed, 11 Jun 2025 18:03:18 +0800
Message-Id: <20250611100319.464803-2-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250611100319.464803-1-quic_ziyuzhan@quicinc.com>
References: <20250611100319.464803-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=GIYIEvNK c=1 sm=1 tr=0 ts=68495492 cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=k3UYD6iNNcTepXV-lSEA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: FtLz02znrgTGM3IQBQVJQBSKCH2jCWNn
X-Proofpoint-GUID: FtLz02znrgTGM3IQBQVJQBSKCH2jCWNn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDA4NiBTYWx0ZWRfX0+qNeSOqDeOW
 qj1fK32H+P2FBKyWdoAZC3S1k+ss/sggpyBMt8RCTgIvB6WDyNH9PqXwoKLTCET4jUf7RUL73qA
 xf4UMh0cg6XZBAE6y/GsTPg5Z7msjsQ5MWbXVWD1PaHRs0/CJeS2rfbJdDBHRSapkCV7pVleEHV
 yUg0rrb9tJdDNitFwyPyeQFzHNDo1SEO+Zm2c4b6FY34yw/ed1EMEK1mMtk4/H4d5PH7K86DObA
 3+spXOuVZPQUzvFIQekbm+b1aSuvhEOCnYzTbY26HOtDT7AUhwLo8SWQddC+dns0rLQcDAZVLUA
 zHIjv+Y4zknQG6mYEtswMjLnBObeAHl4Qyrtco/t31EvYQTnzlx6ctW3s83WUk3+MVIF+V201Mq
 hOmb/acRdSGVMvMInCIPVZ4MGpBYRspMCyvNQ4ZEfWm89a3uWJhFXhGJb9YAgOfYZscTGnf0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_04,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 impostorscore=0 clxscore=1011
 adultscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_110415_881935_C05E96BB 
X-CRM114-Status: GOOD (  17.55  )
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

Adding lane equalization setting for 8.0 GT/s to enhance link stability
and fix AER correctable errors reported on some platforms (eg. SA8775P).

8.0 GT/s and 16.0GT/s require the same equalization setting. This setting
is programmed into a group of shadow registers, which can be switched to
configure equalization for different GEN speeds by writing 00b, 01b
to `RATE_SHADOW_SEL`.

Hence program equalization registers in a loop using link speed as index,
so that equalization setting can be programmed for both 8.0 GT/s and
16.0 GT/s.

Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 drivers/pci/controller/dwc/pcie-designware.h  |  1 -
 drivers/pci/controller/dwc/pcie-qcom-common.c | 60 +++++++++++--------
 drivers/pci/controller/dwc/pcie-qcom-common.h |  2 +-
 drivers/pci/controller/dwc/pcie-qcom-ep.c     |  6 +-
 drivers/pci/controller/dwc/pcie-qcom.c        |  6 +-
 5 files changed, 43 insertions(+), 32 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index ce9e18554e42..388306991467 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -127,7 +127,6 @@
 #define GEN3_RELATED_OFF_GEN3_EQ_DISABLE	BIT(16)
 #define GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT	24
 #define GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK	GENMASK(25, 24)
-#define GEN3_RELATED_OFF_RATE_SHADOW_SEL_16_0GT	0x1
 
 #define GEN3_EQ_CONTROL_OFF			0x8A8
 #define GEN3_EQ_CONTROL_OFF_FB_MODE		GENMASK(3, 0)
diff --git a/drivers/pci/controller/dwc/pcie-qcom-common.c b/drivers/pci/controller/dwc/pcie-qcom-common.c
index 3aad19b56da8..4ff97ec13818 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-common.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-common.c
@@ -8,9 +8,11 @@
 #include "pcie-designware.h"
 #include "pcie-qcom-common.h"
 
-void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci)
+void qcom_pcie_common_set_equalization(struct dw_pcie *pci)
 {
 	u32 reg;
+	u16 speed, max_speed = PCIE_SPEED_16_0GT;
+	struct device *dev = pci->dev;
 
 	/*
 	 * GEN3_RELATED_OFF register is repurposed to apply equalization
@@ -18,33 +20,43 @@ void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci)
 	 * GEN3_EQ_*. The RATE_SHADOW_SEL bit field of GEN3_RELATED_OFF
 	 * determines the data rate for which these equalization settings are
 	 * applied.
+	 *
+	 * TODO:
+	 * EQ settings need to be added for 32.0 T/s in future
 	 */
-	reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
-	reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
-	reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
-	reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
-			  GEN3_RELATED_OFF_RATE_SHADOW_SEL_16_0GT);
-	dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
+	if (pcie_link_speed[pci->max_link_speed] < PCIE_SPEED_32_0GT)
+		max_speed = pcie_link_speed[pci->max_link_speed];
+	else
+		dev_warn(dev, "The target supports 32.0 GT/s, but the EQ setting for 32.0 GT/s is not configured.\n");
 
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
+	for (speed = PCIE_SPEED_8_0GT; speed <= max_speed; ++speed) {
+		reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
+		reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
+		reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
+		reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
+			  speed - PCIE_SPEED_8_0GT);
+		dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
 
-	reg = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
-	reg &= ~(GEN3_EQ_CONTROL_OFF_FB_MODE |
-		GEN3_EQ_CONTROL_OFF_PHASE23_EXIT_MODE |
-		GEN3_EQ_CONTROL_OFF_FOM_INC_INITIAL_EVAL |
-		GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC);
-	dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, reg);
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
index bf7c6ac0f3e3..aaf060bf39d4 100644
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
index c789e3f85655..0fcb17ffd2e9 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -298,10 +298,10 @@ static int qcom_pcie_start_link(struct dw_pcie *pci)
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
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
