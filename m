Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B299C5B543
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JOK0uYQAptbvjDdWrBB9/nI8JYcXUZQjMfWGnqxBaEg=; b=r6zgnBf8c8+HGs
	71IExtv8Jk/IYiDFKUYPLs9QcJbhZRbzPMvqSVyr729wtUaSjnxm7xcvp4EuLpbPFh3lYyeAHP6LA
	tYJwLUtKjqWPO35LEW47Pe0UjyXY2zDc/izx1WBXFYpKrRZpgbeeKCjRXoyphz9CN30/W/cicQzN/
	XFMRtLO67eP9vYlCz8VyXwFuDwCdvwgG4ZlLlpt4v1OVfyq7pmPFYUkzURAPQba5Ypql2vf0ih1kY
	zxggoc7LRDNsRMQ2RpRvBnhPsGFXBPd54p/mOe9E7Hj4mQIqtPWM/OKGdpMGIAaW0vZA1jmLaejGE
	+r/CukWc2vjxAAwt/yoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO11p-00000002726-38Fq;
	Sat, 07 Jun 2025 21:24:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO11o-00000002720-2ILc
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:24:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2FD0461154;
	Sat,  7 Jun 2025 21:24:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65A0BC4CEE4;
	Sat,  7 Jun 2025 21:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331473;
	bh=JYAdu1I9WVJGeUqbUNepSaxBfVzojpC6u1l/WOWFfkA=;
	h=From:To:Cc:Subject:Date:From;
	b=dZ+N1bJ82FUCAClrQ6p22sRQIW4JG5W1DB+JaUIqch8eVFAi1KjsLBxDPCKjOzzfR
	 Wmk8cL3qCdC9ZTQsQPXLsK2Es00kI7Kx+UjuNB5WLqyX8Twt9zGb2tZqzqVTBcy4tX
	 QDZyv1NXpaII2FfO8rSFrDAVy9ANZwSyeUwg+32c6FwmmGrYQq3MXZY491kYk0/uVx
	 vnSEImpHPWcmiVTNRngx086k3Af8kcma2P1QRSNA2gU+9EOFDf3uba3GzdsPln19e1
	 nYr/xKbmnOZoE57SS2cVTqSkB+YmNeaYVQ8P7ZjIZ2MZc3z9D0vqX8uCbg2iUPZkcE
	 CxpGKCvDhyamw==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Khuong Dinh <khuong@os.amperecomputing.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert apm,xgene-phy to DT schema
Date: Sat,  7 Jun 2025 16:24:23 -0500
Message-ID: <20250607212424.739972-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
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

Convert the APM X-Gene PHY binding to DT schema format. It's a straight
forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/apm,xgene-phy.yaml           | 169 ++++++++++++++++++
 .../devicetree/bindings/phy/apm-xgene-phy.txt |  76 --------
 2 files changed, 169 insertions(+), 76 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/apm,xgene-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/apm-xgene-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/apm,xgene-phy.yaml b/Documentation/devicetree/bindings/phy/apm,xgene-phy.yaml
