Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD7FDC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  6 Dec 2021 18:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I5TlZHKH0sUH3BpPaA/rAscmSRXk/B1p72vnTHzkbvY=; b=GKs2Gol42W/TnB
	uSU1uzCaey49LXXLwRslQ/yOCk9qV7axpmJ4iCDONY9Y0heGCvJGXozp0jWGlrmlHmF8/k1EdS9zQ
	Te7fM2bXmQsDK5inc6lM5EMgyWB6LKw6xiNQzySU0M+tM5tb7nbnOlN1p7hUuQ74b0zdpgF9Z8kTL
	9NaJV7YvPikDcr10eWduptgTsS67E+7/CazRJjW46EOmW86tG2PYZal6UxlMWfMFyDzpJ51SYMLTQ
	1kdnc3nbNAiTu97wmDwRSrveUC+jvGB+PMptJe+0mSpa0ko/vLmEhL+DRmes2u5GT6XS38+zdtnC9
	0gPLangoLCxno4SgMrPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muIKq-005C6q-3Q; Mon, 06 Dec 2021 18:03:32 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muIIP-005Am7-7N; Mon, 06 Dec 2021 18:01:03 +0000
Received: by mail-pg1-x534.google.com with SMTP id r138so11175511pgr.13;
 Mon, 06 Dec 2021 10:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UVNTosnM4u/yIXEa/LyWVTOOCpFmbmo5mKS9SOh7Wz8=;
 b=auz+ucFGlmqD2BqC9WFBo4dVqfETASPzVTRtljRXHuccp3+SZOgp7A6JaxTcyvG9eg
 aODjdqLdH5zlEeXHjLYg9d6hPLCQQu8s3JhCz+MVZ4lTeYzTcWCw/hF9GUXBCnAGXW1K
 pa+SziJt/63GqjdgQAAy90hqnZajQMMExqkWx2//32lIX/ihmzYDvbK31dOj/2O+Itz/
 sGKjREjT7mFAfWrNVS7jT/b5hOIf7//c6c8wPpicq874iyttVoslnLuGpAtVrwM3Rimj
 6o4Ul3y1W7mM6RikBalh77hzNrrv0qHHxryHx7XTDD9XEZnWsHptlLyFlj+lPvI+SK/I
 L1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UVNTosnM4u/yIXEa/LyWVTOOCpFmbmo5mKS9SOh7Wz8=;
 b=GOQcfaXnDtQt4IOrNdTE68/0+wgSAMYWP8QVaO2rdK8auPk96Az7kVjmQu2UnqScHa
 BfBr7pu59vuAuWd2+KZq1mvo4eTQlVua3w+0byWNyTLQLQuPsd/0wvLRk30J5jLiYiJR
 siR1SACUwrPs/uHY6NX0hO5ZtCZ52GdabRqAe00Oa2mSWYg1g3nr3kCXoiXPKhtmtfSA
 anhhEedhug1XuxYTeoX/aCDaLe3b+W0uDV62ePJ46Q14ifhtHyl8c7vx8Uc5Z0ffR7yt
 jkXR7bAfnqn0txFiHIWzuub9pDZ4rck+lq4PeuhqkYZNdb79e7NJKfkB+rD/Tl/H0Gdl
 bohQ==
X-Gm-Message-State: AOAM532oV1vYHfZ0R7D/hb1/xtlzTQe9P164leRQvMq25YSmp54Bacu3
 qwOZuFPLJiya/PikxCIDrck=
X-Google-Smtp-Source: ABdhPJwkDk7LSBP5K9dd33jL6DSQ4OmFu0cjiIYYOgCe8vQwrJFBKayhp10szOtUQzs1j5OnSFwMrw==
X-Received: by 2002:a63:8f52:: with SMTP id r18mr19818348pgn.197.1638813660546; 
 Mon, 06 Dec 2021 10:01:00 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u11sm5444070pfg.120.2021.12.06.10.00.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 10:01:00 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com (maintainer:BROADCOM IPROC GBIT ETHERNET
 DRIVER), Doug Berger <opendmb@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM
 ARCHITECTURE), 
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH v3 6/8] dt-bindings: net: Convert SYSTEMPORT to YAML
Date: Mon,  6 Dec 2021 10:00:47 -0800
Message-Id: <20211206180049.2086907-7-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211206180049.2086907-1-f.fainelli@gmail.com>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_100101_380293_1A54E80C 
X-CRM114-Status: GOOD (  20.56  )
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

Convert the Broadcom SYSTEMPORT Ethernet controller Device Tree binding
to YAML.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/net/brcm,systemport.txt          | 38 ---------
 .../bindings/net/brcm,systemport.yaml         | 82 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 3 files changed, 83 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/brcm,systemport.txt
 create mode 100644 Documentation/devicetree/bindings/net/brcm,systemport.yaml

