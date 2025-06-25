Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFDF9C7EE32
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 09:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJARmKm1czer7fI0kRir+RcFAkTHR1uCZ3HGEscK/uI=; b=N942PLFCHw4K8X
	xfiS5aTSYP5V3OtFc9M/YQ7aZgwhvzlXJ+0YRSkW9faLRwwHN96xNWBcZdfcY33WEbQsFl0ftMpDC
	fhE+UjIUYh9Sygkvt0ZTV5J2POrnjMmbNfnasU+DqJj/dcHFM0nzkHvE8QC+UYvweyQy+yLC+X5lc
	KPMiSAsqmibdIb9FDMx9XMZXRaCtAUiD2UpDTVNcu6RXc8zxJKRhRPlliKQjNXQ/o33xvXgq5O6gu
	enzYWKlh3s97Q271XfoiWkEgQoNCIYj3XpnqGg82jnFd4+c5Apv7x2chyxaUliEOFhvI2a7I4Fv4L
	itjzFqgG8s8+t95jhVew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMo2-00000008Cgv-1xDb;
	Wed, 25 Jun 2025 09:52:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uULxT-000000082xy-167a
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 08:58:20 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55P7Q1Rx007104;
	Wed, 25 Jun 2025 08:58:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=343xkHfMKuL
	6LTC3oS4ihX2oB1uDJUG95s//g5SDFTw=; b=gSnw+IW4N179KS158wYorbzw6/O
	JtG8kfLIsM/Gerjjc3vh8ckCyX+UJh6A1SnlCwisu6k6X5eIciSvaoHotHuQYJHQ
	u64BT8SLZ+Ox74n2qrgIjrTqg8/PQzWlXTVPn5LsizCmCzj8rMK1aDkeAizg7Jla
	wAzQ3qyDb31n2aCrsm7Ctf71OKcwb2RI/Gxyj5JhuJtIe0pfWKNWPd9iXPKhk/jg
	/iiZuf2fBb46lajPnCN9+LEjLa0syiFE5eFHQD1yEPezErDDFONJYJIjyOvCz2AX
	ecMAlRBtXbWI7piNskZA0qRm6m9QpdZbKtq0OwH+aHq+V3w0IgGUT0ufDcg==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fdfwwgju-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:07 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55P8w5Bx016614;
	Wed, 25 Jun 2025 08:58:05 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 47dntmarvb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:05 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55P8w4OA016603;
	Wed, 25 Jun 2025 08:58:04 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 55P8w32j016596
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:04 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id D855D3831; Wed, 25 Jun 2025 16:58:02 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
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
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v3 1/3] PCI: qcom: Add equalization settings for 8.0 GT/s
Date: Wed, 25 Jun 2025 16:57:59 +0800
Message-Id: <20250625085801.526669-2-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250625085801.526669-1-quic_ziyuzhan@quicinc.com>
References: <20250625085801.526669-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: fiFk4wVwoihXxZqXRXA7y0w11AwyDFwp
X-Proofpoint-ORIG-GUID: fiFk4wVwoihXxZqXRXA7y0w11AwyDFwp
X-Authority-Analysis: v=2.4 cv=MtZS63ae c=1 sm=1 tr=0 ts=685bba1f cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=D1zHBRgt46ALWVk9cw4A:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA2NiBTYWx0ZWRfXxNVSk2izG7o9
 E2i541K08vVKlrT+UNSn01ACRhEFzwpFmefZVNfpt4rGs+iqgDFgYlLgVjb10cG+Re6jskQnudI
 jHMLuNacvEQ288FcuMq/IDLheUaWogvHI2rwIpjsF6YvNSH8JUNbiJpDurobNw6BuouoX5UhZVd
 k7xcp4ckgniJv5lbur4kjTNNya+fE0iO4kr9JzZ/SaFQQy0rDjOlyHNfmOSysosqVNS4ynl2DfL
 8VyddUpxdjtgeTLjbiPTIK+TwHhdBQyvYWrxKPUvVODLwS12EpcPhPky2bEq/OzV+YOX/XX25iA
 6Xg4NHsE+OlxtW7TavsQ7JSzBLu+DN9y2g98VrAizl0zpUPECnf7FyNjkLe4vi/WUgoSkQbzoyZ
 aTb2n7gjrsstPZTW3YC+aiywuKCX7ERMlBgz0HrJ0Mn2GK4gVK40N8NQqz1cpY51GB2Ikl+Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_015819_418377_01EA6AF4 
X-CRM114-Status: GOOD (  16.94  )
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

Add lane equalization setting for 8.0 GT/s to enhance link stability and
aviod AER Correctable Errors reported on some platforms (eg. SA8775P).

8.0 GT/s and 16.0 GT/s require the same equalization setting. This
setting is programmed into a group of shadow registers, which can be
switched to configure equalization for different speeds by writing 00b,
01b to `RATE_SHADOW_SEL`.

Hence program equalization registers in a loop using link speed as index,
so that equalization setting can be programmed for both 8.0 GT/s and
16.0 GT/s.

Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 drivers/pci/controller/dwc/pcie-designware.h  |  1 -
 drivers/pci/controller/dwc/pcie-qcom-common.c | 55 +++++++++++--------
 drivers/pci/controller/dwc/pcie-qcom-common.h |  2 +-
 drivers/pci/controller/dwc/pcie-qcom-ep.c     |  6 +-
 drivers/pci/controller/dwc/pcie-qcom.c        |  6 +-
 5 files changed, 38 insertions(+), 32 deletions(-)

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
index 3aad19b56da8..ed466496f077 100644
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
@@ -19,32 +21,37 @@ void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci)
 	 * determines the data rate for which these equalization settings are
 	 * applied.
 	 */
-	reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
-	reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
-	reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
-	reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
-			  GEN3_RELATED_OFF_RATE_SHADOW_SEL_16_0GT);
-	dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
+	if (pcie_link_speed[pci->max_link_speed] < PCIE_SPEED_32_0GT)
+		max_speed = pcie_link_speed[pci->max_link_speed];
 
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
