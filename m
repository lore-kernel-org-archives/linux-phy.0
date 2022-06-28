Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24C46CCA480
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oeXN6Ib0nEj6iEwFax36gx2ZszputIvWWnRx7OzUBg=; b=AttamsKAmPpgh0
	SXPTy+0irmbCc2lq3maPutERQxRUVP1FOsjwZ16M8CAP5eYYzJCT8s9oVcmQhjpUzCmlB8xV2uLSV
	fK3xjb6btAj8ponl+9PXdxjVHUPtxcuDYOqxGV8FgPQupB1R1PafUqs2n9lNtFmHIY+NjRH4YD+Gc
	Lx4tOwhRIuMDPTQDRFMX/3znBLMYRWxXFcx6pKcNnTnI7FiRPduI1LY6V14M7pVlKzXCl9ipqzWmp
	ZhhOJpOtAGQKM9xaahjs0Mgkc+b6tTHKlR3q3nr+uk3o+sRVPH+DUF0J2sYqL6D2z38ks5s3qr8sQ
	6AX3lBCTHzEsHO58EC5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aaq-006DmV-En; Tue, 28 Jun 2022 12:45:24 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aam-006DjJ-0I
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:45:21 +0000
Received: by mail-ed1-x534.google.com with SMTP id o10so17430175edi.1
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 05:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qAna91f+tExWr/xWBecqjF79wZKKeqItDZrQk9dt538=;
        b=Sblb9A+txozzU3Urkkt5DVK0X8vW5h35NCjvQGnC8IdzJP8IskPVuBwJkTMIpo6mBf
         9Y5qFSvLioo2V1KgLZ6VMzanYI2xnoroG+Klqq1GbrwkDhhnpQALto2hVW/qjzKrb6Hb
         wyKQPCkPVP3ICPyfXH9YhIbtUuRqWmS7tW+dWPxpdqkDNvhiSeM8PJUWBJxzNrXzt95N
         ehftd/9GtMoEqs0hjB7Y7D3su6I21X1USbUHtX5sYjcwz4EyRKyB2fPLw+JSmp24hyI4
         Cv0U+L5aGHpx6MQLzrV/nddZQ4nzOgZ57ZK4C4YOhQ2cNrhTYfzw/UUP2FBqQxZHWIJM
         XgbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qAna91f+tExWr/xWBecqjF79wZKKeqItDZrQk9dt538=;
        b=W4ep2zNCZLch9+mVZBMz3ZV9bmCc11TM14CKXtYJdfUeMT8mBLyRS2xXBht7g0JaN3
         IdY4C2lblVEzfz2ZDbav8Sx20s2HTbmdNvRI5peLCFcifoBkniTafTBH8trhSUpdw8ZY
         7SLddeZ0LhVRTRCj2hEn6ZaPpuYEq9eSI0RiM+RgS7rW/HK/Y91dVutlbjjuxe1p/p0i
         TLhs5HT3eFHeyScDG//YdTfDHTmLzRNFWeRBAt8pAdRJ8zBZ6EuViuDQ/sNL0UiNRvV7
         T+xE5tYBwGJzNzJcLQ0VjT3jjJhzY/UFfuB7DNZyd+R4EvVkdO0HmICQTBxQvzYNLwnP
         Ugwg==
X-Gm-Message-State: AJIora+LlM4rvwgOUJhgn7c98zV1hRPAEla13iYfjoit0osA+ehAGYu0
	IU9Z9KBmE/swG8o2q+G59ThfaEg7NaU=
X-Google-Smtp-Source: AGRyM1svJ8HWxHMKZ5Pu+TeawAFOCOEc/Rr1r9IR8nhjJ1l4ClmXg77Faof3WxaqAt2jTvIMO2mSpg==
X-Received: by 2002:a05:6402:5384:b0:431:6d84:b451 with SMTP id ew4-20020a056402538400b004316d84b451mr22821873edb.46.1656420317609;
        Tue, 28 Jun 2022 05:45:17 -0700 (PDT)
