Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2996C77B75
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 03:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xv4lldp7wQfu1Go5ZIKa28S8tm6C9r0QtXGFSPHR3r4=; b=y9lh6PpUuJSvin
	0EIcxP9x3ffj/xFZNEZl/LdKNcqLxk/eyT4HT6/xsEZyecLiiXPAscxQaY+EznJGJO5qrcmGx6q3N
	LAY7E1EK81gHijW9SNzILPaY2mZvGfUOzpNC12/RFV01k+lDJapQjglpHEjdayoyVYIXpDQdR6uJv
	RErKjpfTMXWBOgxIfVDydnJGyN9CZIJ+qn1bxcD4FdSLzv/cGKFd5m0opKWjcddClggYFA8VJc9Gx
	soJive9lFqsAkrCXEyn3Q1X/55ZmUGXG3PRvjenXLjFNtQqVqhvuOmv40s7KO9i5YAIB7zo/DMGmX
	pFdotoreEWllP82m5bwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaN2-004rLZ-0x;
	Wed, 10 May 2023 03:20:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaN1-004rLG-17
	for linux-phy@bombadil.infradead.org;
	Wed, 10 May 2023 03:20:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=tLeize3aORtY1HY16zn7YF0QGrv53yBUPWo63R/J7QI=; b=KHlY0ZpTDyrrNtcDQqc2YvCaJS
	XjfJcegpt0KYVLQ6LM/IIhWrLr4cN1GTYkJSiIN6wiJnYYLuhfPx4X6CSYjcAIdwnoPk3fB+KFuPU
	Ipv0Wji29lQmwCQ2UPdBABZZTPh7U5yUxU7LLt6Ynqy18E1r0fT8ipkDTlyLemnrC9vpucTJUNC9o
	6mULTCdmtGXl4O3G8IjLhTLzPWwhVUhBJoqc9ucmawbBCGmUcrhCahVPiLza8rWmtGAofYsyJlgZM
	FeiQ+Oszevhq0e/eF18WX4ubX88hR/M8bIVK67j6xd5BOkyax/dQgrfPfOpT39JF26TOfLMCpEaH4
	fVBo782Q==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwaMt-006oPh-13
	for linux-phy@lists.infradead.org;
	Wed, 10 May 2023 03:19:58 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34A2bLll012971;
	Wed, 10 May 2023 03:19:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=tLeize3aORtY1HY16zn7YF0QGrv53yBUPWo63R/J7QI=;
 b=JXEW/CDw/28MKg0wMuNqxnyD7hgqCoKLWjXHJs7SGPWFrFEWIs/EnjFrnmjo6ggeWiwg
 X3ZA1LkPTqWTTsOVyTA6wCmGoZMxEcXfT9f06ZHoB5ceUNF+O3QruEQLy62H59pMWS13
 +R3HH/76DGs2wczHdrHii0vTyi1O9s1kA1ABLhjao88d8iYREbqDLiYCLOdt2BE6yH3G
 xIv477omJLxC76qtCFy8GGcSMV8O2/mnjVBc7CdGzd9gjOFSe0p9y/+/S0Gd9P6WEcil
 lvjWJ4GGX0lqkBoNBhI23CgvmupVW+OnGPX1ABh/xoAzJTAo58RX/qkg/L6ly3ZGQbxQ 4g== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3qf77g3dq8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 03:19:37 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 34A3JaEr016023
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 May 2023 03:19:36 GMT
Received: from hu-bjorande-lv.qualcomm.com (10.49.16.6) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 9 May 2023 20:19:36 -0700
From: Bjorn Andersson <quic_bjorande@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Johan Hovold <johan@kernel.org>
CC: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 3/8] phy: qcom-qmp-combo: Extend phy_mutex to all phy_ops
Date: Tue, 9 May 2023 20:19:25 -0700
Message-ID: <20230510031930.1996020-4-quic_bjorande@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
References: <20230510031930.1996020-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: UhI58YbhWgPJ469hAFQL98Ay1_8i7ZaZ
X-Proofpoint-ORIG-GUID: UhI58YbhWgPJ469hAFQL98Ay1_8i7ZaZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_16,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 mlxlogscore=999 malwarescore=0 clxscore=1015 mlxscore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2304280000
 definitions=main-2305100024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_041956_480706_994418DD 
X-CRM114-Status: GOOD (  18.24  )
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

The phy core ensures mutual exclusion across the ops for a given phy,
but the upcoming introduction of USB Type-C orientation switching might
race with the DisplayPort phy operations. So extend the mutual exclusion
to cover the remaining ops as well, to avoid concurrent reconfiguration
of the hardware.

Reported-by: Johan Hovold <johan@kernel.org>
Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---

Changes since v1:
- New patch

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 8918ba2b18a4..6baacdf3a4cb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2437,12 +2437,16 @@ static int qmp_combo_dp_configure(struct phy *phy, union phy_configure_opts *opt
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
+	mutex_lock(&qmp->phy_mutex);
+
 	memcpy(&qmp->dp_opts, dp_opts, sizeof(*dp_opts));
 	if (qmp->dp_opts.set_voltages) {
 		cfg->configure_dp_tx(qmp);
 		qmp->dp_opts.set_voltages = 0;
 	}
 
+	mutex_unlock(&qmp->phy_mutex);
+
 	return 0;
 }
 
@@ -2450,11 +2454,16 @@ static int qmp_combo_dp_calibrate(struct phy *phy)
 {
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret = 0;
+
+	mutex_lock(&qmp->phy_mutex);
 
 	if (cfg->calibrate_dp_phy)
-		return cfg->calibrate_dp_phy(qmp);
+		ret = cfg->calibrate_dp_phy(qmp);
 
-	return 0;
+	mutex_unlock(&qmp->phy_mutex);
+
+	return ret;
 }
 
 static int qmp_combo_com_init(struct qmp_combo *qmp)
@@ -2578,6 +2587,8 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	void __iomem *tx = qmp->dp_tx;
 	void __iomem *tx2 = qmp->dp_tx2;
 
+	mutex_lock(&qmp->phy_mutex);
+
 	qmp_combo_dp_serdes_init(qmp);
 
 	qmp_combo_configure_lane(tx, cfg->dp_tx_tbl, cfg->dp_tx_tbl_num, 1);
@@ -2589,6 +2600,8 @@ static int qmp_combo_dp_power_on(struct phy *phy)
 	/* Configure link rate, swing, etc. */
 	cfg->configure_dp_phy(qmp);
 
+	mutex_unlock(&qmp->phy_mutex);
+
 	return 0;
 }
 
@@ -2596,9 +2609,13 @@ static int qmp_combo_dp_power_off(struct phy *phy)
 {
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 
+	mutex_lock(&qmp->phy_mutex);
+
 	/* Assert DP PHY power down */
 	writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
+	mutex_unlock(&qmp->phy_mutex);
+
 	return 0;
 }
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
