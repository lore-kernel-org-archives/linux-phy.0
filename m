Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBD96C77B75
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hBm+G+L8WeuHRu8eD3VE9NAz+m4ClTXEUs7xsdRl5c=; b=LBCkUA3s0okfuQ
	l5lAOs1b3dajNVTYpqtJGByrd/3JIHf7DB5RcWDB4qDP+bMDZTzlGN1qROEq2++WAlK0K9WOL0SP7
	VJVXgv+ruGlLLO/pMNosmqnsA45MxkK8y+tQtrgiL+TBCjaOc/S93PelQ1/70uP0FmWnbjno1kHpS
	Y0qkRET8uj5bUsqk0qLjUd1pjOU10UhrdgXAzWeLALuLkvi7qhCfXw2nwoFs0xIhwbTDU4bCDvU+O
	hEDNfGFwYdWKa8Vi91VDhZ0r09QmzC18eRx0Tv8V5II0q+bHSN3cO4ynYqanUN51oFc2G8VG5n2vS
	1WsvMPlrY//cqikURX+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppq5m-00AtNb-1k;
	Fri, 21 Apr 2023 12:42:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppq5i-00AtM9-2g
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 12:42:20 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33LApXYS000961;
	Fri, 21 Apr 2023 12:42:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=a2YDGIiOHfog6Q9UccwNuqcmQlpe7kGpJUwTYgXjAXc=;
 b=mQo2BGJe2aWrJXJT9ljU6q4ArTTqprAxnT1bipSlhQ6Y3zAwO0uY1ssZ9Kn6tNpeFoUe
 KFPDHMARVJ74qkFwNFb2+AUpXpIn/eB8PzxZCiShNfS3O8TTuaqRrg9awjsCMJTetW4n
 A6Nd5lg5QXglUH/d/Ck14IbU5jZFsfpYUXqEWUdqBURxD5FobD/z7dHQeaxtwnUp6/JY
 rKvmaMT8e1Dwwav04uDpFkkkLFXxwn2Vn6P3vThNY2Ic46e9qNz0fFZvfH65/lyMpgGe
 G3NuEpCLtG9w4vW9q2Fpm4r9kH1nqn+Ez3xqLXoylTRNRcLub8ydJdv6Beyj9OPwNH7q CQ== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q3qdm8d95-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 12:42:15 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33LCgEMU031077
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 12:42:14 GMT
Received: from devipriy-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Fri, 21 Apr 2023 05:42:09 -0700
From: Devi Priya <quic_devipriy@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <quic_srichara@quicinc.com>, <quic_sjaganat@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_arajkuma@quicinc.com>,
        <quic_anusha@quicinc.com>, <quic_ipkumar@quicinc.com>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574 bindings
Date: Fri, 21 Apr 2023 18:11:49 +0530
Message-ID: <20230421124150.21190-2-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230421124150.21190-1-quic_devipriy@quicinc.com>
References: <20230421124150.21190-1-quic_devipriy@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: YbDPEJ-36g9fpRdiH1EtR6FSm1ZpQDpv
X-Proofpoint-GUID: YbDPEJ-36g9fpRdiH1EtR6FSm1ZpQDpv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-21_05,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 malwarescore=0 mlxlogscore=999 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304210110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_054218_876838_5771B833 
X-CRM114-Status: GOOD (  17.30  )
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

Add bindings for the PCIe QMP PHYs found on IPQ9574.

Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
---
 Changes in V1:
	- Introduced a new binding for ipq9574 as suggested by Krzysztof

 .../phy/qcom,ipq9574-qmp-pcie-phy.yaml        | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml
new file mode 100644
index 000000000000..7c8012647051
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml
@@ -0,0 +1,90 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,ipq9574-qmp-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP PHY controller (PCIe, IPQ9574)
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  The QMP PHY controller supports physical layer functionality for a number of
+  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
+
+properties:
+  compatible:
+    enum:
+      - qcom,ipq9574-qmp-gen3x1-pcie-phy
+      - qcom,ipq9574-qmp-gen3x2-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 5
+
+  clock-names:
+    items:
+      - const: aux
+      - const: cfg_ahb
+      - const: anoc_lane
+      - const: snoc_lane
+      - const: pipe
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy
+      - const: common
+
+  "#clock-cells":
+    const: 0
+
+  clock-output-names:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#clock-cells"
+  - clock-output-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,ipq9574-gcc.h>
+    #include <dt-bindings/reset/qcom,ipq9574-gcc.h>
+
+    pcie0_phy: phy@84000 {
+      compatible = "qcom,ipq9574-qmp-gen3x1-pcie-phy";
+      reg = <0x00084000 0x1000>;
+
+      clocks = <&gcc GCC_PCIE0_AUX_CLK>,
+               <&gcc GCC_PCIE0_AHB_CLK>,
+               <&gcc GCC_ANOC_PCIE0_1LANE_M_CLK>,
+               <&gcc GCC_SNOC_PCIE0_1LANE_S_CLK>,
+               <&gcc GCC_PCIE0_PIPE_CLK>;
+      clock-names = "aux", "cfg_ahb", "anoc_lane", "snoc_lane", "pipe";
+
+      resets = <&gcc GCC_PCIE0_PHY_BCR>,
+               <&gcc GCC_PCIE0PHY_PHY_BCR>;
+      reset-names = "phy", "common";
+
+      #clock-cells = <0>;
+      clock-output-names = "gcc_pcie0_pipe_clk_src";
+
+      #phy-cells = <0>;
+    };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
