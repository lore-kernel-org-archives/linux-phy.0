Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3524EC02194
	for <linux-phy@archiver.kernel.org>; Thu,  6 Feb 2025 12:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUVifM7rPhMmkyIVbkp5uLJOersPqtOaj26NSIEuOhc=; b=BOl/xR0eMNjKgn
	o+zaqSiMo6prayfZQONA0SqZ4NzHMT+ceAhZnXH3zEv2pU97FgeE+kva7be+kb1d/2V2LhFn72myT
	CweX0/1PhwJ2rzPRPfUi0m7JdoAW7bnkNiQfoCMPVMgFAvKQUfhMyBN8a20vUHZQ4tKoK546tfXZ6
	on45QkYMednvqEOfsetvG2ciZsbtE+53xgS6cMElGtGUGWiiXHHfQGBtFOnwFwRPvWlcZAY4fGaYA
	qi31xyJgjwLdVe8NXkxkCDEBx0pkht8OPxTmzn0FfrwfGvGIFqf10r9mdwe1YVlJxVMeB/XLTdQ4s
	vCTF+4DIINvKuxa+yIrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tg0t3-00000006GEo-3gQy;
	Thu, 06 Feb 2025 12:21:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tg0q4-00000006Fk8-1nQi
	for linux-phy@lists.infradead.org;
	Thu, 06 Feb 2025 12:18:37 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51682cif003865;
	Thu, 6 Feb 2025 12:18:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PwtYak/t8SAuznkwdylC4P9QNNgY0KZtvTLFAk0VUwk=; b=Eljwh2xpVTKCCY8y
	u8kYlzJId+IMrXRXjrUIwvR5/7JVW153DuzIKwDCgb+1LSsM/UdHi8cFGZ6vX8Rc
	M4RfRqdecjO2IMJ+LNg4zEBjEr4K9Waiw8PnNO8JHOt47oh+X8xSqRuhNFd+Wg+d
	s/pePeQ4BjWzCbKPNr3EeRjgjXnYUDM2d0c6xaJt+PHKJpi9grIf69MPvzxCfk7q
	5aLKYS/jLrwS2lOk322soDgDiqeXNa8Jbif28oaAiiHtAUYIceK3xsp48dkx/X5W
	gNx+9LcFg4K6rHkdlH+Jl/XkYmvIBEHG9QpCn9W3yHV2LfRf/tvDOn8gTBZNJO1n
	t1x0qA==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ms7n0m2u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 06 Feb 2025 12:18:27 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 516CIQ39008975
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 6 Feb 2025 12:18:26 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 6 Feb 2025 04:18:20 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <p.zabel@pengutronix.de>,
        <quic_nsekar@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <quic_varada@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v10 1/7] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe uniphy
Date: Thu, 6 Feb 2025 17:47:57 +0530
Message-ID: <20250206121803.1128216-2-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250206121803.1128216-1-quic_varada@quicinc.com>
References: <20250206121803.1128216-1-quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: RO5GAePyFtNXbFhknrJjTb6edD9m8ONN
X-Proofpoint-GUID: RO5GAePyFtNXbFhknrJjTb6edD9m8ONN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-06_03,2025-02-05_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 bulkscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=999 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502060102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_041836_584349_1A06A741 
X-CRM114-Status: GOOD (  15.73  )
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
