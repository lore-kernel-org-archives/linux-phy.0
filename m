Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59632C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcDlp7g/xlDwwtn3sNoYeXWEs6UocYGA5tdYn7B6IJM=; b=oVbj/jVUKXV5Ru
	h5M2ebZsVxhIdYXMavUp46+h8fR+t7jJ/VPVdQ7mmq9vlg1kV83SDq3bK+xdfL/e098++0sggkzU2
	rayRQAppnNADQNs9bPcW5AUrc+pTr/AitnriBJzQIrsDo3DvCvL3MDKa5+yQ7qkRu7N1MoIfoT1Lg
	D2yrsnB+wn/2ii7Jr02sTxLiiiVnuGC7VUqyvnyTbvFR9b5GWnnl4Ah6D6YYezAlkBFWLNfNoUYaI
	XAtExom/XQh9dRT5sjYgb4LwQg4DtY85A3oqlBm60Fn9Pkb5HXv5BwwP+1TWNKEfNddVbdHtfTtqZ
	caiPBXxNP9gINXZwybcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPX96-004SKY-RM; Wed, 02 Mar 2022 22:08:32 +0000
Received: from relay4-d.mail.gandi.net ([2001:4b98:dc4:8::224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPX8i-004S5M-7o; Wed, 02 Mar 2022 22:08:11 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 048A2E0008;
 Wed,  2 Mar 2022 22:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1646258879;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1G9o6rlZM0iE6Vt7vqNy4e9zAd/LcxnVqs6sPFVzYMk=;
 b=CpnbQoPXj33Rf75e8YEIBLumENOy3OEL/6VhnaWZNS9hFXSt/Y1ACrx3RLatC2wjsdWEIt
 uEoNO9vgWO2M18fpJmkz4ZAJL2awcY3u5YrAuiYvuaadLYe+hSLYCGO7EHsVxkKI3qYuj0
 dG6mwXDsX/X3p5omLlT4aiUtmqcyKOTSTmjg0HqVauzvwdt3N4ys/CvLUzmPJ85a0wYzTa
 ltu/HEdSlbeff63Bx6V1aj+rFElUwol0wUueIudI3rXfQQVtVGVz2rBxb22l7dMuiEeZlP
 dBk7IaOcmfku6GdPWO0nbiz10IL3AT7siKfif3t+ZTn9JAfrGc8qEqSplpTdvQ==
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
Subject: [PATCH v3 3/9] dt-bindings: media: sun6i-a31-csi: Add MIPI CSI-2
 input port
Date: Wed,  2 Mar 2022 23:07:33 +0100
Message-Id: <20220302220739.144303-4-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
References: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_140808_622179_4404C826 
X-CRM114-Status: GOOD (  15.25  )
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
 .../media/allwinner,sun6i-a31-csi.yaml        | 66 +++++++++++++++----
 1 file changed, 53 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
index 8b568072a069..f40609332696 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml
@@ -61,6 +61,34 @@ properties:
 
     additionalProperties: false
 
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: "#/properties/port"
+        unevaluatedProperties: false
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
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+        additionalProperties: false
+
+    anyOf:
+      - required:
+        - port@0
+      - required:
+        - port@1
+
 required:
   - compatible
   - reg
@@ -69,6 +97,12 @@ required:
   - clock-names
   - resets
 
+oneOf:
+  - required:
+    - ports
+  - required:
+    - port
+
 additionalProperties: false
 
 examples:
@@ -89,19 +123,25 @@ examples:
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
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
