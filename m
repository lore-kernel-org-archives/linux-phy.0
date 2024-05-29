Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B60C9C25B75
	for <linux-phy@archiver.kernel.org>; Wed, 29 May 2024 06:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28js7TbYyE3xatE08a+KnsEE7F+qZRo+EYhxAXM7Rgw=; b=qeIbieWWhU7Ipn
	MJmieMIetxa/2rBXAawmmp6nHVuBzz1o4wOF0VDF9tDSWaa8i9ChE5HD4F1n0CcpimxQTBvSlTlPa
	XJ7ne/1u4+npzc2hdGjX0ZmeRBh5tVZ1ZivWZ6nFr0lNVKV+t3bdprT6WXc1sOS2C1s7j6afyrOXc
	2vBBPGSWbBqESx5VlRJf5JLdnbNMn3J2Xyai27RcO9+7CfHO+G/HJ/91gqci6RNIdE2z4Hu0debD+
	oX3suvljRjnV/6z06pSuPZ9/1KqytR6CWAgLxLOnj7Fnfm0BNP1GnEuufMApPMI1HeMUL4ALGbop1
	T3t+hFa8bHNcCRXRdzlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCe3-00000002yzR-1iQm;
	Wed, 29 May 2024 06:18:43 +0000
Received: from inva021.nxp.com ([92.121.34.21])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCe0-00000002yyD-1QZe;
	Wed, 29 May 2024 06:18:41 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AA2F820151F;
	Wed, 29 May 2024 08:18:36 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 22DFC201529;
	Wed, 29 May 2024 08:18:36 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 2974B181D0E3;
	Wed, 29 May 2024 14:18:34 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: conor@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	frank.li@nxp.com,
	conor+dt@kernel.org
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: [PATCH v7 1/2] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY binding
Date: Wed, 29 May 2024 14:02:44 +0800
Message-Id: <1716962565-2084-2-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1716962565-2084-1-git-send-email-hongxing.zhu@nxp.com>
References: <1716962565-2084-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_231840_673747_CA525458 
X-CRM114-Status: GOOD (  14.11  )
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
Introduce one HSIO configuration 'fsl,hsio-cfg', which need be set at
initialization according to board design.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/phy/fsl,imx8qm-hsio.yaml         | 164 ++++++++++++++++++
 1 file changed, 164 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml
new file mode 100644
index 000000000000..147bbfd2cd5f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml
@@ -0,0 +1,164 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8qm-hsio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8QM SoC series High Speed IO(HSIO) SERDES PHY
+
+maintainers:
+  - Richard Zhu <hongxing.zhu@nxp.com>
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8qm-hsio
+      - fsl,imx8qxp-hsio
+  reg:
+    items:
+      - description: Base address and length of the PHY block
+      - description: HSIO control and status registers(CSR) of the PHY
+      - description: HSIO CSR of the controller bound to the PHY
+      - description: HSIO CSR for MISC
+
+  reg-names:
+    items:
+      - const: reg
+      - const: phy
+      - const: ctrl
+      - const: misc
+
+  "#phy-cells":
+    const: 3
+    description:
+      The first defines lane index.
+      The second defines the type of the PHY refer to the include phy.h.
+      The third defines the controller index, indicated which controller
+      is bound to the lane.
+
+  clocks:
+    minItems: 5
+    maxItems: 14
+
+  clock-names:
+    minItems: 5
+    maxItems: 14
+
+  fsl,hsio-cfg:
+    description: |
+      Specifies the use case of the HSIO module in the hardware design.
+      Regarding the design of i.MX8QM HSIO subsystem, HSIO module can be
+      confiured as following three use cases.
+      +---------------------------------------+
+      |                  | i.MX8QM            |
+      |------------------|--------------------|
+      |                  | Lane0| Lane1| Lane2|
+      |------------------|------|------|------|
+      | pciea-x2-sata    | PCIEA| PCIEA| SATA |
+      |------------------|------|------|------|
+      | pciea-x2-pcieb   | PCIEA| PCIEA| PCIEB|
+      |------------------|------|------|------|
+      | pciea-pcieb-sata | PCIEA| PCIEB| SATA |
+      +---------------------------------------+
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [ pciea-x2-sata, pciea-x2-pcieb, pciea-pcieb-sata]
+    default: pciea-pcieb-sata
+
+  fsl,refclk-pad-mode:
+    description:
+      Specifies the mode of the refclk pad used. INPUT(PHY refclock is
+      provided externally via the refclk pad) or OUTPUT(PHY refclock is
+      derived from SoC internal source and provided on the refclk pad).
+      This property not exists means unused(PHY refclock is derived from
+      SoC internal source).
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [ input, output, unused ]
+    default: unused
+
+  power-domains:
+    minItems: 1
+    maxItems: 2
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - fsl,hsio-cfg
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx8qxp-hsio
+    then:
+      properties:
+        clock-names:
+          items:
+            - const: pclk0
+            - const: apb_pclk0
+            - const: phy0_crr
+            - const: ctl0_crr
+            - const: misc_crr
+        power-domains:
+          maxItems: 1
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx8qm-hsio
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
+    phy@5f1a0000 {
+        compatible = "fsl,imx8qxp-hsio";
+        reg = <0x5f1a0000 0x10000>,
+              <0x5f120000 0x10000>,
+              <0x5f140000 0x10000>,
+              <0x5f160000 0x10000>;
+        reg-names = "reg", "phy", "ctrl", "misc";
+        clocks = <&phyx1_lpcg IMX_LPCG_CLK_0>,
+                 <&phyx1_lpcg IMX_LPCG_CLK_4>,
+                 <&phyx1_crr1_lpcg IMX_LPCG_CLK_4>,
+                 <&pcieb_crr3_lpcg IMX_LPCG_CLK_4>,
+                 <&misc_crr5_lpcg IMX_LPCG_CLK_4>;
+        clock-names = "pclk0", "apb_pclk0", "phy0_crr", "ctl0_crr", "misc_crr";
+        power-domains = <&pd IMX_SC_R_SERDES_1>;
+        #phy-cells = <3>;
+        fsl,hsio-cfg = "pciea-pcieb-sata";
+        fsl,refclk-pad-mode = "input";
+    };
+...
-- 
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
