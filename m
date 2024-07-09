Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E051C3DA47
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 13:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfCIafgigrGuKFm0dzvUgH5aTSW8pBLURJr0MUdIOAw=; b=Lf1L4dF77Gx5Oz
	W04fvjUL6/vHH52H8bLFcSIBMnaFxBZ4BIqcR1CVPFX0ajWsykMvIdvc3IQxBZjpNmDByexa+JE7y
	F9ARFwUXgX+AL0jydPtgBwgoLu5Xo4OXkZFt2e8KW17B229mVHM438O4mZeo7HpAY0TUsxk3obyLm
	fDBXocwLND0Q3CsFBanXRrwzmPQ53z19l4y/DNn6KtiW+YbpDZZ/43dhLG3LOXyQRlqoHRcd103De
	PLdhEXdpzco0cs6cmnhrnk8ZSXlR9q6skvOSORLl4KvzZEX3cv3tdqSij/PSN6OckcZV4EXzEHD4s
	Fk9kVCLuCUSnokxWg49g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRBD0-00000007Qwv-3vWO;
	Tue, 09 Jul 2024 13:48:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRBCy-00000007Qvr-231U
	for linux-phy@lists.infradead.org;
	Tue, 09 Jul 2024 13:48:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 469BUOKp023826;
	Tue, 9 Jul 2024 13:48:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PwCxETancVtBkiHY3JLPn1i+sMYt9QfFI7eDzvmq74U=; b=LsWsh/7Z/+5UOSpu
	xcswHLBDYbl070K6paSItKvzdoLxXebnBaBb+m6a3ZrEK88PqTmhya0xidln/s/3
	MAtKyvb6jOdRbeCibkzilxMO8ND+HA/i5g0Nxsgx9QoHjSYiv6R1xpswiHVV3wy7
	fhqOR6ha5r4hJFelxYW0NREyMb6aFC1kJSIc8ZeywevuG2rYl1N9SAFSsFNu4476
	bRcH+BAf+8Sfnh0FRvs5WQWt2GF4JSB5XHEkgaoBQGSZTXk7kRJOM6zOx5gkcOmJ
	aUOmiwuw2o5lNnL6ODUzzzkIHTM29MrxBGxaNqC+VeSLr/Jf+RpwWdT8DJMtEWOk
	ZM5sKw==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406wgwpjkc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jul 2024 13:48:37 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 469DmaZS025683
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 9 Jul 2024 13:48:36 GMT
Received: from tengfan-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 9 Jul 2024 06:48:31 -0700
From: Tengfei Fan <quic_tengfan@quicinc.com>
Date: Tue, 9 Jul 2024 21:48:14 +0800
Subject: [PATCH v2 2/2] phy: qcom-qmp-ufs: Add QCS9100 support
MIME-Version: 1.0
Message-ID: <20240709-add_qcs9100_qmp_ufs_phy_compatible-v2-2-e7f8f71bc334@quicinc.com>
References: <20240709-add_qcs9100_qmp_ufs_phy_compatible-v2-0-e7f8f71bc334@quicinc.com>
In-Reply-To: <20240709-add_qcs9100_qmp_ufs_phy_compatible-v2-0-e7f8f71bc334@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Tengfei Fan <quic_tengfan@quicinc.com>
X-Mailer: b4 0.15-dev-a66ce
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720532905; l=1140;
 i=quic_tengfan@quicinc.com; s=20240709; h=from:subject:message-id;
 bh=NaIsI/L8OK790aYO+UdgIwcvr7nmYZ8ft1YP2RSUKF0=;
 b=ndurFlWsb65HStNLE6MKkelNrFOWnwfdH8jeY4iHRSaN9lSZY/PVk2yxH8yWWb+2VfdaowhNy
 vCQMYCxnqspBCMtgpBt4fEnGGHwkaM6CksioGJaW+BxkG3KSeqr99Rd
X-Developer-Key: i=quic_tengfan@quicinc.com; a=ed25519;
 pk=4VjoTogHXJhZUM9XlxbCAcZ4zmrLeuep4dfOeKqQD0c=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: e4Aoaw8OGiAAy8bGL-7p7JILO7_tDrJX
X-Proofpoint-ORIG-GUID: e4Aoaw8OGiAAy8bGL-7p7JILO7_tDrJX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-09_03,2024-07-09_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=967 mlxscore=0
 adultscore=0 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2407090088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_064840_706429_106AD2F8 
X-CRM114-Status: GOOD (  11.77  )
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

Add the tables and constants for init sequences for UFS QMP phy found in
QCS9100 SoC.
QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
platform use non-SCMI resource. In the future, the SA8775p platform will
move to use SCMI resources and it will have new sa8775p-related device
tree. Consequently, introduce "qcom,qcs9100-qmp-ufs-phy" to the UFS QMP
device match table.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index a57e8a4657f4..cb72843218cc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -2010,6 +2010,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,msm8998-qmp-ufs-phy",
 		.data = &sdm845_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,qcs9100-qmp-ufs-phy",
+		.data = &sa8775p_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sa8775p-qmp-ufs-phy",
 		.data = &sa8775p_ufsphy_cfg,

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
