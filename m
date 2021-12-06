Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA944C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  6 Dec 2021 18:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvqYl1XOdskGfw5GOpo2Rsx2cFcNv9C9sqbtHc1QmEQ=; b=Y2XhjU3lRSeCMB
	vtg08r7vlLyJ8a+MMBocl9bGplQmUPQloJ/uA9Xb4QVIs6ucNRdLhY0xq5Mgg41r3yODXWBcscjP/
	lioDTAEChbSGXpd9KTlyvWK/DX9WgSY1GN1t7BcGaGfktZmDfIitaBjpExAWXn5UXTJe5fFeqqE65
	ywZu1n8meqSpwvI/DYXEV5E4+5C0W6ORP+T9obtxdgMqwp3KEE+21mx6GhK3bhYmHPrhzHT1NhsXL
	KcP9zvwbFBofS/MpVxshfwWrCrzPd6tUsiPjWlhNyqb8xVnJ9bM0oIUgRIN9VLnuj7dEllpRjcSsM
	mZpwS7L/WaoXDuYV140g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muILz-005CdU-0K; Mon, 06 Dec 2021 18:04:43 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muIIR-005An4-97; Mon, 06 Dec 2021 18:01:07 +0000
Received: by mail-pf1-x42f.google.com with SMTP id p13so10908349pfw.2;
 Mon, 06 Dec 2021 10:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bJLAlkJ/cxw+eyGZ9fDi2T+PE+wgI5zX9dIEMcgJMjY=;
 b=Vsbea1qeX+VozmQU+9qsHXe41sBZrrJPx1VjDPnoXmM0p4Ji7o05DdpDm81w20UbIR
 V2IccRSmPAAcWbtnDZhDfBhZk/LmIXgKLWHwIoA4+d5HFaexboja2HLhHzi5q4ceLmTg
 EHSO9Bi6JKYzi8Be1m25k00al8rMKXQ0OlfUIxaPHO0bmZaPE4nTnHi5+n7n3Tdku45x
 FT0+fYe78Vo7OxK6mxTRp6e4QsldZVZ2a37JamIs+dd2WXNK2qUcQn8/9ptji2y8jqhR
 ZHJ2GPC3lvsTy32lFeaiipkM+psg36u/V1kYWMSU0RnN7eA8Z237KzHAGSeUlYA0rqmC
 FLWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bJLAlkJ/cxw+eyGZ9fDi2T+PE+wgI5zX9dIEMcgJMjY=;
 b=INadUyA83BfhZy908ZaCegITktjgihCSA4X7avii3142oUxy3LJPKogM/XfYXqCH4a
 JleelJizvVqAIhGlJPUaRO+eqEww4nhWA3KnoZ60yAgY3PB4lBUkfLyKcSw/4HZ3OSfy
 V0S+T2vAOGecf3CWPqbYtTdzeehfBo1R2e6d2Tnz93VBdwTRJcwJIEe0wrO+WTkbjlpg
 5LQj1skpCFhEZw7x008krvh4bUbjTBmmIalsar3YE3rrZG4L88utkk+/pOusZE56cwKb
 jw5DawP+mggyzowfUIgBqz4b1G7Gu1qpCf7mEfrAAKYLDRcldVxEf7xSKfXgfGXfvb6R
 QA3A==
X-Gm-Message-State: AOAM530PljADmGYy50jmAp3NXR31pbpjzRuA5s9wpQnnQ8KFmhBrihmX
 f/bOunurk93jrjm3P3D2tOE=
X-Google-Smtp-Source: ABdhPJxa7mYehzO8+Juz3E+I0lmJ22iyBMG0h0pCrrhWf2iRDU31MS9gaVjwbeU/kbxUjZdIEfuzQg==
X-Received: by 2002:a63:9144:: with SMTP id l65mr20158872pge.52.1638813661855; 
 Mon, 06 Dec 2021 10:01:01 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u11sm5444070pfg.120.2021.12.06.10.01.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Dec 2021 10:01:01 -0800 (PST)
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
Subject: [PATCH v3 7/8] dt-bindings: phy: Convert Northstar 2 PCIe PHY to YAML
Date: Mon,  6 Dec 2021 10:00:48 -0800
Message-Id: <20211206180049.2086907-8-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211206180049.2086907-1-f.fainelli@gmail.com>
References: <20211206180049.2086907-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_100105_254729_2A47B810 
X-CRM114-Status: GOOD (  15.67  )
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

Convert the Broadcom Northstar 2 PCIe PHY Device Tree binding to YAML
and rename it accordingly in the process since it had nothing to do with
a MDIO mux on the PCI(e) bus. This is a pre-requisite to updating
another binding file to YAML.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/phy/brcm,mdio-mux-bus-pci.txt    | 27 ------------
 .../bindings/phy/brcm,ns2-pcie-phy.yaml       | 41 +++++++++++++++++++
 2 files changed, 41 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/brcm,mdio-mux-bus-pci.txt
 create mode 100644 Documentation/devicetree/bindings/phy/brcm,ns2-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/brcm,mdio-mux-bus-pci.txt b/Documentation/devicetree/bindings/phy/brcm,mdio-mux-bus-pci.txt
deleted file mode 100644
index 5b51007c6f24..000000000000
--- a/Documentation/devicetree/bindings/phy/brcm,mdio-mux-bus-pci.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-* Broadcom NS2 PCIe PHY binding document
-
-Required bus properties:
-- reg: MDIO Bus number for the MDIO interface
-- #address-cells: must be 1
-- #size-cells: must be 0
-
-Required PHY properties:
-- compatible: should be "brcm,ns2-pcie-phy"
-- reg: MDIO Phy ID for the MDIO interface
-- #phy-cells: must be 0
-
-This is a child bus node of "brcm,mdio-mux-iproc" node.
-
-Example:
-
-mdio@0 {
-	reg = <0x0>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	pci_phy0: pci-phy@0 {
-		compatible = "brcm,ns2-pcie-phy";
-		reg = <0x0>;
-		#phy-cells = <0>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/phy/brcm,ns2-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,ns2-pcie-phy.yaml
new file mode 100644
index 000000000000..70eb48b391c9
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/brcm,ns2-pcie-phy.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/brcm,ns2-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom NS2 PCIe PHY binding document
+
+maintainers:
+  - Ray Jui <ray.jui@broadcom.com>
+  - Scott Branden <scott.branden@broadcom.com>
+
+properties:
+  compatible:
+    const: brcm,ns2-pcie-phy
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
+    mdio {
+       #address-cells = <1>;
+       #size-cells = <0>;
+
+       pci-phy@0 {
+          compatible = "brcm,ns2-pcie-phy";
+          reg = <0x0>;
+          #phy-cells = <0>;
+       };
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
