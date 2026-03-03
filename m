Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1779AEDEBE0
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 19:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZOHqT0zyGGFLfw5zQKUETebvXlJfpOOEunJhPj4yks=; b=NAwoYHIcFAQM2E
	XhlTAKb/IMytQAhkCz4ff3ukYQmWWuz1gQuPgodP8kNDOGwNPiNdmo90A/StOf2HDcoCt6HeCGnJe
	tgsXRgxqwM+ixwJviIQ2b/5S8+8mWK265mDsLI9SCC0EwKkOX+C+PEc0i4soMkGOI1uVqk4ZfT9gI
	ps9T3yFhYAz0jHGlYMZzOLBogPGO/qhqZ/9pEZ0cje/cXhh/Bda3sYWzcEhmV8M7PLIjXEcMfEFTZ
	Ub/pnNEVitpCP/laZRcZ31RDbb5DXUv6wdM68X0c15IGZTAczAZbLJz9Epp1EY8a+sruHMuxyW1Fu
	DM6l0YZkx4JCmtCffiWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxV8g-0000000FkmI-3R7m;
	Tue, 03 Mar 2026 19:10:38 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxV8d-0000000FkhY-29l2;
	Tue, 03 Mar 2026 19:10:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9DAD320CD2C;
	Tue,  3 Mar 2026 20:10:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1772565032; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=LgrYHxVXH/xqbEM9i5EqdtYKP15yv6x7HKPpgK2Wkrw=;
	b=GHJGkMtvnNl2cmtaoQ1Z/zMMaO1HyObR1QEJaMV9RDVDwbXL3oTGV9EINSP+D31Lu9biDi
	ISBBmgpVc1f0JPiazHno/zORqpJXmk/WI9hiUJNJw/LjA5kM4RWvnTGppTOsYoxcYLkdR+
	J0vk1g1Y0K/O4J6QaLkKZCD29DRS9O2z3FSgOn1/sDf/yFmjhp4x8EOpCJeO4d2ngwYFDm
	esfm1Jmo91OSB/n7unBYCjq5aaFifzof6rLrYlFXeTxwpihIFw2eO5TrCxLF6nlJV+92yH
	fo82CsPT6owY0q+NpvzSR6Jzh+JnoSiV8aNjqP1QkUK8F6TTCC2eikcpCmHmJA==
From: Caleb James DeLisle <cjd@cjdns.fr>
To: linux-mips@vger.kernel.org
Cc: naseefkm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	cjd@cjdns.fr,
	tsbogend@alpha.franken.de,
	ryder.lee@mediatek.com,
	jianjun.wang@mediatek.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	p.zabel@pengutronix.de,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	nbd@nbd.name,
	ansuelsmth@gmail.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/8] dt-bindings: phy: Document PCIe PHY in EcoNet EN751221 and EN7528
Date: Tue,  3 Mar 2026 19:09:43 +0000
Message-Id: <20260303190948.694783-4-cjd@cjdns.fr>
In-Reply-To: <20260303190948.694783-1-cjd@cjdns.fr>
References: <20260303190948.694783-1-cjd@cjdns.fr>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_111035_753897_B87C206C 
X-CRM114-Status: GOOD (  12.13  )
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

EN751221 and EN7528 SoCs have two PCIe slots, and each one has a
PHY which behaves slightly differently because one slot is Gen1/Gen2
while the other is Gen1 only.

Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
---
 .../phy/econet,en751221-pcie-phy.yaml         | 57 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml
new file mode 100644
index 000000000000..8e1d3c791c6e
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml
@@ -0,0 +1,57 @@
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
+      - econet,en751221-pcie-phy0
+      - econet,en751221-pcie-phy1
+      - econet,en7528-pcie-phy0
+      - econet,en7528-pcie-phy1
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
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/phy/phy.h>
+    soc {
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      pcie_phy0: pcie-phy@1faf2000 {
+        compatible = "econet,en7528-pcie-phy0";
+        reg = <0x1faf2000 0x1000>;
+        #phy-cells = <0>;
+      };
+
+      pcie_phy1: pcie-phy@1fac0000 {
+        compatible = "econet,en7528-pcie-phy1";
+        reg = <0x1fac0000 0x1000>;
+        #phy-cells = <0>;
+      };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 56cf73ce91b8..ae053b1f174f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9123,6 +9123,12 @@ F:	drivers/irqchip/irq-econet-en751221.c
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
