Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C231C0018A
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 11:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOPD0oY8dhquEN98de4INkpCfXzBcTGaQAAa3UBgKtA=; b=NqD4mmRNzzbuUF
	8TxoEufjtZ2mAiMjv7L5PJbaHF1JEbPl0tgVXTJt2pUs0SB17MgMjWnmgPPGzEe2LFfoOKTvGoPP1
	WAXGtwZwhbDgwFJrtJjr2HAFPDGXH7yFoau53E4ixu5Rr2/m6ZyUET915MPhnDYMyKuHhYZsjsWCJ
	/0XwiAxchTmFlUZiYJ1dUdQyvwM6FshtCoYHvUpKE7IFjdw04U25rsw/BwjUmpl2600e9BOjXVLt1
	iZHOtex2S5Yd6+rMAiKKZT2R2iRR+oanMfOEcerYZueeGOqRYW0elvydy20P2O7BenZnf2D4p90XF
	MEGVPlSj0CyTRevCwdaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzyAF-00GXLw-2g;
	Mon, 06 Nov 2023 11:53:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzyAD-00GXJv-2d
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 11:53:07 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A68jVo9001565;
	Mon, 6 Nov 2023 11:53:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : date :
 subject : mime-version : content-type : content-transfer-encoding :
 message-id : references : in-reply-to : to : cc; s=qcppdkim1;
 bh=1tQZ31Of8xJt0eEt4Gtg8plvRxa6YFAbkNUQasMTork=;
 b=dPbnJS759kj7Ri9kELrWlVed8fCIIjWLR+lhosZC4904KTq/dx+lQa2F08Fk8q2bxksJ
 wCfvFahDo9GcY71UtUYzv+FzdJnkMq7GSDfg6i9x2BvVwrbQjO/odDAH//UfF+TsJRNx
 Bt+ZC2wFKfC6ksKUJeIIw5psnivNEsP+AMSPoTUJD8rZztShXA5iJYPnkdZ9AYHh5STL
 fWn5164ddj9/Rf14lfRVkPgRpvE0Ck0Z7puT1vDATQoicPMNkTNbWR4dWUA9xtPQLOX0
 kxj/LBzGVLz444OOGwUWjCjvxxcAdqjChAoekc9Wh7i7jPeHtU3GveYJX1/lsICoIIWl bg== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u5efym387-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Nov 2023 11:53:02 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A6Br26q016657
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 6 Nov 2023 11:53:02 GMT
Received: from hu-krichai-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Mon, 6 Nov 2023 03:52:56 -0800
From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Date: Mon, 6 Nov 2023 17:22:35 +0530
Subject: [PATCH 2/2] phy: qcom-qmp-pcie: Add support for keeping refclk
 always on
MIME-Version: 1.0
Message-ID: <20231106-refclk_always_on-v1-2-17a7fd8b532b@quicinc.com>
References: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
In-Reply-To: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_vbadigan@quicinc.com>, <quic_ramkri@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <quic_skananth@quicinc.com>,
        <quic_vpernami@quicinc.com>, <quic_parass@quicinc.com>,
        "Krishna chaitanya
 chundru" <quic_krichai@quicinc.com>
X-Mailer: b4 0.13-dev-83828
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699271565; l=3215;
 i=quic_krichai@quicinc.com; s=20230907; h=from:subject:message-id;
 bh=SqH7FpHxB6avrAK5wfH/RehnYdIY7klfgUG7KOgIP+8=;
 b=HF5ll8k9sU/UO8HcGZKG5+Ruhz/juvce6B9ALRKPtTP0fJiUB3bEyF7wCvb/wvC/pX10LfN0D
 B93pDuN5OnBDLaQ5SYENJo37NucDvDsd940W8QkglT8knuxfQtK1w3z
X-Developer-Key: i=quic_krichai@quicinc.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 9Z4rfTRz8Bf3uM6cBbDEfvwWRNQC2L8c
X-Proofpoint-ORIG-GUID: 9Z4rfTRz8Bf3uM6cBbDEfvwWRNQC2L8c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-06_10,2023-11-02_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 mlxlogscore=999 priorityscore=1501 malwarescore=0 mlxscore=0 clxscore=1015
 phishscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2311060098
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_035305_861986_DC96D561 
X-CRM114-Status: GOOD (  21.26  )
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

In PCIe low power states like L1.1 or L1.2 the phy will stop
supplying refclk to endpoint. If endpoint asserts clkreq to bring
back link L0, then RC needs to provide refclk to endpoint.

If there is some issues in platform with clkreq signal propagation
to host and due to that host will not send refclk which results PCIe link
down. For those platforms  phy needs to provide refclk even in low power
states.

Add a flag which indicates refclk is always supplied to endpoint.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index a63ca7424974..d7e377a7d96e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -43,6 +43,8 @@
 /* QPHY_PCS_STATUS bit */
 #define PHYSTATUS				BIT(6)
 #define PHYSTATUS_4_20				BIT(7)
+/* PCS_PCIE_ENDPOINT_REFCLK_CNTRL */
+#define EPCLK_ALWAYS_ON_EN			BIT(6)
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
@@ -77,6 +79,7 @@ enum qphy_reg_layout {
 	QPHY_START_CTRL,
 	QPHY_PCS_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
+	QPHY_PCS_ENDPOINT_REFCLK_CNTRL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
@@ -103,10 +106,11 @@ static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 };
 
 static const unsigned int pciephy_v4_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= QPHY_V4_PCS_SW_RESET,
-	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
-	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_POWER_DOWN_CONTROL,
+	[QPHY_SW_RESET]				= QPHY_V4_PCS_SW_RESET,
+	[QPHY_START_CTRL]			= QPHY_V4_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]			= QPHY_V4_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]		= QPHY_V4_PCS_POWER_DOWN_CONTROL,
+	[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]	= QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
 };
 
 static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -2244,6 +2248,8 @@ struct qmp_pcie {
 	struct phy *phy;
 	int mode;
 
+	bool refclk_always_on;
+
 	struct clk_fixed_rate pipe_clk_fixed;
 };
 
@@ -3159,6 +3165,10 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
 	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
 	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
 
+	if (qmp->refclk_always_on && cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL])
+		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL],
+			     EPCLK_ALWAYS_ON_EN);
+
 	if (cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
 		qmp_pcie_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
 		qmp_pcie_init_port_b(qmp, tbls);
@@ -3681,6 +3691,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	qmp->refclk_always_on = of_property_read_bool(dev->of_node,
+						      "qcom,refclk-always-on");
+
 	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
 		goto err_node_put;

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
