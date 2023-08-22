Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21A4EEE49A5
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 20:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5/x8DahLB25AAptYjSdbt2DCD2JLTUGXYT1oIZ9Ssdg=; b=gAw6lA6ILKXOR0
	GzKUsMhyQ7cGHe3WdQt+omy69cWCqFKqmBAi/oVyQAQPN1dJymNWYbprEkPm3Sx09LLDvnEIu4zB5
	ReF2mkSC8AZnJBU2Xt5OfoetynBEnpKfXxo2pinEKzC7twCBoZcqNpJT8830+czrrg2ClhTRz1dsU
	DNRfObsgHMMTFaKBxQ+yghIbC6vslr/UDen3L83jtWP5VkEuuiB3O2IiVt/VMGBvektArUaXi5jXP
	gBlptLPdmhuGxBAVS8B4gnLaHnhkx0UkgfROo4H1sOPZHhgt1DC0C648FIcNuN/3Pi0EPf9b93IEs
	RTcq88AqWOTkefIZ14Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYYDx-00GmZ2-0u;
	Tue, 22 Aug 2023 20:43:37 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYYDt-00GmVc-1f
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 20:43:35 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fe32016bc8so46293785e9.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Aug 2023 13:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692737006; x=1693341806;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZD3sULWbpFRWziOX0LtxIjs7iHTJSZAnksomDUCWlP8=;
        b=sjFFs0W1etlRT3SzqjIjbgAprfJllIK9/UqSMigLiPAptwSewNR71/EC51NXJLDM8C
         x7uGzatIeqlvxVzwfcfCcccykqXh/3mikjr4lNSPJUnNYRbbFnyVcmMotFAQzlWNdASY
         l8O5zlFdZy0ckNBMvkQ0ssVL8Q+zO4rmUgRXfmgNsDE7vZtlU/45CCfyOVj89Shh5WsP
         Wp2k0dgzY4zPxicX2ylzr6Ns8jg0/FdG9ki7G9rIbMVidnzYvBeacKKaC0iAG6pvT2Z5
         9wnZA5oXx62/D8MHvaHuHm9HEWJ3zTAt8R8n83r8Fgt8NzuWbjxiOZgozRUCSam0C9US
         9GhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692737006; x=1693341806;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZD3sULWbpFRWziOX0LtxIjs7iHTJSZAnksomDUCWlP8=;
        b=cYIJuk2k4ilr02kaW78TwZIWeClN26i2Q+7ZTPuNdHepV+awskVrJPtPHxzSS6rVkr
         zPUhLilA6mkDf1/oo8PDQrNTElGqn5wZtbSnATc1/yQIcju4z2Azg5mCNxRZ7N3LkclA
         an1Do2hqqZ+sGeBUfLREzqCLV8yphV0CzIEMbI+iuN9nZy5H1EevgbeOi7bYwRUmYmgx
         owYw3dmQiN/RyUwRG2yolUG7y98qfOs3m+cBDmfNTFo61cd5utibwnei899wBTuhPbmJ
         pbE6D49qgdruOLmiyUx1QyMnBjCMufHFmtqhaIP95zRlmTXjGcXwTERHJyfioYI3ksWF
         hT6w==
X-Gm-Message-State: AOJu0YycHXnlgweVQRZKgKUMrciUGefRoWpA1cSD47OQckKDd92P+aeA
	62ofSGxLnAj6g8E8jJO5MSCGHiAId84=
X-Google-Smtp-Source: AGHT+IGLqETrin1+3JZvy484W9YMIdwIOYSeS/8ZWaw/ylVGxoFuVP+2Z32MEeUjRRhS4W2w2HaqSA==
X-Received: by 2002:a05:600c:b42:b0:3fe:d780:4f7a with SMTP id k2-20020a05600c0b4200b003fed7804f7amr8287028wmr.3.1692737005675;
        Tue, 22 Aug 2023 13:43:25 -0700 (PDT)
Received: from localhost ([78.242.174.90])
        by smtp.gmail.com with ESMTPSA id 20-20020a05600c249400b003fc04d13242sm20298322wms.0.2023.08.22.13.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Aug 2023 13:43:25 -0700 (PDT)
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
Subject: [PATCH v2] dt-bindings: phy: st: convert phy-stih407-usb to DT schema
Date: Tue, 22 Aug 2023 22:43:21 +0200
Message-ID: <20230822204321.54716-1-rgallaispou@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_134333_561028_E10E01B0 
X-CRM114-Status: GOOD (  15.77  )
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
---
 .../bindings/phy/phy-stih407-usb.txt          | 24 -------
 .../bindings/phy/st,stih407-usb2-phy.yaml     | 64 +++++++++++++++++++
 2 files changed, 64 insertions(+), 24 deletions(-)
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
index 000000000000..abd6fa0260f3
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/st,stih407-usb2-phy.yaml
@@ -0,0 +1,64 @@
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
+  The USB picoPHY driver is the PHY for both USB2 and USB3 host controllers
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
+    description: List of reset signal names.
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
+    usb2_picophy0: usbpicophy {
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
