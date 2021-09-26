Return-Path: <SRS0=8nB1=OQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D84B5C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 26 Sep 2021 08:04:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A4AF960FDC
	for <linux-phy@archiver.kernel.org>; Sun, 26 Sep 2021 08:04:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A4AF960FDC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M60gO2O7uRExJ+oejqEob+375/KPU9iZI/MYdpV+tMo=; b=j4w+L1bb/haTCd
	DDVsJZEA/G2r2OY/ETTcAg6YjE7OB9CJmI4It+nknqpY/I9ao8UsXNMSB5V1YmH6cEvcsCg4rAY70
	xJPBGw9VvVLWaIoR4yAwp4V1xf95L9GH09gRERv9v/6iEoP87cBRh7EUDOA+Ay7wFEjNpkKaNN6Uv
	rekvzFW3knBiVoH1heXTCkv4JznfrTntzjy9ds9tb0zGOnPqLKpoRy/OU6GkZ4P1vhWb0Pt9VfvQ+
	/L3Gs1AAQxJFXGPhTPNzv45G98gqNHpk26cCgKMIsE3dXquTBZtTlf5x0VJQltj8yGECYmRL7Yph4
	RMBrFeyS+Cmw1knjw1KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUP8n-0009dd-5l; Sun, 26 Sep 2021 08:04:05 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUP8Q-0009Zc-Oh; Sun, 26 Sep 2021 08:03:44 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 386582019F6;
 Sun, 26 Sep 2021 10:03:39 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 00513200FB1;
 Sun, 26 Sep 2021 10:03:39 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id B7519183AD15;
 Sun, 26 Sep 2021 16:03:37 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, kishon@ti.com, vkoul@kernel.org, robh@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v2 2/4] dt-bindings: phy: add imx8 pcie phy driver support
Date: Sun, 26 Sep 2021 15:39:41 +0800
Message-Id: <1632641983-1455-3-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
References: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210926_010342_979935_96C8FC07 
X-CRM114-Status: GOOD (  11.42  )
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
---
 .../bindings/phy/fsl,imx8-pcie-phy.yaml       | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
new file mode 100644
index 000000000000..fd08897fef82
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
@@ -0,0 +1,67 @@
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
+      - const: phy
+
+  fsl,refclk-pad-mode:
+    description: |
+      Specifies the mode of the refclk pad used. It can be NO_USED(PHY
+      refclock is derived from SoC internal source), INPUT(PHY refclock
+      is provided externally via the refclk pad) or OUTPUT(PHY refclock
+      is derived from SoC internal source and provided on the refclk pad).
+      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants
+      to be used.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 0, 1, 2 ]
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
+
+    pcie_phy: pcie-phy@32f00000 {
+            compatible = "fsl,imx8mm-pcie-phy";
+            reg = <0x32f00000 0x10000>;
+            clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
+            clock-names = "phy";
+            assigned-clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
+            assigned-clock-rates = <100000000>;
+            assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_100M>;
+            fsl,refclk-pad-mode = <1>;
+            #phy-cells = <0>;
+    };
+...
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
