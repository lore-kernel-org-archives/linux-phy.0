Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9D5ACCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 23:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	References:Mime-Version:In-Reply-To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ygg9J8LFnj0buDNly1v7Tc1RdGcP3MXfCHpb+C5MB4s=; b=kwT99+2T8pV80fcDP6NoHGrFTi
	+7QuMtVZVsDd0OxOnTmVDhTb8V+fr5kNqTKUORhf8jzryFIeGiwh7/BFhmnQoClQ8sOPKpk6sfs/w
	8sv7S4mvjzk/8jMQiKAuyznujVrge9D22DU7hu5OzwCfpuuSkjJeQZsrG63rSacFeV4uKaNbSvgFp
	vnG5+L8YtIq+EkjO07RgSSEhC8ElKHtVp958dBeIGknOkkwmOD+1ubp/AShpNC/xeY1dfGe+SHy6l
	bnmNOrGOM+AEQYJ6UAeMIjuE5UqVy4h8zgXedep4fUr5JJMSMyDMl3MN3QuJsiAJ+lF1/p+XpVviw
	E+fBr1FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5uWq-00000000zuU-2QK6;
	Mon, 06 Oct 2025 23:22:04 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5uWn-00000000zsE-3kbG
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 23:22:03 +0000
Received: by mail-pg1-x54a.google.com with SMTP id 41be03b00d2f7-b55153c5ef2so3637558a12.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 16:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759792921; x=1760397721; darn=lists.infradead.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=qkKChLn4ApubeBsamuYU7Hpmq4pwMsO67hlNXPMA5YY=;
        b=RzjNbCbYineE0bp9K7B2lIgYdZKU2dgn8gWt2+jryjMVrPiaDy1GWbxu+fGFyxkzr6
         jSKtLI3evxsIeA7MDDai/80BImGqL+bNUmuyry45XlOwYYlUInnlXnJbDE3/wA7a75WM
         sr/lVntP9yaTBQyVn5FTWMtFldSQBXZWnLaybg7C1mdmkCXERq+yEKl+7P8sRcRQDTkb
         hIrYE0jWiSRJJA4cMHZKsZkYf2MzvMgMCeVp1xlKfEzY/S/Pk5aHVLinm7gUgicASskR
         Fdid1q5qQMDK5iunPlP9o3iXa8Kx0SizlczdfHbhNydz9G8QeoeDRPn5YGrJB8yTaS7X
         S1LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759792921; x=1760397721;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qkKChLn4ApubeBsamuYU7Hpmq4pwMsO67hlNXPMA5YY=;
        b=JpjkXoZ48dykTCGviLZu6TQw1VKBXWVH8P7uuDRRQfpXV/smARXTApukFMMYykyIrG
         WcfgNpQt6O3ULT10LD7xUmAjpz0HJ8JN7xbPCDqbMEzUWUBQCDnNbbErpP/uu/WkTCzt
         18hG3bvKOvjKLi5Lk+iRXTCNhysm8Vnuaig0d84iWw95t97mPRUbGpWO7NHyHvHmkemD
         gUyRxghpouqTAF3xpvT9c2SM26LphIZrDnVsafDhCMddmM4oAwR1pjTHNj+705dxZjUp
         fj64Xtipz2BqVAmtaC4W0pXc2CyfiamyRCNsGfsefQsG+t3i01erdfPhYbfXjaFPEI7c
         ySJA==
X-Forwarded-Encrypted: i=1; AJvYcCWVW1hTEnnIWjsBpTLJs/dDeqB0wVaADXdK/gSHfoYp8M7h7I8zCCAvT6IVIxKf0CHig6BTZUUI+BU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvRSFPWWFiFwJc47BOPzyURpficnlpHPkHz94IdlsgrPwFOBMC
	1OgndxFEBvPMDE/DXUSXngboQovdocukF1NPua3Dd1X6LjMYZMIUnhDUji5E5oI4Iuh+bFkokGe
	C7rWR8Q==
X-Google-Smtp-Source: AGHT+IE//h6xf8e8vLcxaIrD/3WT81vswv40/2L0nA0sc++ps1yK0/qbPo/CJtMHXxhA5J78s2QgfQ/fed8=
X-Received: from plpa3.prod.google.com ([2002:a17:902:9003:b0:269:b01c:4f4b])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a17:903:2f0d:b0:26c:4085:e3f5
 with SMTP id d9443c01a7336-28e9a6e07e8mr162017045ad.50.1759792920644; Mon, 06
 Oct 2025 16:22:00 -0700 (PDT)
Date: Mon,  6 Oct 2025 23:21:25 +0000
In-Reply-To: <20251006232125.1833979-1-royluo@google.com>
Mime-Version: 1.0
References: <20251006232125.1833979-1-royluo@google.com>
X-Mailer: git-send-email 2.51.0.618.g983fd99d29-goog
Message-ID: <20251006232125.1833979-5-royluo@google.com>
Subject: [PATCH v1 4/4] dt-bindings: phy: google: Add Google SoC USB PHY
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_162201_936009_77939D93 
X-CRM114-Status: GOOD (  11.78  )
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

Document the USB PHY bindings for Google Tensor SoCs.

Signed-off-by: Roy Luo <royluo@google.com>
---
 .../bindings/phy/google,usb-phy.yaml          | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/google,usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/google,usb-phy.yaml b/Documentation/devicetree/bindings/phy/google,usb-phy.yaml
new file mode 100644
index 000000000000..5552696edfff
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/google,usb-phy.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2025, Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/google,usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google USB PHY
+
+maintainers:
+  - Roy Luo <royluo@google.com>
+
+description:
+  Describes the USB PHY block on Google Tensor SoCs.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - google,lga-usb-phy
+      - const: google,usb-phy
+
+  reg:
+    minItems: 3
+    maxItems: 3
+
+  reg-names:
+    items:
+      - const: usb2_cfg_csr
+      - const: dp_top_csr
+      - const: usb_top_cfg_csr
+
+  "#phy-cells":
+    const: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: usb2_phy_clk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: usb2_phy_reset
+
+  power-domains:
+    maxItems: 1
+
+  orientation-switch:
+    type: boolean
+    description:
+      Indicates the PHY as a handler of USB Type-C orientation changes
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        usb_phy: usb_phy@c410000 {
+            compatible = "google,lga-usb-phy", "google,usb-phy";
+            reg = <0 0x0c450014 0 0xc>,
+                  <0 0x0c637000 0 0xa0>,
+                  <0 0x0c45002c 0 0x4>;
+            reg-names = "usb2_cfg_csr", "dp_top_csr", "usb_top_cfg_csr";
+            #phy-cells = <1>;
+            clocks = <&hsion_usb2_phy_reset_clk>;
+            clock-names = "usb2_phy_clk";
+            resets = <&hsion_resets_usb2_phy>;
+            reset-names = "usb2_phy_reset";
+            power-domains = <&hsio_n_usb_pd>;
+            orientation-switch;
+        };
+    };
+...
-- 
2.51.0.618.g983fd99d29-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
