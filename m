Return-Path: <SRS0=5sx/=OA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38539C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 10 Sep 2021 18:53:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F015661167
	for <linux-phy@archiver.kernel.org>; Fri, 10 Sep 2021 18:53:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F015661167
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sip6EwSx72qz+Qbz6rQy6hKGO2mJJlJGrgoMhRCcSD0=; b=mnhixfqfo7pqLY
	WB23PKpg9jRLgPIeyDZVhdl9mJhK3h7CGbqzqJtr5d0paS+Nv/lzt+fKJsXTNEWG4YdFF+bfyhFyd
	wkpWFV61kkj/xHPpCnNeIiLspZJdTrHFFjcVmEdbOE3wd7wTyKF7XthDW8sNhKYXSqP/LZ0hQGMWj
	8rKMc6WTBShBLQsNVpeJflc5joEIREfoczPH97Q3MHQkw0bn0GSlt5ytNAIZg9vq+hOjLcLDAtKKc
	BwNquRPT8v1JBj2bs5WgL+AuM44gr53iWfKjSRvHW1PSVSN5z1408WPjgiy6WRMpNo1UqC2ZvW6/P
	sGh9+dEug0tE18PipTbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOle7-00DR2u-TU; Fri, 10 Sep 2021 18:53:07 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOlU3-00DM76-Jv; Fri, 10 Sep 2021 18:42:51 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 90EF924000A;
 Fri, 10 Sep 2021 18:42:40 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH 17/22] dt-bindings: media: Add Allwinner A31 ISP bindings
 documentation
Date: Fri, 10 Sep 2021 20:41:42 +0200
Message-Id: <20210910184147.336618-18-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
References: <20210910184147.336618-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_114244_010804_14CFCB1F 
X-CRM114-Status: GOOD (  14.68  )
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

This introduces YAML bindings documentation for the Allwinner A31 Image
Signal Processor (ISP).

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../media/allwinner,sun6i-a31-csi.yaml        |   2 +-
 .../media/allwinner,sun6i-a31-isp.yaml        | 111 ++++++++++++++++++
 2 files changed, 112 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
index f4a686b77a38..c60f6b5403fa 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
 $id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-csi.yaml#
diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
new file mode 100644
index 000000000000..a0f82f150e90
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-isp.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-isp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 Image Signal Processor Driver (ISP) Device Tree Bindings
+
+maintainers:
+  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun6i-a31-isp
+      - allwinner,sun8i-v3s-isp
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
+      - description: DRAM Clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+      - const: ram
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
+        description: CSI0 input port
+
+        properties:
+          reg:
+            const: 0
+
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+        additionalProperties: false
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: CSI1 input port
+
+        properties:
+          reg:
+            const: 0
+
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+        additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun8i-v3s-ccu.h>
+    #include <dt-bindings/reset/sun8i-v3s-ccu.h>
+
+    isp: isp@1cb8000 {
+        compatible = "allwinner,sun8i-v3s-isp";
+        reg = <0x01cb8000 0x1000>;
+        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&ccu CLK_BUS_CSI>,
+             <&ccu CLK_CSI1_SCLK>,
+             <&ccu CLK_DRAM_CSI>;
+        clock-names = "bus", "mod", "ram";
+        resets = <&ccu RST_BUS_CSI>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+
+                isp_in_csi0: endpoint {
+                    remote-endpoint = <&csi0_out_isp>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
