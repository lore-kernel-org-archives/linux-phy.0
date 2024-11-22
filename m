Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5244AE65D18
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 02:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ewOXKH3zdjNrIOxsv0LDSGCpAZbtaS0TIf1WUL1QXV4=; b=mHsaAKMKUjBxA1
	U/TiFx9Mj2MIxNdedd11KkPF1r1lBwv5Anj46f0ERyQPZhGml/8y/M/L75usPzvxWJEZHs89s0x3Y
	WcLErfsjjyWqHZdtrm0FuIfdwS3hPkPOM5iHo2is3IZVD3QpvVgOhPNBFHeyR1NjTfRuny9OOIHCs
	kSQNXUQpkjjE8XEuHNqBgGYTNdmyq9/LwoqPs7RaMjM7tLTZG9aVVkSDes/kYBvvvzy5UPE0qaJX8
	mC1Y2EQEhRmA0zCik/V6WODI1OmPL6fvxIr+uJh45iol5sRCLKJEIgXCuixI8DhIE4rNlB7MenjSG
	vXZmicMxrBnyyo8cunUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEJ5Z-00000001R0H-056u;
	Fri, 22 Nov 2024 02:08:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEJ11-00000001Q67-0yh6
	for linux-phy@lists.infradead.org;
	Fri, 22 Nov 2024 02:03:24 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ALE5Y2a019756;
	Fri, 22 Nov 2024 02:03:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=pi4p+pBaxk/Du159uXOPys2/oXLhK4vU/BO
	PEvD6pv8=; b=mx2Zds7F5Ej3+/LNASUTlzQCDfmQOG3BPhn0kzOpbCFvuxBW40F
	QKZUjq0ittVhyB5eEjffzI9oen4Jpcp+Vn+FCTD9zUOJpaUQvjgmS2/1JOt+nauq
	/TwQ6buWrJs3fX8iUyOyGiJwZMtm6E/dU6gV9hHVrJNUWsSfJhuC/sddFNCFPB4M
	YeL1w5FeRIvw7GEQ4vFZOraglOu8g3JkBW5IJ7b4QwoYM2ti6zl/IQZ5W/UMjoIl
	6NYELxLxTzsJcCcENMfeodC8LO4uOTQ29r9jbUMHGQYBPc7HH6kvga2OwzntHHR2
	YbjCwWDeTFwnqq62xbiu++Ukmvy36r20Ztw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4326at9ka9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 02:03:12 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4AM239cj017837;
	Fri, 22 Nov 2024 02:03:09 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 42xmfkueuk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 02:03:09 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4AM239vk017824;
	Fri, 22 Nov 2024 02:03:09 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4AM238Yc017815
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 02:03:09 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 4B1C017EB; Fri, 22 Nov 2024 10:03:07 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: [PATCH v2 0/6] pci: qcom: Add QCS615 PCIe support 
Date: Fri, 22 Nov 2024 10:02:59 +0800
Message-Id: <20241122020305.1584577-1-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: G7qfe_-YaK_qL1aYXvwolmgRUskeTtgc
X-Proofpoint-GUID: G7qfe_-YaK_qL1aYXvwolmgRUskeTtgc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 clxscore=1015 mlxlogscore=791 lowpriorityscore=0
 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411220015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_180323_286982_EA60DED7 
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

This series adds document, phy, configs support for PCIe in QCS615.

Base DT:
https://lore.kernel.org/all/20241104-add_initial_support_for_qcs615-v5-0-9dde8d7b80b0@quicinc.com/

APPS SMMU:
https://lore.kernel.org/all/20241105032107.9552-1-quic_qqzhou@quicinc.com/

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
Have folling changes:
	- Add compatible and phy compatible for qcs615 platform.
	- Add support for GEN3 x1 PCIe PHY found on Qualcomm QCS615 platform.
	- Add a new Document the QCS615 PCIe Controller
	- Add the compatible for QCS615 PCIe controller.
	- Add configurations in devicetree for PCIe, including registers, clocks, interrupts and phy setting sequence.
	- Add configurations in devicetree for PCIe, platform related gpios, PMIC regulators, etc.

Changes in v2:
- Update commit message for qcs615 phy
- Update qcs615 phy, using lowercase hex
- Removed redundant function
- split the soc dtsi and the platform dts into two changes
- Link to v1: https://lore.kernel.org/all/20241118082619.177201-1-quic_ziyuzhan@quicinc.com/

Krishna chaitanya chundru (5):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS615 QMP
    PCIe PHY Gen3 x1
  phy: qcom: qmp: Add phy register and clk setting for QCS615 PCIe
  dt-bindings: PCI: qcom: Document the QCS615 PCIe Controller
  PCI: qcom: Add QCS615 PCIe support
  arm64: dts: qcom: qcs615: enable pcie for qcs615 board dts

Ziyue Zhang (1):
  arm64: dts: qcom: qcs615: enable pcie for qcs615 soc

 .../bindings/pci/qcom,pcie-qcs615.yaml        | 161 ++++++++++++++++++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +
 arch/arm64/boot/dts/qcom/qcs615-ride.dts      |  42 +++++
 arch/arm64/boot/dts/qcom/qcs615.dtsi          | 158 +++++++++++++++++
 drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 105 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h    |   1 +
 7 files changed, 470 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml


base-commit: ee5d1329f3de0b8cb77084715c1179627a9d599c
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
