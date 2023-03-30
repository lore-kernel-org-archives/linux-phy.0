Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A2CDC761AF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Mar 2023 08:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGqWWHF9cyY1uifThF5hn3ae5XWXlZS+1Xrpmd506Ow=; b=CR/D9c+4hjmbtC
	iyICquMUdqsKZAEVsLR4zCLnXFa1fp2v+ezZP+iEJDdmUERJVkc8Td0eSop5N1BVNBPfs7eMP6EUe
	ftRXFCIV2gEAAlmWSX3Cmzo9LPG587+hizkyXjQ25dDSdNdAF4rgw5PQ4Drk5XkUtRvx2n0CYWyrV
	F8PvTDDlJwDNoeUw1lqPdhCnGXRPrdNod1OQJR3QDm6Kt3kcUYamNicePIZDjIDPHf/BZEdP3gM7N
	xb0xyV5kdUzFeeQ39kSGgI8pUirC3z9whkJRoWu5/UwcSchg6JXojSebbbssXpAstzBLZKLf+ydUJ
	8YIto7UQ7x1dhmMdwkfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phnqg-0037Ej-0N;
	Thu, 30 Mar 2023 08:41:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phnqd-0037CL-0L
	for linux-phy@lists.infradead.org;
	Thu, 30 Mar 2023 08:41:32 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32U6J0Kf015054;
	Thu, 30 Mar 2023 08:41:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=NamAeNPplxwq6w9Jmy4Y5hQCgNKEtDIZ5CuLKlhkppg=;
 b=gWXLTbfY4UaD9c4fajexqT3o1lnlACnApR4YKDmNpAWL3By9YAe6/AhGYRR/ypqNBU8u
 952UcgB/7s0ZErJlW3jS9fbEWMVBIuB753x3ySjGdiKcwpFnGhNub49eJNFz3s/tzJas
 erOLcL2fPCBqG6Fld4G3ppI9vhVqgC3OG0AnMs2IErOP0pKkJsQ3QJfcK7S0CIwUEZ9u
 WeN7eDfG5C7Icr1eOMGj5BD6BjikzgGFR6jenw9I8bfkc9bSoba3v6opILageGqbiE4h
 VYp/vr+E/lryQtE/SK4M/sTauxQroBwdJc1AL9YwmqIrR/PHoHW5dEsHtbJGkrGHoedk wg== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pn51ygcrd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 08:41:27 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32U8fQqd019947
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 08:41:26 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 30 Mar 2023 01:41:20 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v5 4/8] clk: qcom: gcc-ipq9574: Add USB related clocks
Date: Thu, 30 Mar 2023 14:10:46 +0530
Message-ID: <2cbfb513f6cf3f17124b02ff10c625508c6038a0.1680162377.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1680162377.git.quic_varada@quicinc.com>
References: <cover.1680162377.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: EuTGxf3GbWr629N8CQBNC98F3FnYoDxq
X-Proofpoint-GUID: EuTGxf3GbWr629N8CQBNC98F3FnYoDxq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-30_04,2023-03-30_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 impostorscore=0 malwarescore=0 adultscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 mlxlogscore=999
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2303300069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_014131_265280_577D5DB9 
X-CRM114-Status: GOOD (  16.39  )
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

Add the clocks needed for enabling USB in IPQ9574

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
 Changes in v2:
	- Fixed coding style issues
---
 drivers/clk/qcom/gcc-ipq9574.c               | 37 ++++++++++++++++++++++++++++
 include/dt-bindings/clock/qcom,ipq9574-gcc.h |  2 ++
 2 files changed, 39 insertions(+)

diff --git a/drivers/clk/qcom/gcc-ipq9574.c b/drivers/clk/qcom/gcc-ipq9574.c
index 1bf33d5..06b724a 100644
--- a/drivers/clk/qcom/gcc-ipq9574.c
+++ b/drivers/clk/qcom/gcc-ipq9574.c
@@ -2041,6 +2041,41 @@ static struct clk_regmap_mux usb0_pipe_clk_src = {
 	},
 };
 
+static struct clk_branch gcc_usb0_pipe_clk = {
+	.halt_reg = 0x2c054,
+	.halt_check = BRANCH_HALT_DELAY,
+	.clkr = {
+		.enable_reg = 0x2c054,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb0_pipe_clk",
+			.parent_hws = (const struct clk_hw *[]) {
+				&usb0_pipe_clk_src.clkr.hw
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
+static struct clk_branch gcc_usb0_sleep_clk = {
+	.halt_reg = 0x2c058,
+	.clkr = {
+		.enable_reg = 0x2c058,
+		.enable_mask = BIT(0),
+		.hw.init = &(struct clk_init_data){
+			.name = "gcc_usb0_sleep_clk",
+			.parent_hws = (const struct clk_hw *[]) {
+				&gcc_sleep_clk_src.clkr.hw
+			},
+			.num_parents = 1,
+			.flags = CLK_SET_RATE_PARENT,
+			.ops = &clk_branch2_ops,
+		},
+	},
+};
+
 static const struct freq_tbl ftbl_sdcc_apps_clk_src[] = {
 	F(144000, P_XO, 16, 12, 125),
 	F(400000, P_XO, 12, 1, 5),
@@ -4008,6 +4043,8 @@ static struct clk_regmap *gcc_ipq9574_clks[] = {
 	[GCC_USB0_MOCK_UTMI_CLK] = &gcc_usb0_mock_utmi_clk.clkr,
 	[USB0_PIPE_CLK_SRC] = &usb0_pipe_clk_src.clkr,
 	[GCC_USB0_PHY_CFG_AHB_CLK] = &gcc_usb0_phy_cfg_ahb_clk.clkr,
+	[GCC_USB0_PIPE_CLK] = &gcc_usb0_pipe_clk.clkr,
+	[GCC_USB0_SLEEP_CLK] = &gcc_usb0_sleep_clk.clkr,
 	[SDCC1_APPS_CLK_SRC] = &sdcc1_apps_clk_src.clkr,
 	[GCC_SDCC1_APPS_CLK] = &gcc_sdcc1_apps_clk.clkr,
 	[SDCC1_ICE_CORE_CLK_SRC] = &sdcc1_ice_core_clk_src.clkr,
diff --git a/include/dt-bindings/clock/qcom,ipq9574-gcc.h b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
index 14543a4..97a7b19 100644
--- a/include/dt-bindings/clock/qcom,ipq9574-gcc.h
+++ b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
@@ -214,4 +214,6 @@
 #define GCC_SNOC_PCIE1_1LANE_S_CLK			205
 #define GCC_SNOC_PCIE2_2LANE_S_CLK			206
 #define GCC_SNOC_PCIE3_2LANE_S_CLK			207
+#define GCC_USB0_PIPE_CLK				208
+#define GCC_USB0_SLEEP_CLK				209
 #endif
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
