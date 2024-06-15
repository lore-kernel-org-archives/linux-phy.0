Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC687C27C77
	for <linux-phy@archiver.kernel.org>; Sat, 15 Jun 2024 21:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/82FHBf/Ac5pyrMD5YWKkgExLzsdWjyZHvoPTrbba6o=; b=2lhjdCisUxjots
	nbW0Wp2xHtPb/Ad7vQZx9D4VUOGrO4i066Q0+TD1xp90Qubf2DTTOQaZUgOBHOmjC6l6VPXIH+lqi
	rEf+YSnjfRD1SupxbuR6Kz7cOqzNgaGS/1/ZbwPXV/PzVU1DQ4SnLwPzkEoo6EZK/ImhN2zTRBtS+
	e0Vv9S1MBGbNKeboIjvXaXKmMaMOhV4h2HN0+tEPAT2v23XuIa07Msx1s7fbXqbIsoxkwAhk2btoe
	oSoFcjzBujTIflck/g6OC9rUuqmvCsCG9hFg2OAPMAxtJsYuv977jam9cUHb9MXXbqqh244qrwBqg
	pvcG8KejAuPw1nnDu2Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIal5-000000067bD-1LoW;
	Sat, 15 Jun 2024 21:16:23 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIal0-000000067ZB-3bhX;
	Sat, 15 Jun 2024 21:16:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0B75ACE09FC;
	Sat, 15 Jun 2024 21:16:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6A0CC116B1;
	Sat, 15 Jun 2024 21:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718486173;
	bh=evIn7xh6SdBE2cvkryisKc7x+EBS3bwMxyMotTSXgqc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F7pQH8u+JVLPZnkehFllDOjNZhxr/KtiiL5PKbBt1+WIBLEEIfvUCtuCjL9VPgP5F
	 G8be9n+T1f1nYjT8xiI7v3TrY8jqgSw58n87rhB+TxsCANblAE1JZIdumHrxbIj9yO
	 oM6djr34ge0IQ5sxl30T0o6BIT1+TxGbW+ZrFDgea4mDszHjhkSzde7RG88ZSMbeeT
	 4po/pkqWOtjUQqy/dlrjL0oq0ZuWEbCWPWaGOaD2eRKedGv/3BP+nRuKxf/S9RXhhN
	 xPVesKlkpCO63XEJFYsQTSD3iGt2sQULKZvTVe2wAMc9GoXE7Gps48Fn5VOs6NdloL
	 9FQkzYYNxLDgw==
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
	angelogioacchino.delregno@collabora.com,
	amitsinght@marvell.com
Subject: [PATCH v4 1/3] dt-bindings: phy: airoha: Add PCIe PHY controller
Date: Sat, 15 Jun 2024 23:15:41 +0200
Message-ID: <656133f865433c1d02f00a3abbb1aa9312d2a24e.1718485860.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <cover.1718485860.git.lorenzo@kernel.org>
References: <cover.1718485860.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_141620_266427_540FBE34 
X-CRM114-Status: UNSURE (   9.69  )
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
controller.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../bindings/phy/airoha,en7581-pcie-phy.yaml  | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
new file mode 100644
index 000000000000..e26c30d17ff0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,en7581-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha EN7581 PCI-Express PHY
+
+maintainers:
+  - Lorenzo Bianconi <lorenzo@kernel.org>
+
+description:
+  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen3 port.
+
+properties:
+  compatible:
+    const: airoha,en7581-pcie-phy
+
+  reg:
+    items:
+      - description: PCIE analog base address
+      - description: PCIE lane0 base address
+      - description: PCIE lane1 base address
+
+  reg-names:
+    items:
+      - const: csr-2l
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
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        phy@11e80000 {
+            compatible = "airoha,en7581-pcie-phy";
+            #phy-cells = <0>;
+            reg = <0x0 0x1fa5a000 0x0 0xfff>,
+                  <0x0 0x1fa5b000 0x0 0xfff>,
+                  <0x0 0x1fa5c000 0x0 0xfff>;
+            reg-names = "csr-2l", "pma0", "pma1";
+        };
+    };
-- 
2.45.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