Received: from localhost.localdomain (dynamic-095-114-061-215.95.114.pool.telefonica.de. [95.114.61.215])
        by smtp.googlemail.com with ESMTPSA id f13-20020a170906824d00b00726e108b566sm622871ejx.173.2022.06.28.05.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 05:45:17 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	p.zabel@pengutronix.de
Cc: linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	rtanwar@maxlinear.com,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v1 1/9] dt-bindings: phy: lantiq: xway-rcu-usb2-phy: Convert to YAML
Date: Tue, 28 Jun 2022 14:44:33 +0200
Message-Id: <20220628124441.2385023-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_054520_086994_01FD3D02 
X-CRM114-Status: GOOD (  16.82  )
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

Convert the Lantiq XWAY RCU USB2 PHY bindings to YAML.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../phy/lantiq,xway-rcu-usb2-phy.yaml         | 68 +++++++++++++++++++
 .../bindings/phy/phy-lantiq-rcu-usb2.txt      | 40 -----------
 2 files changed, 68 insertions(+), 40 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/lantiq,xway-rcu-usb2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt

diff --git a/Documentation/devicetree/bindings/phy/lantiq,xway-rcu-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/lantiq,xway-rcu-usb2-phy.yaml
new file mode 100644
index 000000000000..702a8e8c64b5
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/lantiq,xway-rcu-usb2-phy.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/lantiq,xway-rcu-usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lantiq XWAY SoC RCU USB 1.1/2.0 PHY binding
+
+maintainers:
+  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - lantiq,ase-usb2-phy
+      - lantiq,danube-usb2-phy
+      - lantiq,xrx100-usb2-phy
+      - lantiq,xrx200-usb2-phy
+      - lantiq,xrx300-usb2-phy
+
+  reg:
+    minItems: 2
+
+  clocks:
+    minItems: 1
+
+  clock-names:
+    items:
+      - const: phy
+
+  resets:
+    minItems: 1
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: phy
+      - const: ctrl
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    usb_phy0: usb2-phy@18 {
+        compatible = "lantiq,xrx200-usb2-phy";
+        reg = <0x18 4>, <0x38 4>;
+
+        clocks = <&pmu_USB0_PHY>;
+        clock-names = "phy";
+
+        resets = <&reset1 4 4>, <&reset0 4 4>;
+        reset-names = "phy", "ctrl";
+
+        #phy-cells = <0>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt b/Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt
deleted file mode 100644
index 643948b6b576..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Lantiq XWAY SoC RCU USB 1.1/2.0 PHY binding
-===========================================
-
-This binding describes the USB PHY hardware provided by the RCU module on the
-Lantiq XWAY SoCs.
-
-This node has to be a sub node of the Lantiq RCU block.
-
--------------------------------------------------------------------------------
-Required properties (controller (parent) node):
-- compatible	: Should be one of
-			"lantiq,ase-usb2-phy"
-			"lantiq,danube-usb2-phy"
-			"lantiq,xrx100-usb2-phy"
-			"lantiq,xrx200-usb2-phy"
-			"lantiq,xrx300-usb2-phy"
-- reg		: Defines the following sets of registers in the parent
-		  syscon device
-			- Offset of the USB PHY configuration register
-			- Offset of the USB Analog configuration
-			  register (only for xrx200 and xrx200)
-- clocks	: References to the (PMU) "phy" clk gate.
-- clock-names	: Must be "phy"
-- resets	: References to the RCU USB configuration reset bits.
-- reset-names	: Must be one of the following:
-			"phy" (optional)
-			"ctrl" (shared)
-
--------------------------------------------------------------------------------
-Example for the USB PHYs on an xRX200 SoC:
-	usb_phy0: usb2-phy@18 {
-		compatible = "lantiq,xrx200-usb2-phy";
-		reg = <0x18 4>, <0x38 4>;
-
-		clocks = <&pmu PMU_GATE_USB0_PHY>;
-		clock-names = "phy";
-		resets = <&reset1 4 4>, <&reset0 4 4>;
-		reset-names = "phy", "ctrl";
-		#phy-cells = <0>;
-	};
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
