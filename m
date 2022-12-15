Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53802C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 15 Dec 2022 20:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4D4EKiPKzoHK3DPVbQqHeZNPdh20xL5QGfhuCnX7X8w=; b=nmunpsWnZc68l1
	XKrrEPfa4v5v/QwNkIH1fT4mds0mp6eWHgchWoVxTviRZkx3UV4z7iiUx8/fv53qy/U1AZLOR4z9v
	HAYyDfqloD2pNb1hHsXXZ9N4Bo4eQXBr13nX1jDaLsVN7iobadzA+2rgldyOnhv/w9/vbWi2j3T7G
	FvhXJ6BR/sPOhwNufZ8v7uovs1ima4bX0kMGY9Xe51Q121dRUy0FzmrGxcCLpbKI8inQ+QYDAqTNW
	dA+QQXJHrAHXkDpYoT2cjMbNamzZidOiJLSAiavPU5mbhEe4xL5/DeXvdoE5MhHwKzzQyTjtF1PfS
	7WUNg8YoJB1QmNLElv7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5uZW-00BC57-NO; Thu, 15 Dec 2022 20:11:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5uZT-00BC4D-MS
	for linux-phy@lists.infradead.org; Thu, 15 Dec 2022 20:11:13 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1p5uZK-0003LY-5q; Thu, 15 Dec 2022 21:11:02 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	patchwork-lst@pengutronix.de,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Sandor Yu <Sandor.yu@nxp.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
Date: Thu, 15 Dec 2022 21:10:59 +0100
Message-Id: <20221215201100.2897501-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_121111_752774_1905BE7E 
X-CRM114-Status: GOOD (  12.06  )
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

Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v2:
- drop minItems from clocks
- add description
---
 .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
new file mode 100644
index 000000000000..61ffdc4d5792
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/fsl,imx8mp-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MP HDMI PHY binding
+
+maintainers:
+  - Lucas Stach <l.stach@pengutronix.de>
+
+description:
+  The HDMI PHY in the i.MX8MP SoC is implemented in 14nm technology and
+  is based on Samsung IP.
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mp-hdmi-phy
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    const: 0
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: apb
+      - const: ref
+
+  "#phy-cells":
+    const: 0
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#clock-cells"
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mp-clock.h>
+    #include <dt-bindings/power/imx8mp-power.h>
+
+    phy@32fdff00 {
+        compatible = "fsl,imx8mp-hdmi-phy";
+        reg = <0x32fdff00 0x100>;
+        clocks = <&clk IMX8MP_CLK_HDMI_APB>,
+                 <&clk IMX8MP_CLK_HDMI_24M>;
+        clock-names = "apb", "ref";
+        power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
+        #clock-cells = <0>;
+        #phy-cells = <0>;
+    };
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
