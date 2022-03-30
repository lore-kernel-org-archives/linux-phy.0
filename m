Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A42ADC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 05:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiU3mQEX7CEMQ1KG1AjQPHwaZiiLsVfQaQG+JAQq2Os=; b=x5OtHD1f9E0f1K
	GZTf/kvQjsOZJmCGYBAgvvMGf9b/BaO4pBJgy90VSdT39tM+1y3ld2gQ/R+QJR9de1SGzRXlWmjhB
	fz3IAGHWPyJ7x9HQBx7P7bfHl0hi7Os6vu/hfbOhjOCt2IPAKTs9YfpIWScS9WHy9Rq3RNWXRnxuu
	f+XocfeFULqEoEYzz5h2dz25rc809673/AZz1BnGLJhBECMWntI39N1AdK+OutieeXafkBAOTtSNC
	ol1Rde4CjNbQErvA5HoSqEhvP1GCGyrNc3AN4bRgMZblwrcNfJUuKBZj0P6kFr4WzvJitbDlJIh7m
	nFRspmcFVHniwgYTFNHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZQn8-00EII1-VB; Wed, 30 Mar 2022 05:22:46 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZQlP-00EHSd-CC; Wed, 30 Mar 2022 05:21:01 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Mar 2022 14:20:58 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 846282058B50;
 Wed, 30 Mar 2022 14:20:58 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 30 Mar 2022 14:20:58 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 2F914B62B7;
 Wed, 30 Mar 2022 14:20:58 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v2 5/5] dt-bindings: phy: uniphier: Clean up clock-names and
 reset-names using compatible string
Date: Wed, 30 Mar 2022 14:20:51 +0900
Message-Id: <1648617651-9004-6-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_222059_700666_7EF1737E 
X-CRM114-Status: GOOD (  13.52  )
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

Instead of "oneOf:" choices, use "allOf:" and "if:" to define clock-names
and reset-names that can be taken by the compatible string.

The order of clock-names and reset-names doesn't change here.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../phy/socionext,uniphier-ahci-phy.yaml      | 73 ++++++++++++------
 .../phy/socionext,uniphier-pcie-phy.yaml      | 37 ++++++---
 .../phy/socionext,uniphier-usb3hs-phy.yaml    | 75 +++++++++++++-----
 .../phy/socionext,uniphier-usb3ss-phy.yaml    | 77 ++++++++++++++-----
 4 files changed, 188 insertions(+), 74 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
index 14f7579e7daa..61d9306e1852 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
@@ -30,33 +30,62 @@ properties:
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
+        clock-names:
+          items:
+            - const: link
+            - const: gio
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
+        clock-names:
+          const: link
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
+        clock-names:
+          items:
+            - const: link
+            - const: phy
+        reset-names:
+          items:
+            - const: link
+            - const: phy
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
index fbb71d6dd531..e45489a9bf1a 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-pcie-phy.yaml
@@ -31,28 +31,41 @@ properties:
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
+        clock-names:
+          items:
+            - const: gio
+            - const: link
+        reset-names:
+          items:
+            - const: gio
+            - const: link
+    else:
+      properties:
+        clock-names:
+          const: link
+        reset-names:
+          const: link
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
index 1bbd164f2527..a37205242dc1 100644
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
@@ -80,6 +62,59 @@ properties:
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
+        clock-names:
+          items:
+            - const: gio
+            - const: link
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
+        clock-names:
+          items:
+            - const: link
+            - const: phy
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
+        clock-names:
+          minItems: 2
+          items:
+            - const: link
+            - const: phy
+            - const: phy-ext
+        reset-names:
+          items:
+            - const: link
+            - const: phy
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
index 06c957d52d23..dd6ebee6377f 100644
--- a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3ss-phy.yaml
@@ -35,34 +35,71 @@ properties:
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
+        clock-names:
+          items:
+            - const: gio
+            - const: link
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
+        clock-names:
+          items:
+            - const: link
+            - const: phy
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
+        clock-names:
+          minItems: 2
+          items:
+            - const: link
+            - const: phy
+            - const: phy-ext
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