new file mode 100644
index 000000000000..d1e6b112b6de
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/apm,xgene-phy.yaml
@@ -0,0 +1,169 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/apm,xgene-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: APM X-Gene 15Gbps Multi-purpose PHY
+
+maintainers:
+  - Khuong Dinh <khuong@os.amperecomputing.com>
+  
+description:
+  PHY nodes are defined to describe on-chip 15Gbps Multi-purpose PHY. Each
+  PHY (pair of lanes) has its own node.
+
+properties:
+  compatible:
+    items:
+      - const: apm,xgene-phy
+
+  reg:
+    maxItems: 1
+
+  '#phy-cells':
+    description:
+      Possible values are 0 (SATA), 1 (SGMII), 2 (PCIe), 3 (USB), and 4 (XFI).
+    const: 1
+
+  clocks:
+    maxItems: 1
+
+  apm,tx-eye-tuning:
+    description:
+      Manual control to fine tune the capture of the serial bit lines from the
+      automatic calibrated position. Two set of 3-tuple setting for each
+      supported link speed on the host. Range from 0 to 127 in unit of one bit
+      period.
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 2
+    maxItems: 2
+    items:
+      minItems: 3
+      maxItems: 3
+      items:
+        minimum: 0
+        maximum: 127
+        default: 10
+
+  apm,tx-eye-direction:
+    description:
+      Eye tuning manual control direction. 0 means sample data earlier than the
+      nominal sampling point. 1 means sample data later than the nominal
+      sampling point. Two set of 3-tuple setting for each supported link speed
+      on the host.
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 2
+    maxItems: 2
+    items:
+      minItems: 3
+      maxItems: 3
+      items:
+        enum: [0, 1]
+        default: 0
+
+  apm,tx-boost-gain:
+    description:
+      Frequency boost AC (LSB 3-bit) and DC (2-bit) gain control. Two set of
+      3-tuple setting for each supported link speed on the host. Range is
+      between 0 to 31 in unit of dB. Default is 3.
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 2
+    maxItems: 2
+    items:
+      minItems: 3
+      maxItems: 3
+      items:
+        minimum: 0
+        maximum: 31
+
+  apm,tx-amplitude:
+    description:
+      Amplitude control. Two set of 3-tuple setting for each supported link
+      speed on the host. Range is between 0 to 199500 in unit of uV.
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 2
+    maxItems: 2
+    items:
+      minItems: 3
+      maxItems: 3
+      items:
+        minimum: 0
+        maximum: 199500
+        default: 199500
+
+  apm,tx-pre-cursor1:
+    description:
+      1st pre-cursor emphasis taps control. Two set of 3-tuple setting for
+      each supported link speed on the host. Range is 0 to 273000 in unit of
+      uV.
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 2
+    maxItems: 2
+    items:
+      minItems: 3
+      maxItems: 3
+      items:
+        minimum: 0
+        maximum: 273000
+        default: 0
+
+  apm,tx-pre-cursor2:
+    description:
+      2nd pre-cursor emphasis taps control. Two set of 3-tuple setting for
+      each supported link speed on the host. Range is 0 to 127400 in unit uV.
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 2
+    maxItems: 2
+    items:
+      minItems: 3
+      maxItems: 3
+      items:
+        minimum: 0
+        maximum: 127400
+        default: 0
+
+  apm,tx-post-cursor:
+    description: |
+      Post-cursor emphasis taps control. Two set of 3-tuple setting for Gen1,
+      Gen2, and Gen3 link speeds. Range is between 0 to 31 in unit of 18.2mV.
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    minItems: 2
+    maxItems: 2
+    items:
+      minItems: 3
+      maxItems: 3
+      items:
+        minimum: 0
+        maximum: 31
+        default: 0xf
+
+  apm,tx-speed:
+    description: >
+      Tx operating speed. One set of 3-tuple for each supported link speed on
+      the host:
+
+        0 = 1-2Gbps
+        1 = 2-4Gbps (1st tuple default)
+        2 = 4-8Gbps
+        3 = 8-15Gbps (2nd tuple default)
+        4 = 2.5-4Gbps
+        5 = 4-5Gbps
+        6 = 5-6Gbps
+        7 = 6-16Gbps (3rd tuple default).
+
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 3
+    maxItems: 3
+    items:
+      maximum: 7
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@1f21a000 {
+        compatible = "apm,xgene-phy";
+        reg = <0x1f21a000 0x100>;
+        #phy-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/apm-xgene-phy.txt b/Documentation/devicetree/bindings/phy/apm-xgene-phy.txt
deleted file mode 100644
index 602cf952b92b..000000000000
--- a/Documentation/devicetree/bindings/phy/apm-xgene-phy.txt
+++ /dev/null
@@ -1,76 +0,0 @@
-* APM X-Gene 15Gbps Multi-purpose PHY nodes
-
-PHY nodes are defined to describe on-chip 15Gbps Multi-purpose PHY. Each
-PHY (pair of lanes) has its own node.
-
-Required properties:
-- compatible		: Shall be "apm,xgene-phy".
-- reg			: PHY memory resource is the SDS PHY access resource.
-- #phy-cells		: Shall be 1 as it expects one argument for setting
-			  the mode of the PHY. Possible values are 0 (SATA),
-			  1 (SGMII), 2 (PCIe), 3 (USB), and 4 (XFI).
-
-Optional properties:
-- status		: Shall be "ok" if enabled or "disabled" if disabled.
-			  Default is "ok".
-- clocks		: Reference to the clock entry.
-- apm,tx-eye-tuning	: Manual control to fine tune the capture of the serial
-			  bit lines from the automatic calibrated position.
-			  Two set of 3-tuple setting for each (up to 3)
-			  supported link speed on the host. Range from 0 to
-			  127 in unit of one bit period. Default is 10.
-- apm,tx-eye-direction	: Eye tuning manual control direction. 0 means sample
-			  data earlier than the nominal sampling point. 1 means
-			  sample data later than the nominal sampling point.
-			  Two set of 3-tuple setting for each (up to 3)
-			  supported link speed on the host. Default is 0.
-- apm,tx-boost-gain	: Frequency boost AC (LSB 3-bit) and DC (2-bit)
-			  gain control. Two set of 3-tuple setting for each
-			  (up to 3) supported link speed on the host. Range is
-			  between 0 to 31 in unit of dB. Default is 3.
-- apm,tx-amplitude	: Amplitude control. Two set of 3-tuple setting for
-			  each (up to 3) supported link speed on the host.
-			  Range is between 0 to 199500 in unit of uV.
-			  Default is 199500 uV.
-- apm,tx-pre-cursor1	: 1st pre-cursor emphasis taps control. Two set of
-			  3-tuple setting for each (up to 3) supported link
-			  speed on the host. Range is 0 to 273000 in unit of
-			  uV. Default is 0.
-- apm,tx-pre-cursor2	: 2nd pre-cursor emphasis taps control. Two set of
-			  3-tuple setting for each (up to 3) supported link
-			  speed on the host. Range is 0 to 127400 in unit uV.
-			  Default is 0x0.
-- apm,tx-post-cursor	: Post-cursor emphasis taps control. Two set of
-			  3-tuple setting for Gen1, Gen2, and Gen3. Range is
-			  between 0 to 0x1f in unit of 18.2mV. Default is 0xf.
-- apm,tx-speed		: Tx operating speed. One set of 3-tuple for each
-			  supported link speed on the host.
-			   0 = 1-2Gbps
-			   1 = 2-4Gbps (1st tuple default)
-			   2 = 4-8Gbps
-			   3 = 8-15Gbps (2nd tuple default)
-			   4 = 2.5-4Gbps
-			   5 = 4-5Gbps
-			   6 = 5-6Gbps
-			   7 = 6-16Gbps (3rd tuple default)
-
-NOTE: PHY override parameters are board specific setting.
-
-Example:
-		phy1: phy@1f21a000 {
-			compatible = "apm,xgene-phy";
-			reg = <0x0 0x1f21a000 0x0 0x100>;
-			#phy-cells = <1>;
-		};
-
-		phy2: phy@1f22a000 {
-			compatible = "apm,xgene-phy";
-			reg = <0x0 0x1f22a000 0x0 0x100>;
-			#phy-cells = <1>;
-		};
-
-		phy3: phy@1f23a000 {
-			compatible = "apm,xgene-phy";
-			reg = <0x0 0x1f23a000 0x0 0x100>;
-			#phy-cells = <1>;
-		};
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
