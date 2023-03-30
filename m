Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43DE3C761AF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Mar 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mLSeJY4Ra+FYzefDUG/ft3s1Eob2tJxcmdDyfYz1rzI=; b=fD/jcbIJ6qZUxk
	sBdyA+/uBOSHrlUy/7+3FkGDdthZ1PSrLMXNturdFSFFN/H08HROquRocHFvxqRxWD+lBE+i6Zi0B
	ZBWrXB5mGtwWbujTqGqYIX+zookwVU6MEOR83FmkRebD3oJGIJXC6lG1LyV+P2juaRV03jGCp1BSI
	KRQYy4T3aYFcpGoczOxNgRHtLaUiwJuVqyMSICgBsFzgNVLkhOi5n7A5/9yu6ACisQuXQtYrAyp+p
	IlK5g6VARnhofyOvng6JNV5bK8XSO23zot6l3sPxtoek1W41+UHMjIdTcMOVDtnXlp4t54nXbcg1n
	lZID6/Zsem3ss9nAo9aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phnqY-0037AB-2N;
	Thu, 30 Mar 2023 08:41:26 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phnqN-00375f-2o
	for linux-phy@lists.infradead.org;
	Thu, 30 Mar 2023 08:41:18 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32U8Dbj1023567;
	Thu, 30 Mar 2023 08:41:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=ajAXa9RgyNIJ54G0h80RVegw70RDopqa2IVte913A5E=;
 b=aElMOR/Bhgqt8/8ZeV64Nlq6hmL/In7rtWBr5oeSV3HpbpC91EW64tPU1Kk+mlqNtVXn
 FiuSdIzZGhTFiWSkBq35QbEYT0mEsDA8cBj4Xm9ywi9lnGh5NGgaPj/nxJ9D1NVcGOLT
 EaXwUBXaWWEf8ffXo7EP/OtDer4saQSBEMxwGpekLBs7krsM/MuUFEwAOh7RXyzg1urk
 dLdT4HTLmw1WmF9fBcbGTUyDfn80DX4n1UslXje6ur48d3vU/UaRB3WsnCNrX06T/RmC
 iZwa4CcQEudZWKz0itzcOLezOlXJcBre4JsXfUnnZL3CKWFaTIh3eub4KGAxj8aWsH96 tA== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pn51ygcqb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 08:41:04 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32U8f3TI019047
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Mar 2023 08:41:03 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 30 Mar 2023 01:40:57 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v5 0/8] Enable IPQ9754 USB
Date: Thu, 30 Mar 2023 14:10:42 +0530
Message-ID: <cover.1680162377.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: oGa2J184ynaDRiqhDF4NsUJWa-lJVl_D
X-Proofpoint-GUID: oGa2J184ynaDRiqhDF4NsUJWa-lJVl_D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-30_04,2023-03-30_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 impostorscore=0 malwarescore=0 adultscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 mlxlogscore=441
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2303300069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_014116_028933_DB999EC7 
X-CRM114-Status: GOOD (  15.31  )
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

This patch series adds the relevant phy and controller
configurations for enabling USB on IPQ9754

Depends on:
https://lore.kernel.org/all/20230217142030.16012-1-quic_devipriy@quicinc.com/

[v5]:
        - Incorporated review comments
	- 'make dtbs_check' giving the following messages since
	  ipq9574 doesn't have power domains. Hope this is ok

		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
        	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
        	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml

	- Move qmp phy DT node to newer specification

[v4]:
        - Incorporated review comments
	- Address all 'make dtbs_check' errors

[v3]:
        - Incorporated review comments regarding coding style

[v2]:
        - Incorporated review comments regarding coding style,
          maintaining sorted order of entries and unused phy register
          offsets
        - Removed NOC clock entries from DT node (will be implemented
          later with interconnect support)
        - Fixed 'make dtbs_check' errors/warnings

[v1]:
        https://lore.kernel.org/linux-arm-msm/5dac3aa4-8dc7-f9eb-5cf3-b361efdc9494@linaro.org/T/

Varadarajan Narayanan (8):
  dt-bindings: phy: qcom,qusb2: Document IPQ9574 compatible
  dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3 PHY
  dt-bindings: usb: dwc3: Add IPQ9574 compatible
  clk: qcom: gcc-ipq9574: Add USB related clocks
  phy: qcom-qusb2: add QUSB2 support for IPQ9574
  phy: qcom: qmp: Update IPQ9574 USB Phy initialization Sequence
  arm64: dts: qcom: ipq9574: Add USB related nodes
  arm64: dts: qcom: ipq9574: Enable USB

 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    |   3 +-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   1 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml         |  19 ++++
 arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts       |  16 +++
 arch/arm64/boot/dts/qcom/ipq9574.dtsi              | 120 +++++++++++++++++++++
 drivers/clk/qcom/gcc-ipq9574.c                     |  37 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 115 ++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qusb2.c              |   3 +
 include/dt-bindings/clock/qcom,ipq9574-gcc.h       |   2 +
 9 files changed, 315 insertions(+), 1 deletion(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
