Return-Path: <SRS0=0Txu=KF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2E36C433B4
	for <linux-phy@archiver.kernel.org>; Mon, 10 May 2021 12:15:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3132F6142D
	for <linux-phy@archiver.kernel.org>; Mon, 10 May 2021 12:15:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3132F6142D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bch/nBXYRhBQAsxEwcaEUTpekR3Ezge1bgHuuX8g+ak=; b=JaQqbyomLDWA76AWRr5n3j+iJG
	+185oVF8qSrYtYD88GTLYLrF83hHhjJSTtXIS+nW1VLMJgeZboWA5JMvp3U6fccr9UaC4E121B7ID
	bb2YiOGdvYIG64bmgk9A4uIY/b5mcFv2yxyLum3rAH27IVrY413wBLK4GJQOLkM9OXWgWl/qS/03C
	waQeOW9XWHH+Ne/IsI+h6C1YPSUMVhsiBx1IpZemjC7eRrMS8zJ61npOQMkXXMRnHgGB9gAtvxmMA
	578ZPr1O26I0IWU5uiPL5hvy9QZaquzi9srcaEacuKgzmEEBlqduJUsZ9d5TAySu5Gu/okAHURqgJ
	7dMjj49g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg4p5-00EE0j-Nl; Mon, 10 May 2021 12:15:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg4kS-00ECqJ-Jj
 for linux-phy@desiato.infradead.org; Mon, 10 May 2021 12:10:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=d3/Mgi8cBKsNJ33DJ1NbHfZDTufl63Td6V4m3f7mm34=; b=WQOIv72Kf30BN3iIwHUQxO+JWU
 pFsbLFT0/JpS7MujA+hE+yX/qucTmS9FKKgAQgUd1JIShTWId5Cp7KYJhHmOjeMDNn1T1Lt8AJBRF
 EvgFl2c0L1dEa1RzB0oLdTfH6YyhAKxlWVUWQvUMoYd7gyna0vpM0CtXZ9RV3pgaOZAFZuqzD6HXQ
 ZoqKZitcRtRGB7IpuzMWBiEo8Iqv1d9wO6j7lmIm699GoywBRADrCAOiFMf3b2tyX/Egj0HjVG7oo
 c5DanfPHqyWc7mDcJ+9kp7m0gVoYPIUzewmWOSD8rMACGttaiEuRDJO5u05GL4hrvs+lRD/mN+kg+
 WZKz2sKw==;
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg4kO-008fpN-QZ
 for linux-phy@lists.infradead.org; Mon, 10 May 2021 12:10:55 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:f937:4595:45ff:bcbf])
 by michel.telenet-ops.be with bizsmtp
 id 30Ai2500c4jQ7kl060AilM; Mon, 10 May 2021 14:10:42 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1lg4kE-004QgL-2e; Mon, 10 May 2021 14:10:42 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1lg4kD-00HQCb-Jd; Mon, 10 May 2021 14:10:41 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Sergei Shtylyov <sergei.shtylyov@gmail.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: phy: renesas,
 rcar-gen3-pcie-phy: Convert to json-schema
Date: Mon, 10 May 2021 14:10:40 +0200
Message-Id: <0301c3a7dae9afde115b6437a11c23ab85cb8b75.1620648490.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_051053_035351_FBD00D62 
X-CRM114-Status: GOOD (  13.92  )
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

Convert the Renesas R-Car Gen3 PCIe PHY Device Tree binding
documentation to json-schema.

Update the example to match reality.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
I have listed Sergei as the maintainer, as he wrote the original driver
and bindings.  Sergei: Please scream if this is inappropriate ;-)
---
 .../bindings/phy/rcar-gen3-phy-pcie.txt       | 24 ---------
 .../phy/renesas,rcar-gen3-pcie-phy.yaml       | 53 +++++++++++++++++++
 2 files changed, 53 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/rcar-gen3-phy-pcie.txt
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,rcar-gen3-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rcar-gen3-phy-pcie.txt b/Documentation/devicetree/bindings/phy/rcar-gen3-phy-pcie.txt
deleted file mode 100644
index 63853b35e0830d21..0000000000000000
--- a/Documentation/devicetree/bindings/phy/rcar-gen3-phy-pcie.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-* Renesas R-Car generation 3 PCIe PHY
-
-This file provides information on what the device node for the R-Car
-generation 3 PCIe PHY contains.
-
-Required properties:
-- compatible: "renesas,r8a77980-pcie-phy" if the device is a part of the
-	      R8A77980 SoC.
-- reg: offset and length of the register block.
-- clocks: clock phandle and specifier pair.
-- power-domains: power domain phandle and specifier pair.
-- resets: reset phandle and specifier pair.
-- #phy-cells: see phy-bindings.txt in the same directory, must be <0>.
-
-Example (R-Car V3H):
-
-	pcie-phy@e65d0000 {
-		compatible = "renesas,r8a77980-pcie-phy";
-		reg = <0 0xe65d0000 0 0x8000>;
-		#phy-cells = <0>;
-		clocks = <&cpg CPG_MOD 319>;
-		power-domains = <&sysc 32>;
-		resets = <&cpg 319>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/renesas,rcar-gen3-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,rcar-gen3-pcie-phy.yaml
new file mode 100644
index 0000000000000000..247ef7c47cf5b52b
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/renesas,rcar-gen3-pcie-phy.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/renesas,rcar-gen3-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Renesas R-Car Generation 3 PCIe PHY
+
+maintainers:
+  - Sergei Shtylyov <sergei.shtylyov@gmail.com>
+
+properties:
+  compatible:
+    const: renesas,r8a77980-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - power-domains
+  - resets
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/r8a77980-cpg-mssr.h>
+    #include <dt-bindings/power/r8a77980-sysc.h>
+
+    pcie-phy@e65d0000 {
+            compatible = "renesas,r8a77980-pcie-phy";
+            reg = <0xe65d0000 0x8000>;
+            #phy-cells = <0>;
+            clocks = <&cpg CPG_MOD 319>;
+            power-domains = <&sysc R8A77980_PD_ALWAYS_ON>;
+            resets = <&cpg 319>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
