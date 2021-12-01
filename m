Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78CA9C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 18:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DX4Cw948QNsGYVz689pOVsjNkEDvocBH+I0pKTrFaSk=; b=E8Ie5RVmZJvf/p
	GgYqDDU7oTLndo+Bi6TGKRwJMmTV/QUrKVE+xxPyvuaazOPV2eUCK416cIocOphnCXqXxYOBh1B0n
	vPnlw5ROtMo7BHCMUw991j1wJQmw2R1sjiAhYVG50vTCgbLYMhQ7zZa6KKQMb0RjsqC+x37WZJmxH
	oviBPzphoZNxxRx4U1JyVuiOiQkVWGLmsJs7XOpGCJx9aZmlv5fndVqqdaZKoEI9QD9/lEYwvWWek
	j7jg04bXM4V8rdqT1td0sjEysuht0Mctpu18XTEYsVuC31qMXAyJ+mUSX+ikYTOzQ2vp0X0wOipvb
	8V2gEE3DN9w7NyM0j83A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msTup-009fQG-PA; Wed, 01 Dec 2021 18:01:11 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msTqz-009dO2-29; Wed, 01 Dec 2021 17:57:14 +0000
Received: by mail-pj1-x1030.google.com with SMTP id
 gx15-20020a17090b124f00b001a695f3734aso2326393pjb.0; 
 Wed, 01 Dec 2021 09:57:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CofjtoS3C2UlVTL2mQI4/sEc5MpZ6MET1C9W9dcnuEY=;
 b=ZjxD5mfNKE0pXHW6k9ghM+tWQSVZYKoGXbrLill2uMs7FqfBnfkzmHZ+TbPfExjMWM
 BmlGqmvLnMaldY0AHFiDAdtmGCEtQwNjlZKkOIEvFidzRkIwEh94Rp426QFn5rM4P22y
 rEARxHCbXBsSMjzDC7C8DVUJDp87vkSpln1yMnlNYd6qVTAL07PQIArzI+4Rjc3aJ8g+
 6PlwKlrsbE13BT+6e6MRRNt2Mcq8u4gnnaJTkJtvoei3fPf/OQcGGN9hvz4Hk+LAijG/
 prWc0pdBHX5K38xsob1MvBRrfEA11/kN/T/1EmaBvAI9Nh2Zmrs0QTf3Qla9LFT5Qr1P
 iNfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CofjtoS3C2UlVTL2mQI4/sEc5MpZ6MET1C9W9dcnuEY=;
 b=EqOjYcKxZxqmwdNi9xq9czOaYJHfKn29c/Rf9uH1Id5m9TtPc50rR9bhSC/hfLBNwB
 0CQenaJJBDw/qYutB+NEVc+kmbUWJt+tUOO6vwM2lAN0yL/N1CeXU9S1Y2X5AuZjQL3Z
 iO7k+DQXWkW39NxbbwwbTEP865Ib85dA65xX43zebiwdf/lh3Wu0z4IuiMxoKjZjY3Je
 XnBQrWA3mcZAVBKoXCLyXcxsLT1bBhQB/IkIihrbUEef1PbF+0cbwe0dKc4qAG9QMHX6
 uJhEvIHgD7Fb/DRiOTwQ3P2u9jdeJWHdu4BofmH8OZFSijhMTjeO3ar0Zk9JhY8Kmunk
 dYeA==
X-Gm-Message-State: AOAM532LOUeYpqQGT8CnAbabB61DTOfxTfgWU7fzpfiD/pByR28ZBhPM
 WRcMJgbjFUk9Qa2pdXo6pnQ=
X-Google-Smtp-Source: ABdhPJxf0xUb0pM/R2FfaUGrqutQC3ervh7m6lZSWlFbf/8bNQDZfoq9aeCNta6kbyPIKHx/iYK1vQ==
X-Received: by 2002:a17:90b:1e07:: with SMTP id
 pg7mr9256037pjb.93.1638381431891; 
 Wed, 01 Dec 2021 09:57:11 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm471546pfc.151.2021.12.01.09.57.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 09:57:11 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com (maintainer:BROADCOM IPROC GBIT ETHERNET
 DRIVER), Doug Berger <opendmb@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM
 ARCHITECTURE), 
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH net-next v2 9/9] dt-bindings: net: Convert iProc MDIO mux to
 YAML
