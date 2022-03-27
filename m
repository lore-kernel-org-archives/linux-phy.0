Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0E84C433F5
	for <linux-phy@archiver.kernel.org>; Sun, 27 Mar 2022 23:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ViPIbIeT6OOZKW3TNb5QIVqP3S4LjTfDpERFxLl5YV8=; b=Tkwxq8YDgwIGJy
	KtqdWQE4PcdBs3aAWxHc2BL4Qx3LsbK6OAMGAQB6LbTx65exNWAtgcWW5tlZz8OlM2OZzLUbIl8y4
	X2FwIKIrrZaN/E1rPgx7DuifdZyUxu2cr7eOvfKI6xo0uTyA02mhgAZvodja6JFD7ToCXHAnnKEOB
	HMMJHhKD1Gj+es1t/oGyMNKmCagdWwHExzUTZYjwOXv4YFWZjibHfBB3h8H7FNverbV0g+1zKgH8G
	+BvmM6m4cWx1qzv1RmBFzS8G8bH0ppFRIDez+OcQyFlWVfKy6D66TePKqmsKzkUpNAbs4S+4uDcn6
	W/VeCozv9JB6pJXHJTNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYcZh-006otf-4u; Sun, 27 Mar 2022 23:45:33 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYbZG-006Uq5-64
 for linux-phy@lists.infradead.org; Sun, 27 Mar 2022 22:41:06 +0000
Received: by mail-wm1-x32a.google.com with SMTP id p189so7387941wmp.3
 for <linux-phy@lists.infradead.org>; Sun, 27 Mar 2022 15:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=graxiB3o84XyCC7lA2maMSkd/oPaEWkbPJi06+8HrGM=;
 b=r276EMn6zYOdOurbfLe4hTRsvPqjJ/2liozB0/GajoOCtk1J38A1eXxAi87dELVHFD
 jIQad/T6yVHNCs7qRdvU6KW2IEyi1AWz8KyQEywyebq4HY/9BJFwTCiNkdkLPIEsiPJD
 +w+czgAeDkc1zhxT4f2tnVyx4V6d+RaQUV5Lf8A7mu7kmxBeqo+WCqrODKJVAwAMnsuo
 hAAvAbqojV0T4mnVTyGB9ZrF0Oy9Yw/R/ee65LQi9TJ+qiYGxrn1GbVFs4HrKsBP0XZ+
 xCriJojzWxi28tJ/jyCCo1A4PxZCAO8GHCX9ikODFPaxGMkQMYaDYbamr+XP2FZvjPLG
 OrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=graxiB3o84XyCC7lA2maMSkd/oPaEWkbPJi06+8HrGM=;
 b=FMP3vsI3nHxIShKdVJcDgKiruKhdAA9xF4ssD3eo0cRqA3XPsplh8ZIW3D000VJQgU
 kY+JWi2+5mmPVLUKjIzr8XWXmHQS0bJZ/M9Ov3CUnxjE8nXmXjarP/3ShWUwUSR0NV4c
 aW+F2r4yB7YpNEko004cubXP5WSA8QQeICw/Khv9jN35CephjjVxgU69Ncgoz/uQ7Lc2
 l8DXKSYZtigMRuNYPHQOjtmJ8c3UFar2kyxnhCNdG7sbqjq/PWa0ezLiCAskgOmg0HAp
 Y6q6f+cczJBkOt7g7g7PhkbY8XIA35LEecwI643nsWtZkEXHI5KC9bFadhVIWKkS1+ns
 UNuQ==
X-Gm-Message-State: AOAM533mLu/dhUIulsTKGqXE813sFqG28kUTdFCMzwOwWVoCEY4Gp+a/
 ghu7z/rWfcHTs/PjcIfSBF4GZA==
X-Google-Smtp-Source: ABdhPJzmOb9kMHIpbXvEe4FnZF+xfzcnwPgNHy2cJoFNqGghwOq+6/DhG8aiOft/DjBGhLjfRHk3Sw==
X-Received: by 2002:a05:600c:2192:b0:38c:8b45:ecf5 with SMTP id
 e18-20020a05600c219200b0038c8b45ecf5mr22498565wme.85.1648420860620; 
 Sun, 27 Mar 2022 15:41:00 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6341-357e-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6341:357e:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id
 v5-20020adfe4c5000000b001edc1e5053esm10400867wrm.82.2022.03.27.15.40.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Mar 2022 15:41:00 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: airlied@linux.ie, angelogioacchino.delregno@collabora.com,
 chunfeng.yun@mediatek.com, chunkuang.hu@kernel.org, ck.hu@mediatek.com,
 daniel@ffwll.ch, deller@gmx.de, jitao.shi@mediatek.com, kishon@ti.com,
 krzk+dt@kernel.org, maarten.lankhorst@linux.intel.com,
 matthias.bgg@gmail.com, mripard@kernel.org, p.zabel@pengutronix.de,
 robh+dt@kernel.org, tzimmermann@suse.de, vkoul@kernel.org
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, markyacoub@google.com,
 Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v9 02/22] dt-bindings: mediatek,dp: Add Display Port binding
Date: Mon, 28 Mar 2022 00:39:07 +0200
Message-Id: <20220327223927.20848-3-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220327223927.20848-1-granquet@baylibre.com>
References: <20220327223927.20848-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_154102_328668_902FFAE0 
X-CRM114-Status: GOOD (  12.70  )
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

From: Markus Schneider-Pargmann <msp@baylibre.com>

This controller is present on several mediatek hardware. Currently
mt8195 and mt8395 have this controller without a functional difference,
so only one compatible field is added.

The controller can have two forms, as a normal display port and as an
embedded display port.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 .../display/mediatek/mediatek,dp.yaml         | 100 ++++++++++++++++++
 1 file changed, 100 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
new file mode 100644
index 000000000000..802cc406c72b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,dp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek Display Port Controller
+
+maintainers:
+  - CK Hu <ck.hu@mediatek.com>
+  - Jitao shi <jitao.shi@mediatek.com>
+
+description: |
+  Device tree bindings for the Mediatek (embedded) Display Port controller
+  present on some Mediatek SoCs.
+
+properties:
+  compatible:
+    items:
+      - const: mediatek,mt8195-dp-tx
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: faxi clock
+
+  clock-names:
+    items:
+      - const: faxi
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    items:
+      - const: dp
+
+  power-domains:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Input endpoint of the controller, usually dp_intf
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output endpoint of the controller
+
+    required:
+      - port@0
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8195-power.h>
+    edp_tx: edisplay-port-tx@1c500000 {
+        compatible = "mediatek,mt8195-dp-tx","syscon";
+        reg = <0 0x1c500000 0 0x8000>;
+        interrupts = <GIC_SPI 676 IRQ_TYPE_LEVEL_HIGH 0>;
+        power-domains = <&spm MT8195_POWER_DOMAIN_EPD_TX>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&edp_pin>;
+        phys = <&dp_phy>;
+        phy-names = "dp";
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                edp_in: endpoint {
+                    remote-endpoint = <&dp_intf0_out>;
+                };
+            };
+            port@1 {
+                reg = <1>;
+                edp_out: endpoint {
+                    remote-endpoint = <&panel_in>;
+                };
+            };
+        };
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
