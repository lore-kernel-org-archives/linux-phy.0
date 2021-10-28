Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22206C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 07:53:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CEE3060724
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 07:53:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CEE3060724
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/6HRgPP05GGyjGWdcH0FdeKv3z3eSDa50cGJQraij/Q=; b=LrczjuC298qGyt
	RtlQ6CEYePXFA0ZQKxgCwSQx9I9ecEckDwK9u/sh1ZNNM5n+rqDdTqqrpvj6Iv5eYuRrG66na3PQc
	sHuiho4TzpDoaSiq30Il2pHyu2mkzG0knXiZ8SwoB104a15VmHizqsUuANn7OkXcIKpx0EeUKzOpj
	l1U4oaj6OrPMoaNrGmgUQUMFU+VveV/z+4rm7lKYerAOue01WMGVKQH+1aef8vQu03RbQQ3Zna7u8
	6trVM4VGATMRwL4mdB3DxBSguZjtmW1h8nsmPIP2ZOgIWH2VyoHOdlupKeQnw37/yAoHeJBqv8TFm
	2GKBsKpyG1TG/tqo570w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mg0ET-007AhK-BG; Thu, 28 Oct 2021 07:53:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mg0Dg-007ALU-Jp; Thu, 28 Oct 2021 07:53:06 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5E9A92003D6;
 Thu, 28 Oct 2021 09:53:03 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F0576200388;
 Thu, 28 Oct 2021 09:53:02 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 90073183AC94;
 Thu, 28 Oct 2021 15:53:00 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, marcel.ziswiler@toradex.com, tharvey@gateworks.com,
 kishon@ti.com, vkoul@kernel.org, robh@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v4 2/8] dt-bindings: phy: Add imx8 pcie phy driver support
Date: Thu, 28 Oct 2021 15:27:11 +0800
Message-Id: <1635406037-20900-3-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1635406037-20900-1-git-send-email-hongxing.zhu@nxp.com>
References: <1635406037-20900-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_005304_971302_3A03D803 
X-CRM114-Status: GOOD (  12.20  )
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
