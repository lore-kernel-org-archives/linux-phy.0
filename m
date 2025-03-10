Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CBFDC35FF1
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 21:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kph8aXyEQSyjIArgZQDUjOwNC4BeJa6bM7/DZU5QQpY=; b=iSuyDR1g2RqllJ
	UZH6BLXM5pRg0zpvCqTvxlIufOqCNhSoI5r7+OLTHIBeUdemeE2CtErb3mJqQTf72uKE1UGGbF2g5
	6maUHY9ZYih7B1TF2Z1tMhVg2tfj5W5GhJK9obp1DVVCIycs8cbhKtp5bVPSZgN1LomtLzziUTi6c
	qPztuWuHQHHEdn9IrhDPnQM+2ppgvFpRKZJeXd3SseqXnVvNHGuLDcRUNBCWRK74S512E/vS6logL
	nJB9Jevia6ZjGw2ilVySxtmt/JvYc6OtzQdsWKNTpeXk7wpws87b10JMgPlGsArM9YPfw5gMTJNUg
	22kEeLOubPQxf+W/NzEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trkUL-00000003zgY-0zur;
	Mon, 10 Mar 2025 21:16:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trkQm-00000003ynG-2Ik8
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 21:13:02 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52AKKPJh020633;
	Mon, 10 Mar 2025 21:12:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=rKAhCJe0AuOKhAT0OBBlC4
	vI/Wt62q0zvCBygq+Z78M=; b=g+AS3AUL+8+1Kr5b/7HsU8X3Wkisoj014iY5tN
	Iea5hqByewPq1X4tlDxEfZ4TCE/UmBxDUGTBpW7Tk1Z1l+eF47Hsj1j6o+POI42y
	sExyrE9wwERvybskGcUPjs5a4qDLujH19zcZIxNdnnEBis1/yQVHJBy6Pxn+bxN2
	f40E/ERG7lDKexBW1smshqpgW0+DDF2/emrhY3hUZeK4WuS+jdDFvzgdFz9u6axx
	SxVWK8asmWePhGc3BlVqEDi9/24xxIaZHZG+lj/qHoPx9GgV7lbEtnch1C35MDXv
	SGym4Hc/hdOFU8TYu0PQVBRou5p6/9VWoTQaPFa6y5AKkWDw==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458ewpp6ae-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 21:12:42 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52ALCfKn001337
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 21:12:41 GMT
Received: from hu-molvera-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 10 Mar 2025 14:12:41 -0700
From: Melody Olvera <quic_molvera@quicinc.com>
Subject: [PATCH v2 0/6] Add UFS support for SM8750
Date: Mon, 10 Mar 2025 14:12:28 -0700
Message-ID: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALxVz2cC/22NQQ6CMBBFr2K6tmamgEVX3sMQUuogswC0A0RDu
 LsVTdy4fD/5781KKDCJOm5mFWhi4b6LYLYb5RvXXUnzJbIyYDJAsFra3GZQjrWUrZOBgj64FBH
 2CKmzKv5ugWp+rM5z8eFA9zGqh9/YsAx9eK7dCd/rN4HJn8SEGnSVWJuiAapyf4o+z53f+b5Vx
 bIsL/n22x3JAAAA
X-Change-ID: 20250107-sm8750_ufs_master-9a41106104a7
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala
	<quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, Nitin Rawat <quic_nitirawa@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Manish Pandey <quic_mapa@quicinc.com>,
        "Krzysztof Kozlowski" <krzk@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741641161; l=1930;
 i=quic_molvera@quicinc.com; s=20241204; h=from:subject:message-id;
 bh=Oa5emZrw0NX65ODlQDx1pHM0ZdgLkiurZ6ZialH4UiA=;
 b=fYbYSewPoG6OQ9ABSwAWfiyaB49NzFyAZJdXhebVqmG2bGVBvsMFgK7+qetqVTBhtxkCr935z
 mLn+laqgQHNBvelHo3hWXZ9KsWn8hDDsx21hjg+QR0AH4+5FUYJc8LB
X-Developer-Key: i=quic_molvera@quicinc.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: fHGoThKCcmAeTkY6Cwp3sa4JAskDGIBg
X-Proofpoint-ORIG-GUID: fHGoThKCcmAeTkY6Cwp3sa4JAskDGIBg
X-Authority-Analysis: v=2.4 cv=C5sTyRP+ c=1 sm=1 tr=0 ts=67cf55ca cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=3H110R4YSZwA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=28BvOmV-xxLMpQdZyEsA:9
 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_08,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_141300_622993_9A77CC9E 
X-CRM114-Status: GOOD (  10.02  )
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

Add UFS support for SM8750 SoCs.

---
Changes in v2:
1. Addressed Konrad and Krzysztof comment to fix style in sm8750.dtsi
2. Addressed Dmitry's comment to sort RX by the register offset.
3. Addressed Dmitry's comment to update offset and reg value in
   lowercase hex.
4. Addressed Dmitry's comment to replace sm8750_ufsphy_g5_pcs by
   sm8650_ufsphy_g5_pcs.
5. Addressed Dmitry's comment to include a helper which include
   serdes, pcs and lane init for a particular table.
6. Addressed Dmitry and Konrad comment to update cpu-ufs path
   icc type vote to ACTIVE_ONLY from ALWAYS.
7. Split MTP and QRD board dt commits
- Link to v1: https://lore.kernel.org/r/20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com

---
Nitin Rawat (6):
      dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the SM8750 QMP UFS PHY
      phy: qcom-qmp-ufs: Add PHY Configuration support for sm8750
      dt-bindings: ufs: qcom: Document the SM8750 UFS Controller
      arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 SoC
      arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 MTP
      arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 QRD board

 .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    |   2 +
 .../devicetree/bindings/ufs/qcom,ufs.yaml          |   2 +
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts            |  18 +++
 arch/arm64/boot/dts/qcom/sm8750-qrd.dts            |  18 +++
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 106 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |   7 +
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h    |  67 ++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 180 ++++++++++++++++++++-
 8 files changed, 392 insertions(+), 8 deletions(-)
---
base-commit: 0a2f889128969dab41861b6e40111aa03dc57014
change-id: 20250107-sm8750_ufs_master-9a41106104a7

Best regards,
-- 
Melody Olvera <quic_molvera@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
