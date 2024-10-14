Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 252C6CFC500
	for <linux-phy@archiver.kernel.org>; Mon, 14 Oct 2024 08:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Omi7SSaS1TgTdsWZMyckVDT9wwgtEtCiKnX+nguITtc=; b=eNjw481Eovp2la
	bJFaOHLehW2OFcLfum0q260w6uhyPXXnyRZTDgMEBN63P5mdA8/iXahwZIaqjXeB+98+0+ek3F22F
	L5RN8z8esXNeKFVMBmC9aQFTja9oKHdcAlPmdILp4/BYds8kFn64eqibjK8wY91MRYEj6YOnK8VST
	6KQDflMPKhFFG8OlEEyyde+tlHV7yVO0b1xF490rurwPZ3Y0+WYNdkwlbtesGqaxGHvJUKYN/cKOf
	YH97kAMYa9/4XVGCPkbjsbU8Dam14nVzrivBACjJ6XH2spf6O/JkOIweCmMRu01iVU3YMschHbNUf
	binRIhbHlsGERE+0jxHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0GqI-00000004NHM-2zHC;
	Mon, 14 Oct 2024 08:54:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0GhE-00000004KpP-0tVW
	for linux-phy@lists.infradead.org;
	Mon, 14 Oct 2024 08:44:59 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49DMuKBO019709;
	Mon, 14 Oct 2024 08:44:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=EnXmBCeVsiTcuW3H/7Ye9G
	aQf18jZRw1FMPtUbjudi4=; b=Ucph95/7FikJV3emy4b94HzAGHHDEcw1tp/cjF
	P2I6qZ6gAdVgciBJ+c4RHe5PIRf9B8uy1L9MYzO7KpY9frTbcqcCInrk3yYVCo2j
	jpaPV4ifLRrkLkba9bxEb94porvSkIDsxPiuRyVFzAURdh4mVJRj4aqDtvQkRJ8c
	krJ/OxByPEb1/CNJ7XdDRhRI+A+rAOq6x9dDgCnB5qHZvIAdDdF/3J02pDsjd8ZY
	3ZCvj0eGNFfdqgP88qVfZUd1TOlIFQv3BuYeqfq5qJlHBz/gi3hjBkZxJNcMrXCM
	6JzNtTrsS9mTi8ITffIR5Z/e0liabIyjwIJ5a6ASTzVrhSuA==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 427h6tuu2h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Oct 2024 08:44:50 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49E8inms012879
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Oct 2024 08:44:49 GMT
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 14 Oct 2024 01:44:43 -0700
From: Krishna Kurapati <quic_kriskura@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Wesley Cheng
	<quic_wcheng@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        "Dmitry
 Baryshkov" <dmitry.baryshkov@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>
CC: <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_ppratap@quicinc.com>,
        <quic_jackp@quicinc.com>, Krishna Kurapati <quic_kriskura@quicinc.com>
Subject: [PATCH 0/5] Add support for primary USB controller on QCS615.
Date: Mon, 14 Oct 2024 14:14:27 +0530
Message-ID: <20241014084432.3310114-1-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 0Zr3wbMAg4KeXj0aKqcEgQJuiBrD0kgm
X-Proofpoint-ORIG-GUID: 0Zr3wbMAg4KeXj0aKqcEgQJuiBrD0kgm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 mlxlogscore=852 malwarescore=0 lowpriorityscore=0 mlxscore=0 adultscore=0
 spamscore=0 suspectscore=0 clxscore=1011 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410140063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_014456_702161_B04B85D0 
X-CRM114-Status: GOOD (  10.25  )
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

This series aims at enabling USB on QCS615 which has 2 USB controllers.
The primary controller is SuperSpeed capable and secondary one is
High Speed only capable. The High Speed Phy is a QUSB2 phy and the
SuperSpeed Phy is a QMP Uni Phy which supports non-concurrent DP.

Device tree patches will sent separately after the SMMU node is acked [1]
on upstream. DT Binding checks done on the binding patches.

Bindings have been added only for the first controller.

[1]: https://lore.kernel.org/all/20241011063112.19087-1-quic_qqzhou@quicinc.com/

Krishna Kurapati (5):
  dt-bindings: usb: qcom,dwc3: Add QCS615 to USB DWC3 bindings
  dt-bindings: phy: qcom,qusb2: Add bindings for QCS615
  dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add support for QCS615
  phy: qcom-qusb2: Add support for QCS615
  phy: qcom: qmp-usbc: Add qmp configuration for QCS615

 .../phy/qcom,msm8998-qmp-usb3-phy.yaml        |  2 ++
 .../bindings/phy/qcom,qusb2-phy.yaml          |  1 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      |  3 ++
 drivers/phy/qualcomm/phy-qcom-qusb2.c         | 29 +++++++++++++++++++
 5 files changed, 38 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
