Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E101C021B1
	for <linux-phy@archiver.kernel.org>; Thu, 20 Feb 2025 10:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jepcwEVL3QbnvWAWnujOhjBNVAPxVKPRK3htNFSaJOI=; b=oAYq3D/9fPHiFX
	FA1aFaEZpqphKHrRw9szYU+aTwDyV77jsOSxA++eftfTaoUVzDFAsr/swk1yarcFReUD1Kpon2bIS
	bKjpeUnKRbAa9g/nmEEqxhZKgsAzeljHEwBdS+g/cGQ+3RE2VOd5Xz3phCs0GIBxLTGG6lTQ2/On+
	b7EbIapzQ0/MnkxL1nNSh2Yh+mLbKvvLL+x7U2wS/LrQSSgSE/6fIMrtZyZwapRXWKZl1UUBvpUAU
	xSEF5GxrLq6XtN3/bBpN0Q5MbrafD/SsG9Y8sUl82GyUxFsQv+9aaLxoEwREnEPGxZOqPUMyL1KzV
	3TYW2G4+H7SxV6TUNShg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl3i1-00000000GUs-15Zn;
	Thu, 20 Feb 2025 10:23:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl3hy-00000000GTb-3xAb
	for linux-phy@lists.infradead.org;
	Thu, 20 Feb 2025 10:23:08 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51K6ZPAJ015223;
	Thu, 20 Feb 2025 10:23:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=bZuXYjIP32j
	tFMyKcrVGY6ChZN4RiO9+gyy4du6TX9Y=; b=jeK21MzxdJnoHfgX1nqHgkVE+SA
	j3lvKH32YYPewPr+ss3hGPqWo5n7YDpki4OpAB8xAwyH3jrnvDPKNyTyoFk4+HzH
	TovWyK+7PEDImRcZxQDr9tzfvnmJCbndv+QYymivRKahsgAvCbOU1WmvJgNAVEOD
	haClIgugmH0sLtCVx6TWcJrB2eAWv6z4eS+DQ0kDrWYEH+dq8RE9McZWfmWNh0Dy
	6gepAelFcTJVrilPQCQE9gXzHOQOx/gJmxNwNJD/GKtQjp5yc4HnZkkqcGuxj67n
	nCyZ6WIvgp4YRQlbwxTUwboBRai9TnQVgTLNbnYd7UiPGbnwruXUf6zBI9w==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy4dtfw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 10:23:02 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 51KAN0LS013677;
	Thu, 20 Feb 2025 10:23:00 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 44tm0m1a0k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 10:23:00 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 51KAN0GE013668;
	Thu, 20 Feb 2025 10:23:00 GMT
Received: from cbsp-sh-gv.ap.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 51KAMxWR013666
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 10:23:00 +0000
Received: by cbsp-sh-gv.ap.qualcomm.com (Postfix, from userid 4635958)
	id EF13940C3B; Thu, 20 Feb 2025 18:22:58 +0800 (CST)
From: Wenbin Yao <quic_wenbyao@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: quic_wenbyao@quicinc.com
Subject: [PATCH v4 1/2] phy: qcom: pcie: Determine has_nocsr_reset dynamically
Date: Thu, 20 Feb 2025 18:22:52 +0800
Message-Id: <20250220102253.755116-2-quic_wenbyao@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
References: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: sEk2ufSEp702F8080S5VKOYASz-xIGm8
X-Proofpoint-ORIG-GUID: sEk2ufSEp702F8080S5VKOYASz-xIGm8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_04,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=999 spamscore=0 adultscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502200077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_022307_096215_EF530F2A 
X-CRM114-Status: GOOD (  11.47  )
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Decide the in-driver logic based on whether the nocsr reset is present
and defer checking the appropriateness of that to dt-bindings to save
on boilerplate.

Reset controller APIs are fine consuming a nullptr, so no additional
checks are necessary there.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 873f2f9844c6..219266125cf2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2793,8 +2793,6 @@ struct qmp_phy_cfg {
 
 	bool skip_start_delay;
 
-	bool has_nocsr_reset;
-
 	/* QMP PHY pipe clock interface rate */
 	unsigned long pipe_clock_rate;
 
@@ -3685,7 +3683,6 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
-	.has_nocsr_reset	= true,
 
 	/* 20MHz PHY AUX Clock */
 	.aux_clock_rate		= 20000000,
@@ -3718,7 +3715,6 @@ static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
-	.has_nocsr_reset	= true,
 
 	/* 20MHz PHY AUX Clock */
 	.aux_clock_rate		= 20000000,
@@ -3836,7 +3832,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
-	.has_nocsr_reset	= true,
 };
 
 static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
@@ -3870,7 +3865,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
-	.has_nocsr_reset	= true,
 };
 
 static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
@@ -3902,7 +3896,6 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x8_pciephy_cfg = {
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
-	.has_nocsr_reset	= true,
 };
 
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
@@ -4203,12 +4196,10 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to get resets\n");
 
-	if (cfg->has_nocsr_reset) {
-		qmp->nocsr_reset = devm_reset_control_get_exclusive(dev, "phy_nocsr");
-		if (IS_ERR(qmp->nocsr_reset))
-			return dev_err_probe(dev, PTR_ERR(qmp->nocsr_reset),
-						"failed to get no-csr reset\n");
-	}
+	qmp->nocsr_reset = devm_reset_control_get_optional_exclusive(dev, "phy_nocsr");
+	if (IS_ERR(qmp->nocsr_reset))
+		return dev_err_probe(dev, PTR_ERR(qmp->nocsr_reset),
+				     "failed to get no-csr reset\n");
 
 	return 0;
 }
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
