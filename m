Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3C6AEE4993
	for <linux-phy@archiver.kernel.org>; Wed, 23 Aug 2023 13:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h9lrcDU2pMhAtZw5itnGTqy1sQup4BOesyqF+1PT0Zs=; b=NA+rlAtoQblsdB
	XIW3arzEYtRQTpiTdH1pdkmAUSPaBsDak1ryLptwz72VDkS2dZ300uzV80/wAb1zzqlRdlZwDqvdL
	SdOqiof1s29YAzLp/FdnhBzMAFwACZ28sK/dOibZfLsx7BLtC7pPg1xFz0ebgKp7tXVUJRwKzvndx
	Ss3bSQxjfesfgiNH6gUaEnZlikYyijfEbrJBSQlz1THVOHfb9N3UZogUkNDxkweQUFVRuzC1DWpoh
	gdgKtf3wDvhJK7TIWaIdgVMa+Ajr475bVvvKsN5LyT5X3XKDRIQZ0EHm+vk5UcuDZp8UwRx3Yj04C
	ZDz8ZqS5qHq9t9nuBPIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYnp9-000fsq-23;
	Wed, 23 Aug 2023 13:23:03 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYnp6-000fs4-0a
	for linux-phy@lists.infradead.org;
	Wed, 23 Aug 2023 13:23:02 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-31aeef88a55so3389616f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 23 Aug 2023 06:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692796968; x=1693401768;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pzn+5bTpnSMNwUuNyyowNMIJDQZpkAi+7c7mgKTYoME=;
        b=r6cn6rzIz0BUUjfTlEntcGmnQ1emT1LcuHfH0giUjqFalgnkFVgfmPmYn4JnZIGvGd
         8vq36GiD1N7HPhbhCHGX/Vxtvs65nKwerH03TLGgA3Jh5i1/nmPkBqtxZiXkbYi8oD6w
         K1UDpRQ5E5lLyAgjOBLJlKxACcWjaQUsQW2UVrjreVK0Idl3G7ovSzSNA8ZESvKUFo0M
         ecZOdNlHkEQ4Ydi6elupAad5t7dKX48Z6n1ZhtAKWKVyVA57ib5L1rjRAO57N1NXxj7E
         p7WSuw7k1/I+LKkLYV9HyAAmeIPbanf8mZR+mwtRVA4R9Ttdiuz3m5nwzUIsTQZjLgj4
         FRTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692796968; x=1693401768;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pzn+5bTpnSMNwUuNyyowNMIJDQZpkAi+7c7mgKTYoME=;
        b=LL/i0LcoW+x1Oqb1byAjw5un6O9UgC+fWmuqvAkSANnE4X0CxwZTVqNvNQ8j2iAf9B
         P1w5cx2HsiIu8ezMzyiWElrH7PVF0ZJxtE6ipSxV21DV2BYL2t1ykJthD4cY+Xfw+xFQ
         k++bkdLbPGhdRf+bg0+pnpuvD0mqBH/n1B+8NwPpVx9Znf3g/Cq5COIAo47NXtzXwm0m
         jTAaHE5euBdbqN7R1cSKNfN0x1zc+dcm1xnmb357zbrI3bB3S5yJnIh85xx8wH7QICZ3
         3NtPlWD7JK2Gk2QK4kBofYtSRszrTQt+boiUuKis7yL5lavbnPKkXp2e02NNJLtMyp+R
         AuEA==
X-Gm-Message-State: AOJu0YzgQxlbV9doJT9KLUhg9duCpBPRcVo2MRLU1naiyV5YcDGtoT/d
	yviI9/bIGUIogHOSo2uEMSM=
X-Google-Smtp-Source: AGHT+IE1gUkkpuMyRPjYkQSA46YH3/bOWjgb5ixYadB1u37Wfo9A/dssTd2q0MBm9JbD7/LteuPZ8g==
X-Received: by 2002:a5d:4573:0:b0:315:ad1a:5abc with SMTP id a19-20020a5d4573000000b00315ad1a5abcmr9228900wrc.5.1692796967751;
        Wed, 23 Aug 2023 06:22:47 -0700 (PDT)
