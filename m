Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C798C2BD09
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 13:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=13yE/ZMcxkUQYoPgbtW/FWOROXDkaYKuoE0McmOr2wk=; b=BqAlghr+7hgU52
	SpS07Fl9yZ3aIVbVfFZ0XowhH5pegk5IlQjXGBkZPwpjYk/CEoI7lnxyISQLjXnhD8y9htHZa7uFh
	bfDNkcSaJUCcs3RdBo+Ys4b0btilt34DKsGtq0PJAN/7RI71Vyh7LFB9aym0RBSRZvE2Qit2fQNc4
	yIwpKa1QToh5RT06FDD9i9emQQ/wJZGEKVUWckfHMH5CGa6L7AOEFo0HxEDD4eHMb6Viagt6z/dX9
	eiIgyyoAl+pYA6BIk0PnQXwjmx0Jh7FWfjNZBOhukERIn42fSISldYjqwotgGywoMxnwq5kYpNdKG
	CeOIo+CPwvkrSwUb8+QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRBCy-00000007Qvs-1Bxp;
	Tue, 09 Jul 2024 13:48:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRBCu-00000007Qtt-2ShI
	for linux-phy@lists.infradead.org;
	Tue, 09 Jul 2024 13:48:38 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 469ACl5N015045;
	Tue, 9 Jul 2024 13:48:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Y5t8R9/x97iLmZyA3BxlUO
	L6pNYm+GpHDeAY7LfIQX0=; b=dcroGjHPi2LAs7rQu+7RqIeR1n6du4OGz6M8xv
	wMzUpTA/xrJsWLpgVvBEyguOaVywsrX9M6MRc//pUw+c32Ttf9T6U6alNG1umqVc
	OOoKbjALxb/Ztx6TcEtYrYk+6QmI+2PEwbrY43s4g5AQgV4ZKuRXDd5LDA3nTFMz
	i6FE/UawmFs2jIK/JAXbvjj/GG/Q8MwUM9PbhQctro16v2MVwQqmXPvSMktVLN3v
	E81MiZ3zyrq9o8IpNJBqVTPLEAvtU9w/hhR8l7YK+ICUjcx3QvPHOkhtrWi24BKD
	tPnS663fL4bbU0+2XqtuChk4Jo181eEHct2vrgQVTpgoVX5Q==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406x0t6tw9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jul 2024 13:48:32 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 469DmVvp029350
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 9 Jul 2024 13:48:31 GMT
Received: from tengfan-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 9 Jul 2024 06:48:25 -0700
From: Tengfei Fan <quic_tengfan@quicinc.com>
Subject: [PATCH v2 0/2] phy: qcom-qmp-ufs: Add QCS9100 QMP UFS PHY
 compatible
Date: Tue, 9 Jul 2024 21:48:12 +0800
Message-ID: <20240709-add_qcs9100_qmp_ufs_phy_compatible-v2-0-e7f8f71bc334@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJ0/jWYC/zXNSwqDMBSF4a1Ixo3cpJWYjrqPIkHz0As1RqNSE
 ffeKHT4ncH5dxLthDaSZ7aTya4YcfAJ/JYR3dW+tRRNMuHAHyBA0toYNeooGYAa+6AWF1XoNqW
 HPtQzNh9LpZRCOM2hMA1JR2GyDr9X5F0ldxjnYdqu5srO9X9/B16UBeScCQ5QUkbHBbWarW9d7
 V8n0Os8tUh1HMcPGOncjb4AAAA=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Tengfei Fan <quic_tengfan@quicinc.com>
X-Mailer: b4 0.15-dev-a66ce
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720532905; l=1685;
 i=quic_tengfan@quicinc.com; s=20240709; h=from:subject:message-id;
 bh=VHKHDcq4tAnZPbSdGzIKaSs4Jgj7oprnbIZHB+KQWWk=;
 b=0ru7K9bD63SkHQ7KtB1n1ZquUa0I52DtwpJc/MUgHboqANw/8QBpO7QUZenuL5obA6HSjlhYU
 RTENboKpMxEAILIQUmNwL2iOFJDu97ivvZiQV8oRJMbuTk8TRBncUSy
X-Developer-Key: i=quic_tengfan@quicinc.com; a=ed25519;
 pk=4VjoTogHXJhZUM9XlxbCAcZ4zmrLeuep4dfOeKqQD0c=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: z6xDIIFm4k8_j7QLlEpRkWhNHlWaORJw
X-Proofpoint-ORIG-GUID: z6xDIIFm4k8_j7QLlEpRkWhNHlWaORJw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-09_03,2024-07-09_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 suspectscore=0
 phishscore=0 mlxlogscore=637 priorityscore=1501 malwarescore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2407090088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_064836_806705_69729971 
X-CRM114-Status: GOOD (  11.05  )
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

Introduce support for the QCS9100 SoC device tree (DTSI) and the
QCS9100 RIDE board DTS. The QCS9100 is a variant of the SA8775p.
While the QCS9100 platform is still in the early design stage, the
QCS9100 RIDE board is identical to the SA8775p RIDE board, except it
mounts the QCS9100 SoC instead of the SA8775p SoC.

The QCS9100 SoC DTSI is directly renamed from the SA8775p SoC DTSI, and
all the compatible strings will be updated from "SA8775p" to "QCS9100".
The QCS9100 device tree patches will be pushed after all the device tree
bindings and device driver patches are reviewed.

The final dtsi will like:
https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-3-quic_tengfan@quicinc.com/

The detailed cover letter reference:
https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-1-quic_tengfan@quicinc.com/

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
---
Changes in v2:
  - Split huge patch series into different patch series according to
    subsytems
  - Update patch commit message

prevous disscussion here:
[1] v1: https://lore.kernel.org/linux-arm-msm/20240703025850.2172008-1-quic_tengfan@quicinc.com/

---
Tengfei Fan (2):
      dt-bindings: phy: Add QMP UFS PHY comptible for QCS9100
      phy: qcom-qmp-ufs: Add QCS9100 support

 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 2 ++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c                              | 3 +++
 2 files changed, 5 insertions(+)
---
base-commit: 0b58e108042b0ed28a71cd7edf5175999955b233
change-id: 20240709-add_qcs9100_qmp_ufs_phy_compatible-99977fc205db

Best regards,
-- 
Tengfei Fan <quic_tengfan@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
