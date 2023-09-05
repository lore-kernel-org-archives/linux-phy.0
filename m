Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31AC4CA0FE9
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 04:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FYwJkmNcxRhrWmdJO0ADfufh+g8SB8KSDxuCqtQxj4=; b=cIBeLRvvH52F9p
	FAuvrUnOUxZ1BeryljROCkcoFyTTLAi40zdo8EMZZ4lQZ+HDSIGZXFGhwXtDjbuu14kYeafEWMS/+
	zNaHJjjQ0YhNrtxmM5ySgwpHheoYTWgBVK/xH9yu8PqFy8qLbOtOLQG5r9O05HKb2fLkR+V1fojRH
	bB8yzoZFDjoFzzIhDU3P2sqtVvvPUFQq5dvK1BbBKspGSPMC+V9dArwL9HakXm11ZTzksQCJhRD89
	zNBsnMdtW8PW4WS6zLq4YfgbslHTn28G0m4VNRUbCZ+6x5jIor/hrjVdWv+ygf6evSPtyAfhxn+Sk
	yed84OFZHxYvVFPh/kGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdNv6-005GMw-2E;
	Tue, 05 Sep 2023 04:44:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdNv3-005GL3-2V
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 04:44:07 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3854OJee026425;
	Tue, 5 Sep 2023 04:43:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=yVvaRKqMJlk3UqpP5cZkj/ICa0vGp4lU78SSR0qx4m0=;
 b=BShcjV7/woXTvChHx25U4Z+UIDhv6f2y6/s0Dm8K4MqCgrVWWMifuvXMr9QXp1a2O2KL
 7vQnBmLXDyn0Vq8e6ZD+sz8dhB9LAnm08XqLlPU+9X/14yoUPb9keP0Htv/0wpHv/BnF
 yZO7Z47E8uCQv+2QI/eT/u5J9GkOvP1aYctPkmPDZ0WIhc+u1BlsbVYsRq3oGHp+uHBj
 8oL+tDTIYuKSOplNEX0dpY9Ci2oHJ84kGiarjd0ZJ0b6bOmWcShv2ZZQ9O8QYelvqWhR
 DI51y8Kr67ld7mAvAo97R9dLFN23rGDyc9eFpml3akr4KDhrYTSx1P/40rEHTvTIwzmQ hg== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3swfae1g7y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Sep 2023 04:43:56 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3854hqu0013110;
	Tue, 5 Sep 2023 04:43:52 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3sux4kav1g-1;
	Tue, 05 Sep 2023 04:43:52 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3854hqnT013104;
	Tue, 5 Sep 2023 04:43:52 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3854hpCl013099;
	Tue, 05 Sep 2023 04:43:52 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 69BC31D04; Tue,  5 Sep 2023 10:13:51 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        gregkh@linuxfoundation.org, abel.vesa@linaro.org,
        quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, kernel@quicinc.com,
        Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH 2/5] dt-bindings: phy: Add qcom,sdx75-qmp-usb3-uni schema file
Date: Tue,  5 Sep 2023 10:13:45 +0530
Message-Id: <1693889028-6485-3-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: EPJMKl6kyAFe1sOYpP8Y0jxTOP-Pr_Tl
X-Proofpoint-ORIG-GUID: EPJMKl6kyAFe1sOYpP8Y0jxTOP-Pr_Tl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-05_03,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 phishscore=0 priorityscore=1501 mlxlogscore=999 suspectscore=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 mlxscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2309050041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_214405_821313_726AC2EB 
X-CRM114-Status: GOOD (  16.84  )
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

Add a dt-binding schema for SDX75 SoC.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
---
 .../bindings/phy/qcom,sdx75-qmp-usb3-uni-phy.yaml  | 106 +++++++++++++++++++++
 1 file changed, 106 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sdx75-qmp-usb3-uni-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,sdx75-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sdx75-qmp-usb3-uni-phy.yaml
new file mode 100644
index 0000000..2ae0710
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sdx75-qmp-usb3-uni-phy.yaml
@@ -0,0 +1,106 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sdx75-qmp-usb3-uni-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP PHY controller (USB, SDX75)
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
+      - qcom,sdx75-qmp-usb3-uni-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: aux
+      - const: cfg_ahb
+      - const: ref
+      - const: pipe
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy
+      - const: common
+
+  vdda-phy-supply: true
+
+  vdda-pll-supply: true
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
+  - power-domains
+  - resets
+  - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
+  - "#clock-cells"
+  - clock-output-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-sdx75.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+
+    phy@ff6000 {
+      compatible = "qcom,sdx75-qmp-usb3-uni-phy";
+      reg = <0x0ff6000 0x2000>;
+
+      clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
+               <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
+               <&gcc GCC_USB2_CLKREF_EN>,
+               <&gcc GCC_USB3_PHY_PIPE_CLK>;
+      clock-names = "aux",
+                    "cfg_ahb",
+                    "ref",
+                    "pipe";
+
+      power-domains = <&gcc GCC_USB3_PHY_GDSC>;
+
+      resets = <&gcc GCC_USB3PHY_PHY_BCR>,
+               <&gcc GCC_USB3_PHY_BCR>;
+      reset-names = "phy",
+                    "common";
+
+      vdda-phy-supply = <&vreg_l4b_0p88>;
+      vdda-pll-supply = <&vreg_l1b_1p2>;
+
+      #clock-cells = <0>;
+      clock-output-names = "usb3_uni_phy_pipe_clk_src";
+
+      #phy-cells = <0>;
+    };
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
