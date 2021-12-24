Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29185C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 24 Dec 2021 17:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YctB+JM0CpBXVCgwwoE0qXp+t5Lk4bwqkQofYNjnymM=; b=IrhCmPb00QTYlp
	7DEkH44QC59E/nCpz0q7ZxnuzlANA0/U8MLWlIytGuz3G4XS8NK9qi0ROdLTl2MXDQXiM9TZ682Ra
	RPawu4NmzTFnTGOz0NcG/D8+Al8Q9+usUMJTgfZO1hdryedgoO1yOEtAsLqHTaEWg1WfuHXRM1VXN
	dTOERRqo0WyNq51WDNXVSkiAinKW8BQlCjXSBI36bgZ5YxuT+nmql8HvLKWGTjweYxD5aHGWgqxls
	jwP6yyduj3dFtmJFmL1xMWBss7MBml1nxIvVqbm5M8HqKbDp/0gThSbIaZS7VQyAG4a6NRAyGMQDK
	s5i03VbleGg4dv6DqV/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0ny7-00ELWa-Fm; Fri, 24 Dec 2021 17:02:59 +0000
Received: from ixit.cz ([94.230.151.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0ny3-00ELVl-Fa
 for linux-phy@lists.infradead.org; Fri, 24 Dec 2021 17:02:57 +0000
Received: from localhost.localdomain (ip-89-176-96-70.net.upcbroadband.cz
 [89.176.96.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by ixit.cz (Postfix) with ESMTPSA id 802A92243C;
 Fri, 24 Dec 2021 18:02:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
 t=1640365363;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=HbmIZwLuV6VZPMQ2LsqtWZDS7tE+7vlqNV7H+vpBED0=;
 b=lfeE112a7wnQxddN8gP4N6WncHhMYn9EUXBgFow+Li0+umYK5u9LN9Uv+Y8U9Ws3fffWo/
 YxvXmVbiBWEGXbTHelN4pltsw1BYQDJWpO7gyTbEmAs+TcazwNmDfeZNcddBhd/sqbAGqF
 +I4LPzc8tdnONr068KDTr9pNY8XcM14=
From: David Heidelberg <david@ixit.cz>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: ~okias/devicetree@lists.sr.ht, David Heidelberg <david@ixit.cz>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: convert Qualcomm USB HS phy to yaml
Date: Fri, 24 Dec 2021 18:02:41 +0100
Message-Id: <20211224170242.57816-1-david@ixit.cz>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211224_090255_884621_E1571DF2 
X-CRM114-Status: GOOD (  13.60  )
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
 .../bindings/phy/qcom,usb-hs-phy.txt          | 84 ------------------
 .../bindings/phy/qcom,usb-hs-phy.yaml         | 86 +++++++++++++++++++
 2 files changed, 86 insertions(+), 84 deletions(-)
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
index 000000000000..202c42754188
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
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
+properties:
+  compatible:
+    items:
+      - enum:
+          - qcom,usb-hs-phy-apq8064
+          - qcom,usb-hs-phy-msm8916
+          - qcom,usb-hs-phy-msm8974
+      - const: qcom,usb-hs-phy
+
+  clocks: true
+
+  clock-names:
+    oneOf:
+      - items:
+          - const: ref
+          - const: sleep
+      - items:
+          - const: sleep
+          - const: ref
+
+  resets: true
+
+  reset-names:
+    oneOf:
+      - items:
+          - const: por
+      - items:
+          - const: phy
+          - const: por
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
+    $ref: /schemas/types.yaml#/definitions/uint8-array
+    description: |
+      Should contain a sequence of ULPI address and value pairs to
+      program into the ULPI_EXT_VENDOR_SPECIFIC area. This is related
+      to Device Mode Eye Diagram test. The addresses are offsets
+      from the ULPI_EXT_VENDOR_SPECIFIC address, for example,
+      <0x1 0x53> would mean "write the value 0x53 to address 0x81".
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
