Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6B9DC7EE2E
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 10:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgRX4LadkZwtF7bQoIJg6PGvMG1gMOiLA2TLz+++eAI=; b=ejhT3NGMgwnVMz
	2qsonJQlBvJoMlsL2Hzalm6U4QDWH7IqG92Fvhnjx7Fmi7jO60YVEK2hGO94//eX+89jBOj+N5hwB
	EZp5pcT4J/Y9g6V3ByPVoDvQ12Kz2nrKZA+ILlJbakBoc7Q0Le2WZtHhCUsAaHbxJKgzjr1fVEDma
	YPOOpoUukm0J5M2FN5DdNBInnVVCYCnQzkGyGo1BRRVoEGqI1GCDHidLJF6L5UI+6GV/HmJPH9mzK
	Lew4cVY4DiHn1tkdDX15oUBa2IvFipVfEAjMK/0V/BjiWcp5NUzg0tNJ1FS9Iyq8j9zk5dcIpWVdo
	mFW4wnJIB3kBgL+qhcVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6qqw-005ZcS-1T;
	Wed, 07 Jun 2023 10:57:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6qqt-005Zay-2O;
	Wed, 07 Jun 2023 10:57:21 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3575Li4h019759;
	Wed, 7 Jun 2023 10:57:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=UM+Hot4o78/iHbAP5+OzXNzvYsZB6jnxy+maXjSOyOg=;
 b=Tgrmlj3XU7A/VxCSNtvh2bVnJw1CvvBLTh12leoL4olMAvcaECBrbVkzgyWpw6O52Tkj
 ej2qbNJ2UyH/321JsNNlU426r47cDscqdiaCEtiLX0jY7rNJtCCk3Y1bSszogw1EbeBv
 rpseyyHfDniv2lkJduMIuMlz19VWBFa1q9zXvTwDWm/fpMEnkeLJFpwxl0Xgd4Lv1ZWZ
 khY6VKI4DaCOUWM234wVDBM67gDr+v5pRuYkVgk8pd+Ha07Md8RC6Vljc8q0mgsYSgl8
 a9VNmxXn1yg4vFEp7vJmlcPl5NYWenRLB82mHxmLzgQqW2UucRYdCEaNoanW6nCROFcb 8w== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r2a719mc7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 Jun 2023 10:57:05 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 357Av5Ak023479
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 7 Jun 2023 10:57:05 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 7 Jun 2023 03:56:56 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <p.zabel@pengutronix.de>, <arnd@arndb.de>, <geert+renesas@glider.be>,
        <neil.armstrong@linaro.org>, <nfraprado@collabora.com>,
        <broonie@kernel.org>, <rafal@milecki.pl>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.org>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH 4/9] clk: qcom: ipq5332: Fix USB related clock defines
Date: Wed, 7 Jun 2023 16:26:08 +0530
Message-ID: <3840e5b5795ef55ecbf25d0faa8c328f09c6d976.1686126439.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1686126439.git.quic_varada@quicinc.com>
References: <cover.1686126439.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Z2TsTwjIBn2S3qlWPRVHa0LxQyJiosUC
X-Proofpoint-ORIG-GUID: Z2TsTwjIBn2S3qlWPRVHa0LxQyJiosUC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-07_06,2023-06-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 mlxlogscore=999
 phishscore=0 suspectscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2306070089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_035719_784390_BA8AAE4A 
X-CRM114-Status: GOOD (  18.56  )
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

Fix the USB related clock defines and add details
referenced by them

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
 drivers/clk/qcom/gcc-ipq5332.c | 34 +++++++++++++++++++++++-----------
 1 file changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/qcom/gcc-ipq5332.c b/drivers/clk/qcom/gcc-ipq5332.c
index a75ab88..2b58558 100644
--- a/drivers/clk/qcom/gcc-ipq5332.c
+++ b/drivers/clk/qcom/gcc-ipq5332.c
@@ -351,6 +351,16 @@ static const struct freq_tbl ftbl_gcc_adss_pwm_clk_src[] = {
 	{ }
 };
 
+static const struct clk_parent_data gcc_usb3phy_0_cc_pipe_clk_xo[] = {
+	{ .fw_name = "usb3phy_0_cc_pipe_clk" },
+	{ .fw_name = "xo" },
+};
+
+static const struct parent_map gcc_usb3phy_0_cc_pipe_clk_xo_map[] = {
+	{ P_USB3PHY_0_PIPE, 0 },
+	{ P_XO, 2 },
+};
+
 static struct clk_rcg2 gcc_adss_pwm_clk_src = {
 	.cmd_rcgr = 0x1c004,
 	.mnd_width = 0,
@@ -1101,16 +1111,18 @@ static struct clk_rcg2 gcc_usb0_mock_utmi_clk_src = {
 	},
 };
 
-static struct clk_regmap_phy_mux gcc_usb0_pipe_clk_src = {
+static struct clk_regmap_mux usb0_pipe_clk_src = {
 	.reg = 0x2c074,
+	.shift = 8,
+	.width = 2,
+	.parent_map = gcc_usb3phy_0_cc_pipe_clk_xo_map,
 	.clkr = {
-		.hw.init = &(struct clk_init_data) {
-			.name = "gcc_usb0_pipe_clk_src",
-			.parent_data = &(const struct clk_parent_data) {
-				.index = DT_USB_PCIE_WRAPPER_PIPE_CLK,
-			},
-			.num_parents = 1,
-			.ops = &clk_regmap_phy_mux_ops,
+		.hw.init = &(const struct clk_init_data){
+			.name = "usb0phy_0_cc_pipe_clk_src",
+			.parent_data = gcc_usb3phy_0_cc_pipe_clk_xo,
+			.num_parents = 2,
+			.ops = &clk_regmap_mux_closest_ops,
+			.flags = CLK_SET_RATE_PARENT,
 		},
 	},
 };
@@ -3041,8 +3053,8 @@ static struct clk_branch gcc_usb0_pipe_clk = {
 		.enable_mask = BIT(0),
 		.hw.init = &(const struct clk_init_data) {
 			.name = "gcc_usb0_pipe_clk",
-			.parent_hws = (const struct clk_hw*[]) {
-				&gcc_usb0_pipe_clk_src.clkr.hw,
+			.parent_names = (const char *[]){
+				"usb0_pipe_clk_src"
 			},
 			.num_parents = 1,
 			.flags = CLK_SET_RATE_PARENT,
@@ -3580,7 +3592,7 @@ static struct clk_regmap *gcc_ipq5332_clocks[] = {
 	[GCC_PCIE3X2_PIPE_CLK_SRC] = &gcc_pcie3x2_pipe_clk_src.clkr,
 	[GCC_PCIE3X1_0_PIPE_CLK_SRC] = &gcc_pcie3x1_0_pipe_clk_src.clkr,
 	[GCC_PCIE3X1_1_PIPE_CLK_SRC] = &gcc_pcie3x1_1_pipe_clk_src.clkr,
-	[GCC_USB0_PIPE_CLK_SRC] = &gcc_usb0_pipe_clk_src.clkr,
+	[GCC_USB0_PIPE_CLK_SRC] = &usb0_pipe_clk_src.clkr,
 };
 
 static const struct qcom_reset_map gcc_ipq5332_resets[] = {
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
