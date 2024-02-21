Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90E87C48BC3
	for <linux-phy@archiver.kernel.org>; Wed, 21 Feb 2024 10:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n52ZItD3H0bshF1V2FSXbDlh266hLoOv3Fet8EZWPy8=; b=RijOpnrweOUCou
	jKJvK0fagyaYq9HBzYBI5K+WVx8o+OIA1nSpypnXZ+mvOK5UVfubDRmS+siYyt3Q0XaLcuacaJqq0
	UK16WRfnL6NqBt9ovBSZRUQh+eoHLjbCwsqeD00CBpQiAfJ8B93xXY5h9kb78lbvMbi6Vu4AjYjJ5
	hza1z64Ia+zKKbK9chLE99IjsjD+Yq8bMu9m8jzX9feam/o0D9p+K3q+zY9wHPM2WjjjOPB0gcHHL
	Xt1n5Dpz3a6Zyi2lcR/ZnKNMifJe/zV9VM/xUyzj+dsJzTPQ6K8dLn30WqedYSf1QZYc50+ouE6/6
	3jTenRXGtlYNIjONKtOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjtx-00000000WRh-0o8L;
	Wed, 21 Feb 2024 10:32:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjtt-00000000WQm-3z1S
	for linux-phy@lists.infradead.org;
	Wed, 21 Feb 2024 10:32:31 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41L8u5ve027957;
	Wed, 21 Feb 2024 10:32:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=qcppdkim1; bh=v1jmQry
	fga9BZDoQxP6DhwrR5DcM0MPSb+kne+KjKSc=; b=hLtTYC54cQt9nrspGJZ2D3L
	y4hGqkbm4l+ASafkylcWSBiJ2u7/LeZ3s1OFP3WNHkqEvx7DlJq83UnRvk4wozMk
	tmwsxX1m6sV2iU6IwjUPV09uMw2zp8bfFLWkMth7djaegCS5zZect+G/6OlYbuxM
	krGhHv9hz+8eIIzFxYUOcAoaqMpPqdFeXJan4QmYtoiyXhE3eWfIiypQ8U2X8WxG
	Qu10uyAfMGVzL0Nx4sdjuBUB7pHD0LQO7iImv1fS7M2J2P70N7tiiUAxSoeVuzwP
	pJpak36EzD/+iCgd+sDVh98N2M90KSdx/mGzD4fkw3N7X0j8xtPW4lzYI2KtpxA=
	=
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wd21usmvt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Feb 2024 10:32:22 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 41LAWFqg005694
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Feb 2024 10:32:15 GMT
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 21 Feb 2024 02:32:11 -0800
From: Krishna Kurapati <quic_kriskura@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_ppratap@quicinc.com>,
        <quic_jackp@quicinc.com>, Krishna Kurapati <quic_kriskura@quicinc.com>
Subject: [PATCH] phy: qcom-snps: Fixed order of enabling regulators
Date: Wed, 21 Feb 2024 16:02:02 +0530
Message-ID: <20240221103202.3628142-1-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ILJFmlSJuSNWEwVZkyXON1nVzbmAYsHt
X-Proofpoint-ORIG-GUID: ILJFmlSJuSNWEwVZkyXON1nVzbmAYsHt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-20_06,2024-02-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 impostorscore=0 malwarescore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2402120000
 definitions=main-2402210081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_023230_018054_F3863D70 
X-CRM114-Status: GOOD (  13.63  )
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

The SNPS Femto phy has 3 supplies, vdda-pll (0.88V), vdd18 (1.8V),
vdd33 (3.3V). The driver enables these in order of 0.88 -> 3.3 -> 1.88.
But on phy instances which have EUD attached, it is seen that not enabling
the regulators in the order of (0.88 -> 1.8V -> 3.3V) is causing the EUD to
reset the phy (issue seen rarely) thereby disturbing enumeration.

This change doesn't disturb operation of phy's where EUD is not present.
According to the some of the applicable power-supply ramp scenarios present
in data book: (DVDD is 0.88V, VDDH is 1.8V)

a) VDDH<#> and VDD33<#> held to 0 V (cannot be left floating) with DVDD
ramped to a valid level
b) VDD33<#> held to 0 V (cannot be left floating) with DVDD and VDDH<#>
ramped to their respective, valid levels

Modify the driver to power up the phy regulators in order of:
0.88 -> 1.8 -> 3.3 respectively.

Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
---

Downstream kernels on QC targets use this sequence to power up
the phy and this has been tested extensively on multiple targets.
This change has been tested with upstream kernel on QCM6490-IDP
without EUD to ensure there is no loss or breakage of functionality.

 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index eb0b0f61d98e..e86d221b7397 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -79,7 +79,7 @@
 #define LS_FS_OUTPUT_IMPEDANCE_MASK		GENMASK(3, 0)
 
 static const char * const qcom_snps_hsphy_vreg_names[] = {
-	"vdda-pll", "vdda33", "vdda18",
+	"vdda-pll", "vdda18", "vdda33",
 };
 
 #define SNPS_HS_NUM_VREGS		ARRAY_SIZE(qcom_snps_hsphy_vreg_names)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
