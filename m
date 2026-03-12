Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19117106ACD1
	for <linux-phy@archiver.kernel.org>; Thu, 12 Mar 2026 16:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91iCvrOgr/iwVwe29m10VAyPGr/sxok6IWOkC5Fsc7s=; b=2OKrdoPJj0I6im
	MUawcoXR/H9gzRBAOFsO85u8rEA4z+QFpv2PmQzKUj/KvtEiYdXf10OCZcB/eMe/xUN6s9dCaJJeu
	l6qHOBfyVzqFl5BGn0uddRn93GKPpILlDPqTMfG5mcqqjQEL6hmUG+p+s9rE1wCfbthv6SJHXXw6F
	AxE4FGwReWn6YWZ5aZ5ncU98kYAMWHk0ldK8T31ENUTWJtn1kJcMqXJ1O4qvo5GnbNzi8a8vTUtan
	BrGL8UheCkNJnIU0rScqUjLUOoXdl1Td3Bd8JTs52xwoOLJJwTACsF11Zu3iTqk6PK0uYkN5iXE9g
	MS8t5mWEWPvH2shsGdFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0j9W-0000000EbzH-3Xl0;
	Thu, 12 Mar 2026 16:44:50 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0j9T-0000000Ebxx-45QZ
	for linux-phy@lists.infradead.org;
	Thu, 12 Mar 2026 16:44:49 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2DF522C851A;
	Thu, 12 Mar 2026 17:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1773333885; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=gso2J9TlFIUpfDVYlVOReC8nln0KMuVCMF3iv5VYSH4=;
	b=Kby+tHk9MQz/X3stk/VsVQU+Hf1p1z91yird07xVKs6oHFwO51ey+ySRSNrSa3Qs0BodP2
	Uzi+B2lvtiY75HAxTKotMri4F++CnDiHVOt9+Zv8VQ0FaD/TZY2d7kl0Hxxdt6RBE7KPcj
	cZLEB1xxaVoaDprD5lLXb2HFWkcVJVStoo3Y6UjdzVvVVK+Bg1g5KBx8kjyK1zB2IsOd8E
	fFkXEF5BpLdaSz+qB2IlzdTk6xwMslEySCI6Wp/fVZO82MOKBYgAAyN+3cQl87BwtZ1RVo
	HGy1arNZrFGiqrzfQ0hfl4S/DEyGU9W5g+LNZDEWMbcDEmoOpFzqp4YWgdUGpg==
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
Subject: [PATCH 1/2] dt-bindings: phy: Document PCIe PHY in EcoNet EN751221 and EN7528
Date: Thu, 12 Mar 2026 16:44:31 +0000
Message-Id: <20260312164432.569566-2-cjd@cjdns.fr>
In-Reply-To: <20260312164432.569566-1-cjd@cjdns.fr>
References: <20260312164432.569566-1-cjd@cjdns.fr>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_094448_208535_0D12D5C7 
X-CRM114-Status: GOOD (  12.15  )
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
index 14899f1de77e..557b6a47ec98 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9120,6 +9120,12 @@ F:	arch/mips/econet/
 F:	drivers/clocksource/timer-econet-en751221.c
 F:	drivers/irqchip/irq-econet-en751221.c
 
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
