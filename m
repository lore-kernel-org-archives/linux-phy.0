Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B9FDC7EE26
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 03:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWez1OGwLHud9j3whcqHd8UzrZe2mPdi14BtXryumKM=; b=DWKdxk06BocXeU
	+xdeJUpPm/c5WRHn6eoCMC4sFGNlyRuVQnxU8UTT3kas2s7fGWW5yfWlH/G3UcehDRJyqkC08Mnd9
	Oxm8iytEqslTs1WvPSSLru4/f17KLkPbMHxrw2MARefMfoy028IKNl1uGltUhA+sOZWGLg5da6FvJ
	noYrPdmXlBCrVAMEiY9fRXQJhmDU0pyEjN1HGlQNAymSmPEIRctEP1vtkLrKRiuSSRQcFC3HMDOBE
	hqXIZ2L15nLIJTUax38n7BsjwXwqPQ0z8CuhhgT0l8C1T6qo+IGDu0Oo4TR73NV+wi6dh59TC6xyj
	VMv8QJZmE/KEl6bBvUag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOsT-000jjx-0r;
	Mon, 15 May 2023 03:28:01 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyOsN-000jfJ-13
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 03:27:57 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34F3QU1L029575;
	Mon, 15 May 2023 03:27:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=rCPO+cH0K2GEVMICJCKZzvM1NavXz+i4WvZZjb38Kyc=;
 b=RPIg2vsCBETvArLBt9OH1gmcVE5JZ2v30oAD8Io5sLLLOUlSs18FTGG7MdXnOduN3hF6
 lSy7fY17VxPwdNlINMoIERhytrWxAXtQHG88kkKvKmCk+llKUlnsKtRLU6EmKr7ksUNj
 DcCJ9xMkiLSXzS1u7pcCsW0OX7Okd8npFmxTA1wIJ2JXhz7/sa3IKqXtFSWK6a5opj9+
 pQmjGoas+2kw+KVBZuNXo8TCI7Ayz6qzMMYtwgFbjznQnmvWLYsl9WN0T7tPdHnRL2xG
 Ht95juTEhXfVsl4pK9ZgnFs27Xq9BdkoOq0K8NqF8MevnvS8MoUJ7m4sqEle5jVn+5K3 HA== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qj08mjtqd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 May 2023 03:27:50 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34F3Rnth001138
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 May 2023 03:27:50 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Sun, 14 May 2023 20:27:49 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Johan Hovold <johan@kernel.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        Johan Hovold
	<johan+linaro@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>, Steev
 Klimaszewski <steev@kali.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 2/8] phy: qcom-qmp-combo: Move phy_mutex out of com_init/exit
Date: Sun, 14 May 2023 20:27:37 -0700
Message-ID: <20230515032743.400170-3-quic_bjorande@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515032743.400170-1-quic_bjorande@quicinc.com>
References: <20230515032743.400170-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: eXMxOAxVO3k1yUIVKuXVAq7gquBXqTzl
X-Proofpoint-GUID: eXMxOAxVO3k1yUIVKuXVAq7gquBXqTzl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-15_01,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 suspectscore=0 spamscore=0 mlxscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305150028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230514_202755_368147_4DBD3E99 
X-CRM114-Status: GOOD (  17.80  )
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

With the upcoming introduction of USB Type-C orientation switching the
region of mutual exclusion needs to be extended to cover both the common
init/exit as well as the individual functions.

So move the phy_mutex one step up the stack.

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Tested-by: Abel Vesa <abel.vesa@linaro.org>
Tested-by: Steev Klimaszewski <steev@kali.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on HDK8450
Tested-by: Johan Hovold <johan+linaro@kernel.org>	# X13s
Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---

Changes since v2:
- None

Changes since v1:
- Rebased on Johan's init_count fixes

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 47 ++++++++++++++---------
 1 file changed, 28 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 87b17e5877ab..8918ba2b18a4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2463,11 +2463,8 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
 	void __iomem *com = qmp->com;
 	int ret;
 
-	mutex_lock(&qmp->phy_mutex);
-	if (qmp->init_count++) {
-		mutex_unlock(&qmp->phy_mutex);
+	if (qmp->init_count++)
 		return 0;
-	}
 
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
@@ -2514,8 +2511,6 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
 			SW_PWRDN);
 
-	mutex_unlock(&qmp->phy_mutex);
-
 	return 0;
 
 err_assert_reset:
@@ -2524,7 +2519,6 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 err_decrement_count:
 	qmp->init_count--;
-	mutex_unlock(&qmp->phy_mutex);
 
 	return ret;
 }
@@ -2533,11 +2527,8 @@ static int qmp_combo_com_exit(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	mutex_lock(&qmp->phy_mutex);
-	if (--qmp->init_count) {
-		mutex_unlock(&qmp->phy_mutex);
+	if (--qmp->init_count)
 		return 0;
-	}
 
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
@@ -2545,8 +2536,6 @@ static int qmp_combo_com_exit(struct qmp_combo *qmp)
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
-	mutex_unlock(&qmp->phy_mutex);
-
 	return 0;
 }
 
@@ -2556,21 +2545,29 @@ static int qmp_combo_dp_init(struct phy *phy)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	int ret;
 
+	mutex_lock(&qmp->phy_mutex);
+
 	ret = qmp_combo_com_init(qmp);
 	if (ret)
-		return ret;
+		goto out_unlock;
 
 	cfg->dp_aux_init(qmp);
 
-	return 0;
+out_unlock:
+	mutex_unlock(&qmp->phy_mutex);
+	return ret;
 }
 
 static int qmp_combo_dp_exit(struct phy *phy)
 {
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 
+	mutex_lock(&qmp->phy_mutex);
+
 	qmp_combo_com_exit(qmp);
 
+	mutex_unlock(&qmp->phy_mutex);
+
 	return 0;
 }
 
@@ -2687,14 +2684,19 @@ static int qmp_combo_usb_init(struct phy *phy)
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 	int ret;
 
+	mutex_lock(&qmp->phy_mutex);
 	ret = qmp_combo_com_init(qmp);
 	if (ret)
-		return ret;
+		goto out_unlock;
 
 	ret = qmp_combo_usb_power_on(phy);
-	if (ret)
+	if (ret) {
 		qmp_combo_com_exit(qmp);
+		goto out_unlock;
+	}
 
+out_unlock:
+	mutex_unlock(&qmp->phy_mutex);
 	return ret;
 }
 
@@ -2703,11 +2705,18 @@ static int qmp_combo_usb_exit(struct phy *phy)
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 	int ret;
 
+	mutex_lock(&qmp->phy_mutex);
 	ret = qmp_combo_usb_power_off(phy);
 	if (ret)
-		return ret;
+		goto out_unlock;
 
-	return qmp_combo_com_exit(qmp);
+	ret = qmp_combo_com_exit(qmp);
+	if (ret)
+		goto out_unlock;
+
+out_unlock:
+	mutex_unlock(&qmp->phy_mutex);
+	return ret;
 }
 
 static int qmp_combo_usb_set_mode(struct phy *phy, enum phy_mode mode, int submode)
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
