Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CD2FC61CE8
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eTU8Ki+Sb70XcgmZVbX9q5NKOaMO4ajd0rGQnJJfN7k=; b=v2r07KhMUwxrG4
	d+B3TPQMnQdtbnBWOf0VTRdWfvTuDnnLwEEuo4Lu346TJaBSMzO2N95o0I7+UXG6F29oKE3vZdCas
	q1P3/Wm6bbYeaZGwsq083AIubLVMDyufg0ZUctmHwISp7FPebVfFPCPGbboE6UytBo9dyb36cV8aK
	HOWAKKemJXrvdqeFDywyZqr2E8zOXwUlD61aZEA2EjIcD1sJQyPBbwcKQe0Jy9d8HSb4t7Xtj4nhp
	ldIc205YGYWzk+hatEP79cXurrzJEUWUsTU5fXH7eUFNnwgdiSmHQdZ+Bl/qWZFNwZBV6QWoghMO5
	B31N5Tt/6DDQ3swofLgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO12T-0000000278e-1KC3;
	Sat, 07 Jun 2025 21:25:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO12Q-00000002776-176E
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:25:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 09A525C5855;
	Sat,  7 Jun 2025 21:22:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04F46C4CEE4;
	Sat,  7 Jun 2025 21:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331513;
	bh=qx2zwBcl3wNpob4mAq9+wFt2npdqpRCKjBcRH1CJvIA=;
	h=From:To:Cc:Subject:Date:From;
	b=IPhiHrbH5f8+A5NmvaBnF/m7CUnZogDiCEHj3to5pHvZ4G0bABPm3a4zVBwHosSv5
	 JtSCG1UbWjhWxWbYRfagN+KJFNN3sOu/JOMHB/UJ0Pe7VZOkZCln0VlIH5c8LKvD1S
	 PCyPezXgfuTtyj3QEwj3rPRQZqJA/bxBZEFvxRvUsQySO0whZkkqacWwbYQ7n6NYjg
	 zCdE3LoOyxidwqS2aWVBLFDzjrgvQkJxBgWmrrFJcVW5KAg6wMyZdgxdEQf1gWvRau
	 p4Qw3CO4uPqio7q3RpCQdDH+LrL498gaaS2kuFDHEEHDtIHpj3Sm0fVGEe6CS9R7jA
	 Bquw7I1HhMVJA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ray Jui <ray.jui@broadcom.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert brcm,sr-pcie-phy to DT schema
Date: Sat,  7 Jun 2025 16:25:07 -0500
Message-ID: <20250607212508.741193-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142514_405364_EE8A3E46 
X-CRM114-Status: GOOD (  12.64  )
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

Convert the Broadcom Stingray PCIe PHY binding to DT schema format. It's
a straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/brcm,sr-pcie-phy.txt         | 41 -----------------
 .../bindings/phy/brcm,sr-pcie-phy.yaml        | 46 +++++++++++++++++++
 2 files changed, 46 insertions(+), 41 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/brcm,sr-pcie-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/brcm,sr-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/brcm,sr-pcie-phy.txt b/Documentation/devicetree/bindings/phy/brcm,sr-pcie-phy.txt
deleted file mode 100644
index e8d82286beb9..000000000000
--- a/Documentation/devicetree/bindings/phy/brcm,sr-pcie-phy.txt
+++ /dev/null
@@ -1,41 +0,0 @@
-Broadcom Stingray PCIe PHY
-
-Required properties:
-- compatible: must be "brcm,sr-pcie-phy"
-- reg: base address and length of the PCIe SS register space
-- brcm,sr-cdru: phandle to the CDRU syscon node
-- brcm,sr-mhb: phandle to the MHB syscon node
-- #phy-cells: Must be 1, denotes the PHY index
-
-For PAXB based root complex, one can have a configuration of up to 8 PHYs
-PHY index goes from 0 to 7
-
-For the internal PAXC based root complex, PHY index is always 8
-
-Example:
-	mhb: syscon@60401000 {
-		compatible = "brcm,sr-mhb", "syscon";
-		reg = <0 0x60401000 0 0x38c>;
-	};
-
-	cdru: syscon@6641d000 {
-		compatible = "brcm,sr-cdru", "syscon";
-		reg = <0 0x6641d000 0 0x400>;
-	};
-
-	pcie_phy: phy@40000000 {
-		compatible = "brcm,sr-pcie-phy";
-		reg = <0 0x40000000 0 0x800>;
-		brcm,sr-cdru = <&cdru>;
-		brcm,sr-mhb = <&mhb>;
-		#phy-cells = <1>;
-	};
-
-	/* users of the PCIe PHY */
-
-	pcie0: pcie@48000000 {
-		...
-		...
-		phys = <&pcie_phy 0>;
-		phy-names = "pcie-phy";
-	};
diff --git a/Documentation/devicetree/bindings/phy/brcm,sr-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,sr-pcie-phy.yaml
new file mode 100644
index 000000000000..60ccc0813ed5
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/brcm,sr-pcie-phy.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/brcm,sr-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Stingray PCIe PHY
+
+maintainers:
+  - Ray Jui <ray.jui@broadcom.com>
+
+description: >
+  For PAXB based root complex, one can have a configuration of up to 8 PHYs.
+  PHY index goes from 0 to 7.
+
+  For the internal PAXC based root complex, PHY index is always 8.
+
+properties:
+  compatible:
+    const: brcm,sr-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  '#phy-cells':
+    const: 1
+
+  brcm,sr-cdru:
+    description: phandle to the CDRU syscon node
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  brcm,sr-mhb:
+    description: phandle to the MHB syscon node
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@40000000 {
+        compatible = "brcm,sr-pcie-phy";
+        reg = <0x40000000 0x800>;
+        brcm,sr-cdru = <&cdru>;
+        brcm,sr-mhb = <&mhb>;
+        #phy-cells = <1>;
+    };
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
