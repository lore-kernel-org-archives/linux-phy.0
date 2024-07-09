Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DC5BC2BD09
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 14:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l8dq3BHtNcRxEichO0YM7kztAIjW0jkdPBhftBC6W/c=; b=Pcv3S1cFBvxOso
	QdNy2/iwhn5Od6zprVEmqiwaz2/DAFxHmkZfGg0YUHeD1WCX4CzKPlYHx9Almw+vdsGlk01e+vXNG
	zP8WZ3v/siGzh0gYRs/sQWE4eC6Yvr6RFy7/W2RrNauAkQiF0qXDlc9GTozx/oXjYunDIaUqTgTi5
	Cpenv/WC3377+tujd0GfXO/1D00QdOXbCKc5aA6n+gj3N2qzjJpgBU+N4T6Xr1BCt2MwIbEO5gut7
	vcJbS212CJMxlgH32Ptlv4fLRYdHUn3N/TZIBBLYGaEp8ipWHbCk8bw4bDaU1ZbmPUrvaIoVl+O+P
	FJK2EXNIArXTloBxtn2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRC8f-00000007ch8-37mY;
	Tue, 09 Jul 2024 14:48:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRC8c-00000007cfr-23vK
	for linux-phy@lists.infradead.org;
	Tue, 09 Jul 2024 14:48:16 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 469BaWrs012241;
	Tue, 9 Jul 2024 14:48:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=h/oZ+UH0tyjqddH19wO2+Q
	w5NyLzsBuiaahhLERuhEk=; b=R+QwylVNFe1fpvr0jHayQRg5NwElJfVPC9rlP/
	hLVDmp+V11cZgJksqAAPznCFLaWl8zFtB1IG53aIGg1lfQuImI5un47LoXsJ1i/h
	5tB44xcGA5E3R1SaW436pKfS5i0PT4rXyvn9NmLMASMyjdv45VQHPhYirK6DLqlV
	hau3I0wF0hExpmgip2YOQmkCSxJAt+jBcgNGEq3MiyxqS9tqx5srhqcAhT6cTr+z
	PJcZodeXFRUGc4NyfdGKHeALy8PF+ScSUa1E7wJcJV4ynukjcOCcmPdtmbBY3fQg
	GVVyaQ8dGxDSgrU0anHXech6PCxNdFGPRyDxWjXTETRgSXtw==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406wmmpvr0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jul 2024 14:48:09 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 469Em8aS014922
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 9 Jul 2024 14:48:08 GMT
Received: from tengfan-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 9 Jul 2024 07:48:03 -0700
From: Tengfei Fan <quic_tengfan@quicinc.com>
Subject: [PATCH v2 0/2] phy: qcom-qmp-pcie: Add QCS9100 x4 lane EP
 compatible
Date: Tue, 9 Jul 2024 22:47:53 +0800
Message-ID: <20240709-add_qcs9100_pcie_phy_compatible-v2-0-c68f1e38560b@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJlNjWYC/zXNQQ6DIBCF4asY1sXMYI3aVe/RGEIBdZIWEaypM
 d69aNLl9xbv31i0gWxkt2xjwS4UaXQJ4pIxPSjXW04mmQkQV6ig4coYOenYIID0mqz0wyr1+PZ
 qpufL8rJAhcJoUSCy9OKD7eh7Fh5t8kBxHsN6Bhc81v93AaKsS8gFVgKg5sinD2k5W9d3yt0Pk
 NN5arF23/cf4dg9DLsAAAA=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Tengfei Fan <quic_tengfan@quicinc.com>
X-Mailer: b4 0.15-dev-a66ce
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720536482; l=1699;
 i=quic_tengfan@quicinc.com; s=20240709; h=from:subject:message-id;
 bh=obvu4AFTHypPGBDGsMt159u0CvdKU5rXLIZAGwgZKQY=;
 b=V7VBNC5phjCRasjn68VAavnYa0yjw49YHVN7U42lsPH51cg9hZ/rt3RIx5eXoO1GfdKX+7nc7
 9aRDHY4csbzCU/eSqVSYQenKyjDS3xH4sXv1BuBzWPyAfsBr7d4mU13
X-Developer-Key: i=quic_tengfan@quicinc.com; a=ed25519;
 pk=4VjoTogHXJhZUM9XlxbCAcZ4zmrLeuep4dfOeKqQD0c=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: JHJaTF6Gud-9QiMBMOuBP0AlehMEgJa-
X-Proofpoint-ORIG-GUID: JHJaTF6Gud-9QiMBMOuBP0AlehMEgJa-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-09_04,2024-07-09_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 mlxscore=0 mlxlogscore=768
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2407090096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_074814_570597_5CFC3D38 
X-CRM114-Status: GOOD (  10.27  )
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
      dt-bindings: phy: qcom,qmp: Add qcs9100 QMP PCIe PHY
      phy: qcom-qmp-pcie: add x4 lane EP support for QCS9100

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 4 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c                            | 6 ++++++
 2 files changed, 10 insertions(+)
---
base-commit: 0b58e108042b0ed28a71cd7edf5175999955b233
change-id: 20240709-add_qcs9100_pcie_phy_compatible-531a12dc2311

Best regards,
-- 
Tengfei Fan <quic_tengfan@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
