Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92D5FC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 10:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGuUC2yx1zRpBGX8Qxyw6MS6rrnomani7bgm53e5RXo=; b=1VyM3jLd2xmfAR
	zWTacvENw/DFiaTYA4Qmv4vWhFiPe8e3XlNPuKLjhe/xZemLiQ2f7LfplJAyDGGXPTTbNn0O+xt35
	W7DdulMEV4M4cezxODDdBvMMeI5Sjy4WnBORPkj04+KRWESdWRBI9A/5HJ/rISbD48A48eqm8jhFl
	HkQQaMrNl2k/Lj2DvUcUiL/KQcFhCFEOM4Zs3/mdImch2ff0g2zdnXTMc+3aZnbHDKtHeHSf5Es/M
	Y7AFazn58XZ7nXLPs8Cft7sZnr9N1OkOCuQhqw1Bh8gudjINKRqv3fyhMNRkRsu8lEi83pwv4amvk
	am9BhrlY8QrOWhQ5HWRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZW0R-00FHIn-JI; Wed, 30 Mar 2022 10:56:51 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZVz2-00FGgQ-Rh; Wed, 30 Mar 2022 10:55:27 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Mar 2022 19:55:23 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id BFF8C2058B50;
 Wed, 30 Mar 2022 19:55:23 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 30 Mar 2022 19:55:23 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 344F3B62B7;
 Wed, 30 Mar 2022 19:55:23 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v3 5/5] dt-bindings: phy: uniphier: Clean up clocks, resets,
 and their names using compatible string
Date: Wed, 30 Mar 2022 19:55:15 +0900
Message-Id: <1648637715-19262-6-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_035525_162252_2F5D594C 
X-CRM114-Status: GOOD (  12.63  )
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

Instead of "oneOf:" choices, use "allOf:" and "if:" to define clocks,
clock-names, resets, and reset-names that can be taken by the compatible
string.

The order of clock-names and reset-names doesn't change here.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../phy/socionext,uniphier-ahci-phy.yaml      | 90 +++++++++++++-----
 .../phy/socionext,uniphier-pcie-phy.yaml      | 47 ++++++---
 .../phy/socionext,uniphier-usb3hs-phy.yaml    | 93 ++++++++++++++----
 .../phy/socionext,uniphier-usb3ss-phy.yaml    | 95 +++++++++++++++----
 4 files changed, 251 insertions(+), 74 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
index 14f7579e7daa..a3cd45acea28 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
@@ -30,33 +30,79 @@ properties:
     minItems: 1
     maxItems: 2
 
-  clock-names:
-    oneOf:
-      - items:          # for PXs2
-          - const: link
-      - items:          # for Pro4
-          - const: link
-          - const: gio
-      - items:          # for others
-          - const: link
-          - const: phy
+  clock-names: true
 
   resets:
     minItems: 2
     maxItems: 6
 
-  reset-names:
-    oneOf:
-      - items:          # for Pro4
-          - const: link
-          - const: gio
-          - const: phy
-          - const: pm
-          - const: tx
-          - const: rx
-      - items:          # for others
-          - const: link
-          - const: phy
+  reset-names: true
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: socionext,uniphier-pro4-ahci-phy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: link
+            - const: gio
+        resets:
+          minItems: 6
+          maxItems: 6
+        reset-names:
+          items:
+            - const: link
+            - const: gio
+            - const: phy
+            - const: pm
+            - const: tx
+            - const: rx
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: socionext,uniphier-pxs2-ahci-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          const: link
+        resets:
+          minItems: 2
+          maxItems: 2
+        reset-names:
+          items:
+            - const: link
+            - const: phy
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: socionext,uniphier-pxs3-ahci-phy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: link
+            - const: phy
+        resets:
+          minItems: 2
+          maxItems: 2
+        reset-names:
+          items:
+            - const: link
+            - const: phy
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
index fbb71d6dd531..b3ed2f74a414 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
@@ -31,28 +31,51 @@ properties:
     minItems: 1
     maxItems: 2
 
-  clock-names:
-    oneOf:
-      - items:            # for Pro5
-          - const: gio
-          - const: link
-      - const: link       # for others
+  clock-names: true
 
   resets:
     minItems: 1
     maxItems: 2
 
