Return-Path: <SRS0=Vlgz=MP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7643C4320A
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 13:57:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8784F60F02
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 13:57:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8784F60F02
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z3bKVYK1uGE51XHeaWG8G7ByAzXaBolbjNatWoWUgn8=; b=smTQ7l2Tzd72TD
	IjiWjUv1hwsyoApaJBpg7T5HefGK8Ae8zl/0xrOipIavMbdGQ0fMAtXg7G5HwCJclCQNkgs1sJ9NT
	7YF+oOBi8bYGbZ1FzcDNBjEDwANAk06uGZmPrzXVxZz1Ro+gSbvDFmfsg6gXJhXROoqjppE8Q4py1
	c2O26QCJ5kHBg96H0mD8ZVQvU1Cf402UVkAgezwm7ViVbg0NKGFULwKL8DTnoGQaMtlo1Tiz5/K1s
	3vs2CAN5uzm1WGuZpEU04sVYR7+Slu9LmX+Qa2BojXGaigxOho36pRrNiE5RVvaVBayeH8qJLzsA5
	NRwaE5IdhwlPL1Bk7fnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6vgZ-004wg9-3l; Fri, 23 Jul 2021 13:57:55 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6vgU-004wew-Ej
 for linux-phy@lists.infradead.org; Fri, 23 Jul 2021 13:57:53 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 16NDvkd6114744;
 Fri, 23 Jul 2021 08:57:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1627048666;
 bh=UrlhvU1cbISnK3sc3BDNd1cDdK5Y7MGQS101DTVOkmw=;
 h=From:To:CC:Subject:Date;
 b=JoHhlWOPd6LH0LcpClGET4bhNoFP5m4o6OhQJNfyIvC2LR6UWZPe4K8WFOoLIvzWC
 sOq3D/Goxod8iF4E3C/7XQQm/dFw27lH8RhmRt4vDbSzrJ4zZ6d67E0Kl00tobftxU
 GZ6PK2OTGyBW4mekEbpK1c5I6BvpbVbqIllgclro=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 16NDvkdU123798
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 23 Jul 2021 08:57:46 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 23
 Jul 2021 08:56:09 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 23 Jul 2021 08:56:10 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 16NDu6NP058671;
 Fri, 23 Jul 2021 08:56:07 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>
CC: <lokeshvutla@ti.com>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] dt-bindings: phy: Convert AM654 SERDES bindings to YAML
Date: Fri, 23 Jul 2021 19:26:05 +0530
Message-ID: <20210723135605.23572-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_065750_679007_1DB5FF9C 
X-CRM114-Status: GOOD (  20.59  )
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

Convert SERDES dt-bindings for TI's AM654 SoC to YAML binding.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../bindings/phy/ti,phy-am654-serdes.txt      |  82 --------------
 .../bindings/phy/ti,phy-am654-serdes.yaml     | 103 ++++++++++++++++++
 2 files changed, 103 insertions(+), 82 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt
 create mode 100644 Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt b/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt
