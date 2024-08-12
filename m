Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 527F4C52D7C
	for <linux-phy@archiver.kernel.org>; Mon, 12 Aug 2024 12:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CO7cIzQJDdfMI6NU0viYr+xYrM2E45ClCBeycMWve+Y=; b=Tkf27HtaJZPZE7
	3dOGYPSR2uPk6jrBCZYKZzxWU+iItAhN55PcsIz1Ui6L8LO5Bx6Ib/SbJuC1ihgJK/Ig0RAOYj/zZ
	GQR5Ol02nShwsG3N6b1XGTuMnlBm1vrLlJXEKEu9kCqAM1n3Q/24re/RFiHiDrZfIOuKvKZMayswF
	azMb0mOcrROEKhIr3iH1RKYnk7v5BTbDLILGppedUiMKNkStr/Swze2+g1m8z2Hk1ns0NLJqi+6Yk
	X6OSHPOB4i/YQ7F3SKJ4/aAPU0MGufVD/rqr3Y3DHTsPUk6wUKW5OEeYyGkVSDOs/+3865gjLtJxN
	AFzUV9WNVFxbR/DlYMnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTrG-00000000DOY-02Wp;
	Mon, 12 Aug 2024 12:09:06 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTpW-00000000Cw0-3ahJ;
	Mon, 12 Aug 2024 12:07:20 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47C7ca6J007051;
	Mon, 12 Aug 2024 14:07:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	h5HXIbUSNNhcd6hKVNeBWDZe8/3tsZjbkAvBXFdJUrI=; b=7GjosLsLboXGunkT
	LlSz7gpkmiKVCFBsKL5P4DyKhE/GBp6kDvM0l9ESo4MT8YgHcn1G7torIeA29Lv4
	9VK8CgoLq6jzrD5NWzm0ZctFUuZmLIS7g+7rytmlV3YEGIAyfuWEX9MZcD6CciQ1
	Wprag2z0J4zJdmCrGGyOqtzmgt1meB72bKn7C7trskqvTishgZl1HQ0m+psFERTT
	n5boz7sofm0c9DBOw9u3xL4vtj1sieS/Q1g+BkYZ5C66rNfMIZaQ7WlRSPKB1vc0
	45JrZDdj3RSnBmoc9KaOf7pWF/WY2GWDsxkgEatTOKpgbPmtZRNgLBq1tk89nZsU
	q4le4Q==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 40xhs0ch87-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Aug 2024 14:07:06 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 045CE4002D;
	Mon, 12 Aug 2024 14:07:02 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 512EF25AF06;
	Mon, 12 Aug 2024 14:06:12 +0200 (CEST)
Received: from localhost (10.129.178.198) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Mon, 12 Aug
 2024 14:06:12 +0200
From: Christian Bruel <christian.bruel@foss.st.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mcoquelin.stm32@gmail.com>, <alexandre.torgue@foss.st.com>,
        <p.zabel@pengutronix.de>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <fabrice.gasnier@foss.st.com>,
        Christian Bruel <christian.bruel@foss.st.com>
Subject: [PATCH 2/5] dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
Date: Mon, 12 Aug 2024 14:05:26 +0200
Message-ID: <20240812120529.3564390-3-christian.bruel@foss.st.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240812120529.3564390-1-christian.bruel@foss.st.com>
References: <20240812120529.3564390-1-christian.bruel@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.129.178.198]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-12_02,2024-08-12_01,2024-05-17_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_050719_317068_ABF0BB39 
X-CRM114-Status: GOOD (  16.24  )
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

Document the bindings for STM32 COMBOPHY interface, used to support
the PCIe and USB3 stm32mp25 drivers.
Following entries can be used to tune caracterisation parameters
 - st,output-micro-ohms and st,output-vswing-microvolt bindings entries
to tune the impedance and voltage swing using discrete simulation results
 - st, phy_rx0_eq register to set the internal rx equalizer filter value.

Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
---
 .../bindings/phy/st,stm32-combophy.yaml       | 178 ++++++++++++++++++
 1 file changed, 178 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml

