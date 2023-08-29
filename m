Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA3C0C83F18
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 13:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEi2jrM2rFvs29wUMyiPvU1qb5SU/wkhAlW+d96HWHM=; b=zYdCi2sJzl67Lj
	IoF3zoy7kxxSYNIyJRrUkU1OanBhSGTayRGsZcxURBpSVS0Qe6UpuSksmY8C3xfZReIn0oknVN9xH
	jo6pKR3MXwcM6gFNOpHUPmUNuzzqtHFLWjQJ4R7+fI/5xtrTP3P1qV/fu4ieNEexWRXMT397LbzWL
	WEFN4eKC+xB+4mU7dClei5N6PvpSE07Fuvq1tgly2eFfnPsZ7JNgAs1CzuQ88W+LLBujft7eZiLqI
	SC+pTYsi/jAyBgZ+62ehcXu8SGJT+aoCblXarroG7al7tfP/tktf1nOoAqu9LOo2DkrJi1kJAGoRY
	wZwZV2DHR3IY1CAi8YxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qazG8-00BetH-2A;
	Tue, 29 Aug 2023 13:59:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qazG3-00BepD-0l;
	Tue, 29 Aug 2023 13:59:52 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37T9uak8009805;
	Tue, 29 Aug 2023 13:59:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=A8nLVX31e8UXJUuE0fdvtxJ+biraOTNRrTnNs5rj5j4=;
 b=Y4ZGBx2Xu1/4YYUToIm3+OqKbJrJZz9MtKQSwbgBBNLLRD4Dj+Y1fjpWXbVTazOVbycV
 lEY9pk941tquZABnLi4nUUn7i2zAf6iad76vfOfFWYv14Vh6k0kAEPb4nVQLcaptU5Aq
 JVa/IS2+KPzMNajwDqSIhpnQmpP7dT85M8Vilk6mvZgYVj1AF+TOkqbfvZogYBfdh3H+
 bzsBJPpt7G1ZZJCRkDcGgC7tp/MUq61Iiimso4+mDX2WsMoHzlADga7c8vLSEMPFKTHU
 7MaZB7PvVluLwujPcB8ac9RnHU10PI3woWx7I8aerCe/M8/Ah8XdAASL0OQrLitvY0tF kg== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ss4wq1k4k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 13:59:39 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37TDxcJu002789
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 13:59:38 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Tue, 29 Aug 2023 06:59:31 -0700
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <robert.marko@sartura.hr>, <luka.perkov@sartura.hr>,
        <quic_ipkumar@quicinc.com>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_varada@quicinc.com>
Subject: [PATCH 8/9] phy: qcom: uniphy: Add ipq5332 USB UNIPHY support
Date: Tue, 29 Aug 2023 19:28:17 +0530
Message-ID: <20230829135818.2219438-9-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 1sxQEjl-qba1Iao-dHIICqjnz8PKQ6TS
X-Proofpoint-ORIG-GUID: 1sxQEjl-qba1Iao-dHIICqjnz8PKQ6TS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_11,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 spamscore=0 malwarescore=0 priorityscore=1501 mlxscore=0 adultscore=0
 mlxlogscore=976 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308290120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_065951_394056_E22D561F 
X-CRM114-Status: GOOD (  19.12  )
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

This patch adds ipq5332 USB SS UNIPHY support.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
---
This patch depends on the below series which adds support for USB2 in
IPQ5332
https://lore.kernel.org/all/cover.1692699472.git.quic_varada@quicinc.com/

 drivers/phy/qualcomm/phy-qcom-uniphy.c | 37 ++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.c b/drivers/phy/qualcomm/phy-qcom-uniphy.c
index eb71588f5417..91487e68bb6e 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy.c
@@ -26,6 +26,10 @@
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 
+#define PCIE_USB_COMBO_PHY_CFG_MISC1		0x214
+#define PCIE_USB_COMBO_PHY_CFG_RX_AFE_2		0x7C4
+#define PCIE_USB_COMBO_PHY_CFG_RX_DLF_DEMUX_2	0x7E8
+
 struct uniphy_init_tbl {
 	unsigned int offset;
 	unsigned int val;
@@ -37,6 +41,12 @@ struct uniphy_init_tbl {
 		.val = v,		\
 	}
 
+static const struct uniphy_init_tbl ipq5332_usb_ssphy_init_tbl[] = {
+	UNIPHY_INIT_CFG(PCIE_USB_COMBO_PHY_CFG_RX_AFE_2, 0x1076),
+	UNIPHY_INIT_CFG(PCIE_USB_COMBO_PHY_CFG_RX_DLF_DEMUX_2, 0x3142),
+	UNIPHY_INIT_CFG(PCIE_USB_COMBO_PHY_CFG_MISC1, 0x3),
+};
+
 struct uniphy_cfg {
 	const struct uniphy_init_tbl *init_seq;
 	int num_init_seq;
@@ -83,6 +93,32 @@ static const struct uniphy_cfg ipq4019_usb_hsphy_cfg = {
 	.reset_udelay	= 10000,
 };
 
+static const char * const ipq5332_usb_ssphy_clk_l[] = {
+	"phy_ahb", "phy_cfg_ahb", "pipe",
+};
+
+static const char * const ipq5332_usb_ssphy_reset_l[] = {
+	"por_rst",
+};
+
+static const char * const ipq5332_usb_ssphy_vreg_l[] = {
+	"vdda-phy",
+};
+
+static const struct uniphy_cfg ipq5332_usb_ssphy_cfg = {
+	.init_seq	= ipq5332_usb_ssphy_init_tbl,
+	.num_init_seq	= ARRAY_SIZE(ipq5332_usb_ssphy_init_tbl),
+	.clk_list	= ipq5332_usb_ssphy_clk_l,
+	.num_clks	= ARRAY_SIZE(ipq5332_usb_ssphy_clk_l),
+	.reset_list	= ipq5332_usb_ssphy_reset_l,
+	.num_resets	= ARRAY_SIZE(ipq5332_usb_ssphy_reset_l),
+	.vreg_list	= ipq5332_usb_ssphy_vreg_l,
+	.num_vregs	= ARRAY_SIZE(ipq5332_usb_ssphy_vreg_l),
+	.pipe_clk_rate	= 250000000,
+	.reset_udelay	= 1,
+	.autoload_udelay = 35,
+};
+
 static int phy_mux_sel(struct phy *phy)
 {
 	struct qcom_uniphy *uniphy = phy_get_drvdata(phy);
@@ -396,6 +432,7 @@ static int qcom_uniphy_probe(struct platform_device *pdev)
 static const struct of_device_id qcom_uniphy_of_match[] = {
 	{ .compatible = "qcom,usb-hs-ipq4019-phy", .data = &ipq4019_usb_hsphy_cfg},
 	{ .compatible = "qcom,usb-ss-ipq4019-phy", .data = &ipq4019_usb_ssphy_cfg},
+	{ .compatible = "qcom,ipq5332-usb-ssphy", .data = &ipq5332_usb_ssphy_cfg},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, qcom_uniphy_of_match);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
