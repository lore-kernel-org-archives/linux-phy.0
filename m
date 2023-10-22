Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9033AC001DF
	for <linux-phy@archiver.kernel.org>; Sun, 22 Oct 2023 10:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m/yX1IKLKwUoc/U7BO4W/9fbb8NCwmceKuOf3zKHSzU=; b=It5W//bBbzuK8m
	kRVnIe5RhLtTMvGQUzZRtpGOwtR/Bv1egmo1nlPI6+40WKUA/WNn7Xt2XzBLUBBiaVh8NtZndhFjH
	y8eb/U4DJszNUz0poHUaKtDKXLXujw73aX49fTwifTcCVA52UjfploXKEwx7duP4O68HwFvQoUWWu
	WkIkbomV2WBCBjqG1Tb0OwNLGuWZKwAfKvzm64rkltY+bJieiCJ53IXeATVf0bNKIoDPxoptZXzi9
	GSNUrcKBM0kcQtPwFN9/ZyjtmWPGFBB1w4M2opmlYTEDa3BtNNyYo095NfjWV0Grz9QcPHh5Pa+3l
	f3Ou6mTPhINVPQBoQDeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quVhn-005CAD-1x;
	Sun, 22 Oct 2023 10:29:11 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quVhl-005C9P-1k
	for linux-phy@lists.infradead.org;
	Sun, 22 Oct 2023 10:29:11 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c5087d19a6so34778981fa.0
        for <linux-phy@lists.infradead.org>; Sun, 22 Oct 2023 03:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697970543; x=1698575343; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZiTcAHupBgTw7Vl1VZjjsvOC2KRXwCZBUoGeBsfXfLo=;
        b=OyDyBhC8jj44Ld46Gu2FJX9ZafhK2ejrBW8xayptUL22dUji4xxGBe3uSPFeS7LYjB
         WnH1F5g8ECRxUOFOy8tUkZDtlBV08vmNZMnhz06iwcMxo+eYI7Qz0nAxsbKGmvaLI8WT
         bbPOsLFCzt9+YrophnZuz5ElcfT/n8x+5QxwOXS8JZU+zRgVyzEQMOUU5jlVfMHBT5X2
         Nw7PjQtinzegKea4yrmGx8ENhEzHc3QR0rHQNegVMagn39Td4mDnS7fy/g0tSYAZww7F
         RWDJhN+ulfZzPK2ewJMBHK5C4sCo+4MflF35V7b+TDLqewmMdfXBNLLR+KTjxWH/Qgga
         eORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697970543; x=1698575343;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZiTcAHupBgTw7Vl1VZjjsvOC2KRXwCZBUoGeBsfXfLo=;
        b=tirEhdd3OsH9O8Btwl566TLszZCY298PJT1wBohdbC4MKmPTNqJWdGNvlcY1yknZDl
         Ha2VldCyOr6c/JoW+4IrsWVv1WfeLCPuY81O71eDFZOIUjc4tZ4jPxxG1J5ystsTZC7P
         DGaGU75P6/OeCq0vNSrlVz1YmT6pZbkY+7XytjM/3oBhUtArwwRXTexL5poX0okHrcGK
         LcUZDJi8ibFOiSF3u5DcNIFLbq8P/HZBWALsW/ALQjla/GWng8VzmpruFGfpzwwT8hCA
         d/dBuCJNtWyvvkN45T6IjUbgiJv2g6JzlGgB4TeTFeOb0q52Kfl0qgzr8hVlBLLc9+YT
         jGsA==
X-Gm-Message-State: AOJu0YwQ4kE3k4eMfbrXQCpW96QQLbQThB/LmkH+3Ko+HPJ1T8qFG7lZ
	nlS3RA9+L/zVBvf9yd9Oh7I=
X-Google-Smtp-Source: AGHT+IG8AwKgQREdrTd3BzyymAYq98n5Fx6GodhxOoWKX4nGppqIcvjY8xJrbmDGlAjC3UzC0qC49w==
X-Received: by 2002:a2e:700d:0:b0:2c5:23f8:1111 with SMTP id l13-20020a2e700d000000b002c523f81111mr4092078ljc.41.1697970542665;
        Sun, 22 Oct 2023 03:29:02 -0700 (PDT)
Received: from localhost.localdomain (141.red-88-10-53.dynamicip.rima-tde.net. [88.10.53.141])
        by smtp.gmail.com with ESMTPSA id x10-20020a05600c21ca00b003feea62440bsm6497645wmj.43.2023.10.22.03.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 03:29:02 -0700 (PDT)
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
Subject: [PATCH] dt-bindings: phy: ralink-usb-phy: convert to dtschema
Date: Sun, 22 Oct 2023 12:29:01 +0200
Message-Id: <20231022102901.797030-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_032909_584126_416A2EB8 
X-CRM114-Status: GOOD (  12.67  )
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
 .../bindings/phy/ralink-usb-phy.txt           | 23 -------
 .../bindings/phy/ralink-usb-phy.yaml          | 69 +++++++++++++++++++
 2 files changed, 69 insertions(+), 23 deletions(-)
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
index 000000000000..62dcf11d112c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml
@@ -0,0 +1,69 @@
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
