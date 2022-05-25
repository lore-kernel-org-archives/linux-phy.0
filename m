Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56AE5C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 25 May 2022 19:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/J6RohDIH9wuK3FSVlB73SR/EfuKKYeYzVQKtORgo0=; b=sW+k5aQRwsO8Cf
	B8jf/IAK2HJkxgjkx03r+Zupoa5k0ySW7552c0IcDA1opkGdxcqvxELGqJfTPqlnh3Ucdf/ZzN7Ky
	WzCugfz9j+Yjf8l99K3VanM896L2j1SmtJrXNLM9N+FiUQSen6eUyHD5hvtCD1TrsVE67wR7R98jU
	Z18Ux/F4S5Vf6z231laRq8web/2ODrALkYvdDCyLu3fVs7ZyLm7PzSzkGxMkaCk7GkZJNSD6vWKjC
	f/I+lZq9AUc6r/wZJtPHpeZefMuiZvwrEHl6N0L5/SSPy5jMQrGkyqunoDOLE0Ee824QyqJ97CNPr
	vdX4V9eGmdl2DXH7Z92w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntwJH-00CD8v-Ow; Wed, 25 May 2022 19:04:43 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntwHu-00CCWd-Uu; Wed, 25 May 2022 19:03:22 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 3AEE91C0004;
	Wed, 25 May 2022 19:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1653505393;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4t3379FTskHbLx+fYtlSnTd3vN6xvfnRyYBm2dlv+iM=;
	b=Oa4ZxChG9gk39k4q+HIo1k4hkPhdL8G5Z152WMYxp6hJMi7hNr+SQ/Cnim1PlcpSm+V45D
	votigMXUUQipWYF7vOMWJ+dPSn/79qcQ9qHE2kmXH80QRQzaPDowu4o8OzhPBFXoszD5G9
	7InpFHJF3/RoSBQGtAvna0+B69JKpqpDYGuGXjKBEDY7XZ5XzY556IbwqR0gjBqsiXnzPa
	z6/F6c4HITEmVszTTOEERQqC19dArnJxOdHiPXNSjkN4USVkZ82aKxa38C6AEMUFfFrVMe
	2QKyiWe2XQ+yzhGltBYtDRCb7ZP0GaNHaUdWC6XGiNgqJxaVESDnOWYnSwEgkA==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: Yong Deng <yong.deng@magewell.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hans.verkuil@cisco.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v5 1/6] dt-bindings: media: sun6i-a31-csi: Add MIPI CSI-2 input port
Date: Wed, 25 May 2022 21:02:55 +0200
Message-Id: <20220525190300.696269-2-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220525190300.696269-1-paul.kocialkowski@bootlin.com>
References: <20220525190300.696269-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_120319_343900_238FC41E 
X-CRM114-Status: GOOD (  15.15  )
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

The A31 CSI controller supports two distinct input interfaces:
parallel and an external MIPI CSI-2 bridge. The parallel interface
is often connected to a set of hardware pins while the MIPI CSI-2
bridge is an internal FIFO-ish link. As a result, these two inputs
are distinguished as two different ports.

Note that only one of the two may be present on a controller instance.
For example, the V3s has one controller dedicated to MIPI-CSI2 and one
dedicated to parallel.

Update the binding with an explicit ports node that holds two distinct
port nodes: one for parallel input and one for MIPI CSI-2.

This is backward-compatible with the single-port approach that was
previously taken for representing the parallel interface port, which
stays enumerated as fwnode port 0.

Note that additional ports may be added in the future, especially to
support feeding the CSI controller's output to the ISP.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Maxime Ripard <mripard@kernel.org>
---
 .../media/allwinner,sun6i-a31-csi.yaml        | 58 ++++++++++++++-----
 1 file changed, 44 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
index 8b568072a069..8551c4a711dc 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
@@ -42,6 +42,7 @@ properties:
 
   port:
     $ref: /schemas/graph.yaml#/$defs/port-base
+    description: Parallel input port, connect to a parallel sensor
 
     properties:
       endpoint:
@@ -59,7 +60,24 @@ properties:
         required:
           - bus-width
 
-    additionalProperties: false
+    unevaluatedProperties: false
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: "#/properties/port"
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: MIPI CSI-2 bridge input port
+
+    anyOf:
+      - required:
+          - port@0
+      - required:
+          - port@1
 
 required:
   - compatible
@@ -69,6 +87,12 @@ required:
   - clock-names
   - resets
 
+oneOf:
+  - required:
+      - ports
+  - required:
+      - port
+
 additionalProperties: false
 
 examples:
@@ -89,19 +113,25 @@ examples:
                       "ram";
         resets = <&ccu RST_BUS_CSI>;
 
-        port {
-            /* Parallel bus endpoint */
-            csi1_ep: endpoint {
-                remote-endpoint = <&adv7611_ep>;
-                bus-width = <16>;
-
-                /*
-                 * If hsync-active/vsync-active are missing,
-                 * embedded BT.656 sync is used.
-                 */
-                 hsync-active = <0>; /* Active low */
-                 vsync-active = <0>; /* Active low */
-                 pclk-sample = <1>;  /* Rising */
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                /* Parallel bus endpoint */
+                csi1_ep: endpoint {
+                    remote-endpoint = <&adv7611_ep>;
+                    bus-width = <16>;
+
+                    /*
+                     * If hsync-active/vsync-active are missing,
+                     * embedded BT.656 sync is used.
+                     */
+                    hsync-active = <0>; /* Active low */
+                    vsync-active = <0>; /* Active low */
+                    pclk-sample = <1>;  /* Rising */
+                };
             };
         };
     };
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
