Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 658A4C021A6
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 10:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iVI9HRrJ3AXLH+aYT1VJEB4YVkVHjsxhT8PW0pS8wk=; b=ekoXzvll596/Un
	o+aV+Qe+WTG9Ja6UqmxnH/EMAPDV0Gyw3+jmyPy1g/DSbKuOnDyEGRvXcHb61MAYqsaoBuUXtYCJ4
	w8MR6B4Htq3496zZO18/SJ1zdYYx4Y1x7bvEGjL5fA49Frax77fX/SRCVi9qnIStlx+Az1Qy0OY+A
	FGhE2xa9oi915XKN7/aWM5ZGOjrSBnc3/PU3Q9ALKQ4Ok/jlQILa5HHSyIQzkkk4rpW2grPr+ussK
	GqhoDj12Ux6ZQ/RD8Vegp6Egu+a1pCxPXxZjApdvQqCcBjZJ9uHbGEZUY0HdUMDRBEvf/etmKmvYZ
	/nGBF3gBPIsT7ldH8KIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1titCm-0000000EXvg-0eqT;
	Fri, 14 Feb 2025 10:45:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titCj-0000000EXuw-3XPN
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 10:45:54 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51E9RBwm015774;
	Fri, 14 Feb 2025 10:45:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=d99FY47Ls3a
	93+7l68xLJLovNrBa6XG+FOuKOwGMUK4=; b=BiYpQjTjIIx9lprtbi8bRPEKLZm
	0k+cQ3Akt2RSzx5pLrB9r25YEgiqABHKY3P3E+pZmZY75rAa1sWFAgER6yPD8/Tp
	EhrS3cazDsYqc7AIDuSCGvr3yCdsZzajJzXgpl4OIETqmx5RXfZfs04X5sWyvuQt
	JjeGKUelyKbsoLdlvYOHw9JD1IJnq3CdYtvJmsg4e+1jJ+dHZ8GX1Z6EsRFTmHEZ
	zmHz+U2uFu09trf0OSityqV/g4ImzyPAAEOQqcSw1X7JC6Tx0pywDB+I6jHvQNCb
	P6mhRCGqK+b5r8qmCHjgz1XiCDqtDL1bMPr3qVqtrZJvmS6UZVoFhoiE6cw==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44rgpgr0ag-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Feb 2025 10:45:50 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 51EAjmgj010514;
	Fri, 14 Feb 2025 10:45:48 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 44p0bm4h3f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Feb 2025 10:45:48 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 51EAjmX6010501;
	Fri, 14 Feb 2025 10:45:48 GMT
Received: from cbsp-sh-gv.ap.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 51EAjmWZ010500
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Feb 2025 10:45:48 +0000
Received: by cbsp-sh-gv.ap.qualcomm.com (Postfix, from userid 4635958)
	id 92AB940BE6; Fri, 14 Feb 2025 18:45:47 +0800 (CST)
From: Wenbin Yao <quic_wenbyao@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>
Subject: [PATCH v3 1/2] phy: qcom: pcie: Determine has_nocsr_reset dynamically
Date: Fri, 14 Feb 2025 18:45:38 +0800
Message-Id: <20250214104539.281846-2-quic_wenbyao@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250214104539.281846-1-quic_wenbyao@quicinc.com>
References: <20250214104539.281846-1-quic_wenbyao@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: oZgry3hriptqT8HHTOZ3iKyhsRwg0ern
X-Proofpoint-GUID: oZgry3hriptqT8HHTOZ3iKyhsRwg0ern
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-14_04,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 mlxscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502140077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_024553_886631_33C9C82A 
X-CRM114-Status: GOOD (  11.01  )
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
