Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9090C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDqlNccIVYCEzKgbVb5ghzLnUpCX2VUqJCT5Bp5b7tk=; b=kuRPEl1DC75FtK
	F/9IiF5MYuaEfRBpXeK6DEOcSYrt4FAAaDGS9jWRNfxgRJbBKPbZSKV0+q0SM0VsymYBJ4qk2saEq
	N2Z1uiJP7pDh/DQF70gcscPOk7LAfUxImwDVYwsU1lwahyhPKg0ZV5w87hWv8wPm1Plr2767GLAkr
	Xyvud1b3By7it9/+osQ7n/WkaiqA/vqcQsYzWEK5saIiwfCuDT/YP+HpoTO+waiy2W+R30MiRUIAK
	Z3ZJwmyA2MdMzbgtW4drV2XuBP0cRjlN0t6k1vqm5ipKOJKD2eNLDiAc7ITSBOEw3+JYEvbmz0mb4
	EUZgp5JFThDOSB1Cx1Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BNS-0000000Aej9-2k0e;
	Mon, 31 Aug 2026 23:25:22 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BNQ-0000000Aeih-07iH
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:25:21 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-38ecc48b3deso500753a91.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788218719; x=1788823519; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vEDujxfcQqG+DZ1q+qLYb+AredW1xx3215/C6epQlL0=;
        b=rUsTREgByRmXYRt0NpIRhcAnkAiihE9NPBlHJWpcuGdZXtwEvc91O2r1LkUa04iSF+
         WUAkIJSS0r0+qi6dTEZjGYIxDx2paMItk5DgqFnw9OM2uiCQ7YjTzlZzcj/03CodqUgL
         wRkyoneSLsMGEonMvsbyZBLN6Nwr+wKs+UWO5VP2TwKYkRZtbKIuvT+LXbCGz+wD5mng
         DM3b94MGBRQRcU5v5AArCkpqm+ayZgbHolSRz/OOOq9cLNxwaBg+TN52sMIsoORA+2T3
         Aa/r+eJxWrSBUFjvvtxSK8w3pUDcvLmliODejaFjnSthT7lTmpgzVH9w9X7Cq8yznOfZ
         nbkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788218719; x=1788823519;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vEDujxfcQqG+DZ1q+qLYb+AredW1xx3215/C6epQlL0=;
        b=onelUaLnqfI++w5emtzryKsipzqjDAz03magvpz/9eMNkV8C+Moi3izCMqN1Lm7goq
         2bl5MMXHWfUx4KIGH3/3LMWB9s6khptb55ypV7k0mmK0Sw36uvHX/iCyN6fC1kvX8KjH
         2p0BKIODCJDDznQ5p0hbV+ZWpKUy5ULnXjAjr9A0D7434CFLleAV3R8ilNAEZt7ACOMR
         4KrYUSVBQKV33e+4DQEL2RwngBrij0Zpm8caGvx6cqxTtvjC72XRUNoHmEZW9cyV7BAU
         SEOUkheV9KjDepZMTo6NFv97+kms0J75AlsCd9nmuUi3gNPQ605UTbQSKtnRAmRylhog
         AK8Q==
X-Forwarded-Encrypted: i=1; AKwUvByVKK0JaYeR/bW0YQnM4Dj5uOfrFXcFIh53m+yZlvxxEdvSUZQiJr97h1G3Q2FvtztzIcZnQCv4drk=@lists.infradead.org
X-Gm-Message-State: AFuF++lbpsBBgLcqjCyOM3QJoO6trL96gt2lXRGizCZfJ7zhsqItkVpT
	96Q1NkfUJ7ACJu+W2H3Ehmj65Fru5nc00to/vCPcu6uVYhDOpRFBohFs0gB05Q==
