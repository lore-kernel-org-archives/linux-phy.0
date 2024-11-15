Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18876D6DDEA
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 09:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dt2wIq1TYifOHE99OnwM8X7BBlvVjswg1uMC8kqS22Y=; b=C/wBCi3xH67FHq
	z27zdsozU2gksTpMaIyp1qdEt/ZiHiDdjxhW3Hz99WCJuYuYLj9nrpJGCwhZweESzN9d4oHktpmWs
	bGQpZI3rsHTwMu4c8beMRxr/LGdckHO5RB2K872zGI85bwoFLAzDYjKrIYKF+Yrpjp+DI1ZPFMDlw
	XN3Yn2LOSbBrBmwO9XStJvQEVK0FZlJD5elLpU+eU6Ejt7Pteda2HPKN53yAieCV3jYZwokrqQE1N
	4FAtnDOtLpsghqT+M09ggO0hLLt2nvOStpo9nU98PGdamF2joQbPzwrIW4DEFkqWJIxzVpaGMMhvi
	hZpavWey+4QCo2rPtagA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBsRF-00000002A04-28nt;
	Fri, 15 Nov 2024 09:16:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBsRC-000000029zB-2WN7
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 09:16:24 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AF8Mfr9022237;
	Fri, 15 Nov 2024 09:16:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=EHVuDme6NnOiOL5RmBjJyo
	P4D31GwrY5Xjo3uh4TiH8=; b=PQyMwQtWueafRYqR77fyK2IVtN8j1J7QR7iNnX
	c623RKcg8ltdl38oTMXcmEDSQ/Zozg++6k0evuYNapprtsiz7OBNzfreE6ErHtQU
	ivbfAIFUP9Z1rnlUd2KcaFU5axTu/DnnDTLYiqnojI9NLU5mh3zwEkoPLHSE+wpJ
	chHwGwzeZFyX+PL1OGZ/BnLn8wG27GxWj7piksjmUqqd+cj8WHamElh24NolY+wM
	FlNxxlIlI9KHYzMyK/hK0nIDJp2eXTGddCFDGKkkbYRtiPQSjjWkkXJJOF9adIWm
	pqejabepEab2UIwFx5hV9/Vh4cRmDcpSyfh/yY2HOlncZYFQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42wex8ugk3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Nov 2024 09:16:12 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AF9Fx5e015905
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Nov 2024 09:15:59 GMT
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Fri, 15 Nov 2024 01:15:54 -0800
From: Krishna Kurapati <quic_kriskura@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Konrad Dybcio
	<konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>, Stephen Boyd <swboyd@chromium.org>
CC: <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_ppratap@quicinc.com>,
        <quic_jackp@quicinc.com>, Krishna Kurapati <quic_kriskura@quicinc.com>,
        <stable@vger.kernel.org>
Subject: [PATCH 5.15.y] phy: qcom: qmp: Fix NULL pointer dereference for USB Uni PHYs
Date: Fri, 15 Nov 2024 14:45:45 +0530
Message-ID: <20241115091545.2358156-1-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: WtDCnt3GfOJrPmBfPpLZPNMM4SS_rqMC
X-Proofpoint-ORIG-GUID: WtDCnt3GfOJrPmBfPpLZPNMM4SS_rqMC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 phishscore=0 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 clxscore=1011 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2411150078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_011622_654574_7965C14C 
X-CRM114-Status: GOOD (  13.77  )
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

Commit [1] introduced DP support to QMP driver. While doing so, the
dp and usb configuration structures were added to a combo_phy_cfg
structure. During probe, the match data is used to parse and identify the
dp and usb configs separately. While doing so, the usb_cfg variable
represents the configuration parameters for USB part of the phy (whether
it is DP-Cobo or Uni). during probe, one corner case of parsing usb_cfg
for Uni PHYs is left incomplete and it is left as NULL. This NULL variable
further percolates down to qmp_phy_create() call essentially getting
de-referenced and causing a crash.

Subsequently, commit [2] split the driver into multiple files, each
handling a specific PHY type (USB, DP-Combo, UFS, PCIe). During this
refactoring, the probing process was modified, and the NULL pointer
dereference issue no longer showed up.

[1]: https://lore.kernel.org/all/20200916231202.3637932-8-swboyd@chromium.org/
[2]: https://lore.kernel.org/all/20220607213203.2819885-1-dmitry.baryshkov@linaro.org/

Fixes: 52e013d0bffa ("phy: qcom-qmp: Add support for DP in USB3+DP combo phy")
Cc: stable@vger.kernel.org # 5.15.y
Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index eef863108bfe..e22ee71aa060 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -5714,6 +5714,8 @@ static int qcom_qmp_phy_probe(struct platform_device *pdev)
 
 		usb_cfg = combo_cfg->usb_cfg;
 		cfg = usb_cfg; /* Setup clks and regulators */
+	} else {
+		usb_cfg = cfg;
 	}
 
 	/* per PHY serdes; usually located at base address */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
