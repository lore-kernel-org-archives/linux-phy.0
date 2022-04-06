Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4A35C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 16:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJnpSdvNr4ClWNB+uusV/iqwgzW8j34aZFHC4z5ZpMQ=; b=hJZPIMz0yYr0vS
	TqP8fhZrLlHsAYw8C3sCOMAna5MzZY9ootEFj62hIZ1yK71mhYF7mdNkravGLDOE75oynCmuRbsRD
	0r5zKJLWvPCz3vXAkA80ETI0l7nKaIjpYx7dl+wUAF2WjesVJ/gcVhwCJKXxZxwBze7Ux3gL0XkTl
	0yybCRct3yWMgmxoY3fs9U0qqmmPcauf5k9pIxj7oRZ6qRELFul6/chYpArhPbh9NQFEZ6+8tyYq0
	n2O0NVZ0yloXlwGMDMUeRkxVQKjZAwhaFNkuVqX3+/iCcyRiMj3+uNGs6NdUIT2FzXibqb8BiVxcK
	5+2Q2DGfMde+KDH2c8HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc87c-0072pq-AM; Wed, 06 Apr 2022 16:03:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc86J-0072AX-QB
 for linux-phy@lists.infradead.org; Wed, 06 Apr 2022 16:01:46 +0000
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1nc862-0002Pq-SK; Wed, 06 Apr 2022 18:01:26 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Foss <robert.foss@linaro.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: [PATCH v0 02/10] dt-bindings: display: imx: add binding for i.MX8MP
 HDMI TX
Date: Wed,  6 Apr 2022 18:01:15 +0200
Message-Id: <20220406160123.1272911-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220406160123.1272911-1-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_090143_933252_47BF6B7A 
X-CRM114-Status: GOOD (  11.90  )
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

The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
core with a little bit of SoC integration around it.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
new file mode 100644
index 000000000000..578062b6d64d
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/fsl,imx8mp-hdmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MP DWC HDMI TX Encoder
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+description: |
+  The HDMI transmitter is a Synopsys DesignWare HDMI 2.0 TX controller IP.
+
+allOf:
+  - $ref: ../bridge/synopsys,dw-hdmi.yaml#
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mp-hdmi
+
+  reg:
+    maxItems: 1
+
+  reg-io-width:
+    const: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - {}
+      - {}
+      - const: cec
+      - const: pix
+
+  interrupts:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    hdmi@32fd8000 {
+        compatible = "fsl,imx8mp-hdmi";
+        reg = <0x32fd8000 0x7eff>;
+        interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+                 <&clk IMX8MP_CLK_HDMI_REF_266M>,
+                 <&clk IMX8MP_CLK_32K>,
+                 <&hdmi_tx_phy>;
+        clock-names = "iahb", "isfr", "cec", "pix";
+        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX>;
+        reg-io-width = <1>;
+    };
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
