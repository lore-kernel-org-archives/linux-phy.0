Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2703FC4167B
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 12:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3pN4EJqP8s+AAUMjHjlWJBk13AZGwTDa9FgMkkTBRM=; b=j16k0tSFvl6eWo
	89Yuv50S29f6S6PbV3Qdn8liTIc4ilV4C22yhF8BuZOhJvyN2u/VcqNv6eGdSH3MlDAxLk8stlPuR
	q2ZsgYMNLWuVOjumrx8vEUo9O535KEIcJhoYtKr0KH+ZSzPxNBcbG4qIYaMfkRTVmKB3SLd7A1/gd
	YQdG4mocUuwwWmVCYA/KRDMTqji8ASaj8dHd03Sxv4wo+IqdGU1/Op1UB0flCeUAG1RP7S+vgngbg
	If5dSXLOIWVKukZwylgj2hx+mDOVWUMeEuU7miP4b53Pa68iykxP3U/d0Tj1equ2oFGzBCn2eRndc
	sVtYzP7x1G7jf0lcKiWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LAN-001Tob-2r;
	Tue, 07 Nov 2023 12:26:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LAL-001Tn9-2J
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 12:26:46 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A7Bqufj004981;
	Tue, 7 Nov 2023 12:26:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : date :
 subject : mime-version : content-type : content-transfer-encoding :
 message-id : references : in-reply-to : to : cc; s=qcppdkim1;
 bh=1+9ZqMfTmOVm6k2O/7cypKmKcfs7Lw4ecgmh68LjS5M=;
 b=bBKanvrGRqem3I0j0VN3YleGu6/FXSAZOMm8kynqqbOTzpS0HeaF6HumUbt1zJ5p9qQ9
 1tHAXgiqYZJjdF7FVC0k4fpjA6FddFbySPh+6JWdwIbWFVw2XlrAZHOOnqL+jfe9NttG
 M3m+31UKyCSydGQZ0aSLbWL7nkcADel54z1IeoxxxpwHjirCEi8PZVOXDRJyvZBOFstC
 VysCumeG2fVAil6CHDSiAjXf55x8JL8Qs43QBSmZcvxlx/gQWiitU6vD0izeNBzCdVAV
 zExpNPhoQM8eatN/YAsm0R+n7vW4oJJ8KX35CjnJqA5bH1WTqQ3jHnmBONqM7L8U9Xi1 zw== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u72c02j8q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Nov 2023 12:26:42 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A7CQgN1016439
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 7 Nov 2023 12:26:42 GMT
Received: from hu-krichai-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Tue, 7 Nov 2023 04:26:36 -0800
From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Date: Tue, 7 Nov 2023 17:56:15 +0530
Subject: [PATCH v2 3/3] phy: qcom-qmp-pcie: Add support for keeping refclk
 always on
MIME-Version: 1.0
Message-ID: <20231107-refclk_always_on-v2-3-de23962fc4b3@quicinc.com>
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
In-Reply-To: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699359980; l=2354;
 i=quic_krichai@quicinc.com; s=20230907; h=from:subject:message-id;
 bh=JUk/FJ9xXUwVyUZKmKOaplZAA11pO+CSXisdJEVQfMI=;
 b=jj+fJ1UdhMPYxXep+1d1C+YY3FbEJCWNbzCj4/x28dGib8YJmQ/2yaiStFPYYjeV5L9I6OJ5t
 94g2ELn1WTvBN1hEbkZIGRmTwRMBFVinYHXq0ILXfdpLsiI4Qmkt22s
X-Developer-Key: i=quic_krichai@quicinc.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: K17XiqBscUn3sI-3vsp3g-DXUJ9Hlfr-
X-Proofpoint-GUID: K17XiqBscUn3sI-3vsp3g-DXUJ9Hlfr-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-07_02,2023-11-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 mlxscore=0 mlxlogscore=999 clxscore=1015
 priorityscore=1501 malwarescore=0 bulkscore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2310240000 definitions=main-2311070102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_042645_755314_B4B30DB8 
X-CRM114-Status: GOOD (  19.46  )
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
down. For those platforms phy needs to provide refclk even in low power
states.

Add a flag to keep refclk always supplied to endpoint.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 74d03d217ff2..a8d6d69e3f74 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -43,6 +43,8 @@
 /* QPHY_PCS_STATUS bit */
 #define PHYSTATUS				BIT(6)
 #define PHYSTATUS_4_20				BIT(7)
+/* PCS_PCIE_ENDPOINT_REFCLK_CNTRL */
+#define EPCLK_ALWAYS_ON_EN			BIT(6)
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
@@ -2264,6 +2266,8 @@ struct qmp_pcie {
 	struct phy *phy;
 	int mode;
 
+	bool refclk_always_on;
+
 	struct clk_fixed_rate pipe_clk_fixed;
 };
 
@@ -3179,6 +3183,10 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
 	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
 	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
 
+	if (qmp->refclk_always_on && cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL])
+		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL],
+			     EPCLK_ALWAYS_ON_EN);
+
 	if (cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
 		qmp_pcie_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
 		qmp_pcie_init_port_b(qmp, tbls);
@@ -3701,6 +3709,12 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	qmp->refclk_always_on = of_property_read_bool(dev->of_node, "qcom,refclk-always-on");
+	if (qmp->refclk_always_on && !qmp->cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]) {
+		dev_err(dev, "refclk is always on is present but refclk cntrl offset is not present\n");
+		goto err_node_put;
+	}
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
