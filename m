Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7937AC61DB8
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fI6SVbkfj/53qFkKOkG0hlrZjROMQZ5rb5od7UN/Ooo=; b=37sUIRaO0BlqZj
	s0n8iazApsTEvth7ich5AsPpZ9NNX70BKQHpvInts0FHKHBkwGctw0Gw3RFjz/LxRrDVWO20epwYE
	bn63MrzxCM/txvQSh1zRUnrJKoaIK4zJlBJxrLOTwrFhTRxSDqHyzSeuaq7XerHNlo2OJ9Aw0R4XG
	p745olt8/aMdRAZ/ARmjuvAQtl57JDcsqV/Vnc9hXI5AQAekv3AmPlU+IBAEF/yH1n4qTKwaD94ps
	exIwdZjrhMrLHvZkLArKtXL6EEb/SexRqGAKr7nG7sRBJ8s/40jKh9hu0zNbilrkb1sfBVWv4eNzZ
	IAyeAIjf0BPHYA7BXrog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14o-000000027qO-0ptd;
	Sat, 07 Jun 2025 21:27:42 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO13h-000000027UP-3Td6
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:26:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 351A8A4BB65;
	Sat,  7 Jun 2025 21:26:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B29C9C4CEE4;
	Sat,  7 Jun 2025 21:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331592;
	bh=nRisKPNacvoseFqtxNXckU+ZjYBIGNp5wV6i5Jl2UTA=;
	h=From:To:Cc:Subject:Date:From;
	b=H64H16zm65Zi1YeZCsv1mcwfdWR/NBzPHRL4rtxGMBd4jarEPuSd/+HVbWhzQ2gjZ
	 FykD2+eeeXNU8Z2pJa7XVOcD0DMU95fZ2n4rTo++Zq8L/zbWRn9NOosRBRorAnWWfY
	 uo7SU/UHjfS798vm0g4CrzhGWg0zoL3Tux/qKdJE2iUsCyvfo4MrbdUIrWWO2sqT0l
	 5D/ZH0EY8XbFot0U+7mJUZsT8h6zoeuc0F9SKAg5onPe6YR8GI1bXjHOWjzC8R3bsc
	 yIJWpPAClKJjMlwT408AvJFkr0o6oOnoQlRDOlgc8JI/sui/JQET3bDHHPHaxtda0I
	 cDI72xqzF3IYA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pratyush Anand <pratyush.anand@gmail.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert st,spear1310-miphy to DT schema
Date: Sat,  7 Jun 2025 16:26:28 -0500
Message-ID: <20250607212629.744191-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142633_991455_8E556FDF 
X-CRM114-Status: GOOD (  12.22  )
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

Convert the ST SPEAr MIPHY PHY binding to DT schema format. It's a
straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/st,spear1310-miphy.yaml      | 53 +++++++++++++++++++
 .../bindings/phy/st-spear-miphy.txt           | 15 ------
 2 files changed, 53 insertions(+), 15 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/st,spear1310-miphy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/st-spear-miphy.txt

diff --git a/Documentation/devicetree/bindings/phy/st,spear1310-miphy.yaml b/Documentation/devicetree/bindings/phy/st,spear1310-miphy.yaml
new file mode 100644
index 000000000000..32f81615ddad
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/st,spear1310-miphy.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/st,spear1310-miphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ST SPEAr miphy
+
+maintainers:
+  - Pratyush Anand <pratyush.anand@gmail.com>
+
+description:
+  ST Microelectronics SPEAr miphy is a phy controller supporting PCIe and SATA.
+
+properties:
+  compatible:
+    enum:
+      - st,spear1310-miphy
+      - st,spear1340-miphy
+
+  reg:
+    maxItems: 1
+
+  misc:
+    description: Phandle for the syscon node to access misc registers.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  '#phy-cells':
+    description: >
+      Cell[0] indicates interface type: 0 = SATA, 1 = PCIe.
+    const: 1
+
+  phy-id:
+    description: Instance id of the phy. Required when multiple PHYs are present.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+  - reg
+  - misc
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    miphy@1000 {
+        compatible = "st,spear1310-miphy";
+        reg = <0x1000 0x100>;
+        misc = <&syscon>;
+        #phy-cells = <1>;
+        phy-id = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/st-spear-miphy.txt b/Documentation/devicetree/bindings/phy/st-spear-miphy.txt
deleted file mode 100644
index 2a6bfdcc09b3..000000000000
--- a/Documentation/devicetree/bindings/phy/st-spear-miphy.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-ST SPEAr miphy DT details
-=========================
-
-ST Microelectronics SPEAr miphy is a phy controller supporting PCIe and SATA.
-
-Required properties:
-- compatible : should be "st,spear1310-miphy" or "st,spear1340-miphy"
-- reg : offset and length of the PHY register set.
-- misc: phandle for the syscon node to access misc registers
-- #phy-cells : from the generic PHY bindings, must be 1.
-	- cell[1]: 0 if phy used for SATA, 1 for PCIe.
-
-Optional properties:
-- phy-id: Instance id of the phy. Only required when there are multiple phys
-  present on a implementation.
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
