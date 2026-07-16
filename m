Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8A83C44512
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 15:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GZQkAmlVmrktuxCJ0tmb5ptBwH2bzl7BivE4Ff341s=; b=DtZff/RX36CuYs
	ZDxV+VNbVOkGEk4nC7DQJBDj5L1JFAqnpdPyg68XwL8zOppl1/lNS8abu3Zor7wZlDb+NWgzQG0We
	bhyB7k8xXXy9GsOB/Ui8USA5OA3ENQDi6TAKnmitmnIP3oghB74V9k4qnBwBxZdwO0BD5IVAhhNW2
	gei9BiC51kxkp7F09WT+PKxaZaop346R65mTE3ZBwIqZiKiRjf0hwk6jM3lE+QRV1pSGnX+qKXGZN
	fX+BX0Dx+vU53vgHnunto1IMYjIh/W7KyE/FHSulywzOiABLHxLT3eia4ryhuaYInJRvd/N2ZiwTK
	vmUsRyA5Uv9qAf99nxqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkNmY-000000000rs-2ZFY;
	Thu, 16 Jul 2026 15:13:50 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkNmO-000000000l6-1NE8;
	Thu, 16 Jul 2026 15:13:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784214817;
	bh=1TfHjfCjyABk53A8MaRhQkosWW62gMUxDynVzVFzhyE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=llxscuaw1rmARpqLMcpCOo4I/OPeGwUx1/z0v9vAj6q8gd/8c8AXeP/PoFV3mh5QB
	 31+s7AImDTpu5gXKvRTzdv9fxWGDC09hNB7pl6NoaHJNNoLrz1ieAorOCPClbSdgEr
	 AM9dbMoyEGV2LRcwnpUY72uzZsOVkBecffiWcp/kUZKDuxOhqTFqAHWNNkUf38p238
	 22Kv8tz1TGSUv5quA1rpNnxqMRxLmBHVejHTgBuHcBPu3inYa2s8kjt+4zkkhkkDCP
	 A7rfFq6EA+ZITpvDjHdT4IGN3dmt/QV6ScssCE/wEtcNDIKfkdpxK55o/DetvlkRCA
	 93fUejgYRvu5w==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BB46017E0018;
	Thu, 16 Jul 2026 17:13:36 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunfeng.yun@mediatek.com
Cc: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 1/2] dt-bindings: phy: Document MT8196 MediaTek PCI-Express Gen4 S-PHY
Date: Thu, 16 Jul 2026 17:13:32 +0200
Message-ID: <20260716151333.77254-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260716151333.77254-1-angelogioacchino.delregno@collabora.com>
References: <20260716151333.77254-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_081340_517799_8C8CFA8F 
X-CRM114-Status: GOOD (  12.29  )
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

This adds bindings for the PCI-Express Gen4 S-PHY found in newer
MediaTek SoCs, such as MT8196 and its variants.

In the current "revision 3", depending on the specific port, this
S-PHY supports up to two lanes of PCI-Express Gen 4 and both EP
and RC modes.
It is not clear whether revisions/versions earlier than 3 have
ever been shipped in any other MediaTek SoC.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../phy/mediatek,mt8196-pcie-sphy.yaml        | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt8196-pcie-sphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt8196-pcie-sphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt8196-pcie-sphy.yaml
new file mode 100644
index 000000000000..2b61882c402c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt8196-pcie-sphy.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/mediatek,mt8196-pcie-sphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek PCI-Express Gen4 S-PHY
+
+maintainers:
+  - AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
+
+description:
+  The MediaTek PCI-Express Gen4 S-PHY is capable of data serialization
+  and de-serialization with 8, 10, 128 or 130 bits (16GT/s) encoding
+  and decoding, has analog buffers, elastic buffers and mechanisms for
+  receiver detection.
+  This PHY supports link rates of 2.5, 5.0, 6.0 and 16.0 GT/s per-lane
+  in both Root Complex (RC) and End Point (EP) modes, depending on the
+  chosen port.
+  The Digital PHY (PHYD) part adheres to the Intel PIPE (PHY Interface
+  for the PCIe) specification.
+
+properties:
+  compatible:
+    const: mediatek,mt8196-pcie-sphy
+
+  reg:
+    minItems: 2
+
+  reg-names:
+    items:
+      - const: sif
+      - const: ckm
+
+  "#phy-cells":
+    const: 0
+
+  nvmem-cells:
+    items:
+      - description: Internal resistor selection of TX Bias Current
+      - description: XTP Bias V2V voltage calibration
+      - description: S-PLL CKTX Impedance Selection (P-MOSFET side)
+      - description: S-PLL CKTX Impedance Selection (N-MOSFET side)
+      - description: S-PLL CKTX Intermediate Transition Impedance
+      - description: RX Front-End Return Loss Continuous Time Linear EQ
+      - description: RX Front-End Return Loss Variable Gain Amplifier
+      - description: RX Front-End Return Loss Decision Feedback EQ
+      - description: RX Impedance Selection
+      - description: TX Impedance Selection (P-MOSFET side)
+      - description: TX Impedance Selection (N-MOSFET side)
+      - description: TX Lane 0 Switch Resistance (RSWn)
+      - description: TX Lane 1 Switch Resistance (RSWn)
+      - description: eFuse calibration table version
+
+  nvmem-cell-names:
+    items:
+      - const: int-r
+      - const: xtp-vtrim
+      - const: cktx-pmos
+      - const: cktx-nmos
+      - const: cktx-r-mid
+      - const: rxfe-lanes-rl-ctle
+      - const: rxfe-lanes-rl-vga
+      - const: rxfe-lanes-rl-dfe
+      - const: rx-lanes-imp
+      - const: tx-lanes-pmos
+      - const: tx-lanes-nmos
+      - const: tx-ln0-rswn
+      - const: tx-ln1-rswn
+      - const: cal-version
+
+  power-domains:
+    maxItems: 1
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
+    phy@16900000 {
+        compatible = "mediatek,mt8196-pcie-sphy";
+        reg = <0x16900000 0x10000>, <0x16920000 0x10000>;
+        reg-names = "sif", "ckm";
+        power-domains = <&spm 10>;
+        #phy-cells = <0>;
+    };
-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
