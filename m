Return-Path: <SRS0=Fgqk=PV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47DABC433FE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 02:59:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 109F060F0F
	for <linux-phy@archiver.kernel.org>; Tue,  2 Nov 2021 02:59:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 109F060F0F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYJl4Gad8XkKearFS9expeyReV+o9EXgJpkPLQfFwPo=; b=sjss4/eDT8R5Rm
	mwSM1RcufC3qreQ7UVKX5kQ+GC3N3HXBm1eLp1X0ZEIJjZYwy0Uai/bgPjo9V+d89CMw3SbZIJRiM
	mAdKBgR7VFfOoCtU9e1dqsELjV8Br1SqeJdJ87N8cYl7/W8YR5z6dQL3/8dIppUTwI81XgY2ode3u
	SJq9eQo5GbT/jtbUPSBOPW0okdutjw1lH3ceO2dBmsJSZzWNh9XJFzNk9VU0Y8h2qdlV5p0VfPFYE
	tjeutkLP78Nf2ve9Mn6Q7ZY+XXhEYs7IEMG5GxZhUBhnjNliT5EYObzpCV9qNXGxW2a7Wbck6LHE9
	3j5bpOw64CrrjT3JWqFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhk0w-000M4o-IZ; Tue, 02 Nov 2021 02:59:06 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhk0R-000LtT-O9; Tue, 02 Nov 2021 02:58:37 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 88E771A016F;
 Tue,  2 Nov 2021 03:58:34 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 26C5F1A010E;
 Tue,  2 Nov 2021 03:58:34 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 61011183AD0B;
 Tue,  2 Nov 2021 10:58:32 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, marcel.ziswiler@toradex.com, tharvey@gateworks.com,
 kishon@ti.com, vkoul@kernel.org, robh@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v5 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
Date: Tue,  2 Nov 2021 10:32:29 +0800
Message-Id: <1635820355-27009-3-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1635820355-27009-1-git-send-email-hongxing.zhu@nxp.com>
References: <1635820355-27009-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_195836_087150_6B145739 
X-CRM114-Status: GOOD (  13.15  )
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

Add dt-binding for the standalone i.MX8 PCIe PHY driver.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Tested-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Reviewed-by: Tim Harvey <tharvey@gateworks.com>
Tested-by: Tim Harvey <tharvey@gateworks.com>
---
 .../bindings/phy/fsl,imx8-pcie-phy.yaml       | 95 +++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
new file mode 100644
index 000000000000..b9f89e343b0b
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8 SoC series PCIe PHY Device Tree Bindings
+
+maintainers:
+  - Richard Zhu <hongxing.zhu@nxp.com>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - fsl,imx8mm-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PHY module clock
+
+  clock-names:
+    items:
+      - const: ref
+
+  resets:
+    items:
+      - description: Phandles to PCIe-related reset lines exposed by SRC
+          IP block.
+
+  reset-names:
+    items:
+      - const: pciephy
+
+  fsl,refclk-pad-mode:
+    description: |
+      Specifies the mode of the refclk pad used. It can be UNUSED(PHY
+      refclock is derived from SoC internal source), INPUT(PHY refclock
+      is provided externally via the refclk pad) or OUTPUT(PHY refclock
+      is derived from SoC internal source and provided on the refclk pad).
+      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants
+      to be used.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 0, 1, 2 ]
+
+  fsl,tx-deemph-gen1:
+    description: Gen1 De-emphasis value (optional required).
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+
+  fsl,tx-deemph-gen2:
+    description: Gen2 De-emphasis value (optional required).
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+
+  fsl,clkreq-unsupported:
+    type: boolean
+    description: A boolean property indicating the CLKREQ# signal is
+      not supported in the board design (optional)
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - fsl,refclk-pad-mode
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+    #include <dt-bindings/phy/phy-imx8-pcie.h>
+    #include <dt-bindings/reset/imx8mq-reset.h>
+
+    pcie_phy: pcie-phy@32f00000 {
+            compatible = "fsl,imx8mm-pcie-phy";
+            reg = <0x32f00000 0x10000>;
+            clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
+            clock-names = "ref";
+            assigned-clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
+            assigned-clock-rates = <100000000>;
+            assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_100M>;
+            resets = <&src IMX8MQ_RESET_PCIEPHY>;
+            reset-names = "pciephy";
+            fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+            #phy-cells = <0>;
+    };
+...
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