Date: Wed,  1 Dec 2021 09:56:52 -0800
Message-Id: <20211201175652.4722-10-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211201175652.4722-1-f.fainelli@gmail.com>
References: <20211201175652.4722-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_095713_134672_40E21E64 
X-CRM114-Status: GOOD (  16.56  )
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

Conver the Broadcom iProc MDIO mux Device Tree binding to YAML.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/net/brcm,mdio-mux-iproc.txt      | 62 --------------
 .../bindings/net/brcm,mdio-mux-iproc.yaml     | 80 +++++++++++++++++++
 2 files changed, 80 insertions(+), 62 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.txt
 create mode 100644 Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.yaml

diff --git a/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.txt b/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.txt
deleted file mode 100644
index deb9e852ea27..000000000000
--- a/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.txt
+++ /dev/null
@@ -1,62 +0,0 @@
-Properties for an MDIO bus multiplexer found in Broadcom iProc based SoCs.
-
-This MDIO bus multiplexer defines buses that could be internal as well as
-external to SoCs and could accept MDIO transaction compatible to C-22 or
-C-45 Clause. When child bus is selected, one needs to select these two
-properties as well to generate desired MDIO transaction on appropriate bus.
-
-Required properties in addition to the generic multiplexer properties:
-
-MDIO multiplexer node:
-- compatible: brcm,mdio-mux-iproc.
-
-Every non-ethernet PHY requires a compatible so that it could be probed based
-on this compatible string.
-
-Optional properties:
-- clocks: phandle of the core clock which drives the mdio block.
-
-Additional information regarding generic multiplexer properties can be found
-at- Documentation/devicetree/bindings/net/mdio-mux.yaml
-
-
-for example:
-		mdio_mux_iproc: mdio-mux@66020000 {
-			compatible = "brcm,mdio-mux-iproc";
-			reg = <0x66020000 0x250>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			mdio@0 {
-				reg = <0x0>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				pci_phy0: pci-phy@0 {
-					compatible = "brcm,ns2-pcie-phy";
-					reg = <0x0>;
-					#phy-cells = <0>;
-				};
-			};
-
-			mdio@7 {
-				reg = <0x7>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				pci_phy1: pci-phy@0 {
-					compatible = "brcm,ns2-pcie-phy";
-					reg = <0x0>;
-					#phy-cells = <0>;
-				};
-			};
-			mdio@10 {
-				reg = <0x10>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				gphy0: eth-phy@10 {
-					reg = <0x10>;
-				};
-			};
-		};
diff --git a/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.yaml b/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.yaml
new file mode 100644
index 000000000000..a576fb87bfc8
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/brcm,mdio-mux-iproc.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/brcm,mdio-mux-iproc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MDIO bus multiplexer found in Broadcom iProc based SoCs.
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+description:
+  This MDIO bus multiplexer defines buses that could be internal as well as
+  external to SoCs and could accept MDIO transaction compatible to C-22 or
+  C-45 Clause. When child bus is selected, one needs to select these two
+  properties as well to generate desired MDIO transaction on appropriate bus.
+
+allOf:
+  - $ref: /schemas/net/mdio-mux.yaml#
+
+properties:
+  compatible:
+    const: brcm,mdio-mux-iproc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description: core clock driving the MDIO block
+
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    mdio_mux_iproc: mdio-mux@66020000 {
+        compatible = "brcm,mdio-mux-iproc";
+        reg = <0x66020000 0x250>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        mdio@0 {
+           reg = <0x0>;
+           #address-cells = <1>;
+           #size-cells = <0>;
+
+           pci_phy0: pci-phy@0 {
+              compatible = "brcm,ns2-pcie-phy";
+              reg = <0x0>;
+              #phy-cells = <0>;
+           };
+        };
+
+        mdio@7 {
+           reg = <0x7>;
+           #address-cells = <1>;
+           #size-cells = <0>;
+
+           pci_phy1: pci-phy@0 {
+              compatible = "brcm,ns2-pcie-phy";
+              reg = <0x0>;
+              #phy-cells = <0>;
+           };
+        };
+
+        mdio@10 {
+           reg = <0x10>;
+           #address-cells = <1>;
+           #size-cells = <0>;
+
+           gphy0: eth-phy@10 {
+              reg = <0x10>;
+           };
+        };
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
