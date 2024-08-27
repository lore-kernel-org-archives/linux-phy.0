Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05FDEC54731
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 06:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SQhsxEjR+n3lm5FFqKB4syEZsofJVDyKpmvSTEcFCQ=; b=FXLRpKoqDFqW/f
	YZD8hYy4J4WYcyAtQbemsPs7ZfzjMzgvzTja5SEGzXSSKimVty/P79INt+AseUK+7oeiXV/o0BbBA
	WXMPBcaXKtJoQ4Cdb66XIDCWSFtIXSxXNQtG9C/z8dpWk8mQMGkHDELbqUowkIDOsa91yHFYm7PWR
	OaW2IF5GsO25091cx1pKIvRJSDrX3/ewJuAc1eNzDk8Xlr1/q3dwkEyLJjLAgtrBSUgNyuktzT3gh
	r2zBS+40BXHOmrzAgT6OdG95tgN/TFVSMT0MzLHup+SNpyCq+hcd6WsGEUP4Fq9kmXLb7tesmTTwu
	kwAnETg/Ilk9G/5o1jdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipp9-0000000A2ez-1wrM;
	Tue, 27 Aug 2024 06:37:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipp6-0000000A2dT-3h3o
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 06:37:02 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47QJGSko028158;
	Tue, 27 Aug 2024 06:36:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QDEMLhiG+OJ
	uyuKMY5EIrlLdihz623LVdNQWa8fMfdw=; b=pVN0ORfHo6cFGks2a6k5ca3MVol
	71pYjnbW4M2RAV+0JVIxeSdxgDy4VWwXra7Gh3+TQ0Tv4CvAo3S3NdbkupTLN5Ji
	BeKVQm5ngYr267BdpiQO6PM+1Nk2QvGy8WOPJluZ3XF61ndqz2lMg+e5BLCxA7Km
	7TWyFFkzNHP5o+5BpNOUxj1lxvEgpDDt0+6ngC3D7Df5WbV/s70+EpZz1I4KD+L5
	tPTNIWMuW/MBXaiNaYjgYyJj2ojJntQ8epXVtcC0ftWbti5ivHmmhWf1IaYbQuTb
	CvgEGqTKkJBzruzG+pKorxju1lIuG0lUquXyeY8KcB4R2+gbfBbwfLkm9CA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 417973nyt8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:54 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA04.qualcomm.com [127.0.0.1])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 47R6Xq44019749;
	Tue, 27 Aug 2024 06:36:52 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA04.qualcomm.com (PPS) with ESMTPS id 4198va8jks-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:52 +0000
Received: from NALASPPMTA04.qualcomm.com (NALASPPMTA04.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 47R6aq0x026429;
	Tue, 27 Aug 2024 06:36:52 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA04.qualcomm.com (PPS) with ESMTPS id 47R6aq4r026424
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 06:36:52 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id 7C38764E; Mon, 26 Aug 2024 23:36:52 -0700 (PDT)
From: Qiang Yu <quic_qianyu@quicinc.com>
To: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
        quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
        neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Subject: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
Date: Mon, 26 Aug 2024 23:36:31 -0700
Message-Id: <20240827063631.3932971-9-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: WMzAFl9W03rEZh-ulVVLpjuIjCPk6IKm
X-Proofpoint-GUID: WMzAFl9W03rEZh-ulVVLpjuIjCPk6IKm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-27_04,2024-08-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 impostorscore=0 mlxlogscore=999 adultscore=0 lowpriorityscore=0 mlxscore=0
 phishscore=0 malwarescore=0 bulkscore=0 spamscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2407110000
 definitions=main-2408270048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_233701_086543_26DFB617 
X-CRM114-Status: GOOD (  14.55  )
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

On platform x1e80100 QCP, PCIe3 is a standard x8 form factor. Hence, add
support to use 3.3v, 3.3v aux and 12v regulators.

Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 52 +++++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 6f953e32d990..59fb415dfeeb 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -248,6 +248,8 @@ struct qcom_pcie_cfg {
 	bool no_l0s;
 };
 
+#define QCOM_PCIE_SLOT_MAX_SUPPLIES			3
+
 struct qcom_pcie {
 	struct dw_pcie *pci;
 	void __iomem *parf;			/* DT parf */
@@ -260,6 +262,7 @@ struct qcom_pcie {
 	struct icc_path *icc_cpu;
 	const struct qcom_pcie_cfg *cfg;
 	struct dentry *debugfs;
+	struct regulator_bulk_data slot_supplies[QCOM_PCIE_SLOT_MAX_SUPPLIES];
 	bool suspended;
 	bool use_pm_opp;
 };
@@ -1174,6 +1177,41 @@ static int qcom_pcie_link_up(struct dw_pcie *pci)
 	return !!(val & PCI_EXP_LNKSTA_DLLLA);
 }
 
+static int qcom_pcie_enable_slot_supplies(struct qcom_pcie *pcie)
+{
+	struct dw_pcie *pci = pcie->pci;
+	int ret;
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(pcie->slot_supplies),
+				    pcie->slot_supplies);
+	if (ret < 0)
+		dev_err(pci->dev, "Failed to enable slot regulators\n");
+
+	return ret;
+}
+
+static void qcom_pcie_disable_slot_supplies(struct qcom_pcie *pcie)
+{
+	regulator_bulk_disable(ARRAY_SIZE(pcie->slot_supplies),
+			       pcie->slot_supplies);
+}
+
+static int qcom_pcie_get_slot_supplies(struct qcom_pcie *pcie)
+{
+	struct dw_pcie *pci = pcie->pci;
+	int ret;
+
+	pcie->slot_supplies[0].supply = "vpcie12v";
+	pcie->slot_supplies[1].supply = "vpcie3v3";
+	pcie->slot_supplies[2].supply = "vpcie3v3aux";
+	ret = devm_regulator_bulk_get(pci->dev, ARRAY_SIZE(pcie->slot_supplies),
+				      pcie->slot_supplies);
+	if (ret < 0)
+		dev_err(pci->dev, "Failed to get slot regulators\n");
+
+	return ret;
+}
+
 static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
@@ -1182,10 +1220,14 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 
 	qcom_ep_reset_assert(pcie);
 
-	ret = pcie->cfg->ops->init(pcie);
+	ret = qcom_pcie_enable_slot_supplies(pcie);
 	if (ret)
 		return ret;
 
+	ret = pcie->cfg->ops->init(pcie);
+	if (ret)
+		goto err_disable_slot;
+
 	ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
 	if (ret)
 		goto err_deinit;
@@ -1216,7 +1258,8 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	phy_power_off(pcie->phy);
 err_deinit:
 	pcie->cfg->ops->deinit(pcie);
-
+err_disable_slot:
+	qcom_pcie_disable_slot_supplies(pcie);
 	return ret;
 }
 
@@ -1228,6 +1271,7 @@ static void qcom_pcie_host_deinit(struct dw_pcie_rp *pp)
 	qcom_ep_reset_assert(pcie);
 	phy_power_off(pcie->phy);
 	pcie->cfg->ops->deinit(pcie);
+	qcom_pcie_disable_slot_supplies(pcie);
 }
 
 static void qcom_pcie_host_post_init(struct dw_pcie_rp *pp)
@@ -1602,6 +1646,10 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 			goto err_pm_runtime_put;
 	}
 
+	ret = qcom_pcie_get_slot_supplies(pcie);
+	if (ret)
+		goto err_pm_runtime_put;
+
 	ret = pcie->cfg->ops->get_resources(pcie);
 	if (ret)
 		goto err_pm_runtime_put;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
