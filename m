Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04286C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 15 Apr 2022 15:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXixf5mQ75GXOMERbCUikiMf11OWfruzNYkVwZjasSo=; b=MJyuwFC/upEVsO
	gPKnmwFEfkailRWMzpQ4m2zFh326pEPxJm/ulnL6cbhRsnQeWrM10CWwayAFuN27wLuiGsrEinPkP
	Ywbv98vmuUUJPSOKZByqr2StkYdbCqCGcza5/kgr6p8DiLjNHq7Qvj1/ORhMrVp9ej3+ExMH/uAUR
	4GRqA4u7qNh9D0UuCGnSSTVw7q80n0bOn0xSo8Bb6wwjxw83EKliTpeIfd+e43Xx2qH8/J3MlFKL4
	u96e2h0o7C7jb7/SqTr24BQDvqof7ZroiFwTP29XirzXCqkeKYwueiYQgIlyvAQ7wUhBN3bhv8Y+0
	fEYef3UyvSMYHtNbP5aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfNmu-00AUfy-Dz; Fri, 15 Apr 2022 15:23:08 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfNlp-00ATzh-BO; Fri, 15 Apr 2022 15:22:03 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id EBAC624000C;
 Fri, 15 Apr 2022 15:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1650036118;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gwujoudO+mxD7JUpVLmNFyezlsG725sqpIX2zlDa2Ao=;
 b=KhEwIruN4e1q0+CKrmMHh3a7S/WgvFJeDk7ZEDZkjl7E63mUI9CBtcAHjuNiQTZDd52BCe
 iKzUZTj9rgqAzvllaI5GtHWJPo/X61XecZd/5ZmadGiG13u5mfUF0ZfL1f0lnXDwGrvRTs
 KHnDVAyweQoC9WlpL51sYEjs7FgWeFJsgI+dSmU+C1AegQCN4aEOMFSbaKo7S5PNfOwC4t
 un/1EooaqRrQx+r5HTsRxnBsR44Twv+jjH6QqVgt5mmCyfODybZgwoxyP01mxXcDFUH6uu
 v0B30JbGhSoQ2zrrcBz86jzTEOh0lxU/GaWEL315gRZnuvG7Gm3Wa+k/htnmgQ==
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
Subject: [PATCH v4 3/8] dt-bindings: media: sun6i-a31-csi: Add MIPI CSI-2
 input port
Date: Fri, 15 Apr 2022 17:21:33 +0200
Message-Id: <20220415152138.635525-4-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.35.2
In-Reply-To: <20220415152138.635525-1-paul.kocialkowski@bootlin.com>
References: <20220415152138.635525-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_082201_730112_671ADBBD 
X-CRM114-Status: GOOD (  14.93  )
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
 .../media/allwinner,sun6i-a31-csi.yaml        | 72 +++++++++++++++----
 1 file changed, 58 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
index 8b568072a069..53aa6dbe8e2c 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
@@ -42,6 +42,7 @@ properties:
 
   port:
     $ref: /schemas/graph.yaml#/$defs/port-base
+    description: Parallel input port, connect to a parallel sensor
 
     properties:
       endpoint:
@@ -59,7 +60,38 @@ properties:
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
+        properties:
+          reg:
+            const: 0
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: MIPI CSI-2 bridge input port
+
+        properties:
+          reg:
+            const: 1
+
+          endpoint:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            unevaluatedProperties: false
+
+        additionalProperties: false
+
+    anyOf:
+      - required:
+          - port@0
+      - required:
+          - port@1
 
 required:
   - compatible
@@ -69,6 +101,12 @@ required:
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
@@ -89,19 +127,25 @@ examples:
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
2.35.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
