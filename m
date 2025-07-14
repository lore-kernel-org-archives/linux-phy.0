Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E22EC83F17
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 08:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gArOdVBCEZg2HJkUTg9NQAeOMvuDXQzKaMoTqNNf0Yc=; b=0DWRoVnEoorMKU
	a7niF3PfGQciozXc5mtjBixYAxzujKnD8icluyAgmFbgUa3Re81qQ5gIE+kFfIG7WhEVgZowZib4c
	polspO1uF6ymd5rj8dP0uB8rc6V5oB7JEaT2XmSojL1Ho8sgMYnSSQKjCVHJp4q1vM80dbpE8BdG+
	AYahex1ecHJj17Niui/ho/Ebk7KRJN2dn/kmWNRG3m98oSmnK527tB2dfvoKg/NyhcIaNbGN6I+62
	D2RNEddz6IvjrDP3uIAh8Jbr5IIMVmtGkwGnYQtGhDbk6h1GiwPY7fDni3DKbQAHJZksRrnBCSW8I
	eUzg74IEuBVNeIDio75g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubEgJ-00000001fL5-1Qn0;
	Mon, 14 Jul 2025 08:37:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubERD-00000001ceS-1EMI
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 08:21:28 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DN1RZe014407;
	Mon, 14 Jul 2025 08:21:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=hLdMjPrAcrh
	sZOdo97lYCBIuB8LtrSzNH3qksbtmuis=; b=G+oW3kvhyneoqh0I91lQgYS851y
	ToiET/hlEy4Wld+/O4Y2uEf/XhLmA82Pk8HixtLcXNRHHfGsB9uFI+wn+Xy5ODKn
	fAV/C1gFH9u4QMfewhrSH4i6T3mM1BU38w1Syn7Dkr0c8mcAwMtcWbPfBs28rSja
	cLrBm/Y3zVlL8EqjxuvkSXNHHyK713xVvZjZanrnjzvT61l1/pSao8KHhngQMYQO
	lMmkKjhoSpaymxGo7l+t2Gos6Q5HwGXXMB2iq4B1aWPeb2smRxrNNzM++xN+0ofj
	KqrJFeVYlkBZw1wFM1mnar00LjumI2Gm3lo56uRAL+YNIPenx7+XdvQCkeA==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxauu5k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Jul 2025 08:21:16 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 56E8LDUm032019;
	Mon, 14 Jul 2025 08:21:13 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 47ugsm6337-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Jul 2025 08:21:13 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56E8LDZU032007;
	Mon, 14 Jul 2025 08:21:13 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (cse-cd01-lnx.qualcomm.com [10.64.75.209])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 56E8LCh7032001
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Jul 2025 08:21:13 +0000
Received: by cse-cd01-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id C892120F3F; Mon, 14 Jul 2025 16:21:11 +0800 (CST)
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
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v4 2/3] PCI: qcom: fix macro typo for CURSOR
Date: Mon, 14 Jul 2025 16:21:09 +0800
Message-Id: <20250714082110.3890821-3-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250714082110.3890821-1-ziyue.zhang@oss.qualcomm.com>
References: <20250714082110.3890821-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: pDVtk3yskEiprLxcSuvP87KPiXpGmAcq
X-Proofpoint-ORIG-GUID: pDVtk3yskEiprLxcSuvP87KPiXpGmAcq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA0OCBTYWx0ZWRfX6oBA4hYPUwWD
 i15ocTxxDq6RgE/jgEiD/DYSFxb7SIy42iYA0tlHHA6iPxJcwFmyWg18HYCGOsbAzojWqS7Rh0Q
 kCtZpv3Cm/UGnnFZPebP6kjpqJuYi1sgC5CePEC/YsrX+6T1y43gQlvSw+3Sj3g6SzCyR8bm1d5
 CeQPoyh4wfDxewSPFBIY0C/EqwPaGBnYMBqLUvgHOKTW9uWC1FsQPY4fDesBargx6H8YdCR8krs
 of7Vj/pKyhazAdWW5x+r6xFxovj5deKEz6uSLdWfy6U7/7CZfOYtGpidrS4i+XsdyyeFYEnq8FM
 +WqLRSRGUZdX2vtoOeVJolBolzRLob3Lz9ZIUFihUa92c2CUniKf/Ng5q5IQAjnqG/M+jsrEw/c
 yfS3uEMElFid7510oHxa3ZEmWi4Ji6c2ipaSlc42AYz1ctAB6U0nF9KzM61MRG5+VDGfzk+s
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6874bdfc cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=yZn9HN9ZKZZuwR4VxpAA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=887
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_012127_452336_25F551A6 
X-CRM114-Status: GOOD (  11.41  )
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

Corrected a typo in the macro name GEN3_EQ_FMDC_MAX_PRE_CURSOR_DELTA and
GEN3_EQ_FMDC_MAX_POST_CURSOR_DELTA to ensure consistency and avoid
potential issues.

Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-designware.h  | 4 ++--
 drivers/pci/controller/dwc/pcie-qcom-common.c | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 8e0a02abab60..475f28512aac 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -133,8 +133,8 @@
 #define GEN3_EQ_FB_MODE_DIR_CHANGE_OFF		0x8AC
 #define GEN3_EQ_FMDC_T_MIN_PHASE23		GENMASK(4, 0)
 #define GEN3_EQ_FMDC_N_EVALS			GENMASK(9, 5)
-#define GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA	GENMASK(13, 10)
-#define GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA	GENMASK(17, 14)
+#define GEN3_EQ_FMDC_MAX_PRE_CURSOR_DELTA	GENMASK(13, 10)
+#define GEN3_EQ_FMDC_MAX_POST_CURSOR_DELTA	GENMASK(17, 14)
 
 #define PCIE_PORT_MULTI_LANE_CTRL	0x8C0
 #define PORT_MLTI_UPCFG_SUPPORT		BIT(7)
diff --git a/drivers/pci/controller/dwc/pcie-qcom-common.c b/drivers/pci/controller/dwc/pcie-qcom-common.c
index 3914d409b486..dffe48da8f96 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-common.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-common.c
@@ -34,12 +34,12 @@ void qcom_pcie_common_set_equalization(struct dw_pcie *pci)
 		reg = dw_pcie_readl_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF);
 		reg &= ~(GEN3_EQ_FMDC_T_MIN_PHASE23 |
 			GEN3_EQ_FMDC_N_EVALS |
-			GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA |
-			GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA);
+			GEN3_EQ_FMDC_MAX_PRE_CURSOR_DELTA |
+			GEN3_EQ_FMDC_MAX_POST_CURSOR_DELTA);
 		reg |= FIELD_PREP(GEN3_EQ_FMDC_T_MIN_PHASE23, 0x1) |
 			FIELD_PREP(GEN3_EQ_FMDC_N_EVALS, 0xd) |
-			FIELD_PREP(GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA, 0x5) |
-			FIELD_PREP(GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA, 0x5);
+			FIELD_PREP(GEN3_EQ_FMDC_MAX_PRE_CURSOR_DELTA, 0x5) |
+			FIELD_PREP(GEN3_EQ_FMDC_MAX_POST_CURSOR_DELTA, 0x5);
 		dw_pcie_writel_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF, reg);
 
 		reg = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