deleted file mode 100644
index 64b286d2d398..000000000000
--- a/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.txt
+++ /dev/null
@@ -1,82 +0,0 @@
-TI AM654 SERDES
-
-Required properties:
- - compatible: Should be "ti,phy-am654-serdes"
- - reg : Address and length of the register set for the device.
- - #phy-cells: determine the number of cells that should be given in the
-	phandle while referencing this phy. Should be "2". The 1st cell
-	corresponds to the phy type (should be one of the types specified in
-	include/dt-bindings/phy/phy.h) and the 2nd cell should be the serdes
-	lane function.
-	If SERDES0 is referenced 2nd cell should be:
-		0 - USB3
-		1 - PCIe0 Lane0
-		2 - ICSS2 SGMII Lane0
-	If SERDES1 is referenced 2nd cell should be:
-		0 - PCIe1 Lane0
-		1 - PCIe0 Lane1
-		2 - ICSS2 SGMII Lane1
- - power-domains: As documented by the generic PM domain bindings in
-	Documentation/devicetree/bindings/power/power_domain.txt.
- - clocks: List of clock-specifiers representing the input to the SERDES.
-	Should have 3 items representing the left input clock, external
-	reference clock and right input clock in that order.
- - clock-output-names: List of clock names for each of the clock outputs of
-	SERDES. Should have 3 items for CMU reference clock,
-	left output clock and right output clock in that order.
- - assigned-clocks: As defined in
-	Documentation/devicetree/bindings/clock/clock-bindings.txt
- - assigned-clock-parents: As defined in
-	Documentation/devicetree/bindings/clock/clock-bindings.txt
- - #clock-cells: Should be <1> to choose between the 3 output clocks.
-	Defined in Documentation/devicetree/bindings/clock/clock-bindings.txt
-
-   The following macros are defined in dt-bindings/phy/phy-am654-serdes.h
-   for selecting the correct reference clock. This can be used while
-   specifying the clocks created by SERDES.
-	=> AM654_SERDES_CMU_REFCLK
-	=> AM654_SERDES_LO_REFCLK
-	=> AM654_SERDES_RO_REFCLK
-
- - mux-controls: Phandle to the multiplexer that is used to select the lane
-	function. See #phy-cells above to see the multiplex values.
-
-Example:
-
-Example for SERDES0 is given below. It has 3 clock inputs;
-left input reference clock as indicated by <&k3_clks 153 4>, external
-reference clock as indicated by <&k3_clks 153 1> and right input
-reference clock as indicated by <&serdes1 AM654_SERDES_LO_REFCLK>. (The
-right input of SERDES0 is connected to the left output of SERDES1).
-
-SERDES0 registers 3 clock outputs as indicated in clock-output-names. The
-first refers to the CMU reference clock, second refers to the left output
-reference clock and the third refers to the right output reference clock.
-
-The assigned-clocks and assigned-clock-parents is used here to set the
-parent of left input reference clock to MAINHSDIV_CLKOUT4 and parent of
-CMU reference clock to left input reference clock.
-
-serdes0: serdes@900000 {
-	compatible = "ti,phy-am654-serdes";
-	reg = <0x0 0x900000 0x0 0x2000>;
-	reg-names = "serdes";
-	#phy-cells = <2>;
-	power-domains = <&k3_pds 153>;
-	clocks = <&k3_clks 153 4>, <&k3_clks 153 1>,
-			<&serdes1 AM654_SERDES_LO_REFCLK>;
-	clock-output-names = "serdes0_cmu_refclk", "serdes0_lo_refclk",
-				"serdes0_ro_refclk";
-	assigned-clocks = <&k3_clks 153 4>, <&serdes0 AM654_SERDES_CMU_REFCLK>;
-	assigned-clock-parents = <&k3_clks 153 8>, <&k3_clks 153 4>;
-	ti,serdes-clk = <&serdes0_clk>;
-	mux-controls = <&serdes_mux 0>;
-	#clock-cells = <1>;
-};
-
-Example for PCIe consumer node using the SERDES PHY specifier is given below.
-&pcie0_rc {
-        num-lanes = <2>;
-        phys = <&serdes0 PHY_TYPE_PCIE 1>, <&serdes1 PHY_TYPE_PCIE 1>;
-        phy-names = "pcie-phy0", "pcie-phy1";
-};
diff --git a/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml b/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml
new file mode 100644
index 000000000000..62dcb84c08aa
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,phy-am654-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI AM654 SERDES binding
+
+description:
+  This binding describes the TI AM654 SERDES. AM654 SERDES can be configured
+  to be used with either PCIe or USB or SGMII.
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+
+properties:
+  compatible:
+    enum:
+      - ti,phy-am654-serdes
+
+  reg:
+    maxItems: 1
+
+  reg-names:
+    items:
+      - const: serdes
+
+  power-domains:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+    description:
+      Three input clocks referring to left input reference clock, refclk and right input reference
+      clock.
+
+  assigned-clocks:
+    $ref: "/schemas/types.yaml#/definitions/phandle-array"
+  assigned-clock-parents:
+    $ref: "/schemas/types.yaml#/definitions/phandle-array"
+
+  '#phy-cells':
+    const: 2
+    description:
+      The 1st cell corresponds to the phy type (should be one of the types specified in
+      include/dt-bindings/phy/phy.h) and the 2nd cell should be the serdes lane function.
+
+  ti,serdes-clk:
+    description: Phandle to the SYSCON entry required for configuring SERDES clock selection.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  '#clock-cells':
+    const: 1
+
+  mux-controls:
+    maxItems: 1
+    description: Phandle to the SYSCON entry required for configuring SERDES lane function.
+
+  clock-output-names:
+    oneOf:
+      - description: Clock output names for SERDES 0
+        items:
+          - const: serdes0_cmu_refclk
+          - const: serdes0_lo_refclk
+          - const: serdes0_ro_refclk
+      - description: Clock output names for SERDES 1
+        items:
+          - const: serdes1_cmu_refclk
+          - const: serdes1_lo_refclk
+          - const: serdes1_ro_refclk
+
+required:
+  - compatible
+  - reg
+  - power-domains
+  - clocks
+  - assigned-clocks
+  - assigned-clock-parents
+  - ti,serdes-clk
+  - mux-controls
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/phy/phy-am654-serdes.h>
+
+    serdes0: serdes@900000 {
+      compatible = "ti,phy-am654-serdes";
+      reg = <0x900000 0x2000>;
+      reg-names = "serdes";
+      #phy-cells = <2>;
+      power-domains = <&k3_pds 153>;
+      clocks = <&k3_clks 153 4>, <&k3_clks 153 1>,
+               <&serdes1 AM654_SERDES_LO_REFCLK>;
+      clock-output-names = "serdes0_cmu_refclk", "serdes0_lo_refclk", "serdes0_ro_refclk";
+      assigned-clocks = <&k3_clks 153 4>, <&serdes0 AM654_SERDES_CMU_REFCLK>;
+      assigned-clock-parents = <&k3_clks 153 8>, <&k3_clks 153 4>;
+      ti,serdes-clk = <&serdes0_clk>;
+      mux-controls = <&serdes_mux 0>;
+      #clock-cells = <1>;
+    };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
