Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A494C25B75
	for <linux-phy@archiver.kernel.org>; Sun, 12 May 2024 15:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LE7QMuv6MSVp1aufsjsKF+Gn9tC1RARPWaun3D4M71g=; b=MR5JMYMe0Iv1Ft
	w7vbq3CXXctBy3xt2Bh8gBz7XrHsk7Su+uvbLffZ/JRa4Xtxd2YRESnY25j+1lVO9k0gdOM5g1aCx
	wtw5Skd408MWMk7oL7T06nq0K0RdP/W7oqj4N2kpRvtTyQScMi9urOeL4LpE5GWCH6l8VbRi2skca
	ubM1lmHx7wDKWNdFxFUPbHQqe5z15iYM+6Pa4jvcK6EpHc4/orKQw73HB3Bs2itUOErjEgGljk80x
	BWM3tQeutx4z5l/KPxVuzjYaGF4kVfZEvRBRbH0DR1ERtLFbU86m4GivWN2Gd6N8NtXmSdnCqKtS/
	lce8ga94258DHOOfSwyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6B7e-0000000ACiW-1eJe;
	Sun, 12 May 2024 15:28:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6B7a-0000000ACg7-0neb;
	Sun, 12 May 2024 15:28:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 78BCE60A50;
	Sun, 12 May 2024 15:28:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2825C116B1;
	Sun, 12 May 2024 15:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715527696;
	bh=R5RXj1vs4tCFOTf3Chodz6fjxKnCyLnx9GFDlSS3+OY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Jtw7iBaTS6VyAYb7C13KUs9wopxIBMXa0X/vA91VtQoizHa1IhFQmNl/xymFqHjMS
	 fnpjQLBqZDE7G0XlxsopiNk/Dy4EmsjnHsy8vQR1uFB1kQ/imi1vPZ6kUYPiZBAguI
	 luCpZh2g3XT5WHAnro5u9GzxJRS2lbU8JVGN+siqd9EHkw9emy0XiFtzdham1nfrtr
	 8zNf0yRwTwSMMnXHEv+8+oyYkhzRu/E6kG2KIsa4V5LKLLtVdGtsTY5bHStq3AG2hS
	 tywIXBI5ub6XgdiO6+NFc5R3fQmimPLhZU9p51DkVRrJUURsF1lGGWuS/h9Z2cuJDY
	 EESBCR83b+U+g==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH 1/3] dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
Date: Sun, 12 May 2024 17:27:38 +0200
Message-ID: <7b60943ea9814a1a9a3d8b273157b338f9130174.1715527166.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <cover.1715527166.git.lorenzo@kernel.org>
References: <cover.1715527166.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240512_082818_298131_EF2B1E5D 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
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

Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
driver.

Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../bindings/phy/airoha,pcie-phy.yaml         | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
new file mode 100644
index 000000000000..443d7e717296
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha PCIe PHY
+
+maintainers:
+  - Lorenzo Bianconi <lorenzo@kernel.org>
+
+description: |
+  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen3 port.
+
+properties:
+  compatible:
+    const: airoha,en7581-pcie-phy
+
+  reg:
+    maxItems: 3
+
+  reg-names:
+    items:
+      - const: csr_2l
+      - const: pma0
+      - const: pma1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/phy/phy.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        phy@11e80000 {
+            compatible = "airoha,en7581-pcie-phy";
+            #phy-cells = <0>;
+            reg = <0x0 0x1fa5a000 0x0 0xfff>,
+                  <0x0 0x1fa5b000 0x0 0xfff>,
+                  <0x0 0x1fa5c000 0x0 0xfff>;
+            reg-names = "csr_2l", "pma0", "pma1";
+        };
+    };
-- 
2.45.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
