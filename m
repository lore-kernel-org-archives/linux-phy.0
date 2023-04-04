Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5DCFC761A6
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 16:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjdtwltX76OCwRrXor6CA3ArThG9spins/FI9TmjGoA=; b=MsVvHUQ6O4BS2z
	L6e7DCoEhg2FoU+b7MLhsEEdz3AFbRI1/djFYDdltOJqoRghBu8wGp6LlzTpod/LhPreD+apP5IHT
	OQEB7dT33GPcT8DYpvL7NMusc8T9xBMorW+P7DnI4E4wH6/XPUEszXGhaav6jFr6mNwIFRdyd8tHQ
	9KQYlt7tvDnKEXGxHIPt9mAByc/SjP5tGRHmkVYE9ekGDb4LOi1GwsgoH14LLPmtcEuq6sNGEmKRL
	fGGGWiuVewMgRQe7ZJJvMXmb55xoCn+rLeAA2RXfBap27yRZB2aKnKqceESee2Ip7X1grzOXz0FoP
	JbmKuQsV9zn4I9GEM4OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjqe-002Glp-1T;
	Tue, 04 Apr 2023 16:49:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjqb-002Gkz-02
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 16:49:30 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 334FCvHT001275;
	Tue, 4 Apr 2023 16:49:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=uUdYudXGbQcyaxprfgZXXihUeh3JKYUtPRdDEnGJsww=;
 b=MXBnsLxwd5KxJimhNcFe4TCIa451UY565B0hiG12tnD+y9jrzBTMUe6eO2ktb5pnJX3f
 guwfq7YK3N2HEKfMdpz0ZIKBC0KRJUpChmQSGrSlxi1q9ZutWST+/3hctN4xXdKZ9hvW
 M4mOWliNYDiVV1L6TXFD9/zhwoZABSTmdtS7PJqKyLHD2VKBktuAVpl1kaMbHOPsXXed
 uQV+2t3rnupvHt76aJjslyu4hIz2QRrZ9cRXcKEh0GhiIzHLAQIBVQKP4fKZcpTSZX9k
 +TgtY20OBaK2YH98e+75HYpMpJ2zldUhZuXEZzmtBtrnnkrUppWg/kC6mAg36V8SV9MC NA== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3prnbt0fhs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Apr 2023 16:49:22 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 334Gn9bH029842
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 4 Apr 2023 16:49:09 GMT
Received: from devipriy-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 4 Apr 2023 09:49:01 -0700
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
Subject: [PATCH V2 2/9] clk: qcom: gcc-ipq9574: Add PCIe pipe clocks
Date: Tue, 4 Apr 2023 22:18:21 +0530
Message-ID: <20230404164828.8031-3-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230404164828.8031-1-quic_devipriy@quicinc.com>
References: <20230404164828.8031-1-quic_devipriy@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ZjmHgMQZnYqdw_X014qC7az7bPojvU3v
X-Proofpoint-GUID: ZjmHgMQZnYqdw_X014qC7az7bPojvU3v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-04_08,2023-04-04_05,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 lowpriorityscore=0 mlxlogscore=999
 bulkscore=0 impostorscore=0 spamscore=0 clxscore=1015 adultscore=0
 mlxscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304040156
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_094929_057684_64C590EC 
X-CRM114-Status: GOOD (  15.92  )
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

Add the PCIe pipe clocks needed for enabling PCIe in IPQ9574

Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
---
 Changes in V2:
	- Corrected the indentation for members of struct gcc_pcie1_pipe_clk 

 drivers/clk/qcom/gcc-ipq9574.c | 76 ++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/drivers/clk/qcom/gcc-ipq9574.c b/drivers/clk/qcom/gcc-ipq9574.c
index ca40cb810a95..a4cf750043af 100644
--- a/drivers/clk/qcom/gcc-ipq9574.c
+++ b/drivers/clk/qcom/gcc-ipq9574.c
@@ -1522,6 +1522,24 @@ static struct clk_regmap_phy_mux pcie0_pipe_clk_src = {
 	},
 };
 
