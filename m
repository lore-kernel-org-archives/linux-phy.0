Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B52BCD6E5C
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 11:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIBaOoFaw1mbci8ulUDlwWTXXBZyi92XBzzNGddMmho=; b=durWjZaipF+BhY
	kJMSGpP5RI2czzjxsz4GejiYjQr5kHamUQWqDOdIrLpA7xKlfrir/8Xub2jnjahbb5EZwdcN4gkoP
	t8HJWyigcufYnsJzAmcthRUl6Q7l5cSNPwKtrWMVF4I9lXi/9t/vHy3wLWZKCOCV1Cp5qLtPAc3dB
	VLY7pbbU/Ul0E+5tiZEERBSX7R/Dyu8tTIfKXvfCDYq/LxxeFCMcYxmlTKQmIKLFSaU1onBEg5cDq
	NTgm64+0tztk4OhIqrYXDGRIBwo0vWX3Dw6nj+U9WMkV1hQlPmHnfmg+I/z4WMNDVwL/WM3ZQB5pi
	inX6Ly/5D4iLq+mb6U6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXF8-00FjDT-0K;
	Wed, 11 Oct 2023 11:19:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXF4-00FjBU-0u
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 11:19:08 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B8Xa0e004047;
	Wed, 11 Oct 2023 11:18:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=nRyixbRMy/pqDX+0KMIbtD9m8Jzt5K5DBOTwDP9RhRQ=;
 b=jpKYDuvsCz/4km0qkiA/U57oZZGaVhbuqSmurDtO00lFQpDOXt0eaGPIr6ibQnQwMmAA
 mjCZUtm584qTrU17TIRrtu45kQ1AmxSpfLokL70msocnh2vJLam9p5PzCt3O9iK8XJyh
 6sMkksAtnKLi5PNTiKnytJ78KqIBETnIBc8Jc44meJvL1EeZ3K5FXNjhkAyN1TvS/S1A
 /JnQ44NOZKb0ujtXy9tTKi3tjGm/no1oqTXFZ+mwwsrKEf0mSgKPLcFjscWsRkA7YMOd
 V7BFgz2HK+MUkBq8OAHsBmbXdcZKFGJzAufckK1+ZLJgtVk0rhluBasbCMhLDjM6xo3l 3Q== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tn3s1awjb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 11:18:49 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 39BBIkZA011282;
	Wed, 11 Oct 2023 11:18:46 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 3tk0dkmaxr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 11 Oct 2023 11:18:46 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 39BBIjju011276;
	Wed, 11 Oct 2023 11:18:45 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 39BBIjJA011271;
	Wed, 11 Oct 2023 11:18:45 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id 910A6D83; Wed, 11 Oct 2023 16:48:44 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        dmitry.baryshkov@linaro.org, robh@kernel.org, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
        linux-phy@lists.infradead.org
Subject: [PATCH v2 4/4] arm64: dts: qcom: sa8775p: Add ep pcie0 controller node
Date: Wed, 11 Oct 2023 16:48:29 +0530
Message-Id: <1697023109-23671-5-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1697023109-23671-1-git-send-email-quic_msarkar@quicinc.com>
References: <1697023109-23671-1-git-send-email-quic_msarkar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: XvdSTA4mbZMkZRyWxiqob6pl2llgrPQE
X-Proofpoint-GUID: XvdSTA4mbZMkZRyWxiqob6pl2llgrPQE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-11_09,2023-10-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 bulkscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 clxscore=1015 mlxlogscore=999 mlxscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_041906_457282_28225859 
X-CRM114-Status: GOOD (  13.06  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add ep pcie dtsi node for pcie0 controller found on sa8775p platform.
it supports x2 link width.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 48 +++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index b6a93b1..485f626 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -2608,4 +2608,52 @@
 
 		status = "disabled";
 	};
+
+	pcie0_ep: pcie-ep@1c00000 {
+		compatible = "qcom,sa8775p-pcie-ep", "qcom,sdx55-pcie-ep";
+		reg = <0x0 0x01c00000 0x0 0x3000>,
+		      <0x0 0x40000000 0x0 0xf20>,
+		      <0x0 0x40000f20 0x0 0xa8>,
+		      <0x0 0x40001000 0x0 0x4000>,
+		      <0x0 0x40200000 0x0 0x100000>,
+		      <0x0 0x01c03000 0x0 0x1000>,
+		      <0x0 0x40005000 0x0 0x2000>;
+		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+			    "mmio", "dma";
+
+		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+			<&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			<&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+			<&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+			<&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
+
+		clock-names = "aux",
+			      "cfg",
+			      "bus_master",
+			      "bus_slave",
+			      "slave_q2a";
+
+		interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 630 IRQ_TYPE_LEVEL_HIGH>;
+
+		interrupt-names = "global", "doorbell", "dma";
+
+		interconnects = <&pcie_anoc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>,
+				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_PCIE_0 0>;
+		interconnect-names = "pcie-mem", "cpu-pcie";
+
+		iommu-map = <0x0 &pcie_smmu 0x0000 0x1>,
+			    <0x100 &pcie_smmu 0x0001 0x1>;
+
+		resets = <&gcc GCC_PCIE_0_BCR>;
+		reset-names = "core";
+		power-domains = <&gcc PCIE_0_GDSC>;
+		phys = <&pcie0_phy>;
+		phy-names = "pciephy";
+		max-link-speed = <3>;
+		num-lanes = <2>;
+
+		status = "disabled";
+	};
 };
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
