Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03CF5CD1288
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 07:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sm5H3wrzzjp/Bnh/0W1w+kybABKLo94bCdH76AWwYdo=; b=g14igXa7UJyUJu
	vj8jU4y/0FbCeGGAjUq0Xq6kgdGQwjd9z1uUmgzdCRdj4zLiHJJJghMv2/VvGPMLBVWYqToWe/K63
	rNTOZIvJbT42Mh7QkV+4qVKhVKiq/DUBrW57v7ZVxNa68BuCtxPjgLtNVsn56zHCOV+hXjhVzxYWE
	wvWhLVSKANCXWNod4bLwgVDCy54zT/QfggmKylloHMkvjI6sIKGDGXn2kMQ9Bdu5xSArTurpYzYsl
	0q2F+srqnjnk8CZjUyE82GbL9fB5fvDfYmyBH5BlZtuXBmdkZNQ1ImP50SKMNXWutGUF2VkWzk/D/
	+YaId0MMZqrJRqHG7fYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq6yl-0000000HDee-20JK;
	Fri, 29 Mar 2024 07:48:47 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq6ya-0000000HDaY-1h3J;
	Fri, 29 Mar 2024 07:48:38 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6C9241A145E;
	Fri, 29 Mar 2024 08:48:33 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DA4DC1A1458;
	Fri, 29 Mar 2024 08:48:32 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 0394D180222F;
	Fri, 29 Mar 2024 15:48:30 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	frank.li@nxp.com
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: [RFC 1/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY binding
Date: Fri, 29 Mar 2024 15:31:31 +0800
Message-Id: <1711697493-16151-2-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1711697493-16151-1-git-send-email-hongxing.zhu@nxp.com>
References: <1711697493-16151-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_004836_766792_0B9A2E6B 
X-CRM114-Status: GOOD (  13.00  )
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

Add i.MX8QM and i.MX8QXP HSIO SerDes PHY binding.
- Use the controller ID to specify which controller is binded to the
PHY.
- Introduce one HSIO configuration, mandatory required to set
"PCIE_AB_SELECT" and "PHY_X1_EPCS_SEL" during the initialization.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 .../bindings/phy/fsl,imx8q-hsio.yaml          | 143 ++++++++++++++++++
 1 file changed, 143 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml
new file mode 100644
index 000000000000..506551d4d94a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml
@@ -0,0 +1,143 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8q-hsio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8Q SoC series HSIO SERDES PHY
+
+maintainers:
+  - Richard Zhu <hongxing.zhu@nxp.com>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8qxp-serdes
+      - fsl,imx8qm-serdes
+  reg:
+    minItems: 4
+    maxItems: 4
+
+  "#phy-cells":
+    const: 3
+    description: |
+      The first number defines the ID of the PHY contained in the HSIO macro.
+      The second defines controller ID binded to the PHY. The third defines the
+      HSIO configuratons refer to the different use cases. They are defined in
+      dt-bindings/phy/phy-imx8-pcie.h
+
+  reg-names:
+    items:
+      - const: reg
+      - const: phy
+      - const: ctrl
+      - const: misc
+
+  clocks:
+    minItems: 5
+    maxItems: 14
+
+  clock-names:
+    minItems: 5
+    maxItems: 14
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
+  power-domains:
+    description: |
+      i.MX8Q HSIO SerDes power domains. i.MX8QXP has one SerDes power domains.
+      And i.MX8QM has two.
+    minItems: 1
+    maxItems: 2
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - fsl,refclk-pad-mode
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx8qxp-serdes
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: apb_pclk0
+            - const: pclk0
+            - const: phy0_crr
+            - const: ctl0_crr
+            - const: misc_crr
+        power-domains:
+          minItems: 1
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx8qm-serdes
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: pclk0
+            - const: pclk1
+            - const: apb_pclk0
+            - const: apb_pclk1
+            - const: pclk2
+            - const: epcs_tx
+            - const: epcs_rx
+            - const: apb_pclk2
+            - const: phy0_crr
+            - const: phy1_crr
+            - const: ctl0_crr
+            - const: ctl1_crr
+            - const: ctl2_crr
+            - const: misc_crr
+        power-domains:
+          minItems: 2
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8-clock.h>
+    #include <dt-bindings/clock/imx8-lpcg.h>
+    #include <dt-bindings/firmware/imx/rsrc.h>
+    #include <dt-bindings/phy/phy-imx8-pcie.h>
+
+    serdes: phy@5f1a0000 {
+            compatible = "fsl,imx8qxp-serdes";
+            reg = <0x5f1a0000 0x10000>,
+                  <0x5f120000 0x10000>,
+                  <0x5f140000 0x10000>,
+                  <0x5f160000 0x10000>;
+            reg-names = "reg", "phy", "ctrl", "misc";
+            clocks = <&phyx1_lpcg IMX_LPCG_CLK_0>,
+                     <&phyx1_lpcg IMX_LPCG_CLK_4>,
+                     <&phyx1_crr1_lpcg IMX_LPCG_CLK_4>,
+                     <&pcieb_crr3_lpcg IMX_LPCG_CLK_4>,
+                     <&misc_crr5_lpcg IMX_LPCG_CLK_4>;
+            clock-names = "apb_pclk0", "pclk0", "phy0_crr", "ctl0_crr",
+                          "misc_crr";
+            power-domains = <&pd IMX_SC_R_SERDES_1>;
+            #phy-cells = <3>;
+            status = "disabled";
+    };
+...
-- 
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
