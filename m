Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E42FC25B74
	for <linux-phy@archiver.kernel.org>; Sat, 18 May 2024 11:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzd3Z1uuIUUkvizjzWKS8xbhn/F16quBu9ZpJjgFogI=; b=jbyaN3JaYpTMhj
	CQwpbxu+kedpv1wt6x/2GsgxK3Ef9g/LgiJIuvbAq/fuBkHL7rPV4+oABW+a0sznKbhFV8+tzRqa2
	Zr9JA4uZTn96YIhWkudfs2POLhFDZdZU/T0yAHS3H2kOPwjL4YMar4fn7ne397Vm3gbi16CYbOC7q
	WzEEX9Oha8MbteBDYWyYAFuisKxeiBjtAMcqu/0KsfesXnerU+koMQGp1UnYoUz1NugIh/ForIP8O
	qDVeqBcrIsIGED5ZaUnMe5nWHOczcxEf6Z0QdHS6cKw6BLLKgsdwsLD/+KSnzhNGfsFnraZ7u4IQ6
	FrFmQDUlS/KouInwT2eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8IIs-00000009zIS-2Iql;
	Sat, 18 May 2024 11:32:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8IIj-00000009zEG-2iM5;
	Sat, 18 May 2024 11:32:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 332C56033D;
	Sat, 18 May 2024 11:32:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EB80C113CC;
	Sat, 18 May 2024 11:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716031948;
	bh=GpTGAjreFqQ3oD/10QY9h+IcnNMYrC6wr2HxnYrBbPE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Pz7Rrw69LJ1qQiQSRXjwgh6ukRi+F6sNjgzy3+xAp5lMZ6YbT7M+LqqBPHDV2Tt3l
	 +O2sDigJEruFHmbxvM8A7R3SdUSV4tW6hBOlkaV7NyDrN9nVwZRSjf6+wTuzsyJo7m
	 8BMYwvn41JriZi914Xt0SAkjR6TEe2DoRRe9vusTJngKKufSiChU8QRxyoozO7Q0hd
	 Gze60MPgqmemumKlOxXwPxR5oq2ikMfWOYIprFMaRQbM0540YuyEzd7kioNeF0T4zb
	 7ho23BhtIooNxpNxiCqUz6+yIp0q1Iu14H5gCzwfiPZItZscr7HxMJ14oT4eZ1oj1C
	 zNgGjEW01uyZQ==
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
Subject: [PATCH v3 1/4] dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
Date: Sat, 18 May 2024 13:31:41 +0200
Message-ID: <82688bbe03ae2d68af838c2bc7fd20491a7d42b1.1716031610.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <cover.1716031610.git.lorenzo@kernel.org>
References: <cover.1716031610.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240518_043233_790265_1A100FF6 
X-CRM114-Status: UNSURE (   9.99  )
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

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
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