X-Gm-Gg: AYBFou2RpoMyMcFBNrJR//44ESDD2xzuEaJ9K9qP5f6L47Bq8izz04huUJijPxHZUxP
	meTpt01SsjMcKHFYqyI1r0rP+ahvJsh9TBhshXYpq3DSgGDrJB4jG+8qEbJ7ZfyU2E0DJeQBZ+C
	lHmg0wF2LSlP7FrxSl1oeqQre/mtwacFujrrSTwg5sGrmtzsQR9z1oHofrrXKuN6yhyXRwfqetR
	fSUxr+a0R8DzmRjwj+fF2ZkHYbzxi9DeU8knB03soBJsISMBFxABAL/8qFQ4chJHRlhWQfq0BFH
	B0Tyg0ZM2+GALqJFyiRQflAfXsNK6ZhSvIEwaBnPaMpWvC+2j5Vh3Mjj0QQ7f7G/Vd+FAofrcVB
	OGratFhFn7iyFbN5ThMVamEgH+Xm+2mvzcI5oCTqA1wH8OXOpYsJLB3QWXaq+BUdd7H96ECOPbv
	HLViTv5hniuTv75G7j5EAhWhnCkePTMdz6fUYLd2r+dYriCd+20GuR1gHOVSJaamHv4p7jJL4=
X-Received: by 2002:a17:90a:ec85:b0:398:bad2:c0f with SMTP id 98e67ed59e1d1-398bad20e7bmr14555598a91.5.1788218718935;
        Mon, 31 Aug 2026 16:25:18 -0700 (PDT)
