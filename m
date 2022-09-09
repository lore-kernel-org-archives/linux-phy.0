Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62182C6FA89
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 08:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0LZ1zvsGEBj7GtBpBbFE7iCqtYhV5i8dunNeBLbtdg=; b=05sZMVoM3dTBjh
	7WBLBvAZKNey7FKduqFCGlFCqi1nUrziXznjqOtUQDFW8Z8w3vmRlsMoSbxBrXEglCEa4u+yEh+aD
	SneHTzIfk83cY57uzhVCznAOI+17lwORX8l9r1WRWx1Xz++Yjhbbr3AnYxBAZbLM6KoOyIGh+9gKZ
	Kc/AM4Ju2Kv/y814A61G9bj+1hcaY4dGshwbvqgrfmY+xbgj7j8hqIxZKPFxvyn5452MF95BKH5Gn
	lORk32+z7MYJrCjOo77tagWoXjcn5A9/X7u4sZGgdGzgY9Dj/HHAwPM2juGcnzP1kS8Ptg6szAYZw
	n186KQjKfqOq/aryJdow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZdc-00EkqG-KG; Fri, 09 Sep 2022 08:45:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZdY-00Ekny-RM
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 08:45:22 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2898a2jM031521;
	Fri, 9 Sep 2022 08:45:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=R7Lp+Vuu59p5nbAR6rdtz820PIjAxRmN7XjW4T69x8s=;
 b=ml85pa+J5kaCxMUa8yRPySCGVzZD8eITwB7kh0ID57ooeZMnxXJ4GcEh+Jhn/MClcmZg
 jteJUDO+8b/lhNFggh9zQvd5+Qu8KSJsxMYeWBMnhdO5R7C0j0bu7/MiMUWAfHPvDMyU
 QxHTdcERsKWiITsxA+q0OelqwTs4dMyQU6kBR4+D64nz3iCa4moxFg+xDSVrxLFihG2y
 CpE8JTnYDPVQHTw7zpjXh9FR1ckZsAdodksGOpWLi9O2+TPOYNmEOOnHSVbDl29RRqTt
 fNMfIh8lvskWquVNdpEDbAK+jHxuS8PjBECwa+WL7vUkavtyAoExy4JzGddXcAMWVPcc QQ== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3jf8514u3y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 09 Sep 2022 08:45:14 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 2898j583014253;
	Fri, 9 Sep 2022 08:45:05 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 3jc00m8vqa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Fri, 09 Sep 2022 08:45:05 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 2898j4Vg014229;
	Fri, 9 Sep 2022 08:45:05 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-krichai-hyd.qualcomm.com [10.213.110.37])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 2898j4Wr014215;
	Fri, 09 Sep 2022 08:45:04 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 4058933)
	id 44B1644AD; Fri,  9 Sep 2022 14:15:04 +0530 (+0530)
From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
To: helgaas@kernel.org
Cc: linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, mka@chromium.org,
        quic_vbadigan@quicinc.com, quic_hemantk@quicinc.com,
        quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
        quic_ramkri@quicinc.com, manivannan.sadhasivam@linaro.org,
        swboyd@chromium.org, dmitry.baryshkov@linaro.org,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
        linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH v6 4/5] phy: qcom: Add power down/up callbacks to pcie phy
Date: Fri,  9 Sep 2022 14:14:43 +0530
Message-Id: <1662713084-8106-5-git-send-email-quic_krichai@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1662713084-8106-1-git-send-email-quic_krichai@quicinc.com>
References: <1662713084-8106-1-git-send-email-quic_krichai@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: BCA4Ed_CBbbMwOml2C-4x5euSfWHWTaT
X-Proofpoint-ORIG-GUID: BCA4Ed_CBbbMwOml2C-4x5euSfWHWTaT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-09_04,2022-09-09_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 mlxscore=0
 malwarescore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 mlxlogscore=809 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2209090030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_014521_024090_2B38C972 
X-CRM114-Status: GOOD (  18.31  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add phy power down/up callbacks to pcie phy. Using these callbacks
we can release phy resources like phy specific clocks but continue
maintain pcie link in l1ss state.

This can help in parking pcie link in l1ss state during system
suspend (S3).

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c   |  6 ++--
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 50 ++++++++++++++++++++++++++++++++
 2 files changed, 54 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 15c2067..1d4b1b0 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1326,7 +1326,8 @@ static int qcom_pcie_resume_2_7_0(struct qcom_pcie *pcie)
 
 	ret = clk_bulk_prepare_enable(res->num_clks, res->clks);
 
-	phy_power_on(pcie->phy);
+	/* Bring back PHY from power down */
+	phy_power_up(pcie->phy);
 
 	return ret;
 }
@@ -1335,7 +1336,8 @@ static int qcom_pcie_suspend_2_7_0(struct qcom_pcie *pcie)
 {
 	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
 
-	phy_power_off(pcie->phy);
+	/* Power down PHY to park the link state in L1ss */
+	phy_power_down(pcie->phy);
 
 	clk_bulk_disable_unprepare(res->num_clks, res->clks);
 	return 0;
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 3ddbb8e..c6b3b82 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2145,6 +2145,54 @@ static int qcom_qmp_phy_pcie_exit(struct phy *phy)
 	return 0;
 }
 
+static int qcom_qmp_phy_pcie_power_up(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qcom_qmp *qmp = qphy->qmp;
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+	int ret;
+
+	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(qphy->pipe_clk);
+	if (ret)
+		return ret;
+
+	/* Pull out PHY from POWER DOWN state */
+	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
+		qphy_setbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			     cfg->pwrdn_ctrl);
+	} else {
+		qphy_setbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
+				cfg->pwrdn_ctrl);
+	}
+
+	return 0;
+}
+
+static int qcom_qmp_phy_pcie_power_down(struct phy *phy)
+{
+	struct qmp_phy *qphy = phy_get_drvdata(phy);
+	struct qcom_qmp *qmp = qphy->qmp;
+	const struct qmp_phy_cfg *cfg = qphy->cfg;
+
+	clk_disable_unprepare(qphy->pipe_clk);
+	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+
+	/* Put PHY into POWER DOWN state: active low */
+	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
+		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			     cfg->pwrdn_ctrl);
+	} else {
+		qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
+				cfg->pwrdn_ctrl);
+	}
+
+	return 0;
+}
+
 static int qcom_qmp_phy_pcie_enable(struct phy *phy)
 {
 	int ret;
@@ -2304,6 +2352,8 @@ static const struct phy_ops qcom_qmp_phy_pcie_ops = {
 	.power_on	= qcom_qmp_phy_pcie_enable,
 	.power_off	= qcom_qmp_phy_pcie_disable,
 	.set_mode	= qcom_qmp_phy_pcie_set_mode,
+	.power_down	= qcom_qmp_phy_pcie_power_down,
+	.power_up	= qcom_qmp_phy_pcie_power_up,
 	.owner		= THIS_MODULE,
 };
 
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
