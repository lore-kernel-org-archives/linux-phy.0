Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52F26C001DF
	for <linux-phy@archiver.kernel.org>; Sun, 22 Oct 2023 16:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TS30yhMV8vmHAvY/gZn7WRcp3fu5GN7rD2EsbkysJJc=; b=ppx6W3kiAnT+Cn
	vQJAGB3nCRwy/s47F9Vz6FYju+ujc1hBv0JJvUS4FkH+QbbF90HP3AGQM9a5w/3QQ+s3jzNGml4aB
	2iXA8jluadpPZKmR9r0PYn3FebabSZUWfiPe4q886qpNhV/LwEzC68GvVwhihIw2d5rhl9a27uLJJ
	ge4TJDQPc3k2cfrc2u1LQwRBALR35GTs10KhZbiJqFVS5PGpcpqa786L2zoq8e9oSCbVHoq9rWKhR
	NUrPo2ABxXOGQ4MNEFvzTMImQPDuzrjThTVb+ivwL20ugKmOnBmFW42nbSex/Hocckf4ct6+r/8iQ
	zbvml8g+9r+iWyKpTtxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qubLA-005hIZ-09;
	Sun, 22 Oct 2023 16:30:12 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qubL7-005hI7-0G
	for linux-phy@lists.infradead.org;
	Sun, 22 Oct 2023 16:30:10 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40806e40fccso18320465e9.2
        for <linux-phy@lists.infradead.org>; Sun, 22 Oct 2023 09:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697992207; x=1698597007; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lMcf/hVcl9Y942sk0y4rp2whb2upDzTSkcZEnfp5ZfQ=;
        b=H4qbWpNzhsTsr7qFgmFXTz9BP5EMWbTu8nr5VGWXFl5VgUILWPwOWN9WOMdWwrEUB3
         WwqjMPfCXEfvURYjzMXaRiBou/YoNLU87uvGca9pLnl134+SHWXMPdTVWz+xLLdzTIXd
         yY9EPM+robp+Got+FK70VSTq98bJMlPyjpwvsFsEPB4jiFngw7jGEWFIVpUdaY3e76EK
         NE6QxrSZU5EmeFQ8nUYtw95bo4/cM1durZZNJCJnCs9BQJcTMDUHvjVbN20l35bZX/bn
         Tus69yRYU6mHQWlDQMe5y7Ys2G6Lfwzn30Tc7qiaOm+ujeXXt/cy8lLt350wzVar61IM
         EAlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697992207; x=1698597007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lMcf/hVcl9Y942sk0y4rp2whb2upDzTSkcZEnfp5ZfQ=;
        b=jCIyV0z6R9sa75aSEeRqmdysqdJI5Ul4Mc0NdoPmfzm0N6UHjHHopiEjDU3dNNHSIQ
         kZSLg4Bd39pbV5678XiqacRLW9EryMuR3p1x0rgf/yL3IQYOKznHja+aZuWx7RroHXgi
         L0W7OMzJ4as9prIHCfwy6uN/EI4Dd0rb2cTSB9IqCvCIYZXdylimAlmdJIrBUt2Db2M4
         gpfoDw8NKMZcYRVvNBgJVOYv91lJYYyaPwwzZLwlDWtNu0nhxnIhaumOSOIKiDLmbXs+
         I6NEaSpOwexU0JVOTAUW8pfpIn0b415hzH/WTYGavqqC0SJ2JVVg6IGzPpFyuMICkeco
         CnLA==
X-Gm-Message-State: AOJu0YyZk9W7vYXUHzf54dE0GdYu44DOKRvqIz2VqVApRQpYrosygh99
	rEF4BeC7ltsBJUvD9DT8AgY=
X-Google-Smtp-Source: AGHT+IGM4XnJECS62Dw/iZAKXzBsk+hKeSbM7rXlIH9HhsUHo87ssmwYjMVz+jdwLcXVuRB2xJDpdQ==
X-Received: by 2002:a05:600c:3ba5:b0:406:44d2:8431 with SMTP id n37-20020a05600c3ba500b0040644d28431mr5260416wms.6.1697992207077;
        Sun, 22 Oct 2023 09:30:07 -0700 (PDT)
Received: from localhost.localdomain (141.red-88-10-53.dynamicip.rima-tde.net. [88.10.53.141])
        by smtp.gmail.com with ESMTPSA id r6-20020a05600c458600b00406443c8b4fsm12150482wmo.19.2023.10.22.09.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 09:30:06 -0700 (PDT)
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
Subject: [PATCH v3] dt-bindings: phy: ralink-usb-phy: convert to dtschema
Date: Sun, 22 Oct 2023 18:30:06 +0200
Message-Id: <20231022163006.803800-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_093009_127144_9E88898F 
X-CRM114-Status: GOOD (  13.62  )
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

Changes in v3:
 - Address Krzysztof review comments:
   + Use compatible to match yaml file name.
   + Reorder compatible alphabetically.
   + Add missing blank line betwwen compatible and reg properties.
   + Move allOf block after required block and add missing else case there.

Changes in v2:
 - Add missing SPDX License Identifier

 .../bindings/phy/mediatek,mt7628-usbphy.yaml  | 74 +++++++++++++++++++
 .../bindings/phy/ralink-usb-phy.txt           | 23 ------
 2 files changed, 74 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt7628-usbphy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/ralink-usb-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt7628-usbphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt7628-usbphy.yaml
new file mode 100644
index 000000000000..ce2c228e3216
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt7628-usbphy.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/mediatek,mt7628-usbphy.yaml#
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
+      - mediatek,mt7620-usbphy
+      - mediatek,mt7628-usbphy
+      - ralink,rt3352-usbphy
+
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
+required:
+  - compatible
+  - "#phy-cells"
+  - ralink,sysctl
+  - resets
+  - reset-names
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
+    else:
+      properties:
+        reg: false
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
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
