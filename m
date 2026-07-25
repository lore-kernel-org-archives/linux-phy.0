Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20980C531D0
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 04:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYzk1Nvv7Jw7el/oWxc61E2jG2UXCnN3MRC3DKMDrD4=; b=IHk94MGV1NQGnH
	zl7jJS5ur5NtfGm+edshF+KMYvEIBBr0shWkfujCRkD9R+moSyxCAN0hJHNMMkCd4X/129sMZs3UJ
	CLutLbZLOwUN1weUxX+6w0MXyCANtHTp4MgTu96qONjjY1wkJTXOnB4jjD23wMDYEY5U1sVhj6xzS
	7FgfiNylHhTIV2t1kO9eX5Qlv8r3LoH9pBwAmKi3uLth4iSAn1vlbZinAXWynl4pOJ+X4RwvP5jKO
	U7pKpT9zA0GlCFk8+UKtUeMtgHm9I9beFd4vWPVBy8rjnug/AclpIDyopO0ASL43ZcF/AEA+R3+yI
	5P2lQzLC7+suiSShuWAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUNg-00000000228-2vgD;
	Sat, 25 Jul 2026 04:53:02 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnUNe-0000000021A-23jk
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 04:52:59 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-38de693676dso876191a91.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 21:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784955178; x=1785559978; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ycy+Qjco0x+8uNmV749kGmpBtIQZVaDIzcG2OSIxUnc=;
        b=b9tvtnN8ENIkc+IQ/0MJjkL8azP+s7MAQdaS0qFILjw1e/Y3gM/1s7kYLiEeOTgy7g
         F5xZh4lqWAtKFidbZ9hz9j9RgujNiWl1cEg2ggg97rxpimVLfLqMURAsfXWuWntXDSfH
         v1JSdeXq3veFtBXuZRdT4MqivxGRGZ6sHN3ae2ttRqZsu6gcmTNBZqmUitVHJ4Q8IxcB
         BR3OaOBJpZ6B23CDBZAyj752tHzxQxRvBhx8aSlo6+BvbdfxI3uErSNwaGww9u0amaz5
         IA2cUqMF+X58/eMZwCZSwiYryuwrdu80hpQ90BGXXeWCuubvpjkhYemdapEl31iGK1kY
         5ZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784955178; x=1785559978;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ycy+Qjco0x+8uNmV749kGmpBtIQZVaDIzcG2OSIxUnc=;
        b=AsIfojtM13Pvf+tJwQeAoxw0QrK9PXIG65zitZe67qIXPqWLkzgobz70JEdE+qUiJK
         ejLE5FSTxwoR/9Z8/p3zwX3UyXY/zJH9XMECJHX4gTnlkmE1LpQ8fyw9Nj4UVXhQUbkJ
         JlOKzjW9CoHUSbNqhh5jSJe/8UaAlqaKtNDsU+Ryr2qN0/uFY5OcisB2K4ZYYPvF8nZY
         uKaDPtfHBHRg2vxUSQ6j89sKsC+p1wwz3pUGRRux0SgnHb97GcoH65SfMi1EHPLhnLnj
         AzWPaPAcQFWz/h/YPXT2kfj9vNFvD8BPxvhs6bAeyvhnrse6mT+oN31I7dWZxHnzw76t
         3F5w==
X-Forwarded-Encrypted: i=1; AHgh+RomMZseGTeUhkNBfRYbRiLRFpBE7Gya5o+5GKq3zi9wH2nUvnqNOElZDM5+QJH+EFrJ/4ahXWscDUI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDTHgTVVS+PHXHQkHBoQNs4+fFKpYpoKBXR59lqG9h9oMt8za5
	hArEnZxNy9Mp1ZcqTMf3pMYPFQyv8I9crW/YezD2SE3z/6YDJnN3A0RQLLRGvZPXDqu0cQ==
X-Gm-Gg: AR+sD13hMnZrNvhufCfSK63e5hfbSsrEdO2+cpzTh6a3KnuJsnFjxKdCLjpRqT4grXx
	w/KMQX110QVtRBepbAmmAI6jzQL82wu23RMZweyk00uXG6pEcYw4Ws4Mylri3D4GZwcJHwa72JA
	l313uBYBBluchvozM7VztcQzZamN1bGaqDvlNK6iPH36kTKh+7Ga+586fIbjGUY+tfsCwk9zbjv
	yKTWk4j7/jSXJ3LGyBaExT6/D1+ayyVyv6OCIAzB6Rmza4sbQ8mnQZnEL+xmEyYgXWrpYdk9d2m
	hrk4zvakwsnNblWfQNEdFveAINKiR2DHWIzHOgGb6ABw3FObuArfvdMkrLVhX1lBCPKQ4slV8yA
	/QyUk1vCLJA9Gc2T4mbIEyOPGMg2osGab4i8nbN2rglEnywxDpopsqWg=