Received: from localhost ([37.174.115.23])
        by smtp.gmail.com with ESMTPSA id p6-20020a5d68c6000000b00317f70240afsm19353163wrw.27.2023.08.23.06.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 06:22:47 -0700 (PDT)
From: Raphael Gallais-Pou <rgallaispou@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: phy: st: convert phy-stih407-usb to DT schema
Date: Wed, 23 Aug 2023 15:22:24 +0200
Message-ID: <20230823132224.111326-1-rgallaispou@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_062300_245035_EA77900E 
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

Convert the st,stih407-usb2-phy binding to DT schema format.

Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>
---
Changes in v2:
  * Removed quotes surrounding $ref
  * Removed quotes surrounding const properties
  * Changed 'st,syscfg' $ref value to phandle-array
  * Changed authorship to my oss email address

Changes in v3:
  * Remove driver references
  * Dropped obvious description
  * Dropped label and set simpler node name
---
 .../bindings/phy/phy-stih407-usb.txt          | 24 -------
 .../bindings/phy/st,stih407-usb2-phy.yaml     | 63 +++++++++++++++++++
 2 files changed, 63 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-stih407-usb.txt
 create mode 100644 Documentation/devicetree/bindings/phy/st,stih407-usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-stih407-usb.txt b/Documentation/devicetree/bindings/phy/phy-stih407-usb.txt
deleted file mode 100644
index 35f03df00130..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-stih407-usb.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-ST STiH407 USB PHY controller
-
-This file documents the dt bindings for the usb picoPHY driver which is the PHY for both USB2 and USB3
-host controllers (when controlling usb2/1.1 devices) available on STiH407 SoC family from STMicroelectronics.
-
-Required properties:
-- compatible		: should be "st,stih407-usb2-phy"
-- st,syscfg		: phandle of sysconfig bank plus integer array containing phyparam and phyctrl register offsets
-- resets		: list of phandle and reset specifier pairs. There should be two entries, one
-			  for the whole phy and one for the port
-- reset-names		: list of reset signal names. Should be "global" and "port"
-See: Documentation/devicetree/bindings/reset/st,stih407-powerdown.yaml
-See: Documentation/devicetree/bindings/reset/reset.txt
-
-Example:
-
-usb2_picophy0: usbpicophy@f8 {
-	compatible	= "st,stih407-usb2-phy";
-	#phy-cells	= <0>;
-	st,syscfg	= <&syscfg_core 0x100 0xf4>;
-	resets		= <&softreset STIH407_PICOPHY_SOFTRESET>,
-			  <&picophyreset STIH407_PICOPHY0_RESET>;
-	reset-names	= "global", "port";
-};
diff --git a/Documentation/devicetree/bindings/phy/st,stih407-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/st,stih407-usb2-phy.yaml
new file mode 100644
index 000000000000..e45cdd98aab2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/st,stih407-usb2-phy.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/st,stih407-usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STiH407 USB PHY controller
+
+maintainers:
+  - Patrice Chotard <patrice.chotard@foss.st.com>
+
+description:
+  The USB picoPHY device is the PHY for both USB2 and USB3 host controllers
+  (when controlling usb2/1.1 devices) available on STiH407 SoC family from
+  STMicroelectronics.
+
+properties:
+  compatible:
+    const: st,stih407-usb2-phy
+
+  st,syscfg:
+    description: Phandle to the syscfg bank
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to syscfg
+          - description: phyparam register offset
+          - description: phyctrl register offset
+
+  resets:
+    items:
+      - description: Phandle and reset specifier pair for the whole phy.
+      - description: Phandle and reset specifier pair for the port.
+
+  reset-names:
+    items:
+      - const: global
+      - const: port
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - st,syscfg
+  - resets
+  - reset-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/reset/stih407-resets.h>
+    usb-phy {
+        compatible = "st,stih407-usb2-phy";
+        #phy-cells = <0>;
+        st,syscfg = <&syscfg_core 0x100 0xf4>;
+        resets = <&softreset STIH407_PICOPHY_SOFTRESET>,
+                 <&picophyreset STIH407_PICOPHY0_RESET>;
+        reset-names = "global", "port";
+    };
+...
-- 
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