+static struct clk_branch gcc_pcie0_pipe_clk = {
+	.halt_reg = 0x28044,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x28044,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_pcie0_pipe_clk",
+			.parent_hws = (const struct clk_hw *[]) {
+				&pcie0_pipe_clk_src.clkr.hw
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_regmap_phy_mux pcie1_pipe_clk_src = {
 	.reg = 0x29064,
 	.clkr = {
@@ -1536,6 +1554,24 @@ static struct clk_regmap_phy_mux pcie1_pipe_clk_src = {
 	},
 };
 
+static struct clk_branch gcc_pcie1_pipe_clk = {
+	.halt_reg = 0x29044,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x29044,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_pcie1_pipe_clk",
+			.parent_hws = (const struct clk_hw *[]) {
+				&pcie1_pipe_clk_src.clkr.hw
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_regmap_phy_mux pcie2_pipe_clk_src = {
 	.reg = 0x2a064,
 	.clkr = {
@@ -1550,6 +1586,24 @@ static struct clk_regmap_phy_mux pcie2_pipe_clk_src = {
 	},
 };
 
+static struct clk_branch gcc_pcie2_pipe_clk = {
+	.halt_reg = 0x2a044,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x2a044,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_pcie2_pipe_clk",
+			.parent_hws = (const struct clk_hw *[]) {
+				&pcie2_pipe_clk_src.clkr.hw
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static struct clk_regmap_phy_mux pcie3_pipe_clk_src = {
 	.reg = 0x2b064,
 	.clkr = {
@@ -1564,6 +1618,24 @@ static struct clk_regmap_phy_mux pcie3_pipe_clk_src = {
 	},
 };
 
+static struct clk_branch gcc_pcie3_pipe_clk = {
+	.halt_reg = 0x2b044,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x2b044,
+		.enable_mask = BIT(0),
+		.hw.init = &(const struct clk_init_data) {
+			.name = "gcc_pcie3_pipe_clk",
+			.parent_hws = (const struct clk_hw *[]) {
+				&pcie3_pipe_clk_src.clkr.hw
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static const struct freq_tbl ftbl_pcie_rchng_clk_src[] = {
 	F(24000000, P_XO, 1, 0, 0),
 	F(100000000, P_GPLL0, 8, 0, 0),
@@ -3878,9 +3950,13 @@ static struct clk_regmap *gcc_ipq9574_clks[] = {
 	[GCC_PCIE3_AXI_S_BRIDGE_CLK] = &gcc_pcie3_axi_s_bridge_clk.clkr,
 	[GCC_PCIE3_AXI_S_CLK] = &gcc_pcie3_axi_s_clk.clkr,
 	[PCIE0_PIPE_CLK_SRC] = &pcie0_pipe_clk_src.clkr,
+	[GCC_PCIE0_PIPE_CLK] = &gcc_pcie0_pipe_clk.clkr,
 	[PCIE1_PIPE_CLK_SRC] = &pcie1_pipe_clk_src.clkr,
+	[GCC_PCIE1_PIPE_CLK] = &gcc_pcie1_pipe_clk.clkr,
 	[PCIE2_PIPE_CLK_SRC] = &pcie2_pipe_clk_src.clkr,
+	[GCC_PCIE2_PIPE_CLK] = &gcc_pcie2_pipe_clk.clkr,
 	[PCIE3_PIPE_CLK_SRC] = &pcie3_pipe_clk_src.clkr,
+	[GCC_PCIE3_PIPE_CLK] = &gcc_pcie3_pipe_clk.clkr,
 	[PCIE_AUX_CLK_SRC] = &pcie_aux_clk_src.clkr,
 	[GCC_PCIE0_AUX_CLK] = &gcc_pcie0_aux_clk.clkr,
 	[GCC_PCIE1_AUX_CLK] = &gcc_pcie1_aux_clk.clkr,
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