-  reset-names:
-    oneOf:
-      - items:            # for Pro5
-          - const: gio
-          - const: link
-      - const: link       # for others
+  reset-names: true
 
   socionext,syscon:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: A phandle to system control to set configurations for phy
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: socionext,uniphier-pro5-pcie-phy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: gio
+            - const: link
+        resets:
+          minItems: 2
+          maxItems: 2
+        reset-names:
+          items:
+            - const: gio
+            - const: link
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          const: link
+        resets:
+          maxItems: 1
+        reset-names:
+          const: link
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
index 1bbd164f2527..21e4414eea60 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
@@ -34,30 +34,12 @@ properties:
     minItems: 2
     maxItems: 3
 
-  clock-names:
-    oneOf:
-      - items:               # for Pro5
-          - const: gio
-          - const: link
-      - items:               # for PXs3 with phy-ext
-          - const: link
-          - const: phy
-          - const: phy-ext
-      - items:               # for others
-          - const: link
-          - const: phy
+  clock-names: true
 
   resets:
     maxItems: 2
 
-  reset-names:
-    oneOf:
-      - items:               # for Pro5
-          - const: gio
-          - const: link
-      - items:               # for others
-          - const: link
-          - const: phy
+  reset-names: true
 
   vbus-supply:
     description: A phandle to the regulator for USB VBUS
@@ -80,6 +62,77 @@ properties:
       required for each port, if any one is omitted, the trimming data
       of the port will not be set at all.
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: socionext,uniphier-pro5-usb3-hsphy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: gio
+            - const: link
+        resets:
+          minItems: 2
+          maxItems: 2
+        reset-names:
+          items:
+            - const: gio
+            - const: link
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - socionext,uniphier-pxs2-usb3-hsphy
+              - socionext,uniphier-ld20-usb3-hsphy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: link
+            - const: phy
+        resets:
+          minItems: 2
+          maxItems: 2
+        reset-names:
+          items:
+            - const: link
+            - const: phy
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - socionext,uniphier-pxs3-usb3-hsphy
+              - socionext,uniphier-nx1-usb3-hsphy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 3
+        clock-names:
+          minItems: 2
+          items:
+            - const: link
+            - const: phy
+            - const: phy-ext
+        resets:
+          minItems: 2
+          maxItems: 2
+        reset-names:
+          items:
+            - const: link
+            - const: phy
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
index 06c957d52d23..4c26d2d2303d 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
@@ -35,34 +35,89 @@ properties:
     minItems: 2
     maxItems: 3
 
-  clock-names:
-    oneOf:
-      - items:             # for Pro4, Pro5
-          - const: gio
-          - const: link
-      - items:             # for PXs3 with phy-ext
-          - const: link
-          - const: phy
-          - const: phy-ext
-      - items:             # for others
-          - const: link
-          - const: phy
+  clock-names: true
 
   resets:
     maxItems: 2
 
-  reset-names:
-    oneOf:
-      - items:              # for Pro4,Pro5
-          - const: gio
-          - const: link
-      - items:              # for others
-          - const: link
-          - const: phy
+  reset-names: true
 
   vbus-supply:
     description: A phandle to the regulator for USB VBUS, only for USB host
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - socionext,uniphier-pro4-usb3-ssphy
+              - socionext,uniphier-pro5-usb3-ssphy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: gio
+            - const: link
+        resets:
+          minItems: 2
+          maxItems: 2
+        reset-names:
+          items:
+            - const: gio
+            - const: link
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - socionext,uniphier-pxs2-usb3-ssphy
+              - socionext,uniphier-ld20-usb3-ssphy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: link
+            - const: phy
+        resets:
+          minItems: 2
+          maxItems: 2
+        reset-names:
+          items:
+            - const: link
+            - const: phy
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - socionext,uniphier-pxs3-usb3-ssphy
+              - socionext,uniphier-nx1-usb3-ssphy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 3
+        clock-names:
+          minItems: 2
+          items:
+            - const: link
+            - const: phy
+            - const: phy-ext
+        resets:
+          minItems: 2
+          maxItems: 2
+        reset-names:
+          items:
+            - const: link
+            - const: phy
+
 required:
   - compatible
   - reg
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
