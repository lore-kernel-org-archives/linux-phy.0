Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98CC4E77188
	for <linux-phy@archiver.kernel.org>; Fri, 20 Dec 2024 05:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gGA+rwprDV3nNzTw0jb0eT5khhUfyI88cGBSW8UU2bM=; b=Jm4Src1GHKIYLC
	kwRCg0zkm01Wis7VVJkYjOkmzQB0100Eh3o85K1qB1E3RPtfvS4RA1PlFvSvxMi07G8ri1PATYErS
	6OVTWwU3VYEcrxDqvIIadwrYAJ10vTHZWdXw1uK0uujOKMZz5wo/qu85gkfADN9np63/ILhTz4iU3
	ZDp5JAwRtNr0h6POA7XfKLWeeBGDfZ1Gt6Y+n4znbufieoxLpNN3yxz7wMZVnFaWEM3IHQB5t7K5Z
	RFUmY7HkX3wcDWeNIfNkF5FPHhmdLW/57zKq6Jy6bUXWr1IMKhRcaa3qGuwo4ZzhJV7UhWPnn8UW7
	HehhztYhGrQMDgnBwuig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOVxo-0000000411d-1Ndf;
	Fri, 20 Dec 2024 05:54:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOVxl-000000040z5-1YhJ
	for linux-phy@lists.infradead.org;
	Fri, 20 Dec 2024 05:54:14 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK4PZON024611;
	Fri, 20 Dec 2024 05:54:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=x1HPUkh0Nxv+8Nqj9cHIhTM180n9lKWJNV0
	B0w0N3xo=; b=pFoGs40LUlmlPj8b0dh/8nHq1XIkZXwN5lL8XLsGohD+ed3mf3Z
	wI1yiOFriDjsWcWVmCcSyOUrCtQwNDUvDsVbVfreFWCO9TerlcUHP6EAxPkVERQL
	mKDH1g7U+d3RrHjQodMFGEKb+LoJzdowvLHTAdeYwqhZGM6FTpJnRLV35/YRWgGu
	+/q7J/rd1nZlDZ8817GsQRO3weL2vhnVI+hjxniP9nMJ3AzCIPDldGep6ycTvZlp
	ndVDT99m9ytu3NBhTEkYYWDLpBAZhNxDEjUA7ZckE9HEB7aKCpymovGeQbQKCDwZ
	6Xign+Syu+ikc04XIhZW+KRshgWgWfd+HBA==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n1hx05fh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Dec 2024 05:54:05 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK5s3PH023962;
	Fri, 20 Dec 2024 05:54:03 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 43h33kv4q7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Dec 2024 05:54:03 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4BK5s3w9023955;
	Fri, 20 Dec 2024 05:54:03 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 4BK5s27a023942
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Dec 2024 05:54:03 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id 0DB621C38; Fri, 20 Dec 2024 13:54:01 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
        bhelgaas@google.com, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, quic_qianyu@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v3 0/8] pci: qcom: Add QCS8300 PCIe support
Date: Fri, 20 Dec 2024 13:52:31 +0800
Message-Id: <20241220055239.2744024-1-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: AsbRgjc-J_-ttTvhMMYgSXB1rsMACo-i
X-Proofpoint-ORIG-GUID: AsbRgjc-J_-ttTvhMMYgSXB1rsMACo-i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 suspectscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=841 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_215413_416713_AB5FA6EA 
X-CRM114-Status: GOOD (  11.79  )
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

This series adds document, phy, configs support for PCIe in QCS8300.
The series depend on the following devicetree.

Have follwing changes:
	- Document the QMP PCIe PHY on the QCS8300 platform.
	- Add dedicated schema for the PCIe controllers found on QCS8300.
	- Add compatible for qcs8300 platform.
	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.
	- Add configurations in devicetree for PCIe1, including registers, clocks, interrupts and phy setting sequence.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
Changes in v3:
- Add received tag(Rob & Dmitry)
- Update pcie_phy in gcc node to soc dtsi(Dmitry & Konrad)
- remove pcieprot0 node(Konrad & Mani)
- Fix format comments(Konrad)
- Update base-commit to tag: next-20241213(Bjorn)
- Corrected of_device_id.data from 1.9.0 to 1.34.0.
- Link to v2: https://lore.kernel.org/all/20241128081056.1361739-1-quic_ziyuzhan@quicinc.com/

Changes in v2:
- Fix some format comments and match the style in x1e80100(Konrad)
- Add global interrupt for PCIe0 and PCIe1(Konrad)
- split the soc dtsi and the platform dts into two changes(Konrad)
- Link to v1: https://lore.kernel.org/all/20241114095409.2682558-1-quic_ziyuzhan@quicinc.com/

Ziyue Zhang (8):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS8300 QMP
    PCIe PHY Gen4 x2
  phy: qcom-qmp-pcie: add dual lane PHY support for QCS8300
  dt-bindings: PCI: qcom,pcie-sa8775p: document qcs8300
  PCI: qcom: Add QCS8300 PCIe support
  arm64: dts: qcom: qcs8300: enable pcie0 for qcs8300 soc
  arm64: dts: qcom: qcs8300: enable pcie0 for qcs8300 platform
  arm64: dts: qcom: qcs8300: enable pcie1 for qcs8300 soc
  arm64: dts: qcom: qcs8300: enable pcie1 for qcs8300 platform

 .../bindings/pci/qcom,pcie-sa8775p.yaml       |   7 +-
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts     |  82 ++++
 arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 349 +++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  89 +++++
 6 files changed, 527 insertions(+), 3 deletions(-)


base-commit: 4176cf5c5651c33769de83bb61b0287f4ec7719f
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
