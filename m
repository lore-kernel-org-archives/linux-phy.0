Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2452FC4167B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 06:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFbp7GlySKfu8je77uz+lkZ4gW9QLZLhf7t2fFZxQKU=; b=xI8boYczJNbkfx
	jCw37i2j0ZlDnH4aHg4WpRd+0ucF2mxq3Z2YAQnDb1oMjxUWNYRCv7ZACu61pCRRuTdEUXFgDB8je
	jDAnyHpmXUupWAsxR9Sggr8cbIRNglPxjMuwq+WYEUkNR3oQpgkk6wmVqiuEeEqkHw2QPYm12wzho
	V/CLR+5YVMOp2MtODWhDJwXUEwQrE3U+Fp609qYe/+x2Hpsle8Mx5UjNIAQxeEaNohOgH+5yffJwK
	mTrxf5fZyQU5HHQdNa8y793b5NYVnuaD85lc79q2gJuSKluqDciT2ZOSXZ49prsvGQhXMIluuicV0
	ddclc2RctmKZHh/jr+6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfER-00GysW-2p;
	Thu, 14 Dec 2023 06:30:03 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfEO-00Gyqk-2e
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 06:30:02 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BE5rRvB013098;
	Thu, 14 Dec 2023 06:29:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	qcppdkim1; bh=O/y9Wtug2ck8Z5eDt9Qo1Eos0dLEvEuPtPA3MKLz4ts=; b=ZE
	/b4bc7ZjpiZcvAqph6NraiOxH+hqhi+ZeoveESR0WKdWcVLTLxKh6gl96JNfVyq2
	n3E4jqolW7ggdFxf7IgQv/s2Uupny0Jhj694+AepUJJRa/5+SvIvGyocXNwGxKUN
	rNT0ExkQbuv0ffuHhcisOZN3qNyVDOfwbKMWx75K6Onvn+uWZVTFI83O94myP3Tx
	kKPvm626LBmAer22wbCsfJvGgSFlnXuZEwOoelcrGdw/lJRHSwkDy772gXQQKlR0
	wYrUUiI/Z40iiAuz/2qy+aSjpa2Ad1LYStUO9If7+sjJLiBEoumlhw+uuiPxWRcg
	dTK8pVU6EqTX7oYiZ08Q==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uyp4xgqh4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 06:29:54 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3BE6Trxd016626
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 06:29:53 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 13 Dec 2023 22:29:46 -0800
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mani@kernel.org>,
        <quic_nsekar@quicinc.com>, <quic_srichara@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <quic_varada@quicinc.com>, <quic_devipriy@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_anusha@quicinc.com>
Subject: [PATCH 06/10] phy: qcom: ipq5332: Add support for g3x1 and g3x2 PCIe PHYs
Date: Thu, 14 Dec 2023 11:58:43 +0530
Message-ID: <20231214062847.2215542-7-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214062847.2215542-1-quic_ipkumar@quicinc.com>
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: uU5Uxie_b92n2qBO3Fv0wog4gufFbrNv
X-Proofpoint-ORIG-GUID: uU5Uxie_b92n2qBO3Fv0wog4gufFbrNv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_02,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 spamscore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312140039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_223000_984482_1903078B 
X-CRM114-Status: GOOD (  13.65  )
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

Add support for single-lane and dual-lane PCIe UNIPHY found on
Qualcomm IPQ5332 platform. This UNIPHY is similar to the one
present in Qualcomm IPQ5018.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
---
This patch depends on the below series which adds PCIe support in
Qualcomm IPQ5018
https://lore.kernel.org/all/20231003120846.28626-1-quic_nsekar@quicinc.com/

 .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
index 9f9a03faf6fa..aa71b85eb50e 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
@@ -34,6 +34,10 @@
 #define SSCG_CTRL_REG_6		0xb0
 #define PCS_INTERNAL_CONTROL_2	0x2d8
 
+#define PHY_CFG_PLLCFG				0x220
+#define PHY_CFG_EIOS_DTCT_REG			0x3e4
+#define PHY_CFG_GEN3_ALIGN_HOLDOFF_TIME		0x3e8
+
 #define PHY_MODE_FIXED		0x1
 
 enum qcom_uniphy_pcie_type {
@@ -112,6 +116,21 @@ static const struct uniphy_regs ipq5018_regs[] = {
 	},
 };
 
+static const struct uniphy_regs ipq5332_regs[] = {
+	{
+		.offset = PHY_CFG_PLLCFG,
+		.val = 0x30,
+	},
+	{
+		.offset = PHY_CFG_EIOS_DTCT_REG,
+		.val = 0x53ef,
+	},
+	{
+		.offset = PHY_CFG_GEN3_ALIGN_HOLDOFF_TIME,
+		.val = 0xCf,
+	},
+};
+
 static const struct uniphy_pcie_data ipq5018_2x2_data = {
 	.lanes		= 2,
 	.lane_offset	= 0x800,
@@ -121,6 +140,23 @@ static const struct uniphy_pcie_data ipq5018_2x2_data = {
 	.pipe_clk_rate	= 125000000,
 };
 
+static const struct uniphy_pcie_data ipq5332_x2_data = {
+	.lanes		= 2,
+	.lane_offset	= 0x800,
+	.phy_type	= PHY_TYPE_PCIE_GEN3,
+	.init_seq	= ipq5332_regs,
+	.init_seq_num	= ARRAY_SIZE(ipq5332_regs),
+	.pipe_clk_rate	= 250000000,
+};
+
+static const struct uniphy_pcie_data ipq5332_x1_data = {
+	.lanes		= 1,
+	.phy_type	= PHY_TYPE_PCIE_GEN3,
+	.init_seq	= ipq5332_regs,
+	.init_seq_num	= ARRAY_SIZE(ipq5332_regs),
+	.pipe_clk_rate	= 250000000,
+};
+
 static void qcom_uniphy_pcie_init(struct qcom_uniphy_pcie *phy)
 {
 	const struct uniphy_pcie_data *data = phy->data;
@@ -270,6 +306,14 @@ static const struct of_device_id qcom_uniphy_pcie_id_table[] = {
 		.compatible = "qcom,ipq5018-uniphy-pcie-gen2x2",
 		.data = &ipq5018_2x2_data,
 	},
+	{
+		.compatible = "qcom,ipq5332-uniphy-pcie-gen3x2",
+		.data = &ipq5332_x2_data,
+	},
+	{
+		.compatible = "qcom,ipq5332-uniphy-pcie-gen3x1",
+		.data = &ipq5332_x1_data,
+	},
 	{ /* Sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, qcom_uniphy_pcie_id_table);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
