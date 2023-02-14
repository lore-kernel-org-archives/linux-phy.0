Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3EBDC05027
	for <linux-phy@archiver.kernel.org>; Tue, 14 Feb 2023 16:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bvLKavpmd2D9aqNqlltTkzc8PyJrD6M18rYB6xI9iJI=; b=DK49vFfBvaMb+0
	nrN3pPS3rMexwt48TbXWK2LRbKWpgeknY/SeTZ67IqwgIHf5EJ0IT/bLfHh5DVqpdeC/imf8vkiUv
	N/2m0svugpsmviBtQLpcebBoq88ZlDWetgHvUm9BWctGlHyRx3A1MB2Z7UKe1BJ+IN76bHq8zOWod
	Dc5op0W+0jFabw3/IGC8cK8yTqI6+4+EhHFx9pY7HozQohlusnkgIfWBB8xYh69QsdTeNXGbqDRWr
	7baI8oM0Ncb5WAu96cN60JpeomDuqJ/6BtY5Zl3907w4p/8GpS4JFt5c9SDrN/xuVYfGNzVp1hwmP
	51xnIKA4fKCtfZVpPxVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRyNn-002sOX-B1; Tue, 14 Feb 2023 16:42:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRyNk-002sNu-UK
	for linux-phy@lists.infradead.org; Tue, 14 Feb 2023 16:42:18 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31E0fCB3012982;
	Tue, 14 Feb 2023 16:42:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=PZNsfcpSNgi6XSftsTxLifara0hUhG2V7agojxm3mJQ=;
 b=ZKb9LGMaqRV346KkqqLVXGQg/28E5ckR8GT1DL7gNeD36sGnImmIpLVJ7aTdsVIVp2QP
 raN/0Qh3lCi9Y+hsmo2VcB2zvDwVdNLRRvNX7/ymtE+WiCAs3PXo1tT6kHz76GJET6y4
 k6UPx7qgt/NVAvtM4Du3zvzgdiJQpgA1rAFPl2TJ2m8dGlWJhOgCuon+6wQupIVVzla+
 MZWnnRw/f84n4zcMqgdxrNDjT+tjQPNEpt+l7S7uFSdkbkLiduTO+CIgKvk5qDewU9OK
 NVHvxoZIg67o9wLrgvJk4VWDSHk2HyijkjXPeVqVkykGGx5U5JhJIYiKJpfIJoktT+gJ cg== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3nqyygt3tu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 14 Feb 2023 16:42:08 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 31EGg7tf002753
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 14 Feb 2023 16:42:07 GMT
Received: from devipriy-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.36; Tue, 14 Feb 2023 08:42:00 -0800
From: Devi Priya <quic_devipriy@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <svarbanov@mm-sol.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
CC: <quic_srichara@quicinc.com>, <quic_gokulsri@quicinc.com>,
        <quic_sjaganat@quicinc.com>, <quic_kathirav@quicinc.com>,
        <quic_arajkuma@quicinc.com>, <quic_anusha@quicinc.com>
Subject: [PATCH 0/7] Add PCIe support for IPQ9574
Date: Tue, 14 Feb 2023 22:11:28 +0530
Message-ID: <20230214164135.17039-1-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: QOfNvi5NJaTEc2br4e0KXsGlWhFeT3i8
X-Proofpoint-GUID: QOfNvi5NJaTEc2br4e0KXsGlWhFeT3i8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-14_11,2023-02-14_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 impostorscore=0 malwarescore=0 adultscore=0 mlxlogscore=789 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302140142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_084217_001502_9EE3E43C 
X-CRM114-Status: GOOD (  13.39  )
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

PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
are found on IPQ9574 platform. The PCIe0 & PCIe1 are 1-lane
Gen3 host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.

This series adds support for enabling the same

DTS patch is based on the crashdump series
https://lore.kernel.org/linux-arm-kernel/20230214051414.10740-1-quic_poovendh@quicinc.com/

Devi Priya (7):
  dt-bindings: PCI: qcom: Add IPQ9574 specific compatible
  PCI: qcom: Add IPQ9574 PCIe support
  dt-bindings: phy: qcom,qmp-pcie: Add ipq9574 compatible
  phy: qcom-qmp-pcie: Add support for IPQ9574 platform
  dt-bindings: clock: Add PCIe pipe clock definitions
  clk: qcom: gcc-ipq9574: Add PCIe related clocks
  arm64: dts: qcom: ipq9574: Add PCIe PHYs and controller nodes

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  72 ++-
 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        |  28 +
 arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts  |  28 +
 arch/arm64/boot/dts/qcom/ipq9574.dtsi         | 477 +++++++++++++++++-
 drivers/clk/qcom/gcc-ipq9574.c                |  76 +++
 drivers/pci/controller/dwc/pcie-qcom.c        | 119 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 309 ++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  26 +-
 .../phy/qualcomm/phy-qcom-qmp-qserdes-pll.h   |   3 +
 include/dt-bindings/clock/qcom,ipq9574-gcc.h  | 276 +++++-----
 10 files changed, 1264 insertions(+), 150 deletions(-)


base-commit: 3ebb0ac55efaf1d0fb1b106f852c114e5021f7eb
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
