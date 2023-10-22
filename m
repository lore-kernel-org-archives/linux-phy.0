Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28EB3C001DF
	for <linux-phy@archiver.kernel.org>; Sun, 22 Oct 2023 13:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kaflrbKwI1VmnFqjEtt0LxyiX1DFqOYVXt2LAS7l7D0=; b=HbzeItBHHOgLvR
	SGHNV3S2azQcLqyXG4ZiySO+ESTEgR5i0ICEEWtkgbEd2sYGjm3FvNXwKm8j7tL6EWCuB12xgNfYQ
	cie3yQaOdo3MhSbl+fRmhd22r6RiKhKgO9HFWPpKOC2ttB4y6Eh7HUPpbT2Lvr0zw99y2MzwOZea2
	dJ3hU5Nldx9TvKKyJdVFcq2AFOJ7DdKKGAlABG/v+PAyWwvuxnFpAzPWZJXI5evo4q8Z2htwFfnM6
	2vgU4j7IvuamQ+JcqC+R/D/GyAYRaLbnO23UFgtqE1WsVyr4nkS2YeFfVjhqDOgBId5VDr6NaATj1
	IRR9K0WsELEJvbm8gr/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quYGJ-005Uzn-2G;
	Sun, 22 Oct 2023 13:12:59 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quYGG-005UzL-2z
	for linux-phy@lists.infradead.org;
	Sun, 22 Oct 2023 13:12:58 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c51388ccebso35523151fa.3
        for <linux-phy@lists.infradead.org>; Sun, 22 Oct 2023 06:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697980375; x=1698585175; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3q0Avs5ak9d/HD/1I6mLe6b4hH5YiM69d6TrXnVBkvI=;
        b=C5/K9ZNPqeDegail7DXkqxYIMqGoMdbQlK+bgCVjyhEe78JuTMk1eI2eI0zyzMSa66
         FyUpxx/KV2TGGNOl7m4B6FWyxaxGgw7pL4G5SStHHbCgk5bGGcGzVb/GRMmBvLYOLyQk
         tH1PmR9ejuMIvS+pcRYcNtlU2UGy+35e/oawuEwhJDri0V0g1qBgjsmaV7QGOZOJcoEw
         fjXcf2NrSCRQJzR+RVg4XpSh5G2xKwNvMiPPX1bLkR6tNevBa9/RsJPgLK84V898fw5O
         2Xs4C6r9NhCgk7h2BneC7MeLB9ZyYuguk9rKe09jVA9qE79ryxD1JjjsoxcCdkgEfKDo
         DHGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697980375; x=1698585175;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3q0Avs5ak9d/HD/1I6mLe6b4hH5YiM69d6TrXnVBkvI=;
        b=sNEtzSIga1ANIwhFFJam41dwCzLego+TBY+wA81tnvsnV5F6+N2CTdAFrNGj9oExD8
         qvLyFdMoUy7mURNU1egNdy7ZNaap7IJk/yAsta1nh9I6YwbzxBtvUZFmaxdHDibkAZwR
         xLdJZbYlf8iUtV99cKe6pz0jMpE6beoX09PJr3l3UU7dNF4LgVm/4Aa9e4hwOe6iOpJy
         +1/FENIVpKqAiGFC/Q+PsUg5xNtU4SKFBO5oIfPEnzoEhkD9hIOsgzH6egRpxpuVAZBE
         dVZOmON/Ht+JeRKOS8i81j4Iehiku7XD2LhMOB22uwazdygp/nrHxFqluIrg4/isCHRm
         ctVQ==
X-Gm-Message-State: AOJu0YwjIExDt0fIkVLbIUm5NlS5uNogflWC0SctP30F8nLROXJ6Ysvc
	6nkc7+eoCJmF9XkXTIUtbSQEGOrRSKM=
X-Google-Smtp-Source: AGHT+IEQrPMe3KcRw7f9DcWNsK50Ob6oizvv6cqASQ8UtfhyYw4285VJ40Zw/YSujH9I3IP/FAWn7g==
X-Received: by 2002:a2e:b88b:0:b0:2c5:521:cec3 with SMTP id r11-20020a2eb88b000000b002c50521cec3mr5165993ljp.23.1697980374450;
        Sun, 22 Oct 2023 06:12:54 -0700 (PDT)
Received: from localhost.localdomain (141.red-88-10-53.dynamicip.rima-tde.net. [88.10.53.141])
        by smtp.gmail.com with ESMTPSA id p12-20020a05600c418c00b0040773c69fc0sm11508292wmh.11.2023.10.22.06.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 06:12:53 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: devicetree@vger.kernel.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2] dt-bindings: phy: ralink-usb-phy: convert to dtschema
Date: Sun, 22 Oct 2023 15:12:52 +0200
Message-Id: <20231022131252.801090-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_061256_971874_14A4F1D2 
X-CRM114-Status: GOOD (  13.31  )
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

Convert the ralink-usb-phy bindings to DT schema.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes in v2:
 - Add missing SPDX License Identifier

 .../bindings/phy/ralink-usb-phy.txt           | 23 ------
 .../bindings/phy/ralink-usb-phy.yaml          | 70 +++++++++++++++++++
 2 files changed, 70 insertions(+), 23 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/ralink-usb-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/ralink-usb-phy.txt b/Documentation/devicetree/bindings/phy/ralink-usb-phy.txt
deleted file mode 100644
index 9d2868a437ab..000000000000
--- a/Documentation/devicetree/bindings/phy/ralink-usb-phy.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-Mediatek/Ralink USB PHY
-
-Required properties:
- - compatible: "ralink,rt3352-usbphy"
-	       "mediatek,mt7620-usbphy"
-	       "mediatek,mt7628-usbphy"
- - reg: required for "mediatek,mt7628-usbphy", unused otherwise
- - #phy-cells: should be 0
- - ralink,sysctl: a phandle to a ralink syscon register region
- - resets: the two reset controllers for host and device
- - reset-names: the names of the 2 reset controllers
-
-Example:
-
-usbphy: phy {
-	compatible = "mediatek,mt7628-usbphy";
-	reg = <0x10120000 0x1000>;
-	#phy-cells = <0>;
-
-	ralink,sysctl = <&sysc>;
-	resets = <&rstctrl 22 &rstctrl 25>;
-	reset-names = "host", "device";
-};
diff --git a/Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml b/Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml
new file mode 100644
index 000000000000..b05665f5b641
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ralink-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek/Ralink USB PHY
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - ralink,rt3352-usbphy
+      - mediatek,mt7620-usbphy
+      - mediatek,mt7628-usbphy
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  ralink,sysctl:
+    description:
+      phandle to a ralink syscon register region.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+  resets:
+    items:
+      - description: USB Host reset controller
+      - description: USB Device reset controller
+
+  reset-names:
+    items:
+      - const: host
+      - const: device
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt7628-usbphy
+    then:
+      required:
+        - reg
+
+required:
+  - compatible
+  - "#phy-cells"
+  - ralink,sysctl
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@10120000 {
+      compatible = "mediatek,mt7628-usbphy";
+      reg = <0x10120000 0x1000>;
+      #phy-cells = <0>;
+      ralink,sysctl = <&sysc>;
+      resets = <&rstctrl 22>,
+               <&rstctrl 25>;
+      reset-names = "host", "device";
+    };
+
+...
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
