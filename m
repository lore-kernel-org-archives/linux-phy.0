Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 642F0E743FB
	for <linux-phy@archiver.kernel.org>; Fri, 29 Sep 2023 08:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyjoVwBQC/+9lC0k7RoDVkwgb3xMS3+5SvwtBIXKI8k=; b=yNdHUikWYov6xV
	asEgiX4dWxHsPy08fxZK4tuaWb+npi1ghXZ4YG4wiqBXn976ul6xZ9zHU7wd8OtERSEWSrkgmq4Fp
	Bym1GSuQarwMR+T+TV9Ko8WpCDQmGTTy2i69/0l4n8EvQ/ihXaheqAD5XUs/vfrPpAssLZubF9E9N
	gG2w9fJoGf65DCgc0tj62HbLYXtflS5XY4FpqfVgtKKhCTdQq1qEV6EUfrqp+19keZA2LbmCWGcfl
	fX3q4JbFDkLaZVJeXY5NnufTO2a2iK88ZI1u13jUfxrdUh4j6+Tf7ZJu1UUeZ2GUd0TGze3NfDN8S
	drIm6oCa1HH89RvxWibQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qm95Z-007OLq-2s;
	Fri, 29 Sep 2023 08:43:09 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qm95X-007OI1-0X;
	Fri, 29 Sep 2023 08:43:09 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38T5qxsS016493;
	Fri, 29 Sep 2023 08:42:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=/2WaqLCZEMih8oMDFvFi+4OgpctQVeAmUcRntbvmJJs=;
 b=DDwy+fEABnZ+lrVA6+YdttCUEtMcjpPYi1cKj/31f2Ra4o1Z+qZMUWhlm5vEIN0vfaBU
 VCkpcS0v1gYEvVLfMxk7upwouVjAKfnZLn0+uWMXBnFgESz3F7kRqDUSrBbaYpjE2UQ0
 rYk+GoIVaEzq6h6MPKguKwi3ikdP2nnuH88IZtC4ViFoxpAkJ7sXmybvRlnHuGkDHkf/
 gpRFpZ3BsRz4oqe/Va66rI5sUdj3qPCCWcl3RnBvWivrXkwbzZ/8Nh7L7JfNgaNOHr7e
 EaN8aRec2pc4yw1/Xf9Lj8BhzKZeT10SdElXCGWdrfBN7E4xPb4KS7okQlf2VMeeBSzR zw== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tdqmv8d8u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 08:42:43 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38T8ggeQ032742
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 08:42:42 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Fri, 29 Sep 2023 01:42:33 -0700
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <geert+renesas@glider.be>,
        <arnd@arndb.de>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <u-kumar1@ti.com>, <peng.fan@nxp.com>,
        <quic_wcheng@quicinc.com>, <quic_varada@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_kathirav@quicinc.com>, <quic_nsekar@quicinc.com>,
        <quic_srichara@quicinc.com>
Subject: [PATCH 1/8] dt-bindings: phy: qcom,uniphy-usb: Document qcom,uniphy-usb phy
Date: Fri, 29 Sep 2023 14:12:02 +0530
Message-ID: <20230929084209.3033093-2-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: p-pCxQSYsWdBXDBznGtYfr5qXXYi0UQU
X-Proofpoint-ORIG-GUID: p-pCxQSYsWdBXDBznGtYfr5qXXYi0UQU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-29_07,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=970 spamscore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 impostorscore=0 clxscore=1015 adultscore=0 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309290074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_014307_252103_914A317E 
X-CRM114-Status: GOOD (  17.13  )
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

Document the Qualcomm USB3 22ull UNIPHY present in IPQ5332.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
---
 .../bindings/phy/qcom,ipq5332-usb-uniphy.yaml | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-uniphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-uniphy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-uniphy.yaml
new file mode 100644
index 000000000000..90434cee9cdd
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-uniphy.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,ipq5332-usb-uniphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm USB Super-Speed UNIPHY
+
+maintainers:
+  - Praveenkumar I <quic_ipkumar@quicinc.com>
+  - Varadarajan Narayanan <quic_varada@quicinc.com>
+
+description:
+  USB Super-Speed UNIPHY found in Qualcomm IPQ5332, IPQ5018 SoCs.
+
+properties:
+  compatible:
+    items:
+      - const: qcom,ipq5332-usb-ssphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: ahb
+      - const: cfg_ahb
+      - const: pipe
+
+  resets:
+    maxItems: 1
+
+  vdd-supply:
+    description:
+      Phandle to 5V regulator supply to PHY digital circuit.
+
+  qcom,phy-usb-mux-sel:
+    description: PHY Mux Selection for USB
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle of TCSR syscon
+          - description: offset of PHY Mux selection register
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
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
+    usb-phy@4b0000 {
+        compatible = "qcom,ipq5332-usb-uniphy";
+        reg = <0x4b0000 0x800>;
+
+        clocks = <&gcc GCC_PCIE3X1_PHY_AHB_CLK>,
+                 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
+                 <&gcc GCC_USB0_PIPE_CLK>;
+        clock-names = "ahb",
+                      "cfg_ahb",
+                      "pipe";
+
+        resets =  <&gcc GCC_USB0_PHY_BCR>;
+
+        #clock-cells = <0>;
+        clock-output-names = "usb0_pipe_clk_src";
+
+        #phy-cells = <0>;
+
+        qcom,phy-usb-mux-sel = <&tcsr 0x10540>;
+
+        vdd-supply = <&regulator_fixed_5p0>;
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
