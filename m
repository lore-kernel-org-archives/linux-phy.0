Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31027C83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 13:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZYLV/J4FVMb4WNWcGzH9gOCuY1jl+lpmiszuAyimvgM=; b=K8ArYBtTd93DSg
	NM6BTq8EgtI00o6TJdPqnzm7hcKCmXKr7BWXL1O5nhB/Il/+6+ozF8RdLWFn1UrbezZOs3svCb7R7
	/9S66Ei6Uagnutp9RltBpOK5CCaTIi3kA9BoW8ceAnH/tA6aeGpk+zD4+N1GNDn1jc1gVslUKfAmX
	7KTZVM9iVG5rv4VsrbR2OaHV0xube4it/hMC5oxvlWgtCwDujokyV5WVGBE/D2iOoUW1dIpUp9MhR
	t7qq0pVBjITcwJhWuUibDg80HxulgcUK/6H999uhfVRLnaS8vTc7D58l0C+fI2No9/gizEMU/66uJ
	iny/fuVjXODRfV2TVxZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qazFE-00BeaV-2t;
	Tue, 29 Aug 2023 13:59:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qazFB-00BeZ5-22;
	Tue, 29 Aug 2023 13:58:59 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37TC9ur6001349;
	Tue, 29 Aug 2023 13:58:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=qcppdkim1;
 bh=+sqVmn9ndDXOtOS2zil6chnAI2vLNwnPdIa3pu3h6hk=;
 b=WgZDsabTccUPya36giHTumIozw27Qy6jTy6HcfpjI6YkTuoHSm2sxJJ53PlER7dZIx7a
 hhS42b6qMQyFwMB3TUCPO9PMMSsc0fYJjIZJFyVKbnnq1GfNUIIGVUx4yxSRRaLsFMKf
 26vNBHHMLJNz6tL0CXwzGun4RdZrzudSF5aBmhq/X2+elubvDIk/8WArLzoykQPnKXka
 QxwWNKsQwpx4+fTvLXV7478NyQWoA4c3eW8NBo5kMtHrhK5CNKh/u9hfblKzw/SPyaQO
 BkIJCCd4pxANU1rb1Evwwxg/+Tcvrr60DP55esgmN3WyQtNo+71j6EOI+w1o0Df9zWyq 0w== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ss4g6hm6x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 13:58:38 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37TDwbVO012042
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 13:58:37 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Tue, 29 Aug 2023 06:58:29 -0700
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <robert.marko@sartura.hr>, <luka.perkov@sartura.hr>,
        <quic_ipkumar@quicinc.com>, <agross@kernel.org>,
        <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_varada@quicinc.com>
Subject: [PATCH 0/9] Enable USB3 for IPQ5332
Date: Tue, 29 Aug 2023 19:28:09 +0530
Message-ID: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: b0sZeBPaa5Wb0IysTsxCneRbgo0TWAP5
X-Proofpoint-GUID: b0sZeBPaa5Wb0IysTsxCneRbgo0TWAP5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_11,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 mlxscore=0 mlxlogscore=538 malwarescore=0
 lowpriorityscore=0 phishscore=0 clxscore=1011 spamscore=0 bulkscore=0
 adultscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2308100000 definitions=main-2308290120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_065857_805239_38CED28D 
X-CRM114-Status: GOOD (  16.16  )
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

IPQ5332 has UNIPHY for USB and PCIe which is similar to the UNIPHY
present in IPQ4019. Few extra settings like clock, reset delay, mux
selection and voltage regulator are required for IPQ5332. Hence
repurposed the IPQ4019 PHY driver for IPQ5332 UNIPHY. Few more Qualcomm
SoCs are also having the UNIPHY which can use the same driver for both
USB and PCIe PHY.

Praveenkumar I (9):
  dt-bindings: phy: qcom,uniphy: Rename ipq4019 usb PHY to UNIPHY
  phy: qcom: uniphy: Rename ipq4019 USB phy driver to UNIPHY driver
  phy: qcom: uniphy: Update UNIPHY driver to be a common driver
  dt-bindings: phy: qcom,uniphy: Add ipq5332 USB3 SS UNIPHY
  dt-bindings: usb: dwc3: Update IPQ5332 compatible
  arm64: dts: qcom: ipq5332: Add USB3 related nodes
  arm64: dts: qcom: ipq5332: Enable USB SS UNIPHY
  phy: qcom: uniphy: Add ipq5332 USB UNIPHY support
  arm64: defconfig: Enable UNIPHY driver

 .../devicetree/bindings/phy/qcom,uniphy.yaml  | 168 +++++++
 .../bindings/phy/qcom-usb-ipq4019-phy.yaml    |  52 --
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |  20 +-
 MAINTAINERS                                   |   7 +-
 arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts   |   7 +-
 arch/arm64/boot/dts/qcom/ipq5332.dtsi         |  39 +-
 arch/arm64/configs/defconfig                  |   1 +
 drivers/phy/qualcomm/Kconfig                  |   7 +-
 drivers/phy/qualcomm/Makefile                 |   2 +-
 drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c   | 145 ------
 drivers/phy/qualcomm/phy-qcom-uniphy.c        | 451 ++++++++++++++++++
 11 files changed, 686 insertions(+), 213 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
 delete mode 100644 drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
 create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
