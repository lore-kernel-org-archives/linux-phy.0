Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD673C369B2
	for <linux-phy@archiver.kernel.org>; Tue, 15 Apr 2025 01:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5eiFfxz+yKXHF+2SSdwVdBJWt2bZfVPpngpdU1SMCqs=; b=mOPPJ90ZNtQXfL
	kMyO3h/GaKm8Uph9eXkIjNZr9O/7Q2Qz0oJQwL2D1s+3Te+NX5c8jBMv+yOcrVBVIF/RvmIFYfyXI
	tKZty/9m7jYVXnfKU1AU0huf7Wbj4CzHB5bCV7g8I3RUlt7syqNli5ZB6Ehsf1eRVh/kqE8ByMkud
	ua3KRnD7SPeivIcHG7bFVT/K42qF3arNXpagmOsJz0HId1ASqbPXdYCwixmAf5tSmgqFsVPR1SZ3b
	hbYNzxUGVrXFBMvnsgFzwnd0NfyQjPeKne2ZpVVXwKccsTlVLoO7I4jxEp2S7A1vb4ArjpUMoZNdL
	hRByL1Grn0oCyIWouXWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4V01-0000000464C-2lC8;
	Tue, 15 Apr 2025 01:22:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Uwb-000000045ge-3WyV;
	Tue, 15 Apr 2025 01:18:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3FD0E5C03A4;
	Tue, 15 Apr 2025 01:16:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2EF4C4CEEA;
	Tue, 15 Apr 2025 01:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744679913;
	bh=/I+5JJgGfjGwoTlaskG17YojLd/pT4v5CLvzr+PFAkU=;
	h=From:To:Cc:Subject:Date:From;
	b=pvxzZzfcBJDh9WP08XfI5yj2vV8vO+llRommnmxgivBzqdmSsNKaoFZdt80kN6z0M
	 C9bDj1SaNRNckQdvgKh+//5jR9e69jC0Dbn2afcKYxvuK8wC8BFQe0YS7C2Yp5Zphu
	 wIPp1I4pfLR05Z6oEqPxPLKt8mvYTuLkyZdx5zW/0zC3JVd80aYj+atahStfW7oXOK
	 gg+LenB6q52ZWWiGKaZlabA5zEVvyEj5IFZOftXjjPL4DotlGeWNCGVLv0Kja655xH
	 mMnEbx5tfuEtj3a1gnEvoi8KHWAD+C4LWb0JxyJ2Qs6w8AxDz3CkKwJ6/9KxaHqrQ4
	 G2BkArsUHPIJQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: phy: rockchip: Convert RK3399 PCIe PHY to schema
Date: Mon, 14 Apr 2025 20:18:23 -0500
Message-ID: <20250415011824.2320039-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_181833_992383_51F957A6 
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

Convert the Rockchip RK3399 PCIe PHY to DT schema format. Move the
example to the GRF binding as that has the complete block.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
v2:
 - actually include new schema file!
---
 .../phy/rockchip,rk3399-pcie-phy.yaml         | 45 +++++++++++++++++++
 .../bindings/phy/rockchip-pcie-phy.txt        | 36 ---------------
 .../devicetree/bindings/soc/rockchip/grf.yaml | 13 +++++-
 3 files changed, 56 insertions(+), 38 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3399-pcie-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-pcie-phy.yaml
new file mode 100644
index 000000000000..f46f065e5dbe
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-pcie-phy.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,rk3399-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3399 PCIE PHY
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    const: rockchip,rk3399-pcie-phy
+
+  '#phy-cells':
+    oneOf:
+      - const: 0
+        deprecated: true
+      - const: 1
+        description: One lane per phy mode
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: refclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: phy
+
+required:
+  - compatible
+  - '#phy-cells'
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+...
diff --git a/Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
deleted file mode 100644
index b496042f1f44..000000000000
--- a/Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-Rockchip PCIE PHY
------------------------
-
-Required properties:
- - compatible: rockchip,rk3399-pcie-phy
- - clocks: Must contain an entry in clock-names.
-	See ../clocks/clock-bindings.txt for details.
- - clock-names: Must be "refclk"
- - resets: Must contain an entry in reset-names.
-	See ../reset/reset.txt for details.
- - reset-names: Must be "phy"
-
-Required properties for legacy PHY mode (deprecated):
- - #phy-cells: must be 0
-
-Required properties for per-lane PHY mode (preferred):
- - #phy-cells: must be 1
-
-Example:
-
-grf: syscon@ff770000 {
-	compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	...
-
-	pcie_phy: pcie-phy {
-		compatible = "rockchip,rk3399-pcie-phy";
-		#phy-cells = <0>;
-		clocks = <&cru SCLK_PCIEPHY_REF>;
-		clock-names = "refclk";
-		resets = <&cru SRST_PCIEPHY>;
-		reset-names = "phy";
-	};
-};
diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2f61c1b95fea..fc328c4a35e4 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -201,8 +201,8 @@ allOf:
 
         pcie-phy:
           type: object
-          description:
-            Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
+          $ref: /schemas/phy/rockchip,rk3399-pcie-phy.yaml#
+          unevaluatedProperties: false
 
       patternProperties:
         "^phy@[0-9a-f]+$":
@@ -326,6 +326,15 @@ examples:
         #phy-cells = <0>;
       };
 
+      pcie-phy {
+        compatible = "rockchip,rk3399-pcie-phy";
+        #phy-cells = <1>;
+        clocks = <&cru SCLK_PCIEPHY_REF>;
+        clock-names = "refclk";
+        resets = <&cru SRST_PCIEPHY>;
+        reset-names = "phy";
+      };
+
       phy@f780 {
         compatible = "rockchip,rk3399-emmc-phy";
         reg = <0xf780 0x20>;
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
