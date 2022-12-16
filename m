Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CEF5C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 16 Dec 2022 14:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gE0ZdEfTCOadVaz+S9zjr7ghgwM2EQcTheLwmwo8BT4=; b=a+yIbq5I+/1n4n
	/meAg0aC9wlszH5awcqvkY/IMjiof5DTqGQYSOK98GKWOTYzLyPi0oMCVUZPtA3rGTVClDR3tLtP9
	mysrLf06Ar2IUJ76WJs5a792NGX5qk799mjPPKF0O1oLWe1s9HqFx7dY0QjF860NlWFYLz/taHF94
	d6FCrv1kEH6St9BEr9UysoyzD5trA6/392nnZ3XEg756GoGKXd9c5MwaQWaTKqa6fVOy5o2hcDEyr
	jgvopmEvb2ENyTq1QO3KoKZ94bY+Q47VS1eu1Z94782U4nQRMRkuX3scS05qX8n8xpO08dTvsKMdC
	wtEWRGxDsOW0tlmWRqIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6BqQ-00FioX-Ig; Fri, 16 Dec 2022 14:37:50 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6BqI-00FiYo-8M
	for linux-phy@lists.infradead.org; Fri, 16 Dec 2022 14:37:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1671201462; x=1702737462;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=FZy1RXcVK/2x+hEiHp355FgRq9Aa9qrbXPuFKkwSAW0=;
  b=eufqGaZuiJUHQQMmDhYrbgXzko1sslBUik/YAnSu89VezbLIwI5lOljv
   fdDpbJDE1pEci1cjGWF88Xr3/mw5p51YR8S6xkfhfcDv8fKP8Nb3bEo+E
   W28EMDAr5/iVVlthYqzFVQY0gOfIKbsOQxyazJwk5DD4p3yBCZ4GSeGm/
   jylMoONd3CS5sk4diwPV1srNZmUBM/4y8cb9V23ctPebBh/lTRN86uw9n
   g8pP4Y2F2zKLFL9AXxcoiOjPNWf817GYzvZ3puHQvJ/QcAK30+QtaDDXs
   R6J2JT1gwzEaU9xoldEuKh/E+cbaxpzyN6WUF+qV4xd3aaOEMtKAiQveE
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; 
   d="scan'208";a="128506511"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 16 Dec 2022 07:37:27 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 16 Dec 2022 07:37:26 -0700
Received: from ROB-ULT-M18282.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.16 via Frontend Transport; Fri, 16 Dec 2022 07:37:24 -0700
From: Eugen Hristev <eugen.hristev@microchip.com>
To: <linux-media@vger.kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <luis.oliveira@synopsys.com>, Eugen Hristev
	<eugen.hristev@microchip.com>, Luis Oliveira <lolivei@synopsys.com>
Subject: [PATCH v5 1/4] dt-bindings: media: Document bindings for DW MIPI CSI-2 Host
Date: Fri, 16 Dec 2022 16:37:14 +0200
Message-ID: <20221216143717.1002015-2-eugen.hristev@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221216143717.1002015-1-eugen.hristev@microchip.com>
References: <20221216143717.1002015-1-eugen.hristev@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_063742_454805_4898AF59 
X-CRM114-Status: GOOD (  11.48  )
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

Add bindings for Synopsys DesignWare MIPI CSI-2 host.

Signed-off-by: Luis Oliveira <lolivei@synopsys.com>
[eugen.hristev@microchip.com: reworked binding, converted to yaml]
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 .../bindings/media/snps,dw-csi.yaml           | 149 ++++++++++++++++++
 1 file changed, 149 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/snps,dw-csi.yaml

diff --git a/Documentation/devicetree/bindings/media/snps,dw-csi.yaml b/Documentation/devicetree/bindings/media/snps,dw-csi.yaml
new file mode 100644
index 000000000000..439eadc8e517
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/snps,dw-csi.yaml
@@ -0,0 +1,149 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/snps,dw-csi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys DesignWare CSI-2 Host controller (csi2host)
+
+maintainers:
+  - Eugen Hristev <eugen.hristev@microchip.com>
+
+description:
+  CSI2HOST is used to receive image coming from an MIPI CSI-2 compatible
+  camera. It will convert the incoming CSI-2 stream into a dedicated
+  interface called the Synopsys IDI (Image Data Interface).
+  This interface is a 32-bit SoC internal only, and can be assimilated
+  with a CSI-2 interface.
+
+properties:
+  compatible:
+    const: snps,dw-csi
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    description:
+      CSI2HOST can have two clocks connected. One clock is the
+      peripheral clock for the inside functionality of the hardware block.
+      This is named 'perclk'. The second clock can be the phy clock,
+      which is used to clock the phy via an internal link.
+      This clock is named 'phyclk', phy clock.
+    items:
+      - const: perclk
+      - const: phyclk
+
+  phys:
+    maxItems: 1
+    description: MIPI D-PHY
+
+  phy-names:
+    items:
+      - const: dphy
+
+  resets:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description:
+          Input port node, single endpoint describing the input port.
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+            description: Endpoint connected to input device
+
+            properties:
+              bus-type:
+                const: 4
+
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+                items:
+                  maximum: 4
+
+              clock-lanes:
+                maxItems: 1
+
+              remote-endpoint: true
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description:
+          Output port node, single endpoint describing the output port.
+
+        properties:
+          endpoint:
+            unevaluatedProperties: false
+            $ref: video-interfaces.yaml#
+            description: Endpoint connected to output device
+
+            properties:
+              bus-type:
+                const: 4
+
+              remote-endpoint: true
+
+    required:
+      - port@0
+      - port@1
+
+additionalProperties: false
+
+required:
+  - compatible
+  - ports
+
+examples:
+  - |
+    csi2: csi2@3000 {
+        compatible = "snps,dw-csi";
+        reg = <0x03000 0x7FF>;
+        phys = <&mipi_dphy_rx>;
+        phy-names = "dphy";
+        resets = <&dw_rst 1>;
+        interrupts = <2>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+
+                csi_ep1: endpoint {
+                    bus-type = <4>; /* MIPI CSI2 D-PHY */
+                    remote-endpoint = <&camera_1>;
+                    data-lanes = <1 2>;
+                    clock-lanes = <0>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+
+                csi_ep2: endpoint {
+                    remote-endpoint = <&idi_receiver>;
+                    bus-type = <4>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