Received: from [10.60.78.252] ([2409:40c2:5002:4362:354a:8f21:7ceb:c8a6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3990d75fc49sm1963213a91.12.2026.08.31.16.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 16:25:18 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 01 Sep 2026 04:53:09 +0530
Subject: [PATCH v3 5/6] dt-bindings: usb: ti,am33xx-usb: Convert to DT
 schema
MIME-Version: 1.0
Message-Id: <20260901-ti-am33-usb-v3-5-5e15c617d2e9@gmail.com>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
In-Reply-To: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, Bin Liu <b-liu@ti.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788218595; l=8205;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=ZbR5e3iSx3We61kptyp25XVhlVD2xl4rq8aQcMhjv/E=;
 b=OK8WmRfKp8tQaxPx85rZ9BP5a5Jt/eX2mJYmSRouEhjxrLWCM6Ae2tuucDbzsx7P8eIv1+/fd
 cyHqE2Zq7tjAHFxeESRzH52QMomOn3qr7fLNUyZl07+p4u8iLUfG7lj
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_162520_140358_4038B6D8 
X-CRM114-Status: GOOD (  15.19  )
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

Convert the TI AM33xx USB Wrapper text binding to DT schema.
Changes during conversion:
- Drop the USB control module from child nodes, as it physically resides
  within the System Control Module address space, not the USB wrapper.
- Allow standard phy@[0-9a-f]+$ child node names alongside the legacy
  usb-phy@[0-9a-f]+$.
- Mark the legacy ti,hwmods property as deprecated.
- Document required #address-cells, #size-cells, and ranges property
  missing from text binding.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
 .../devicetree/bindings/usb/am33xx-usb.txt         | 143 ---------------------
 .../devicetree/bindings/usb/ti,am33xx-usb.yaml     | 103 +++++++++++++++
 2 files changed, 103 insertions(+), 143 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/am33xx-usb.txt b/Documentation/devicetree/bindings/usb/am33xx-usb.txt
deleted file mode 100644
index 94312ad8ec8c..000000000000
--- a/Documentation/devicetree/bindings/usb/am33xx-usb.txt
+++ /dev/null
@@ -1,143 +0,0 @@
-  AM33xx MUSB
-~~~~~~~~~~~~~~~
-- compatible: ti,am33xx-usb
-- reg: offset and length of the usbss register sets
-- ti,hwmods : must be "usb_otg_hs"
-
-The glue layer contains multiple child nodes. It is required to have
-at least a control module node, USB node and a PHY node. The second USB
-node and its PHY node are optional. The DMA node is also optional.
-
-Example:
-~~~~~~~~
-The following example contains all the nodes as used on am335x-evm:
-
-aliases {
-	usb0 = &usb0;
-	usb1 = &usb1;
-	phy0 = &usb0_phy;
-	phy1 = &usb1_phy;
-};
-
-usb: usb@47400000 {
-	compatible = "ti,am33xx-usb";
-	reg = <0x47400000 0x1000>;
-	ranges;
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ti,hwmods = "usb_otg_hs";
-
-	ctrl_mod: control@44e10000 {
-		compatible = "ti,am335x-usb-ctrl-module";
-		reg = <0x44e10620 0x10
-			0x44e10648 0x4>;
-		reg-names = "phy_ctrl", "wakeup";
-	};
-
-	usb0_phy: usb-phy@47401300 {
-		compatible = "ti,am335x-usb-phy";
-		reg = <0x47401300 0x100>;
-		reg-names = "phy";
-		ti,ctrl_mod = <&ctrl_mod>;
-		#phy-cells = <0>;
-	};
-
-	usb0: usb@47401000 {
-		compatible = "ti,musb-am33xx";
-		reg = <0x47401400 0x400
-			0x47401000 0x200>;
-		reg-names = "mc", "control";
-
-		interrupts = <18>;
-		interrupt-names = "mc";
-		dr_mode = "otg"
-		mentor,multipoint = <1>;
-		mentor,num-eps = <16>;
-		mentor,ram-bits = <12>;
-		mentor,power = <500>;
-		phys = <&usb0_phy>;
-
-		dmas = <&cppi41dma  0 0 &cppi41dma  1 0
-			&cppi41dma  2 0 &cppi41dma  3 0
-			&cppi41dma  4 0 &cppi41dma  5 0
-			&cppi41dma  6 0 &cppi41dma  7 0
-			&cppi41dma  8 0 &cppi41dma  9 0
-			&cppi41dma 10 0 &cppi41dma 11 0
-			&cppi41dma 12 0 &cppi41dma 13 0
-			&cppi41dma 14 0 &cppi41dma  0 1
-			&cppi41dma  1 1 &cppi41dma  2 1
-			&cppi41dma  3 1 &cppi41dma  4 1
-			&cppi41dma  5 1 &cppi41dma  6 1
-			&cppi41dma  7 1 &cppi41dma  8 1
-			&cppi41dma  9 1 &cppi41dma 10 1
-			&cppi41dma 11 1 &cppi41dma 12 1
-			&cppi41dma 13 1 &cppi41dma 14 1>;
-		dma-names =
-			"rx1", "rx2", "rx3", "rx4", "rx5", "rx6", "rx7",
-			"rx8", "rx9", "rx10", "rx11", "rx12", "rx13",
-			"rx14", "rx15",
-			"tx1", "tx2", "tx3", "tx4", "tx5", "tx6", "tx7",
-			"tx8", "tx9", "tx10", "tx11", "tx12", "tx13",
-			"tx14", "tx15";
-	};
-
-	usb1_phy: usb-phy@47401b00 {
-		compatible = "ti,am335x-usb-phy";
-		reg = <0x47401b00 0x100>;
-		reg-names = "phy";
-		ti,ctrl_mod = <&ctrl_mod>;
-		#phy-cells = <0>;
-	};
-
-	usb1: usb@47401800 {
-		compatible = "ti,musb-am33xx";
-		reg = <0x47401c00 0x400
-			0x47401800 0x200>;
-		reg-names = "mc", "control";
-		interrupts = <19>;
-		interrupt-names = "mc";
-		dr_mode = "host"
-		mentor,multipoint = <1>;
-		mentor,num-eps = <16>;
-		mentor,ram-bits = <12>;
-		mentor,power = <500>;
-		phys = <&usb1_phy>;
-
-		dmas = <&cppi41dma 15 0 &cppi41dma 16 0
-			&cppi41dma 17 0 &cppi41dma 18 0
-			&cppi41dma 19 0 &cppi41dma 20 0
-			&cppi41dma 21 0 &cppi41dma 22 0
-			&cppi41dma 23 0 &cppi41dma 24 0
-			&cppi41dma 25 0 &cppi41dma 26 0
-			&cppi41dma 27 0 &cppi41dma 28 0
-			&cppi41dma 29 0 &cppi41dma 15 1
-			&cppi41dma 16 1 &cppi41dma 17 1
-			&cppi41dma 18 1 &cppi41dma 19 1
-			&cppi41dma 20 1 &cppi41dma 21 1
-			&cppi41dma 22 1 &cppi41dma 23 1
-			&cppi41dma 24 1 &cppi41dma 25 1
-			&cppi41dma 26 1 &cppi41dma 27 1
-			&cppi41dma 28 1 &cppi41dma 29 1>;
-		dma-names =
-			"rx1", "rx2", "rx3", "rx4", "rx5", "rx6", "rx7",
-			"rx8", "rx9", "rx10", "rx11", "rx12", "rx13",
-			"rx14", "rx15",
-			"tx1", "tx2", "tx3", "tx4", "tx5", "tx6", "tx7",
-			"tx8", "tx9", "tx10", "tx11", "tx12", "tx13",
-			"tx14", "tx15";
-	};
-
-	cppi41dma: dma-controller@7402000 {
-		compatible = "ti,am3359-cppi41";
-		reg =  <0x47400000 0x1000
-			0x47402000 0x1000
-			0x47403000 0x1000
-			0x47404000 0x4000>;
-		reg-names = "glue", "controller", "scheduler", "queuemgr";
-		interrupts = <17>;
-		interrupt-names = "glue";
-		#dma-cells = <2>;
-		dma-channels = <30>;
-		dma-requests = <256>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/usb/ti,am33xx-usb.yaml b/Documentation/devicetree/bindings/usb/ti,am33xx-usb.yaml
new file mode 100644
index 000000000000..0b36b9ddfb4a
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ti,am33xx-usb.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/ti,am33xx-usb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI AM33xx USB Wrapper
+
+description:
+  The glue layer contains multiple child nodes. It is required to have at least
+  a USB node and a PHY node. The second USB node and its PHY node are optional.
+  The DMA node is also optional.
+
+maintainers:
+  - Sebastian Andrzej Siewior <bigeasy@linutronix.de>
+
+properties:
+  compatible:
+    const: ti,am33xx-usb
+
+  reg:
+    maxItems: 1
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ti,hwmods:
+    $ref: /schemas/types.yaml#/definitions/string
+    description: Name of the hwmod associated with the USB module.
+    const: usb_otg_hs
+    deprecated: true
+
+patternProperties:
+  "^(usb-)?phy@[0-9a-f]+$":
+    $ref: /schemas/phy/ti,am335x-usb-phy.yaml#
+
+  "^usb@[0-9a-f]+$":
+    $ref: /schemas/usb/ti,musb-am33xx.yaml#
+
+  "^dma-controller@[0-9a-f]+$":
+    $ref: /schemas/dma/ti/ti,cppi41.yaml#
+
+required:
+  - compatible
+  - reg
+  - ranges
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    usb@47400000 {
+        compatible = "ti,am33xx-usb";
+        reg = <0x47400000 0x1000>;
+        ranges;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ti,hwmods = "usb_otg_hs";
+
+        usb-phy@47401300 {
+            compatible = "ti,am335x-usb-phy";
+            reg = <0x47401300 0x100>;
+            reg-names = "phy";
+            ti,ctrl_mod = <&ctrl_mod>;
+            #phy-cells = <0>;
+        };
+
+        usb@47401000 {
+            compatible = "ti,musb-am33xx";
+            reg = <0x47401400 0x400>,
+                  <0x47401000 0x200>;
+            reg-names = "mc", "control";
+            interrupts = <18>;
+            interrupt-names = "mc";
+            dr_mode = "otg";
+            mentor,multipoint = <1>;
+            mentor,num-eps = <16>;
+            mentor,ram-bits = <12>;
+            mentor,power = <500>;
+            phys = <&usb0_phy>;
+        };
+
+        dma-controller@7402000 {
+            compatible = "ti,am3359-cppi41";
+            reg = <0x47400000 0x1000>,
+                  <0x47402000 0x1000>,
+                  <0x47403000 0x1000>,
+                  <0x47404000 0x4000>;
+            reg-names = "glue", "controller", "scheduler", "queuemgr";
+            interrupts = <17>;
+            interrupt-names = "glue";
+            #dma-cells = <2>;
+            dma-channels = <30>;
+            dma-requests = <256>;
+        };
+    };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
