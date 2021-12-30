Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAA4FC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Dec 2021 00:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=24OzqLdBpz0yBBdGRhNeBmkRIyrNGc47T07ilMObAig=; b=VDRYSt5siBPnxB
	xaTK1+lkR7uIEZzMHxatyCb912qx6iseLOIN16V3ynbV+ueR1Am6sFanGRPJfWp1Z9xnD5IN6yp4I
	k1GKN2opN6w/eWg2WRz6UW7CVyPu5Sv//UeZrVcufbwRbnCNX75cnp7eOzOnpnjCACtAUV35Jvhs1
	jzNmt0k+9kfhxfdT8kClIiCWO+zhU8CZa1UqVMvrkz7RiOysVSm/QeBgNfgp6EWVHQRz53P4Vc7IW
	zDDq+yfenu/YvBcPKIQd5plTUOYySz//zrdeEBXoF/mvbzJ85MvcgtTbQO4/sKeply0/0C4tzM2Rt
	pD3+Dj3kECUSjDAvVctA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2iz7-003VsX-6O; Thu, 30 Dec 2021 00:07:57 +0000
Received: from ixit.cz ([94.230.151.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2iz3-003Vre-W8
 for linux-phy@lists.infradead.org; Thu, 30 Dec 2021 00:07:56 +0000
Received: from localhost.localdomain (ip-89-176-96-70.net.upcbroadband.cz
 [89.176.96.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by ixit.cz (Postfix) with ESMTPSA id 4A0462243C;
 Thu, 30 Dec 2021 01:07:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
 t=1640822864;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=SO79SHlW7RTM4zzDiQ9Qoc7QpsDDJCaiIgPmJMxw3T8=;
 b=Nvd2DZQcyC09arLHj8QBjC/GB2toIt8JalQCAgO8hjcls1bezHCuOlxA5PHP7Teyvi+PNd
 XKT+WTGdgifdfmY2JaKBR64hkn+jwUTPdiKAzhinMa0a/I10nWWwcMv6UKBlL8WdQX44Zm
 BfvaIvwybNSyy7etcFuwF9u/X34IJVE=
From: David Heidelberg <david@ixit.cz>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: ~okias/devicetree@lists.sr.ht, David Heidelberg <david@ixit.cz>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: phy: convert Qualcomm USB HS phy to yaml
Date: Thu, 30 Dec 2021 01:07:40 +0100
Message-Id: <20211230000740.103869-1-david@ixit.cz>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211229_160754_241380_133C8849 
X-CRM114-Status: GOOD (  16.29  )
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

Conversion of Qualcomm USB HS phy documentation to yaml.

Signed-off-by: David Heidelberg <david@ixit.cz>
---
v2:
 - changed uint8 array to matrix
 - improved clock-names check
 - move reset-names items, adjust DTS files later
 - added clocks and resets min and maxItems
 - if'ed resets, since apq8064 doesn't have phy reset
---
 .../bindings/phy/qcom,usb-hs-phy.txt          |  84 --------------
 .../bindings/phy/qcom,usb-hs-phy.yaml         | 108 ++++++++++++++++++
 2 files changed, 108 insertions(+), 84 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt
deleted file mode 100644
index b3b75c1e6285..000000000000
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.txt
+++ /dev/null
@@ -1,84 +0,0 @@
-Qualcomm's USB HS PHY
-
-PROPERTIES
-
-- compatible:
-    Usage: required
-    Value type: <string>
-    Definition: Should contain "qcom,usb-hs-phy" and more specifically one of the
-                following:
-
-                        "qcom,usb-hs-phy-apq8064"
-                        "qcom,usb-hs-phy-msm8916"
-                        "qcom,usb-hs-phy-msm8974"
-
-- #phy-cells:
-    Usage: required
-    Value type: <u32>
-    Definition: Should contain 0
-
-- clocks:
-    Usage: required
-    Value type: <prop-encoded-array>
-    Definition: Should contain clock specifier for the reference and sleep
-                clocks
-
-- clock-names:
-    Usage: required
-    Value type: <stringlist>
-    Definition: Should contain "ref" and "sleep" for the reference and sleep
-                clocks respectively
-
-- resets:
-    Usage: required
-    Value type: <prop-encoded-array>
-    Definition: Should contain the phy and POR resets
-
-- reset-names:
-    Usage: required
-    Value type: <stringlist>
-    Definition: Should contain "phy" and "por" for the phy and POR resets
-                respectively
-
-- v3p3-supply:
-    Usage: required
-    Value type: <phandle>
-    Definition: Should contain a reference to the 3.3V supply
-
-- v1p8-supply:
-    Usage: required
-    Value type: <phandle>
-    Definition: Should contain a reference to the 1.8V supply
-
-- extcon:
-    Usage: optional
-    Value type: <prop-encoded-array>
-    Definition: Should contain the vbus extcon
-
-- qcom,init-seq:
-    Usage: optional
-    Value type: <u8 array>
-    Definition: Should contain a sequence of ULPI address and value pairs to
-                program into the ULPI_EXT_VENDOR_SPECIFIC area. This is related
-                to Device Mode Eye Diagram test. The addresses are offsets
-                from the ULPI_EXT_VENDOR_SPECIFIC address, for example,
-                <0x1 0x53> would mean "write the value 0x53 to address 0x81".
-
-EXAMPLE
-
-otg: usb-controller {
-	ulpi {
-		phy {
-			compatible = "qcom,usb-hs-phy-msm8974", "qcom,usb-hs-phy";
-			#phy-cells = <0>;
-			clocks = <&xo_board>, <&gcc GCC_USB2A_PHY_SLEEP_CLK>;
-			clock-names = "ref", "sleep";
-			resets = <&gcc GCC_USB2A_PHY_BCR>, <&otg 0>;
-			reset-names = "phy", "por";
-			v3p3-supply = <&pm8941_l24>;
-			v1p8-supply = <&pm8941_l6>;
-			extcon = <&smbb>;
-			qcom,init-seq = /bits/ 8 <0x1 0x63>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
new file mode 100644
index 000000000000..a60386bd19b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
@@ -0,0 +1,108 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,usb-hs-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm's USB HS PHY binding description
+
+maintainers:
+  - Bjorn Andersson <bjorn.andersson@linaro.org>
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: qcom,usb-hs-phy-apq8064
+  then:
+    properties:
+      resets:
+        maxItems: 1
+
+      reset-names:
+        const: por
+
+  else:
+    properties:
+      resets:
+        minItems: 2
+        maxItems: 2
+
+      reset-names:
+        items:
+          - const: phy
+          - const: por
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - qcom,usb-hs-phy-apq8064
+          - qcom,usb-hs-phy-msm8916
+          - qcom,usb-hs-phy-msm8974
+      - const: qcom,usb-hs-phy
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    maxItems: 2
+    contains:
+      items:
+        - const: ref
+        - const: sleep
+
+  resets: true
+
+  reset-names: true
+
+  v1p8-supply: true
+
+  v3p3-supply: true
+
+  extcon: true
+
+  "#phy-cells":
+    const: 0
+
+  qcom,init-seq:
+    $ref: /schemas/types.yaml#/definitions/uint8-matrix
+    description: >
+      Sequence of ULPI address and value pairs to
+      program into the ULPI_EXT_VENDOR_SPECIFIC area.
+      This is related to Device Mode Eye Diagram test.
+    maxItems: 32 # no hard limit
+    items:
+      items:
+        - description: >
+            the address is offset from the ULPI_EXT_VENDOR_SPECIFIC address
+        - description: value
+
+required:
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    otg: usb-controller {
+      ulpi {
+        phy {
+          compatible = "qcom,usb-hs-phy-msm8974", "qcom,usb-hs-phy";
+          #phy-cells = <0>;
+          clocks = <&clk 0>, <&clk 258>;
+          clock-names = "ref", "sleep";
+          resets = <&gcc 10>, <&otg 0>;
+          reset-names = "phy", "por";
+          v3p3-supply = <&pm8941_l24>;
+          v1p8-supply = <&pm8941_l6>;
+          extcon = <&smbb>;
+          qcom,init-seq = /bits/ 8 <0x1 0x63>;
+        };
+      };
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