diff --git a/Documentation/devicetree/bindings/net/brcm,systemport.txt b/Documentation/devicetree/bindings/net/brcm,systemport.txt
deleted file mode 100644
index 75736739bfdd..000000000000
--- a/Documentation/devicetree/bindings/net/brcm,systemport.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-* Broadcom BCM7xxx Ethernet Systemport Controller (SYSTEMPORT)
-
-Required properties:
-- compatible: should be one of:
-	      "brcm,systemport-v1.00"
-	      "brcm,systemportlite-v1.00" or
-	      "brcm,systemport"
-- reg: address and length of the register set for the device.
-- interrupts: interrupts for the device, first cell must be for the rx
-  interrupts, and the second cell should be for the transmit queues. An
-  optional third interrupt cell for Wake-on-LAN can be specified
-- local-mac-address: Ethernet MAC address (48 bits) of this adapter
-- phy-mode: Should be a string describing the PHY interface to the
-  Ethernet switch/PHY, see Documentation/devicetree/bindings/net/ethernet.txt
-- fixed-link: see Documentation/devicetree/bindings/net/fixed-link.txt for
-  the property specific details
-
-Optional properties:
-- systemport,num-tier2-arb: number of tier 2 arbiters, an integer
-- systemport,num-tier1-arb: number of tier 1 arbiters, an integer
-- systemport,num-txq: number of HW transmit queues, an integer
-- systemport,num-rxq: number of HW receive queues, an integer
-- clocks: When provided, must be two phandles to the functional clocks nodes of
-  the SYSTEMPORT block. The first phandle is the main SYSTEMPORT clock used
-  during normal operation, while the second phandle is the Wake-on-LAN clock.
-- clock-names: When provided, names of the functional clock phandles, first
-  name should be "sw_sysport" and second should be "sw_sysportwol".
-
-Example:
-ethernet@f04a0000 {
-	compatible = "brcm,systemport-v1.00";
-	reg = <0xf04a0000 0x4650>;
-	local-mac-address = [ 00 11 22 33 44 55 ];
-	fixed-link = <0 1 1000 0 0>;
-	phy-mode = "gmii";
-	interrupts = <0x0 0x16 0x0>,
-		<0x0 0x17 0x0>;
-};
diff --git a/Documentation/devicetree/bindings/net/brcm,systemport.yaml b/Documentation/devicetree/bindings/net/brcm,systemport.yaml
new file mode 100644
index 000000000000..44781027ed37
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/brcm,systemport.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/brcm,systemport.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM7xxx Ethernet Systemport Controller (SYSTEMPORT)
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - brcm,systemport-v1.00
+      - brcm,systemportlite-v1.00
+      - brcm,systemport
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    minItems: 2
+    items:
+      - description: interrupt line for RX queues
+      - description: interrupt line for TX queues
+      - description: interrupt line for Wake-on-LAN
+
+  clocks:
+    items:
+      - description: main clock
+      - description: Wake-on-LAN clock
+
+  clock-names:
+    items:
+      - const: sw_sysport
+      - const: sw_sysportwol
+
+  "systemport,num-tier2-arb":
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Number of tier 2 arbiters
+
+  "systemport,num-tier1-arb":
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Number of tier 2 arbiters
+
+  "systemport,num-txq":
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Number of HW transmit queues
+
+  "systemport,num-rxq":
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Number of HW receive queues
+
+required:
+  - reg
+  - interrupts
+  - phy-mode
+
+allOf:
+  - $ref: "ethernet-controller.yaml#"
+
+additionalProperties: true
+
+examples:
+  - |
+    ethernet@f04a0000 {
+        compatible = "brcm,systemport-v1.00";
+        reg = <0xf04a0000 0x4650>;
+        local-mac-address = [ 00 11 22 33 44 55 ];
+        phy-mode = "gmii";
+        interrupts = <0x0 0x16 0x0>,
+                     <0x0 0x17 0x0>;
+        fixed-link {
+            speed = <1000>;
+            full-duplex;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 404e76d625f1..ed8de605fe4b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3972,6 +3972,7 @@ L:	netdev@vger.kernel.org
 S:	Supported
 F:	drivers/net/ethernet/broadcom/bcmsysport.*
 F:	drivers/net/ethernet/broadcom/unimac.h
+F:	Documentation/devicetree/bindings/net/brcm,systemport.yaml
 
 BROADCOM TG3 GIGABIT ETHERNET DRIVER
 M:	Siva Reddy Kallam <siva.kallam@broadcom.com>
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
