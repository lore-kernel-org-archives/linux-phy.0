Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCBB0C6FD1D
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 16:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N6kuF/nS3/T3B6geCkspa9GV3vAzfUc/X8tgf/jT618=; b=hb33uWsrD3zlGA
	NYNOofyAkjMB4qPt8/i6TYHCNuTOzvqvfn6MKGOtOPk/yqu5FhZw3bsTbFmNuum0+KPnCEH+xzvlw
	dIClAqUNmrh4pFI3wL87+c7Tu6l4AGfm2LTzg8VSPXjm1Ts1iKMv7bqyMfV5uiEwl7Se0tJOPFEGZ
	fSAYw0qaZzcwmuEH5HGXJFiHkFDR0tFxOs4r3oJtQmX9QD7tS8nZSUtu++JJ8feVSeaeasQ3jE2rj
	/27Yfbu2bfayvSn1vck7L6cJGh79G9bDQofesMh8oYqkZChzn70uh2avXZCbJLRaxju6z0LDklmiv
	fSF04Zx7thcyqqp5pE9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjrS-002Gvj-1p;
	Tue, 04 Apr 2023 16:50:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjrP-002GvE-2f
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 16:50:21 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 334DUtRG011054;
	Tue, 4 Apr 2023 16:50:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=l8w1/hgTPworsK3U0QpeR2myc76+4gYZR+4ff0LHt4E=;
 b=Ypq+0VaO12L2B/a/9GQ0cST63QJRaZPKX6uu1XxX8cyNgcrxUc2Hpd0lw3kgkmEdjAVf
 5/7jJReSwwKjRGJUAqU5WD9OeFqlvbUplUtQdN00QX/gxmmuI93wFm6ETRvr3RJ7cpDt
 J15pVGHv0DUUqkl5Sc/SdfVfXAiXvOUmIhuS3mvrvu+ZSMvydlhh0i39FR2xdaWolroY
 IMc+B2HiWOY1GPZS8Cp1H1KGW3hQw9Xaip/5mfLL/vTOQsjBKYTfJjil8lbejkgAORzq
 eU4ztFHtyPqxO1dsiHr0Kpq45SzeFc+rr09gKwfyNjZNWShc+0+D8K2OkHUIDlQKf/AW WQ== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3prg8wsd6k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Apr 2023 16:50:13 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 334GoCcs015908
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 4 Apr 2023 16:50:12 GMT
Received: from devipriy-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 4 Apr 2023 09:50:03 -0700
From: Devi Priya <quic_devipriy@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <linus.walleij@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-clk@vger.kernel.org>, <linux-gpio@vger.kernel.org>
CC: <quic_srichara@quicinc.com>, <quic_gokulsri@quicinc.com>,
        <quic_sjaganat@quicinc.com>, <quic_kathirav@quicinc.com>,
        <quic_arajkuma@quicinc.com>, <quic_anusha@quicinc.com>,
        <quic_ipkumar@quicinc.com>
Subject: [PATCH V2 9/9] PCI: qcom: Add support for IPQ9574
Date: Tue, 4 Apr 2023 22:18:28 +0530
Message-ID: <20230404164828.8031-10-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230404164828.8031-1-quic_devipriy@quicinc.com>
References: <20230404164828.8031-1-quic_devipriy@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: D_sHUbA0nX3JJkbrHU6AWPoigXkrrOIc
X-Proofpoint-ORIG-GUID: D_sHUbA0nX3JJkbrHU6AWPoigXkrrOIc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-04_08,2023-04-04_04,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304040156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_095019_872639_B9633C23 
X-CRM114-Status: GOOD (  25.33  )
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

The IPQ9574 platform has 4 Gen3 PCIe controllers: two single-lane
and two dual-lane based on SNPS core 5.70a
The Qcom IP rev is 1.27.0 and Synopsys IP rev is 5.80a
Added a new compatible 'qcom,pcie-ipq9574' and 'ops_1_27_0'
which reuses all the members of 'ops_2_9_0' except for the post_init
as the SLV_ADDR_SPACE_SIZE configuration differs between 2_9_0
and 1_27_0.
Also, modified get_resources of 'ops 2_9_0' to get the clocks
from the device tree and modelled the post init sequence as
a common function to avoid code redundancy

Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
---
 Changes in V2:
	- Updated the commit message with details on the PCIe controller
	- Updated ops_2_9_0 to get the clocks from the DT
	- Added ops 1_27_0 for ipq9574 which reuses the functions of 
	  existing ops_2_9_0 except for the post init sequence which is 
	  modelled as a common function to handle the difference in 
	  SLV_ADDR_SPACE_SIZE configuration

 drivers/pci/controller/dwc/pcie-qcom.c | 62 ++++++++++++++++++--------
 1 file changed, 44 insertions(+), 18 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index a232b04af048..b03d182eb283 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -114,6 +114,7 @@
 
 #define PCIE20_v3_PARF_SLV_ADDR_SPACE_SIZE	0x358
 #define SLV_ADDR_SPACE_SZ			0x10000000
+#define SLV_ADDR_SPACE_SZ_1_27_0		0x08000000
 
 #define PCIE20_LNK_CONTROL2_LINK_STATUS2	0xa0
 
