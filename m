Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72A96E7716B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 11:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K/6qgvvIzFeg9/kSzh5jh+vVDRorzeAG6cauoETxyBQ=; b=pBtaNYA5grt+/1
	Y/YhkyETai7tzFBAzb7PEIG5qj6Sd8xxXSPhvFHDMgMT2lkZulCUxYjX34+bO2m1kT2zDqt1w/21F
	BDKYG9NEwSm0zWXZM2I6Tv6Bk0aq4VHjU4Yc5jEwSGPKz3dr+bIyrMH0iEOssyEImF05BHTlMNGCt
	7MIexNMdGsDY16oi+zkeclCAr8ufOnVLOGx0pY3gCWNY9diproZDc8FUb1gBhq9J1qIwYa9jIJLev
	P0cOq4T8lySNDjEtultwzZa+Ooy/dmlbr783iP161cyFbUAo2/hrCQbZxFOpI2jF3bY07ZB+qWsWD
	uUbHgDcJ0KQMQs9A2EYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIne7-0000000COnf-08oK;
	Wed, 04 Dec 2024 11:34:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIne3-0000000COlG-1kyM
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 11:34:17 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B4771Ne028017;
	Wed, 4 Dec 2024 11:34:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=n8FzvXPu/r1w5IB0fnY3Eb
	oOn0VyN99tXURnZCbiJME=; b=ajhtGZZ/ZZRd4WEU7fjXfTJqdOB8KPXZxWkbqg
	JFhslDAKYFnxkikmKChhAYdRGdqJ5y5DrJifxgTuk2gaKtYjR5OBk/Ptg+XAk83L
	Nw9CHrJqMHOOEaXXiVmutEwKNptLtmNB7iLISLlJna2y11toFy9em6G9NIkgH3hU
	IPCUUgcAkgeO7V+2bL0UYm/I+vsrnju0Y05O2j9ExyZ+KUviJxFPfaFeqQn8wb9N
	+WtepOMsI1k7jBNuyafCizRj0ZVnpSLbNQ/4PFh7V9wklRpxy/d59yYQCdEW2UfV
	fn3EzFWgotoEjpjAPtRExLd91g/JUq0Z3+QlX/HoqM7dSDxg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439vcem6p4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Dec 2024 11:34:05 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B4BY43s025568
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 4 Dec 2024 11:34:04 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 4 Dec 2024 03:33:58 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <p.zabel@pengutronix.de>,
        <quic_nsekar@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <quic_varada@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v2 0/6] Add PCIe support for Qualcomm IPQ5332
Date: Wed, 4 Dec 2024 17:03:23 +0530
Message-ID: <20241204113329.3195627-1-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ICLesSqubqArBsr7fqycsN6rPZ2JpE2B
X-Proofpoint-ORIG-GUID: ICLesSqubqArBsr7fqycsN6rPZ2JpE2B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=810 adultscore=0 suspectscore=0 spamscore=0
 impostorscore=0 phishscore=0 mlxscore=0 malwarescore=0 clxscore=1011
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412040090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_033415_461109_437B5740 
X-CRM114-Status: GOOD (  13.80  )
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

Patch series adds support for enabling the PCIe controller and
UNIPHY found on Qualcomm IPQ5332 platform. PCIe0 is Gen3 X1 and
PCIe1 is Gen3 X2 are added.

v2: Combined [1] & [2]
	- take the phy driver related changes from [1]
	- drop IPQ5018 related changes
    Address review comments from [1] & [2] for the patches included in v2
    Please see individual patches for the differences between v1 and v2

    1. https://lore.kernel.org/all/20231003120846.28626-1-quic_nsekar@quicinc.com/
    2. https://lore.kernel.org/linux-arm-msm/20231214062847.2215542-1-quic_ipkumar@quicinc.com/

v1: https://lore.kernel.org/linux-arm-msm/20231214062847.2215542-1-quic_ipkumar@quicinc.com/

Nitheesh Sekar (2):
  dt-bindings: phy: qcom,uniphy-pcie: Document PCIe uniphy
  phy: qcom: Introduce PCIe UNIPHY 28LP driver

Praveenkumar I (4):
  dt-bindings: PCI: qcom: Add IPQ5332 SoC
  pci: qcom: Add support for IPQ5332
  arm64: dts: qcom: ipq5332: Add PCIe related nodes
  arm64: dts: qcom: ipq5332: Enable PCIe phys and controllers

 .../devicetree/bindings/pci/qcom,pcie.yaml    |   4 +
 .../bindings/phy/qcom,uniphy-pcie.yaml        |  82 +++++
 arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts   |  74 +++++
 arch/arm64/boot/dts/qcom/ipq5332.dtsi         | 214 +++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
 drivers/phy/qualcomm/Kconfig                  |  12 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 307 ++++++++++++++++++
 8 files changed, 693 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,uniphy-pcie.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c


base-commit: f486c8aa16b8172f63bddc70116a0c897a7f3f02
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
