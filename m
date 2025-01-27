Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A999C02190
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jan 2025 07:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUVifM7rPhMmkyIVbkp5uLJOersPqtOaj26NSIEuOhc=; b=Z6lMZp6gw+sirp
	yFvgiK9NDcDWiaD2hyvhuOCjCrrD0ujmU8mMaHa58HO79mUvprZXe7jG+TZ7dw7V7kXdtv/H3lV1a
	hdTYvQUu+G0PpoHa22IhMuSZyHOFk/pdmWniG7q1Ah5Vwx7vooJ/PLmgvIigC536v4Qz41aiDxxro
	rJrczer5/Rde7kPn1+rKPcDy5cOjT2ErM+Xf0MVy8TADonmXjmPKhXLmKeqLHfqYQTJ2helhY42tU
	djvYZwVpuNelP5Nn2aajiljsMbRJhoJul7MFCSRPX2ccltSRvc926rgytMtAFuCLjYY/U0lpLWerf
	t2mCONxEYx0BtoK+Hvcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcJYi-00000001neX-3pj7;
	Mon, 27 Jan 2025 07:29:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcJYg-00000001ndq-1PMn
	for linux-phy@lists.infradead.org;
	Mon, 27 Jan 2025 07:29:23 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50R3ShGp001765;
	Mon, 27 Jan 2025 07:29:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PwtYak/t8SAuznkwdylC4P9QNNgY0KZtvTLFAk0VUwk=; b=R21bFBTUvo7kcGbt
	kBZ7GgJ+xchrsA+AY5/HhYO+YAis2crvZWoR5GXxnGr671nESK4u7/Ns26ZnHJBB
	xWa/3LOxSTBXMC3GSxmy3WgNTD8NeKMCPaDRoivs0iN4O1+0gxMsIHhaOLIEGH5H
	tIvpBAR2BFfe4gu670hMXSiPtvT47GRjufB0WkNdXJymIvaG03TLvsTYPr5SUvl0
	aot/Ll0PEUR5sSCtJ56K584Tr/vVeylptMt3BxD5QhvjcwFPxPL+S8zdThEJOWX9
	bz9Nom1ZhbIH1r453fV2ThfoyhJOfb/YS495wGBdXx6M90f9tP6K7Jg1SmtXfjI+
	2CTp9Q==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44e2988ee3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Jan 2025 07:29:14 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50R7TDJS013753
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Jan 2025 07:29:13 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Sun, 26 Jan 2025 23:29:07 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <p.zabel@pengutronix.de>,
        <quic_varada@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <quic_nsekar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 1/7] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe uniphy
Date: Mon, 27 Jan 2025 12:58:44 +0530
Message-ID: <20250127072850.3777975-2-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250127072850.3777975-1-quic_varada@quicinc.com>
References: <20250127072850.3777975-1-quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: wihDw6UqfL0FxEl3m05ds6pEUWmgdCn8
X-Proofpoint-ORIG-GUID: wihDw6UqfL0FxEl3m05ds6pEUWmgdCn8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-27_03,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 mlxlogscore=999 lowpriorityscore=0 spamscore=0 malwarescore=0 phishscore=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501270059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250126_232922_383423_BE52D7E9 
X-CRM114-Status: GOOD (  15.74  )
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

From: Nitheesh Sekar <quic_nsekar@quicinc.com>

Document the Qualcomm UNIPHY PCIe 28LP present in IPQ5332.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v8: Add 'Reviewed-by: Krzysztof Kozlowski'

v7: * Add data type definition to 'num-lanes'

v6: * Fix num-lanes definition
    * Make it mandatory

v5: * Drop '3x1' & '3x2' from compatible string
    * Use 'num-lanes' to differentiate instead of '3x1' or '3x2'
      in compatible string
    * Describe clocks and resets instead of just maxItems

v4: Remove reset-names as the resets are not used individually
    Remove clock-output-names as its usage is removed from driver
    Fix order in the 'required' section

v3: Fix compatible string to be similar to other phys and rename file accordingly
    Fix clocks minItems -> maxItems
    Change one of the maintainer from Sricharan to Varadarajan

v2: Rename the file to match the compatible
    Drop 'driver' from title
    Dropped 'clock-names'
    Fixed 'reset-names'
---
 .../phy/qcom,ipq5332-uniphy-pcie-phy.yaml     | 76 +++++++++++++++++++
 1 file changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
new file mode 100644
index 000000000000..e39168d55d23
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-uniphy-pcie-phy.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,ipq5332-uniphy-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm UNIPHY PCIe 28LP PHY
+
+maintainers:
+  - Nitheesh Sekar <quic_nsekar@quicinc.com>
+  - Varadarajan Narayanan <quic_varada@quicinc.com>
+
+description:
+  PCIe and USB combo PHY found in Qualcomm IPQ5332 SoC
+
+properties:
+  compatible:
+    enum:
+      - qcom,ipq5332-uniphy-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: pcie pipe clock
+      - description: pcie ahb clock
+
+  resets:
+    items:
+      - description: phy reset
+      - description: ahb reset
+      - description: cfg reset
+
+  "#phy-cells":
+    const: 0
+
+  "#clock-cells":
+    const: 0
+
+  num-lanes:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [1, 2]
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - resets
+  - "#phy-cells"
+  - "#clock-cells"
+  - num-lanes
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
+
+    pcie0_phy: phy@4b0000 {
+        compatible = "qcom,ipq5332-uniphy-pcie-phy";
+        reg = <0x004b0000 0x800>;
+
+        clocks = <&gcc GCC_PCIE3X1_0_PIPE_CLK>,
+                 <&gcc GCC_PCIE3X1_PHY_AHB_CLK>;
+
+        resets = <&gcc GCC_PCIE3X1_0_PHY_BCR>,
+                 <&gcc GCC_PCIE3X1_PHY_AHB_CLK_ARES>,
+                 <&gcc GCC_PCIE3X1_0_PHY_PHY_BCR>;
+
+        #clock-cells = <0>;
+
+        #phy-cells = <0>;
+
+        num-lanes = <1>;
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