@@ -189,8 +190,9 @@ struct qcom_pcie_resources_2_7_0 {
 };
 
 struct qcom_pcie_resources_2_9_0 {
-	struct clk_bulk_data clks[5];
+	struct clk_bulk_data *clks;
 	struct reset_control *rst;
+	int num_clks;
 };
 
 union qcom_pcie_resources {
@@ -1308,17 +1310,10 @@ static int qcom_pcie_get_resources_2_9_0(struct qcom_pcie *pcie)
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
+	if (res->clks < 0)
+		return res->num_clks;
 
 	res->rst = devm_reset_control_array_get_exclusive(dev);
 	if (IS_ERR(res->rst))
@@ -1331,7 +1326,7 @@ static void qcom_pcie_deinit_2_9_0(struct qcom_pcie *pcie)
 {
 	struct qcom_pcie_resources_2_9_0 *res = &pcie->res.v2_9_0;
 
-	clk_bulk_disable_unprepare(ARRAY_SIZE(res->clks), res->clks);
+	clk_bulk_disable_unprepare(res->num_clks, res->clks);
 }
 
 static int qcom_pcie_init_2_9_0(struct qcom_pcie *pcie)
@@ -1360,19 +1355,16 @@ static int qcom_pcie_init_2_9_0(struct qcom_pcie *pcie)
 
 	usleep_range(2000, 2500);
 
-	return clk_bulk_prepare_enable(ARRAY_SIZE(res->clks), res->clks);
+	return clk_bulk_prepare_enable(res->num_clks, res->clks);
 }
 
-static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
+static int qcom_pcie_post_init(struct qcom_pcie *pcie)
 {
 	struct dw_pcie *pci = pcie->pci;
 	u16 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
 	u32 val;
 	int i;
 
-	writel(SLV_ADDR_SPACE_SZ,
-		pcie->parf + PCIE20_v3_PARF_SLV_ADDR_SPACE_SIZE);
-
 	val = readl(pcie->parf + PCIE20_PARF_PHY_CTRL);
 	val &= ~BIT(0);
 	writel(val, pcie->parf + PCIE20_PARF_PHY_CTRL);
@@ -1401,7 +1393,7 @@ static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
 	writel(val, pci->dbi_base + offset + PCI_EXP_LNKCAP);
 
 	writel(PCI_EXP_DEVCTL2_COMP_TMOUT_DIS, pci->dbi_base + offset +
-			PCI_EXP_DEVCTL2);
+		PCI_EXP_DEVCTL2);
 
 	for (i = 0; i < 256; i++)
 		writel(0, pcie->parf + PCIE20_PARF_BDF_TO_SID_TABLE_N + (4 * i));
@@ -1409,6 +1401,26 @@ static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
 	return 0;
 }
 
+static int qcom_pcie_post_init_1_27_0(struct qcom_pcie *pcie)
+{
+	writel(SLV_ADDR_SPACE_SZ_1_27_0,
+	       pcie->parf + PCIE20_v3_PARF_SLV_ADDR_SPACE_SIZE);
+
+	qcom_pcie_post_init(pcie);
+
+	return 0;
+}
+
+static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
+{
+	writel(SLV_ADDR_SPACE_SZ,
+	       pcie->parf + PCIE20_v3_PARF_SLV_ADDR_SPACE_SIZE);
+
+	qcom_pcie_post_init(pcie);
+
+	return 0;
+}
+
 static int qcom_pcie_link_up(struct dw_pcie *pci)
 {
 	u16 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
@@ -1620,6 +1632,15 @@ static const struct qcom_pcie_ops ops_2_9_0 = {
 	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
 };
 
+/* Qcom IP rev.: 1.27.0  Synopsys IP rev.: 5.80a */
+static const struct qcom_pcie_ops ops_1_27_0 = {
+	.get_resources = qcom_pcie_get_resources_2_9_0,
+	.init = qcom_pcie_init_2_9_0,
+	.post_init = qcom_pcie_post_init_1_27_0,
+	.deinit = qcom_pcie_deinit_2_9_0,
+	.ltssm_enable = qcom_pcie_2_3_2_ltssm_enable,
+};
+
 static const struct qcom_pcie_cfg cfg_1_0_0 = {
 	.ops = &ops_1_0_0,
 };
@@ -1652,6 +1673,10 @@ static const struct qcom_pcie_cfg cfg_2_9_0 = {
 	.ops = &ops_2_9_0,
 };
 
+static const struct qcom_pcie_cfg cfg_1_27_0 = {
+	.ops = &ops_1_27_0,
+};
+
 static const struct dw_pcie_ops dw_pcie_ops = {
 	.link_up = qcom_pcie_link_up,
 	.start_link = qcom_pcie_start_link,
@@ -1829,6 +1854,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-ipq8074", .data = &cfg_2_3_3 },
 	{ .compatible = "qcom,pcie-ipq8074-gen3", .data = &cfg_2_9_0 },
+	{ .compatible = "qcom,pcie-ipq9574", .data = &cfg_1_27_0 },
 	{ .compatible = "qcom,pcie-msm8996", .data = &cfg_2_3_2 },
 	{ .compatible = "qcom,pcie-qcs404", .data = &cfg_2_4_0 },
 	{ .compatible = "qcom,pcie-sa8540p", .data = &cfg_1_9_0 },
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