diff --git a/Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml b/Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
new file mode 100644
index 0000000000000..6a53ab834b2a7
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
@@ -0,0 +1,178 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/st,stm32-combophy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32MP25 USB3/PCIe COMBOPHY
+
+maintainers:
+  - Christian Bruel <christian.bruel@foss.st.com>
+
+description: |
+  Single lane PHY shared (exclusive) between the USB3 and PCIe controllers.
+  Supports 5Gbit/s for USB3 and PCIe gen2 or 2.5Gbit/s for PCIe gen1.
+
+properties:
+  compatible:
+    const: st,stm32mp25-combophy
+
+  reg:
+    maxItems: 1
+
+  st,syscfg:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: Phandle to the SYSCON entry required for configuring PCIe
+      or USB3.
+
+  "#phy-cells":
+    const: 1
+    description: |
+      The cells contain the following arguments.
+
+      - description: The PHY type
+          enum:
+            - PHY_TYPE_USB3
+            - PHY_TYPE_PCIE
+
+  clocks:
+    anyOf:
+      - description: apb-clk Bus clock mandatory to access registers.
+      - description: ker-clk Internal RCC reference clock for USB3 or PCIe
+      - description: pad-clk Optional on board clock input for PCIe only. Typically an
+                     external 100Mhz oscillator wired on dedicated CLKIN pad. Used as reference
+                     clock input instead of the ker-clk
+
+  clock-names:
+    oneOf:
+      - items:
+          - const: apb-clk
+          - const: ker-clk
+
+      - items:
+          - const: apb-clk
+          - const: ker-clk
+          - const: pad-clk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: phy-rst
+
+  power-domains:
+    maxItems: 1
+
+  st,ssc-on:
+    type: boolean
+    description:
+      A boolean property whose presence indicates that the SSC for common clock
+      needs to be set.
+
+  st,rx_equalizer:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 7
+    default: 2
+    description:
+      A 3 bit value describing internal filter settings for the RX equalizer.
+
+  st,output-micro-ohms:
+    minimum: 3999000
+    maximum: 6090000
+    default: 4968000
+    description:
+      A value property to tune the Single Ended Output Impedance, simulations results
+      at 25C for a VDDP=0.8V. The hardware accepts discrete values in this range.
+
+  st,output-vswing-microvolt:
+    minimum: 442000
+    maximum: 803000
+    default: 803000
+    description:
+      A value property in microvolt to tune the Single Ended Output Voltage Swing to change the
+      Vlo, Vhi for a VDDP = 0.8V. The hardware accepts discrete values in this range.
+
+  wakeup-source: true
+
+  interrupts:
+    maxItems: 1
+    description: interrupt used for wakeup
+
+  access-controllers:
+    minItems: 1
+    maxItems: 2
+
+required:
+  - compatible
+  - reg
+  - st,syscfg
+  - '#phy-cells'
+  - resets
+  - reset-names
+  - clocks
+  - clock-names
+
+allOf:
+  - if:
+      required:
+        - wakeup-source
+    then:
+      anyOf:
+        - required: [interrupts]
+        - required: [interrupts-extended]
+
+additionalProperties: false
+
+examples:
+  - |
+    // Example 1: COMBOPHY configured to use internal reference clock
+    #include <dt-bindings/clock/st,stm32mp25-rcc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/st,stm32mp25-rcc.h>
+
+    combophy_internal: phy@480c0000 {
+        compatible = "st,stm32mp25-combophy";
+        reg = <0x480c0000 0x1000>;
+        #phy-cells = <1>;
+        clocks = <&rcc CK_BUS_USB3PCIEPHY>, <&rcc CK_KER_USB3PCIEPHY>;
+        clock-names = "apb-clk", "ker-clk";
+        resets = <&rcc USB3PCIEPHY_R>;
+        reset-names = "phy-rst";
+        st,syscfg = <&syscfg>;
+        access-controllers = <&rifsc 67>;
+        power-domains = <&CLUSTER_PD>;
+        wakeup-source;
+        interrupts-extended = <&exti1 45 IRQ_TYPE_EDGE_FALLING>;
+    };
+
+  - |
+    // Example 2: COMBOPHY configured to use extrenal 100MHz reference clock
+    // on CLKIN pad for PCIe
+    #include <dt-bindings/clock/st,stm32mp25-rcc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/st,stm32mp25-rcc.h>
+
+    clocks {
+        pad_clk: pad-clk {
+            #clock-cells = <0>;
+            compatible = "fixed-clock";
+            clock-frequency = <100000000>;
+        };
+    };
+
+    combophy_pad: phy@480c0000 {
+        compatible = "st,stm32mp25-combophy";
+        reg = <0x480c0000 0x1000>;
+        #phy-cells = <1>;
+        clocks = <&rcc CK_BUS_USB3PCIEPHY>, <&rcc CK_KER_USB3PCIEPHY>, <&pad_clk>;
+        clock-names = "apb-clk", "ker-clk", "pad-clk";
+        resets = <&rcc USB3PCIEPHY_R>;
+        reset-names = "phy-rst";
+        st,syscfg = <&syscfg>;
+        access-controllers = <&rifsc 67>;
+        power-domains = <&CLUSTER_PD>;
+        wakeup-source;
+        interrupts-extended = <&exti1 45 IRQ_TYPE_EDGE_FALLING>;
+    };
+...
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
