Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76C16E75453
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 12:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBgTrkvNP+ouBygCqdLZRyrKkFsJoA14Rbg5JhTpbYA=; b=rEn6uIXS6/Brve
	1djPM+Ee+t46dRHuCTDUpDfLi+s1JvP7GGXvB7bZkQttVbHvDSH6Ptee2/rby7VoGBf85jyfvVDO1
	nXHRGKVGaCcIkm3atuLFCCcd4AaHw+AiKdQh4FxqLYhH7HWlokJXz4iRPgJT5yrCV9Pge7Ek5DWrw
	seyaFi8iCehvs5DfZpFQ28MgQmerMd99SYzNyvv5KaFFTzqXw2X5aYCLGQE7BtGwJTH3FAtuMHo2t
	jdT1WQq+7LbQ1IvLqD5eM780FheLTOT+s5y016QRtO5MCd5BTlZclXXAcMTTwbzLzt1Z6StCA9Xy0
	llsCUJHMg6leI7fHY0eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qneDr-00EaT9-0Y;
	Tue, 03 Oct 2023 12:09:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qneDn-00EaSN-1H
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 12:09:54 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 393BAF1d003104;
	Tue, 3 Oct 2023 12:09:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=kcK9fwNnCVhn1NcsB6NCBvKc+/efmmK7YFzYf4XEEf4=;
 b=MVSckyypMcAxYTe9vX6X4rXDzx75qrN6K2mWvi3fED5h1kdt1S2hOO6AeQRGgbFWHV9r
 Zn5f7FNpiaYB5UGkvtSm1ROQ8RvhvRKBmEi9NAoueiNu/uxxGqTMhqZdZujttW83iO2p
 X2Tryww7FRadATSZmegq/9j9kgHF6at8uBcZgBole5Ndx9wkaW/kWRs/sTJhXywipwXK
 Xtg2VoNIWTdN4cEe9qTGQkPhipgS3dl53w3zu7+S/X9jyrThSN8i0T/XlCUPHyFJ1gjk
 qVGoHmpXKysyqLiTMfCFvbqfHek7lDtnVQ5C/miNkkCpKZ7Q/61Kzl4V8bz50tb74cxT DQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tghsjr4e8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 12:09:44 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 393C9hTR017407
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Oct 2023 12:09:43 GMT
Received: from nsekar-linux.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Tue, 3 Oct 2023 05:09:35 -0700
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <mani@kernel.org>, <p.zabel@pengutronix.de>, <quic_nsekar@quicinc.com>,
        <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>,
        <quic_ipkumar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: Anusha Rao <quic_anusha@quicinc.com>,
        Devi Priya
	<quic_devipriy@quicinc.com>
Subject: [PATCH 4/6] PCI: qcom: Add support for IPQ5018
Date: Tue, 3 Oct 2023 17:38:44 +0530
Message-ID: <20231003120846.28626-5-quic_nsekar@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231003120846.28626-1-quic_nsekar@quicinc.com>
References: <20231003120846.28626-1-quic_nsekar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Kt-S5F3Gf0td6HRNtu1AImlZtU7ElVS7
X-Proofpoint-ORIG-GUID: Kt-S5F3Gf0td6HRNtu1AImlZtU7ElVS7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_08,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 mlxlogscore=999 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310030087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_050951_550388_0617012E 
X-CRM114-Status: GOOD (  20.34  )
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

Added a new compatible 'qcom,pcie-ipq5018' and modified
get_resources of 'ops 2_9_0' to get the clocks from the
device-tree.

Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
Co-developed-by: Devi Priya <quic_devipriy@quicinc.com>
Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index e2f29404c84e..bb0717190920 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -197,10 +197,10 @@ struct qcom_pcie_resources_2_7_0 {
 	struct reset_control *rst;
 };
 
-#define QCOM_PCIE_2_9_0_MAX_CLOCKS		5
 struct qcom_pcie_resources_2_9_0 {
-	struct clk_bulk_data clks[QCOM_PCIE_2_9_0_MAX_CLOCKS];
+	struct clk_bulk_data *clks;
 	struct reset_control *rst;
+	int num_clks;
 };
 
 union qcom_pcie_resources {
@@ -1048,17 +1048,10 @@ static int qcom_pcie_get_resources_2_9_0(struct qcom_pcie *pcie)
 	struct qcom_pcie_resources_2_9_0 *res = &pcie->res.v2_9_0;
 	struct dw_pcie *pci = pcie->pci;
 	struct device *dev = pci->dev;
-	int ret;
 
-	res->clks[0].id = "iface";
-	res->clks[1].id = "axi_m";
-	res->clks[2].id = "axi_s";
-	res->clks[3].id = "axi_bridge";
-	res->clks[4].id = "rchng";
-
-	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(res->clks), res->clks);
-	if (ret < 0)
-		return ret;
+	res->num_clks = devm_clk_bulk_get_all(dev, &res->clks);
+	if (res->num_clks < 0)
+		return res->num_clks;
 
 	res->rst = devm_reset_control_array_get_exclusive(dev);
 	if (IS_ERR(res->rst))
@@ -1071,7 +1064,7 @@ static void qcom_pcie_deinit_2_9_0(struct qcom_pcie *pcie)
 {
 	struct qcom_pcie_resources_2_9_0 *res = &pcie->res.v2_9_0;
 
-	clk_bulk_disable_unprepare(ARRAY_SIZE(res->clks), res->clks);
+	clk_bulk_disable_unprepare(res->num_clks, res->clks);
 }
 
 static int qcom_pcie_init_2_9_0(struct qcom_pcie *pcie)
@@ -1100,7 +1093,7 @@ static int qcom_pcie_init_2_9_0(struct qcom_pcie *pcie)
 
 	usleep_range(2000, 2500);
 
-	return clk_bulk_prepare_enable(ARRAY_SIZE(res->clks), res->clks);
+	return clk_bulk_prepare_enable(res->num_clks, res->clks);
 }
 
 static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
@@ -1605,6 +1598,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
 	{ .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },
+	{ .compatible = "qcom,pcie-ipq5018", .data = &cfg_2_9_0 },
 	{ .compatible = "qcom,pcie-ipq6018", .data = &cfg_2_9_0 },
 	{ .compatible = "qcom,pcie-ipq8064", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
