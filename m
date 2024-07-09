Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7357AC3DA41
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 14:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOMc2N2ALVoZkE5Wvckt0vWkJ5ALVpoLcuY1IoYMGFk=; b=4Ir/HGSc/XdD6G
	ALi0BPkouxAss8T4H9uNSCzMTOaf1TonCut1n4E3NuY6eK7P5oHtu1p/1tbbx/YRkjAYbn7wu/71M
	AhfjWpoKDSacq3eFZjMFoJC5h8u46DGYfJZyNp+cZx5Eckbw4Me8cNbClLDGtMEvVcjjrmwix2osL
	duArVYG5GwQfpCwx3Rk1rM4ntZauW4sCT/wglPXHxwmBxi1texCYw3PYjmGx8w/DY8AjRjsA3sxRd
	BUjrN/mC0E01RJcIMN/nPxJUuX2jzqEuOBHX7fAI/FgftyPnLFEQc3iVRYB4gj2XWiOmkk5uM+93P
	tbW7tkh6HVTyurry21rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRC8l-00000007cia-0mpi;
	Tue, 09 Jul 2024 14:48:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRC8i-00000007chf-3CQV
	for linux-phy@lists.infradead.org;
	Tue, 09 Jul 2024 14:48:22 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4697MhIu004100;
	Tue, 9 Jul 2024 14:48:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d27r82mGdliR5r4QxfhmdJiGcxht+0JSGsay+4KddyA=; b=F9A4CEZ8hunyk1I+
	Ox3+kW6EVWLj+lOGVUoYq5GX61/3XjHgTCDk/9hlHuFBMex4uI3QInsWcMx0TboO
	Kk8V+jhI6YBm34iApHK9oRmd9LGxII+HHeN/r4yEceTucGTCw0Xv9Mk5akpLIfrR
	eUiZSQMBguBXoNunH6e74yVtF1kbYs/4bti+e6R4B6DcBrOlt0VAl2IN7wYB7WnT
	5wsb854yL3Xj4r7Qac3MWDuvZwl2tjdLDb1dwKD9YRzdwk33jMqEAs4+z8oxCCNC
	qGCdB3yIqiq5gNtPqJCj2Ox5n782WY9KG3py7HQ3DKSlr5s1oQZJn2+8gQoJ4pHa
	hPG4eQ==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406we8xn81-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jul 2024 14:48:14 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 469EmDKe006555
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 9 Jul 2024 14:48:13 GMT
Received: from tengfan-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 9 Jul 2024 07:48:08 -0700
From: Tengfei Fan <quic_tengfan@quicinc.com>
Date: Tue, 9 Jul 2024 22:47:55 +0800
Subject: [PATCH v2 2/2] phy: qcom-qmp-pcie: add x4 lane EP support for
 QCS9100
MIME-Version: 1.0
Message-ID: <20240709-add_qcs9100_pcie_phy_compatible-v2-2-c68f1e38560b@quicinc.com>
References: <20240709-add_qcs9100_pcie_phy_compatible-v2-0-c68f1e38560b@quicinc.com>
In-Reply-To: <20240709-add_qcs9100_pcie_phy_compatible-v2-0-c68f1e38560b@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Tengfei Fan <quic_tengfan@quicinc.com>
X-Mailer: b4 0.15-dev-a66ce
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720536482; l=1511;
 i=quic_tengfan@quicinc.com; s=20240709; h=from:subject:message-id;
 bh=7Wp6vHBAMzJBFpmcytWw6qfZBwmlK7Qvnkc29eOUXqo=;
 b=xWfyIvyYtEDZa6hlaiabVrf5DRDJ+a9YmdBlcdaxiB0uRzAkyx5woPNFIkfpSN57wMFdUUMOs
 GyrzYimyS3jDiFGVO3Twu8KsRTd2p7LuSha/sYOz+VZjYQV6HLWm2cW
X-Developer-Key: i=quic_tengfan@quicinc.com; a=ed25519;
 pk=4VjoTogHXJhZUM9XlxbCAcZ4zmrLeuep4dfOeKqQD0c=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: F_h_AcmrB6HQ07gfGpcTRXR0oObTk8-e
X-Proofpoint-GUID: F_h_AcmrB6HQ07gfGpcTRXR0oObTk8-e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-09_04,2024-07-09_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 mlxlogscore=925 malwarescore=0 mlxscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2406140001
 definitions=main-2407090096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_074820_962481_A8CF76B0 
X-CRM114-Status: GOOD (  11.46  )
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

Add support for x4 lane end point mode PHY found on QCS9100 platform.
Reusing existing serdes and pcs_misc table for EP and moved
BIAS_EN_CLKBUFLR_EN register from RC serdes table to common serdes
table as this register is part of both RC and EP.
QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
platform use non-SCMI resource. In the future, the SA8775p platform will
move to use SCMI resources and it will have new sa8775p-related device
tree. Consequently, introduce "qcom,qcs9100-qmp-gen4x2-pcie-phy" and
"qcom,qcs9100-qmp-gen4x4-pcie-phy" to the qmp pcie device match table.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 5b36cc7ac78b..d462b21706ee 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4339,6 +4339,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,msm8998-qmp-pcie-phy",
 		.data = &msm8998_pciephy_cfg,
+	}, {
+		.compatible = "qcom,qcs9100-qmp-gen4x2-pcie-phy",
+		.data = &sa8775p_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,qcs9100-qmp-gen4x4-pcie-phy",
+		.data = &sa8775p_qmp_gen4x4_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sa8775p-qmp-gen4x2-pcie-phy",
 		.data = &sa8775p_qmp_gen4x2_pciephy_cfg,

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
