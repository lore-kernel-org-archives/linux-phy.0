Return-Path: <SRS0=N+Kg=PT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31A22C433F5
	for <linux-phy@archiver.kernel.org>; Sun, 31 Oct 2021 11:41:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91B7D60F59
	for <linux-phy@archiver.kernel.org>; Sun, 31 Oct 2021 11:41:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 91B7D60F59
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=ixit.cz
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6BJJwqwGbst8ImdXl77FFLKNQConrovj9vgUWgPygSs=; b=q55xm1WqC83S4k
	HWxqK4QhKoN+lfP7hrLSov7gdKE1qZu8Qfmb+OWk1f+y0h1kAsevmvGVIjUT6oIfeBPFU7WLzTG3x
	QLvmjuLkJOc4CoAEHTTxPsaLP1HUQHqE+Xuh5GME6RDMCV9HMBa8kUmmpd242UoBEd+vs9vHBEKk/
	PF060QhrM3URRHvFKX4SD/DiNvOasZcBfSrvI7xWVBqkzv9DDEHKCrm5LigZPiuFrg9OCKeUIJ58X
	TGEN1gaM4TemOkN2q6Wbs2u6ZZnfLvBDB2W8UM4q9oPRs5jlyrlb1Z/3Mg/X6uVSR9MfoznGOsF9A
	AkwNBxKigitBeCP5amcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mh9DE-00DvhK-Qy; Sun, 31 Oct 2021 11:41:20 +0000
Received: from ixit.cz ([94.230.151.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mh9DB-00DvgC-UG
 for linux-phy@lists.infradead.org; Sun, 31 Oct 2021 11:41:20 +0000
Received: from localhost.localdomain (ip-89-176-96-70.net.upcbroadband.cz
 [89.176.96.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by ixit.cz (Postfix) with ESMTPSA id 2446B24E71;
 Sun, 31 Oct 2021 12:32:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
 t=1635679972;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=F+8gu9hZCCdEjt5uT/O7323gSxFeIkUT6UKFNzqTy2o=;
 b=bAMrXFCTCljUDf5oM9CfK7UtrwI1DLTqIm5MEFDYtqadhoSNVdHYxY/KZYVXdjAiV6dfEQ
 BrJ++SiWduMge1wCgna2L7YdQ0tcUQEkQl5oByKYS2IHHwwjgMXj8XsHSHIeGo0hKdZ7cl
 86nx8i2baMo+Ubt1Rj59mXIFZzmYZB8=
From: David Heidelberg <david@ixit.cz>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: ~okias/devicetree@lists.sr.ht, David Heidelberg <david@ixit.cz>,
 Thierry Reding <treding@nvidia.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Tegra194 P2U convert to YAML
Date: Sun, 31 Oct 2021 12:32:36 +0100
Message-Id: <20211031113236.29712-1-david@ixit.cz>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211031_044118_337615_4332F7E5 
X-CRM114-Status: GOOD (  13.97  )
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

Convert Tegra194 P2U binding to the YAML format.

Signed-off-by: David Heidelberg <david@ixit.cz>
---
 .../bindings/phy/phy-tegra194-p2u.txt         | 28 ------------
 .../bindings/phy/phy-tegra194-p2u.yaml        | 44 +++++++++++++++++++
 2 files changed, 44 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
 create mode 100644 Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
deleted file mode 100644
index d23ff90baad5..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-NVIDIA Tegra194 P2U binding
-
-Tegra194 has two PHY bricks namely HSIO (High Speed IO) and NVHS (NVIDIA High
-Speed) each interfacing with 12 and 8 P2U instances respectively.
-A P2U instance is a glue logic between Synopsys DesignWare Core PCIe IP's PIPE
-interface and PHY of HSIO/NVHS bricks. Each P2U instance represents one PCIe
-lane.
-
-Required properties:
-- compatible: For Tegra19x, must contain "nvidia,tegra194-p2u".
-- reg: Should be the physical address space and length of respective each P2U
-       instance.
-- reg-names: Must include the entry "ctl".
-
-Required properties for PHY port node:
-- #phy-cells: Defined by generic PHY bindings.  Must be 0.
-
-Refer to phy/phy-bindings.txt for the generic PHY binding properties.
-
-Example:
-
-p2u_hsio_0: phy@3e10000 {
-	compatible = "nvidia,tegra194-p2u";
-	reg = <0x03e10000 0x10000>;
-	reg-names = "ctl";
-
-	#phy-cells = <0>;
-};
diff --git a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
new file mode 100644
index 000000000000..9a89d05efbda
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/phy-tegra194-p2u.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: NVIDIA Tegra194 P2U binding
+
+maintainers:
+  - Thierry Reding <treding@nvidia.com>
+
+description: >
+  Tegra194 has two PHY bricks namely HSIO (High Speed IO) and NVHS (NVIDIA High
+  Speed) each interfacing with 12 and 8 P2U instances respectively.
+  A P2U instance is a glue logic between Synopsys DesignWare Core PCIe IP's PIPE
+  interface and PHY of HSIO/NVHS bricks. Each P2U instance represents one PCIe
+  lane.
+
+properties:
+  compatible:
+    const: nvidia,tegra194-p2u
+
+  reg:
+    maxItems: 1
+    description: Should be the physical address space and length of respective each P2U instance.
+
+  reg-names:
+    items:
+      - const: ctl
+
+  '#phy-cells':
+    const: 0
+
+additionalProperties: false
+
+examples:
+  - |
+    p2u_hsio_0: phy@3e10000 {
+        compatible = "nvidia,tegra194-p2u";
+        reg = <0x03e10000 0x10000>;
+        reg-names = "ctl";
+
+        #phy-cells = <0>;
+    };
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
