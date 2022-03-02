Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01E25C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 22:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DHEDwDqXGleL7PR/I8aSoRumckWj/UGwCPum2o2Sk4=; b=ZlQtxllJCzj9ae
	2p2znlUmyFmwipIXMnvVELzqjQd21YXnCbfvICQ/06Ja/lErmO3sBcIAzvGTTMv82qncR1PE9eUIk
	J9SPKarhvZJNLIujti4e+1LXJXb2OuMzIbPtNLEcWeRTCRFuhepYJJH609C/tA2uPGg/uKzgHEl0a
	HNNI+2IdMGpzky02+W+Ow2CX9P7LoExYbvoYfLOBzlI5JJ2LmBEaBDG3QLobcWcPouuJdLRy41KUH
	1O6f0EsU1w3ASPpZEHFsUCZF/04WevPy0RQ+3UzB4AkC0tXru2fODfzaIAkwN2kzGUbZHnZ6/yH5y
	0xXvgLxf3cxh/1ncp4XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPX9v-004Sjr-76; Wed, 02 Mar 2022 22:09:23 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPX8i-004S7k-7j; Wed, 02 Mar 2022 22:08:11 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id D10DDE000B;
 Wed,  2 Mar 2022 22:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1646258886;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rI91tG6jLFSguMmjGVEP5a4E3plfGZ+m9Z0I33jTCxc=;
 b=B2BsZTmbLwY5+sFJFemu/w1NOR+V9Ip88VoYB1UDSaBnWTDcobEgeMl9XCIGZPS94suXXV
 gYUGPcVfX8ljFluOT+/SojJkrgv7/9U/c4WOViQpBB+MpOB04btQOMF+M5FVezKv1TCEzQ
 oF6b4S33I/1Df36DjRFWNNr7l45yFNkf4d3jVI23OIRKdFfrsjPmhY1hLGXEtmerjEqDJe
 y5dKMJ/Y3dkT+bIbj/tEAVQ+PLRN3QpB+HniTb09+Klvi6LTkgDYS8XQm8Qs8TT7b53b+B
 D8QGPVPzK245wXzOQDtBUrZOx/RE7u/Ma67wiaPhRdbW3hF2KEjWSKapaK/1UA==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v3 7/9] dt-bindings: media: Add Allwinner A83T MIPI CSI-2
 bindings documentation
Date: Wed,  2 Mar 2022 23:07:37 +0100
Message-Id: <20220302220739.144303-8-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
References: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_140808_629609_28BC45EF 
X-CRM114-Status: GOOD (  12.62  )
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

This introduces YAML bindings documentation for the Allwinner A83T
MIPI CSI-2 controller.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 138 ++++++++++++++++++
 1 file changed, 138 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
new file mode 100644
index 000000000000..75121b402435
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
@@ -0,0 +1,138 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/allwinner,sun8i-a83t-mipi-csi2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A83T MIPI CSI-2 Device Tree Bindings
+
+maintainers:
+  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+
+properties:
+  compatible:
+    const: allwinner,sun8i-a83t-mipi-csi2
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: Module Clock
+      - description: MIPI-specific Clock
+      - description: Misc CSI Clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+      - const: mipi
+      - const: misc
+
+  resets:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: Input port, connect to a MIPI CSI-2 sensor
+
+        properties:
+          reg:
+            const: 0
+
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              clock-lanes:
+                maxItems: 1
+
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+            required:
+              - data-lanes
+
+        additionalProperties: false
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: Output port, connect to a CSI controller
+
+        properties:
+          reg:
+            const: 1
+
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+        additionalProperties: false
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun8i-a83t-ccu.h>
+    #include <dt-bindings/reset/sun8i-a83t-ccu.h>
+
+    mipi_csi2: csi@1cb1000 {
+        compatible = "allwinner,sun8i-a83t-mipi-csi2";
+        reg = <0x01cb1000 0x1000>;
+        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&ccu CLK_BUS_CSI>,
+                 <&ccu CLK_CSI_SCLK>,
+                 <&ccu CLK_MIPI_CSI>,
+                 <&ccu CLK_CSI_MISC>;
+        clock-names = "bus", "mod", "mipi", "misc";
+        resets = <&ccu RST_BUS_CSI>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            mipi_csi2_in: port@0 {
+                reg = <0>;
+
+                mipi_csi2_in_ov8865: endpoint {
+                    data-lanes = <1 2 3 4>;
+
+                    remote-endpoint = <&ov8865_out_mipi_csi2>;
+                };
+            };
+
+            mipi_csi2_out: port@1 {
+                reg = <1>;
+
+                mipi_csi2_out_csi: endpoint {
+                    remote-endpoint = <&csi_in_mipi_csi2>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
