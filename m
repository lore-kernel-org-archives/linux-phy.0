Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C574DC3DA41
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 15:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ys8UrfTCJ0jPGLeNA5K4vkM6AhyZPg12wSQBduPpYpA=; b=0YpNLfGn+sjfXi
	a/8mwYz31BzwO3aXChbPeoTFYuiRzf3GrrYvD/Zd1i9pACGEGHelkVsq4UD8qem/1WOYyhEBosYex
	dhS4Td5yG4LqPN8SWv8/Y1LVXnlJAoUYQoEaQEQFjBkSOaCP/YJvwu2E5/tG/NOAiK0ZWNUK646hq
	+oizA6QypwkMPg/qfzwJSC+jLRxPdLYYAJd2+xcNF/dBr2PzTVjc7506yQz59DL2K6lGJlOl+uCKG
	byd5TGMxM2mCpOJYlAK5IlFMYVYaDc7E8Q282HJTX11ESdKYx7X3NX5x3kNEyn1iRkdBdCBvak7bj
	4c7xn47amV3Qc4ghf5Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRCZe-00000007hnR-20MP;
	Tue, 09 Jul 2024 15:16:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRCZc-00000007hmk-1cq3
	for linux-phy@lists.infradead.org;
	Tue, 09 Jul 2024 15:16:09 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 469BmCOV012059;
	Tue, 9 Jul 2024 15:16:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y4UOpf1fb8xAy2igHtt2Rjax++7Bydmt+rHWG1+D/ZM=; b=ETlM8L6pVoGe8c2I
	u6mP1WFWbvC4c096+vjfG75HWggYO1dl5DyzWKHJqAThAojX+FbEgVeQH8qffYml
	RzRqDMXTriU/mUDzzU1rUJGP7ecbSL1PKzyOn6MCeKKYHmJDKe55yYqn6QftYP9n
	G/Fla2tF9Aye9IJSEeL4llX7V7TgtrnL4e2EZruLUhkc/jvXq5vxoDykfKzbJyII
	10a/MT+rduaAq9DBopdIO6Ch/7+zG661H+gac87Qe3MFswWrSlmVRPMoYBBvGaCd
	QeUXZR5wL7ekUkNaFdv26ijJMll7ABzEQyNt03t6XRVoGGpPuc4BcVpmlgQsGF4U
	U8+QPA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406we8xqeq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jul 2024 15:16:00 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 469FFwq1017655
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 9 Jul 2024 15:15:58 GMT
Received: from tengfan-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 9 Jul 2024 08:15:53 -0700
From: Tengfei Fan <quic_tengfan@quicinc.com>
Date: Tue, 9 Jul 2024 23:15:37 +0800
Subject: [PATCH v2 2/2] phy: qcom: add the SGMII SerDes PHY driver support
MIME-Version: 1.0
Message-ID: <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-2-5ffeb16252db@quicinc.com>
References: <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-0-5ffeb16252db@quicinc.com>
In-Reply-To: <20240709-add_qcs9100_dwmac_sgmii_hpy_compatible-v2-0-5ffeb16252db@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski
	<bartosz.golaszewski@linaro.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Tengfei Fan <quic_tengfan@quicinc.com>
X-Mailer: b4 0.15-dev-a66ce
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720538147; l=1076;
 i=quic_tengfan@quicinc.com; s=20240709; h=from:subject:message-id;
 bh=K637eK91IOSfvOEYp0r4K3v0l8yGWjWgeCjvYsJv2/M=;
 b=+v9tbB8BnwCW3wf8t1MvjD23K/rVGZBfmpzgAnoSntq4RuG9FH/up2L8S6VAvgsEe0eB+UATS
 aw9z2v0jZT0CudAbWBHYCCXQyEfDblIs7m0t+Cozpj0LFJ67/qhfA1K
X-Developer-Key: i=quic_tengfan@quicinc.com; a=ed25519;
 pk=4VjoTogHXJhZUM9XlxbCAcZ4zmrLeuep4dfOeKqQD0c=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: E7O7AIWQlxmKdG6rKVFXmbAwGMku-2BM
X-Proofpoint-GUID: E7O7AIWQlxmKdG6rKVFXmbAwGMku-2BM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-09_04,2024-07-09_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 mlxlogscore=884 malwarescore=0 mlxscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2406140001
 definitions=main-2407090100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_081608_593470_07F39E94 
X-CRM114-Status: GOOD (  12.45  )
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

Add the SGMII SerDes PHY driver support for QCS9100 platform.
QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
platform use non-SCMI resource. In the future, the SA8775p platform will
move to use SCMI resources and it will have new sa8775p-related device
tree. Consequently, introduce "qcom,qcs9100-dwmac-sgmii-phy" to the
SGMII SerDes PHY device match table.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
index 5b1c82459c12..0ea7140564a9 100644
--- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
@@ -353,6 +353,7 @@ static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_dwmac_sgmii_phy_of_match[] = {
+	{ .compatible = "qcom,qcs9100-dwmac-sgmii-phy" },
 	{ .compatible = "qcom,sa8775p-dwmac-sgmii-phy" },
 	{ },
 };

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
