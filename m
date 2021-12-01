Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5862C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 18:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvqYl1XOdskGfw5GOpo2Rsx2cFcNv9C9sqbtHc1QmEQ=; b=bjGO0leiiwrwDN
	KjGSgg29U1QYm7+n8FhPlA1UauSJtghebBwGzIt1uBXFTM20GZYedlI5uZp9K7sV4XgsQ9gb6M0zB
	aevsOpbs/AdYZ0MhM4B8UgXdfURN6ScO8YwEeg+s5uNLoPdOZrKFkSD17Ut/5VIpi/4eSKsJ3/AwD
	UaAHOhp70rSkuRxbxeS3X98GJyhxkJIMbyeAjcko7bdXb4zRYyTo6m64l26NGUPyJMS7iLlyZsXQ9
	4h4VQ9a6c5ZRr2wIjqrSETph2fUjyrDv7Ui494mgDflCZOjnyMJwIuy0DZ0Q5cKZfIx/6bFrvLsrU
	8tAo5GF0j9zfrWrdT/ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msTuA-009f4G-21; Wed, 01 Dec 2021 18:00:30 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msTqx-009dNa-Oe; Wed, 01 Dec 2021 17:57:14 +0000
Received: by mail-pf1-x42f.google.com with SMTP id r130so25380176pfc.1;
 Wed, 01 Dec 2021 09:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bJLAlkJ/cxw+eyGZ9fDi2T+PE+wgI5zX9dIEMcgJMjY=;
 b=Qyo+pzKgsFCVfOlb4dyi73lunH8IE1N29oD+sxOyT4m+d4sd28zxj6gg8+vLA4juRi
 MWfJm962msCTfVYiYWMazlj0+sumH3CTiYjo18k3n2Xa6ScxYqrflfhLyeAdzFWrqe1g
 bnfASC/7k/90Ytjq5sz+V2vq3UoZeH3EwLAMQxrvdWNShPn0ExAVH6d3exdid4h0dxPr
 T8tMQgce8xJZhgn7Qf9j9Vy8Hv0kopRMLDMflmJkiuCrDCjZUenpG6rCFxxT+o5ef1Zo
 uwN1e2PYAspfjuGDheUmO5lAztUbwE46QHIpOZrykROM9/kK1F7PeZ/1Gr9R/h4yqopP
 T8ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bJLAlkJ/cxw+eyGZ9fDi2T+PE+wgI5zX9dIEMcgJMjY=;
 b=deu1T+EFhuAtevJ01VL5ti+/EUqLBmRwVIO8AhYqeRmbtGf0AVA+Z+jUPZ4pWjFXC1
 b4IbiYEWGDw5OAUPp9kWvpFD7wO1zRNvMOV4A+iVi6LOe1EiXOXaOhxe9vMh3DsNz7Fa
 jV8/IdYhanK8u14VnGR3spbuG+Jp/E9SxD/aconachSrZIINMyepo0wQV2sAgcBHqoZx
 PQbIIwYPMtU/CtmtKifb8b8Y1LdkdhwoedsefRhtIEAYM19JSU4d/szxqgMNJUh418eS
 bDPazZFvEJwD7Qwk3kWKn5xUhMXVZD2Nk6YB2HPI8nc8nesJFCo2nPJIpfak3ME7j56m
 IOKg==
X-Gm-Message-State: AOAM531OiVld5qNlWAaxz9qPAbVlfpQl8YV22RITqXoY7eXDju0q4I1L
 PaaI3HHvdEx5UjKWomoFFzM=
X-Google-Smtp-Source: ABdhPJwe3ruUZmU6OnzQoco26j6kjb+HTO53lAZezwc2l9peDxVHgobRFTRy7D35z4uvygUNiHSotA==
X-Received: by 2002:a63:6116:: with SMTP id v22mr5483761pgb.324.1638381430562; 
 Wed, 01 Dec 2021 09:57:10 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm471546pfc.151.2021.12.01.09.57.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 09:57:10 -0800 (PST)
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
Subject: [PATCH net-next v2 8/9] dt-bindings: phy: Convert Northstar 2 PCIe
 PHY to YAML
Date: Wed,  1 Dec 2021 09:56:51 -0800
Message-Id: <20211201175652.4722-9-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211201175652.4722-1-f.fainelli@gmail.com>
References: <20211201175652.4722-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_095711_825905_ED28DD56 
X-CRM114-Status: GOOD (  16.52  )
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