X-Received: by 2002:a05:6a00:2d9b:b0:848:2a71:a48a with SMTP id d2e1a72fcca58-84e593ff0ccmr644911b3a.13.1784949438724;
        Fri, 24 Jul 2026 20:17:18 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.17.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:17:18 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Date: Fri, 24 Jul 2026 23:16:33 -0400
Subject: [PATCH 01/17] dt-bindings: display: spacemit: add K3 Saturn DPU
 controller
MIME-Version: 1.0
Message-Id: <20260724-k3-display-v1-1-f22a10a52867@gmail.com>
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
X-CRM114-CacheID: sfid-20260724_215258_541632_42DFCCA4 
X-CRM114-Status: GOOD (  11.96  )
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

Document the Saturn display processing unit found on the SpacemiT K3 SoC.
The K3 instantiates two of them, one per display path. They share a
compatible: an instance differs only in which register window, interrupt,
clock and reset lines it takes.

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
 .../display/spacemit/spacemit,k3-saturn-dpu.yaml   | 132 +++++++++++++++++++++
 1 file changed, 132 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/spacemit/spacemit,k3-saturn-dpu.yaml b/Documentation/devicetree/bindings/display/spacemit/spacemit,k3-saturn-dpu.yaml
new file mode 100644
index 000000000000..97ea9da4b68e
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/spacemit/spacemit,k3-saturn-dpu.yaml
@@ -0,0 +1,132 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/spacemit/spacemit,k3-saturn-dpu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K3 Saturn Display Processing Unit
+
+maintainers:
+  - Cody Kang <codykang.hk@gmail.com>
+
+description:
+  The Saturn DPU is the display processing unit of the SpacemiT K3 SoC. It
+  composes the display planes and drives the timing for one display path. Its
+  output goes to a DisplayPort or embedded DisplayPort controller. The K3 has
+  two instances.
+
+properties:
+  compatible:
+    const: spacemit,k3-saturn-dpu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: Online (live display) compose path.
+      - description: Offline (writeback) compose path.
+
+  interrupt-names:
+    items:
+      - const: online
+      - const: offline
+
+  clocks:
+    items:
+      - description: Pixel clock.
+      - description: Memory clock for the compose pipeline.
+      - description: AXI bus clock.
+      - description: DSI escape clock.
+      - description: DSC clock.
+
+  clock-names:
+    items:
+      - const: pxclk
+      - const: mclk
+      - const: aclk
+      - const: escclk
+      - const: dscclk
+
+  resets:
+    items:
+      - description: Memory clock domain.
+      - description: LCD domain, shared with the downstream controller.
+      - description: DSI escape clock domain.
+      - description: AXI clock domain.
+      - description: DSC domain.
+
+  reset-names:
+    items:
+      - const: mclk
+      - const: lcd
+      - const: esc
+      - const: aclk
+      - const: dsc
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Video output to the DisplayPort or eDP controller.
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
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
+        dpu@c0340000 {
+            compatible = "spacemit,k3-saturn-dpu";
+            reg = <0x0 0xc0340000 0x0 0x54000>;
+            interrupts = <90 IRQ_TYPE_LEVEL_HIGH>,
+                         <89 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "online", "offline";
+            clocks = <&syscon_apmu CLK_APMU_LCD_PXCLK>,
+                     <&syscon_apmu CLK_APMU_LCD_MCLK>,
+                     <&syscon_apmu CLK_APMU_DPU_ACLK>,
+                     <&syscon_apmu CLK_APMU_DSI_ESC>,
+                     <&syscon_apmu CLK_APMU_LCD_DSC>;
+            clock-names = "pxclk", "mclk", "aclk", "escclk", "dscclk";
+            resets = <&syscon_apmu RESET_APMU_LCD_MCLK>,
+                     <&syscon_apmu RESET_APMU_LCD>,
+                     <&syscon_apmu RESET_APMU_DSI_ESC>,
+                     <&syscon_apmu RESET_APMU_DPU_ACLK>,
+                     <&syscon_apmu RESET_APMU_LCD_DSCCLK>;
+            reset-names = "mclk", "lcd", "esc", "aclk", "dsc";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    endpoint {
+                        remote-endpoint = <&edp0_in>;
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
