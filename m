Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4678FF885C
	for <linux-phy@archiver.kernel.org>; Sat, 25 Apr 2026 17:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKnBn8NmZ6SdlKca7V55iahK43Hj+tMcnm3zQ47eKt0=; b=ORCkf54i5GP0cr
	NLNWlrbkfZsh02O1RVO7j6kmSm7rFxBNQdwj0ipHdibELG1ITgXPKKUcgBO3f3wfSBx0GQRHoaLBm
	sdvvx+bhwHx1sycO/lDqNfTn+XDq7/l4FEqril6rNr/wxpzmuWcI5Hzbg9EPidbGGihOWcsTwB38u
	ssjLWxsJXXJ5BHhxPAhYO1uBFwdz4z51C7s2Dkrws5NSpeW9pFUbSNR0/dGqWqW3JOuf+enCYF8PQ
	8W6iYfBGAgFOZgNs2efCd+Ei3tWIQL3Zzo5B+1HtWKVF3Q943mgKZGYjCQdXG8z1ru0Kfiy1J2FY4
	JUD6i4yuLlRfrdv7B7QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGgwD-0000000Ebo8-0rQo;
	Sat, 25 Apr 2026 17:37:05 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGgw8-0000000Eblk-38qV
	for linux-phy@lists.infradead.org;
	Sat, 25 Apr 2026 17:37:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 517D21EB491;
	Sat, 25 Apr 2026 19:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1777138613; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=UNMKSA9k3yWpdsQMRZiFhfH1PT7M+BEI1fZ0UlCKd+I=;
	b=K3K4UcAy0wf7tIyNgmQJanr5vHTWECJfFHwbPfasptdqxoIqEsw2CnkRdw6DFjaXwI0NoU
	HBT951LcQyl7GUs2SQR2mi3HZfJDRrMTeq9fUxV/9hz/TXfTiU+koiJKY0hgQCFHufDzcp
	ukltIzg0xI+rdN4/It2F++/nCFFnfLca5/qPIBgGJ0Lt4ZvWlz84i/+5OxmcjjEXrnvjBp
	FKnMyLuxOt3zF28HpY/UXvLCg4QS/38pXhwfbmZwDGpzb/eAEL4QwulIzNZbxBINnTKA7z
	TbM5jhTAlzDfhheDZMFutJVsSk+iS5CqDEpkRih50NnuA6je30RyJvj6HaNrWA==
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
Subject: [PATCH v3 1/2] dt-bindings: phy: Document PCIe PHY in EcoNet EN751221 and EN7528
Date: Sat, 25 Apr 2026 17:36:41 +0000
Message-Id: <20260425173642.406089-2-cjd@cjdns.fr>
In-Reply-To: <20260425173642.406089-1-cjd@cjdns.fr>
References: <20260425173642.406089-1-cjd@cjdns.fr>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_103701_038075_F971C968 
X-CRM114-Status: GOOD (  11.05  )
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
index 62b89d0013d2..6fc1f54c31d2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9185,6 +9185,12 @@ F:	drivers/irqchip/irq-econet-en751221.c
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
