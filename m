Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B523E77199
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jan 2025 05:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8ojxi8edHBITv3QSMCxzpkb8Tb5t4tbLc2eUtuDR8AE=; b=bhKG840l0KQ3Tp
	+fhHIOFycbH2jWrUlkFoP57hmO22b0kXKR2YAPRYBsW927tsO0p2vcKCfGZJEjlxIAqMapNloyBBr
	DRrYDd3MfD+SgAbN33Xqx8RkhWZjVAGOYn8AAmGZB3t1BpvtubrTytA+Z1VeItVARVYmL6lWKXHE6
	C545YT256/+uWXQo+YouKuH0pZCQduldFeAuYOhhJFZapKKvwc+IqNIxF3GDP86VIJYY2oQMqBLSq
	ucq0t4Jeoml1EU1LNgSVNVq/pn8rn/xABgLqjSkV/JEMH66SWMwOKpAyRZZ4bauCX/MEui9+qotVa
	QBf+9KfmGxjhCBf0jXLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVP5z-00000007ESX-0KSo;
	Wed, 08 Jan 2025 05:59:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVP5w-00000007ES6-2hHR
	for linux-phy@lists.infradead.org;
	Wed, 08 Jan 2025 05:59:10 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5082iuXr014134;
	Wed, 8 Jan 2025 05:59:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=r70xmafgYDGHDKE78AYPrw
	Vh5XRh1ck5BYSlp7CBFsQ=; b=bQpCYlfu6lRK1cZoqWqV/I+ASyy6zNh5oas0/r
	vKRuwvyn+XI2V/GK/Cj7TRpwZyrN6JyF491X7npoTuZOjqUdB+atNfZVF/QQdm8K
	GSMg3NjcRpq/j1WFuOXYQeWOz+0IPPIXMBnVHrr0jIoG18lPebt2g1+AM/aNtsZ7
	4HIthJbT7OFi4/UwcT5WymMyBubFf8JSVs04huIg4i+M3xQQLZtT0b8BtMFRwhTq
	d/Liup/ZRcJYY5E+vYOXQWCjnb2OPXCUWW+D/yX+I6nGNu3sEfELa/iAeTethP+t
	Ass4RGA2quXmFuJ3umhOPVH8rlH4x8YMIjqwBB9nUJ9OcUuw==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 441guk0cuj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Jan 2025 05:59:00 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5085x0aw020427
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 8 Jan 2025 05:59:00 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 7 Jan 2025 21:58:53 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <dmitry.baryshkov@linaro.org>,
        <quic_nsekar@quicinc.com>, <quic_varada@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
Subject: [PATCH v6 0/5] Add PCIe support for Qualcomm IPQ5332
Date: Wed, 8 Jan 2025 11:28:37 +0530
Message-ID: <20250108055842.2042876-1-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: yjGVxOYBB9c1sGgtso6fC3F5YSayNr02
X-Proofpoint-GUID: yjGVxOYBB9c1sGgtso6fC3F5YSayNr02
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 suspectscore=0 mlxscore=0 adultscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501080046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_215908_696760_85E1FA9F 
X-CRM114-Status: GOOD (  17.68  )
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

This series combines [1] and [2]. [1] introduces IPQ5018 PCIe
support and [2] depends on [1] to introduce IPQ5332 PCIe support.
Since the community was interested in [2] (please see [3]), tried
to revive IPQ5332's PCIe support with v2 of this patch series.

v2 of this series pulled in the phy driver from [1] tried to
address comments/feedback given in both [1] and [2].

1. Enable IPQ5018 PCI support (Nitheesh Sekar) - https://lore.kernel.org/all/20231003120846.28626-1-quic_nsekar@quicinc.com/
2. Add PCIe support for Qualcomm IPQ5332 (Praveenkumar I) - https://lore.kernel.org/linux-arm-msm/20231214062847.2215542-1-quic_ipkumar@quicinc.com/
3. Community interest - https://lore.kernel.org/linux-arm-msm/20240310132915.GE3390@thinkpad/

v6: phy bindings:
    * Fix num-lanes definition

    phy driver:
    * Fix num-lanes handling in probe to use generally followed pattern

    controller bindings:
    * Give more info in commit log

    dtsi:
    * Add assigned-clocks & assigned-clock-rates to controller nodes
    * Add num-lanes to pcie0_phy

v5: phy bindings:
    * Drop '3x1' & '3x2' from compatible string
    * Use 'num-lanes' to differentiate instead of '3x1' or '3x2'
      in compatible string
    * Describe clocks and resets instead of just maxItems

    phy driver:
    * Get num-lanes from DTS
    * Drop compatible specific init data as there is only one
      compatible string

    controller bindings:
    * Re-arrange 5332 and 9574 compatibles to handle fallback usage in dts

    dtsi:
    * Add 'num-lanes' to "pcie1_phy: phy@4b1000"
    * Make ipq5332 as main and ipq9574 as fallback compatible
    * Sort controller nodes per address

    misc:
    Add R-B tag from Konrad to dts and dtsi patches

v4: * phy bindings - Create ipq5332 compatible instead of reusing ipq9574 for bindings
    * phy bindings - Remove reset-names as the resets are handled with bulk APIs
    * phy bindings - Fix order in the 'required' section
    * phy bindings - Remove clock-output-names
    * dtsi - Add missing reset for pcie1_phy
    * dtsi - Convert 'reg-names' to a vertical list
    * dts - Fix nodes sort order
    * dts - Use property-n followed by property-names

v3: * Update the cover letter with the sources of the patches
    * Rename the dt-bindings yaml file similar to other phys
    * Drop ipq5332 specific pcie controllor bindings and reuse
      ipq9574 pcie controller bindings for ipq5332
    * Please see patches for specific changes
    * Set GPL license for phy-qcom-uniphy-pcie-28lp.c

v2: Address review comments from V1
    Drop the 'required clocks' change that would break ABI (in dt-binding, dts, gcc-ipq5332.c)
    Include phy driver from the dependent series

v1: https://lore.kernel.org/linux-arm-msm/20231214062847.2215542-1-quic_ipkumar@quicinc.com/

Nitheesh Sekar (2):
  dt-bindings: phy: qcom,uniphy-pcie: Document PCIe uniphy
  phy: qcom: Introduce PCIe UNIPHY 28LP driver

Praveenkumar I (2):
  arm64: dts: qcom: ipq5332: Add PCIe related nodes
  arm64: dts: qcom: ipq5332-rdp441: Enable PCIe phys and controllers

Varadarajan Narayanan (1):
  dt-bindings: PCI: qcom: Document the IPQ5332 PCIe controller

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  10 +-
 .../phy/qcom,ipq5332-uniphy-pcie-phy.yaml     |  75 +++++
 arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts   |  76 +++++
 arch/arm64/boot/dts/qcom/ipq5332.dtsi         | 248 ++++++++++++++-
 drivers/phy/qualcomm/Kconfig                  |  12 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 286 ++++++++++++++++++
 7 files changed, 704 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c


base-commit: 8155b4ef3466f0e289e8fcc9e6e62f3f4dceeac2
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
