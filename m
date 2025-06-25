Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 789FBC7115C
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 09:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6fgkG0jDj8Jqftu6PE3Pm2bygQPEXF7HugLmI7SfPE=; b=4slNrwedItLNqT
	eBaKfcSpjsGxnQU8KdiBAy7/u5r/uZcrD3vmVSC9vTdIlK15rUPJNtg7VqdKG3xCQcTVQERrX50Q7
	jJmIhUdxP2dnp2S4usP1UOApNGCaIgnyIA0HdDTFNs+aIZpkhdGcrwKnF+ACtDNIwZdkxUgrIqhFi
	XTEq+/wnty55f9aqd7hRIV66k4648tsYiWxMYdfRwi2G2nUpYSvldHMVPTXbwRvifl58011cq8PuP
	uvO8kRR7Cmc9gwha332zfBGR/zxop7tOKXyGE37UYOs/I6NnmMRki3wX+G+/i1sJ5E8DZPpCCu29T
	VC6XujWgCj3FEuC3dZyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMo2-00000008Cgj-0pnW;
	Wed, 25 Jun 2025 09:52:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uULxO-000000082xE-3pqu
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 08:58:16 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55OMaosk001992;
	Wed, 25 Jun 2025 08:58:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ACLcf/y0+ET
	DyqcTSQT5zp0eSvdxWWbD7AwNu/+16gI=; b=APlbAUrVvsczEIG2q/sv/9pjPS9
	hrXtAIybkhYpLE9DQ1RXYVfv6dfd2QR1pIQjCywn6qPJW+Va2JiREaNIZESlqjtU
	wA1lMkNG7eNBEgPe6f3C+0n8XLQmrHqDs3i0NNiiiDL1G48vmvRqKfl8rLDVlouF
	p1ASX3HvbCTnF6E5IkFVSc2Oe5c/2h9DZEafc5kTA3LDbufUV44rGF0lQXJlj4Q0
	YVxJKdNsbJ6oH3d1dQXgIL6Qz+jPGzRH1Jlzlk6wey4uF4kHb5vgUU2Zrr+Z7PV1
	ylnY7yEqEYiMH9pNbc2Kia8W/vFoScAl9RtDCbJZfyf23OL8YUUjCFsRtnQ==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc5r93j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:07 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 55P8w5Tb016621;
	Wed, 25 Jun 2025 08:58:05 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 47dntmarvf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:05 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 55P8w511016610;
	Wed, 25 Jun 2025 08:58:05 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 55P8w3oM016595
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Jun 2025 08:58:05 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id DE6823832; Wed, 25 Jun 2025 16:58:02 +0800 (CST)
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
Subject: [PATCH v3 2/3] PCI: qcom: fix macro typo for CURSOR
Date: Wed, 25 Jun 2025 16:58:00 +0800
Message-Id: <20250625085801.526669-3-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250625085801.526669-1-quic_ziyuzhan@quicinc.com>
References: <20250625085801.526669-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: HxYKdiPbDXQxbeAyny8s_WQWMbx61R_o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDA2NSBTYWx0ZWRfX/DgreZ0KCqjG
 H9voMUpVoF24dxd0ZN70yPGAJ0XewqVPgIOHEkz0t604hS5Krei0KSIAa2JR/c/vA9nzOR5/T6w
 7aXOjpNZZRI3coOm1t5+fN+YrkLZVfgFCSoOkFObAUvx1jstS+BT27ZC+P8Q7uP2itqcWIOFbXr
 Nb/AriuFKytawh0NhB/oo1OP6xL6yxea0Pq08HTua1fI7xkvYyekShujeapJh4HBtkCBVHjFp7I
 ILHKbGcHtygo4GrHay3nip/j7s6phq5s4kg3zdHOgdW3O8vV+OGHbldIEbVFuNNpt0wVZgJ21zm
 ZwfOqCoL0oaVVNFUg1YPDFXONFc+e+NX1kCHApnKwq4JystUaIgiInXgMJ+37PPQVzJ0C1Kx0XV
 RyZtEfKiDxQ6btapmpYgPSkaAYC75ssYy+E+EjzyZqdQ9R/kpWiuNJ8v/eIIP3A5sDoNnsUs
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685bba1f cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=yZn9HN9ZKZZuwR4VxpAA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: HxYKdiPbDXQxbeAyny8s_WQWMbx61R_o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=889 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_015814_955165_20F0EA8D 
X-CRM114-Status: GOOD (  11.48  )
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

Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 drivers/pci/controller/dwc/pcie-designware.h  | 4 ++--
 drivers/pci/controller/dwc/pcie-qcom-common.c | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 388306991467..80831f99d72d 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -137,8 +137,8 @@
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
index ed466496f077..86ed86b72d5a 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-common.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-common.c
@@ -35,12 +35,12 @@ void qcom_pcie_common_set_equalization(struct dw_pcie *pci)
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
