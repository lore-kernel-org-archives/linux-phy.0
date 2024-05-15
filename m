Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65359C25B75
	for <linux-phy@archiver.kernel.org>; Wed, 15 May 2024 10:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpr66hbQcnxhdcNluevqsyHCglnEHDvE02iR6KHSNas=; b=PXiFu5zQppk+u/
	9c3lg3k5JLuNESMeh44RmHTBkU4pAOdcsvydZRUqaw7hVIxqY76w5nV25lzok1/9QmgmnbribA+3u
	16j7r5YAd5NeEH1KM0pgIpXmBBEzvIpJPcv/AnfWItVxBz5If1aKaEvzDChne+Zw3+OMDXZTucgHY
	xw3nSUiVUlQFLzbpiFBgEWXfxmJa8PSNm0a5L6rz9iPoV6DtIdqfJnJPz2Y32GaXQ1bqPYb/3DgBy
	suU61/ngd6EgVAy3UOWqNgTQucGoemzqOhlXWfVsL6Rkj54N4K7fMG1bBzTC7HJsCxiy9wpSGgiZF
	uY34XfhLD7aeEiGkRTkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7C8D-00000001GKk-03ud;
	Wed, 15 May 2024 10:45:09 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7C87-00000001GIJ-1hck;
	Wed, 15 May 2024 10:45:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id ACBC7CE14E6;
	Wed, 15 May 2024 10:45:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D3FDC116B1;
	Wed, 15 May 2024 10:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715769900;
	bh=/K0UiVi3rhFcrGRRkM+gRZbwIYpCEqjchJIyOiKbcPs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Onm1lSeo4dIwYF7SKJlQO4dhq7pODzIv8vWbeU5REzkt5e4JKzLx+IPnV082luFJg
	 h2sZHTYMrId3yzl13gMKrKF2Rghsu/VJMquZRrAsSovklcDdo72mXvCOX86yLRiH+p
	 tT5DdpIFGspONOhIgDuIdSnA7NtY4O3P/d5tdrqsSTYPf2Zq3w6k/2mNakKn1jybF1
	 b21cbsJPmQ1z8AR6ju9gSFqy4PfRm48FhyoRk8DGc7KxG6x8EVAR/rkxGMN7eaZkua
	 MeADLQm0yKik1BWchlGBXIT+iwsWaeavRyegnht3M+Xd56CBo+jFjj40mDyUxUUgNZ
	 uovdZUMoO6vgw==
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
Subject: [PATCH v2 1/4] dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
Date: Wed, 15 May 2024 12:44:45 +0200
Message-ID: <0807ee3023a771fbb35fff5c65839120959486d3.1715769325.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <cover.1715769325.git.lorenzo@kernel.org>
References: <cover.1715769325.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_034503_648135_F55EE5E8 
X-CRM114-Status: GOOD (  10.35  )
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
 .../bindings/phy/airoha,en7581-pcie-phy.yaml  | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
new file mode 100644
index 000000000000..4ab04b501129
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
@@ -0,0 +1,55 @@
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
+            reg-names = "csr_2l", "pma0", "pma1";
+        };
+    };
-- 
2.45.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
