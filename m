Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C74AC3DA70
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jul 2024 22:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/QtSh5f5JSCxkJyRsniQ2cApThlVIENG7WgPQTkaFSo=; b=3gOlaUlijSKeOK
	GGSyddXRvnJBBWAG+W0OVrQ5VhxqXIQMC9Q7JggPRCPOZWlYq99XbEswjttMwjWCZNMH2aJuSn2oL
	t6+ZX4RVSJnApPPd4K3pqWkQWCos22UrBkIDPZcTcTEczPS4CF0WfIy3dyYLBy/ZEeP5nkUck4heh
	ZmRu3l/OhFZghmjBaniV0fm1VUl6E26inHnfsJ1GrZtPcTtl7ltRXXtXfCf1if4IbKoMHsRdkJ7fN
	zm4QJkKn29dGvM4Fa97rmUORMfUFDqpVjUI+LE3MvvgXK+EfAM8tHov4E2m/PO98hvXhFmUrIG6WD
	gNDflvaYpKX3KqGX3uww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sX6bY-00000002Ejb-05X1;
	Thu, 25 Jul 2024 22:06:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sX6bV-00000002EiB-17If
	for linux-phy@lists.infradead.org;
	Thu, 25 Jul 2024 22:06:31 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 46PK6CZf012977;
	Thu, 25 Jul 2024 22:06:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=4Xr0VOoH9Oels4LwmfIWSB
	JBaoyGwRSVwoIfedkNq7Y=; b=gh9h2lbe392wrpN4cQ2n7DBhDEMYvSc8nUrvFL
	+rVEJeYYX3IP21EQ8/7oRHYOAjEEdvUmQuxCAwaB/S1mIlBsSMdWJga5VgPcDnTz
	UBAJqO8pQ+XKzzHQioRvj7xR+2zPjCdSTi0zxXFaN9CP5AoylFGXphQlFI2Xedj1
	OXaqipV3geSOzMbDT5ucOC2ASqhQYahxMOr11GNAIoonNneEUHCDXWdPNJhY1fT1
	yEVn7XkfDwx7jI8KDEOCjFONvCtA5Rw9XyHLY0DI5p2JJkbxUa2SSpHjvlsgkBqF
	fVyvXguHjpJRqhZmrLEbDr3stXMgylg6YTYTIqSlrQdvCo7Q==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 40g2xepf7p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Jul 2024 22:06:18 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 46PM6Hxd031735
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Jul 2024 22:06:17 GMT
Received: from abhinavk-linux1.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 25 Jul 2024 15:06:17 -0700
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
To: <freedreno@lists.freedesktop.org>, Vinod Koul <vkoul@kernel.org>,
        "Kishon
 Vijay Abraham I" <kishon@kernel.org>,
        Neil Armstrong
	<neil.armstrong@linaro.org>
CC: Abhinav Kumar <quic_abhinavk@quicinc.com>,
        <dri-devel@lists.freedesktop.org>, <quic_jesszhan@quicinc.com>,
        <dmitry.baryshkov@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] phy: qcom: com-qmp-combo: fix swing and pre-emphasis table for sm8350
Date: Thu, 25 Jul 2024 15:06:08 -0700
Message-ID: <20240725220608.131426-1-quic_abhinavk@quicinc.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 1beyXof8fSBG02NUCTBuja8NNDMIGlF6
X-Proofpoint-ORIG-GUID: 1beyXof8fSBG02NUCTBuja8NNDMIGlF6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-25_24,2024-07-25_03,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 spamscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 mlxscore=0 adultscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2407250151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_150629_436931_47CBACA0 
X-CRM114-Status: GOOD (  12.37  )
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

Fix the voltage swing and pre-emphasis tables for sm8350 as the current
one do not match the hardware docs.

Fixes: ef14aff107bd ("phy: qcom: com-qmp-combo: add SM8350 & SM8450 support")
Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 31e43638a649..c15b01aa5a48 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1946,8 +1946,8 @@ static const struct qmp_phy_cfg sm8350_usb3dpphy_cfg = {
 
 	.swing_hbr_rbr		= &qmp_dp_v4_voltage_swing_hbr_rbr,
 	.pre_emphasis_hbr_rbr	= &qmp_dp_v4_pre_emphasis_hbr_rbr,
-	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
-	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v4_pre_emphasis_hbr3_hbr2,
+	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
+	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
 
 	.dp_aux_init		= qmp_v4_dp_aux_init,
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
