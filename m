Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51DC7C53200
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 05:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evyRLVHcVPQM2uwgb8VeyDB6zBcwLX2Q2lJk+A5XaKU=; b=FPLLI8WeiDdPvF
	SNt0R5h5y8Wj4EExHiTv0tsQlgxIL6yuNnsB4EX1AjHi9Tm3yLpCOvTuBk/uogWBjYJ+dzuNR2reB
	fqi0GvhhyawUm+wt3MxreoSioQOjMAYILnFt10elHkgzTnno9qPgVHc/h5zpftuCwlOtXVW5BJQUv
	zpxaZIe42nttyxuq67DYFfLk0TE0VL6GHB0tjPW2pcbphBD5v9EeKdc1qevHJRt2pzfF2WEprY4xm
	inoZXoVatXdHSom2uUXPSBG0jYdBuRtYsl/jo7byyVttD6fmNTRlsNnEKXNOQkDoJ+S1nJPGUHR3J
	4itcScm6jC7C1XvWD20Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUcZ-000000003Bb-0977;
	Sat, 25 Jul 2026 05:08:23 +0000
Received: from mail-oo2-x01.google.com ([2607:f8b0:4864:31::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUcW-000000003AT-0RaD
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 05:08:21 +0000
Received: by mail-oo2-x01.google.com with SMTP id 006d021491bc7-6aae97c62f5so317590eaf.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 22:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784956099; x=1785560899; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6a/x50Eo6kNHLlYGVZSsuYw6cqPBcO8EXP5O0WJGjSk=;
        b=BLTXRiE2in2cGBwJX74FexLPEM3fnE6NEfTPaV+xk2XScmKhveLHuqd6psSmW90VpD
         fZdLb01arPOcyCCPxJRgDmH86h/59QXx6/cW0v6UFjlljgtQLsn0e1G61adjr1XpX+m5
         pJpn7mwyUByM0keCYzPAnpp9sCmCCmISvM6+Dz8l6pAKQ4TlytJOxYBUYM/A+1fDcyLr
         fTBVuCqv/+K5bLn1OdMXfqAyoWSWHHFrhsHlFpoo9qHn196IFxzdEkNxHQKZgV6ZZuQ0
         8xENO3KCf5+zt5N76MdR7QXdjdLRCHahbDXarOwOhOvlPbAuUE5cfr0KU27V8bKTIzJl
         ChLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784956099; x=1785560899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6a/x50Eo6kNHLlYGVZSsuYw6cqPBcO8EXP5O0WJGjSk=;
        b=ekgLiVaNhtaxJqIIiQ3o9+c8VqqXv+AJg3FO9N9VdKMQx+PZu5O8K/98YFWzxBUmgh
         fAMYOO2RVCaHn+tzgiifc2gsOkqH8uPWqHVuhRwkrWKbmyigYgi/VLCpx9YiOrwVP+UJ
         smHBreEIaNIDZ6bPx7S6jOjFNtBLHj5zSawDrajnnoGjmMuIZI1v12nOiQwwaiwxm8Ux
         aFgW1r2KBktaY08Rd2LwdTZRewcMDNZ93dK17rULMciHJDTRpVE46b/gI7ouAyhL9V0Z
         KOaMcD1dsS4pj6q+jnCKZnEJIH23+WhVVzHFmOGsF5/UHFyuR0OsKNQFkdh9Sysyh0jo
         pTwQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp1OqwjUXYMZkiXcxofz047wXTB9WaDBTBSRLzedtwPQlTrkmMnzBGEg+IfYMdaLR/5ILJ8k80wx9w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxuzg3ZnIrm6d3diK3jAQ0sgbPqqdr4v5LPEEAFTRrho2kVKI3J
	k7986bELUVZdSFDTg0Ov1Shwckd0DzpvMSzXbsw4boQBJO4xuGrhdLQ7+lUMGMbYv/UvVQ==
X-Gm-Gg: AR+sD13Ozo3sCbjO1bXLkNV55ET9TARhFR4GpDCf38K/CkNR8ONWdavQ5zitiABXwMs
	lUwCERW/bheHpIsh7TZ20dZOUrCnan99oXhsB25ivb2riRpFPQQFiJegVHYjUBaVto5U4JAYs6b
	Mpy9Dc1E2giMfk8huezmYBNuRtZ835U7yOnVbbUsmw4jkiB4o4JSye+F7bmaJoyFql/lA8Hvin1
	KD4CDKKJgTCN4tOCj+tc6HgLxNWf8JzuSjbUQcdVb6MaxxEanGAD+J9knAfLQLRSlIGmZ0mbfpD
	YxLgsigCCXc7Xc+PG//V9Em75Rs3bDIBNIh8iV7DMr4Z1mmYq1Vh6aZiEQFZx5sAK88aS4OIjXQ
	yMAVH6b8yT+crBoWDdmoNKUW3Nc9J2tg8y4pNSXqVEI123mnKrw/HaVE=
X-Received: by 2002:a05:6a00:a21a:b0:848:727f:2c8b with SMTP id d2e1a72fcca58-84e5959f3c3mr660746b3a.68.1784949456147;
        Fri, 24 Jul 2026 20:17:36 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:17:34 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Date: Fri, 24 Jul 2026 23:16:35 -0400
Subject: [PATCH 03/17] dt-bindings: display: spacemit: add K3 Innosilicon
 DP/eDP controller
MIME-Version: 1.0
Message-Id: <20260724-k3-display-v1-3-f22a10a52867@gmail.com>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
In-Reply-To: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, Cody Kang <codykang.hk@gmail.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_220820_174390_79F59B7D 
X-CRM114-Status: GOOD (  14.90  )
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

Both K3 instances are the same IP and share one compatible; which one
behaves as eDP is decided by what its downstream port is wired to, not by
which register window it sits in, so the binding does not distinguish them.

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
 .../display/spacemit/spacemit,k3-inno-dp.yaml      | 140 +++++++++++++++++++++
 1 file changed, 140 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/spacemit/spacemit,k3-inno-dp.yaml b/Documentation/devicetree/bindings/display/spacemit/spacemit,k3-inno-dp.yaml
new file mode 100644
index 000000000000..865ea310daaf
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/spacemit/spacemit,k3-inno-dp.yaml
@@ -0,0 +1,140 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/spacemit/spacemit,k3-inno-dp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K3 Innosilicon DisplayPort / embedded DisplayPort Controller
+
+maintainers:
+  - Cody Kang <codykang.hk@gmail.com>
+
+description:
+  Innosilicon DisplayPort transmit controller integrated in the SpacemiT K3
+  SoC. The K3 has two instances of the same block sharing one compatible;
+  each acts as embedded or external DisplayPort depending on whether its
+  output port drives a panel or a connector.
+
+properties:
+  compatible:
+    const: spacemit,k3-inno-dp
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+    description: Link and hot-plug events.
+
+  clocks:
+    items:
+      - description: Pixel clock for the controller.
+      - description:
+          Pixel clock generated by the DP PHY PLL; the pixel clock above is
+          parented onto it in use.
+
+  clock-names:
+    items:
+      - const: pxclk
+      - const: pll
+
+  resets:
+    maxItems: 1
+    description: Controller-wide reset signal.
+
+  phys:
+    maxItems: 1
+    description: Phandle to the K3 Innosilicon DP PHY.
+
+  phy-names:
+    items:
+      - const: dp
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video input from the DPU.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output to the panel or to the DisplayPort connector.
+
+    required:
+      - port@0
+
+  aux-bus:
+    $ref: /schemas/display/dp-aux-bus.yaml#
+    description:
+      The DisplayPort AUX bus. Present when the output drives an embedded
+      panel, which is described as a child of this node and identifies itself
+      over AUX. Absent when the output is a connector.
+
+  phy:
+    $ref: /schemas/phy/spacemit,k3-inno-dp-phy.yaml#
+    description:
+      The DisplayPort PHY. Its registers live inside this controller's
+      register window, so it is described here as a child node.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - phys
+  - phy-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k3-clocks.h>
+    #include <dt-bindings/reset/spacemit,k3-resets.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        edp@cac84000 {
+            compatible = "spacemit,k3-inno-dp";
+            reg = <0x0 0xcac84000 0x0 0x4000>;
+            interrupts = <132 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&syscon_apmu CLK_APMU_EDP0_PXCLK>, <&edp0_phy>;
+            clock-names = "pxclk", "pll";
+            resets = <&syscon_apmu RESET_APMU_EDP0>;
+            phys = <&edp0_phy>;
+            phy-names = "dp";
+
+            edp0_phy: phy {
+                compatible = "spacemit,k3-inno-dp-phy";
+                #phy-cells = <0>;
+                #clock-cells = <0>;
+                clock-output-names = "edp0_pll_pxclk";
+            };
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    endpoint {
+                        remote-endpoint = <&dpu0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    endpoint {
+                        remote-endpoint = <&panel_in>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
