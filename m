Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73BFCE63FED
	for <linux-phy@archiver.kernel.org>; Sat,  4 Apr 2026 18:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhfVGVBCXoUXKKGDDLbyvHSYvMS19JzU/ihb3WBYHww=; b=dS7YCOCCj/J4h1
	pkcjzur5D3z1RVD8CIgiH4l8aC2dh7C2Tk9ufidikMUpxTkd+0VHbOeoQzdCHa7wZRhM8bix0ytUY
	ZZ8YSpdDLyxAztESLm/5sLVzdohJufFnLoq7bMjuWMSZJOSEcP04xsUWLk0HOvuSmJ+dkogQNhQdz
	Sw7GlZ33pvfiqb8zlWZY3lRlAAcS4KWgeKLxuqkSoEafZvRyC1JruDxq+VGvgcmMjXQxjWrb9a39V
	ObYTi7++2wURwPyccE2eGKyKEdLvDoEKHL2fNtMiiyK6mH0UbhIp2Pvh4rU6bYCFYnNyyTrRhVKm8
	xde3YaCvoQMMJp7cm62Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w963v-00000003g2I-0tEN;
	Sat, 04 Apr 2026 18:49:39 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w963s-00000003g1N-3FaM
	for linux-phy@lists.infradead.org;
	Sat, 04 Apr 2026 18:49:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6AA0918F1E3;
	Sat,  4 Apr 2026 20:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1775328573; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=YnebsD5xWbJkEpbpYJViFsMgD+i9B4XOyvgycIVM15M=;
	b=bQMllJK2ZYrWu/QRJNL6JTOj9gQ+xwjjK8o2K2VzYWgynkTYUMM1uKwT2j52YD3KON41lM
	NeeEJj5a+3uGSfeytPZQvIwd5PX94zJH2YB1uZzjzE1tF9bwW/CoJzHg2YeBfthYFMio/N
	6lBDKketbNTx5+HVSP4mjPEfWu+sBn1TGDQjbM5mOQz79ZhKqo6NwEttJr65CmQCo08AK8
	/VHtI1BN7pdBjzRJ398yAtlmZl6YfEjbZr5qIGCNjbw6Lhy0W12bCC4069+Nx+4CnqT9fe
	FQWg8ZjBaSX5ZotikKsZ+L/fAcTDSO0ncaoIXIjuM7tKOTBeL+ruC/udgU4KUw==
From: Caleb James DeLisle <cjd@cjdns.fr>
To: linux-phy@lists.infradead.org
Cc: naseefkm@gmail.com,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Caleb James DeLisle <cjd@cjdns.fr>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: Document PCIe PHY in EcoNet EN751221 and EN7528
Date: Sat,  4 Apr 2026 18:49:17 +0000
Message-Id: <20260404184918.2184070-2-cjd@cjdns.fr>
In-Reply-To: <20260404184918.2184070-1-cjd@cjdns.fr>
References: <20260404184918.2184070-1-cjd@cjdns.fr>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260404_114937_124709_7A0BC49F 
X-CRM114-Status: GOOD (  10.97  )
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

EN751221 and EN7528 SoCs have two PCIe slots, and each one has a PHY
which behaves slightly differently because one slot is Gen1/Gen2 while
the other is Gen1 only.

Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../phy/econet,en751221-pcie-phy.yaml         | 50 +++++++++++++++++++
 MAINTAINERS                                   |  6 +++
 2 files changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml
new file mode 100644
index 000000000000..987d396c1c64
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/econet,en751221-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: EcoNet PCI-Express PHY for EcoNet EN751221 and EN7528
+
+maintainers:
+  - Caleb James DeLisle <cjd@cjdns.fr>
+
+description:
+  The PCIe PHY supports physical layer functionality for PCIe Gen1 and
+  Gen1/Gen2 ports. On these SoCs, port 0 is a Gen1-only port while
+  port 1 is Gen1/Gen2 capable.
+
+properties:
+  compatible:
+    enum:
+      - econet,en751221-pcie-gen1
+      - econet,en751221-pcie-gen2
+      - econet,en7528-pcie-gen1
+      - econet,en7528-pcie-gen2
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      pcie-phy@1faf2000 {
+        compatible = "econet,en7528-pcie-gen1";
+        reg = <0x1faf2000 0x1000>;
+        #phy-cells = <0>;
+      };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 96e0781f2201..1b016212e4cb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9172,6 +9172,12 @@ F:	drivers/irqchip/irq-econet-en751221.c
 F:	include/dt-bindings/clock/econet,en751221-scu.h
 F:	include/dt-bindings/reset/econet,en751221-scu.h
 
+ECONET PCIE PHY DRIVER
+M:	Caleb James DeLisle <cjd@cjdns.fr>
+L:	linux-mips@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml
+
 ECRYPT FILE SYSTEM
 M:	Tyler Hicks <code@tyhicks.com>
 L:	ecryptfs@vger.kernel.org
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
