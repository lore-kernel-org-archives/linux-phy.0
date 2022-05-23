Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6CE4C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 23 May 2022 11:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVQSpR4NS3MhfZ7zuM/hMbqe+BRYeJ+N/JU/c728Oxk=; b=BONs90bLzzHWCn
	EO/LToEjkYeGO6JAzq/vbS4uBIiA9moqoBMINgY5dDg2s70S2QEi+PPqtFWNFWmN/kvKg97PdjNoO
	rTa0qD68oEDzeH+XrMr2iPRCV1uIAVSTSWZ1wTBpth36Kkj8bd46eIFot6VlMVJ87YmFOwRMlATkO
	4A5hX+8GE1WrGANtwpbv1j6hZ8zg+DGNQlB26sFIHoITHdYXXaPcv4d3VORHDr2UqvrZSCRZ2Qopx
	N3DkVfmUXINY5JxSG3vVHBx/UYVHAV2NTToF1YrqRRuk1Tp8xqi71tPaqBFyhgcJZ2ZXrKztIWQmG
	Onw0mAd1GiRlOToOPmdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt6EG-003hf7-2V; Mon, 23 May 2022 11:28:04 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt5dl-003PYZ-2j
 for linux-phy@lists.infradead.org; Mon, 23 May 2022 10:50:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id
 n124-20020a1c2782000000b003972dfca96cso6497882wmn.4
 for <linux-phy@lists.infradead.org>; Mon, 23 May 2022 03:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RBdwv8C2zWSCXm9kFqdZLTYTeRupN3jSjblct2gox8s=;
 b=Z/xyqPorLXxjtX45nJY9HoVzJk17XbNfLYrKQzUC5oUtkKMtSoV+kWJ/W9h2UwUdlN
 1izRYQ+g5TLX3hghia4MPgYalf8vdyabNOS2DaGlsAhoEGt/s+/KnelQ0vZbZtihbBMg
 21Pyw395K/H6hYe1NjG4mAI/mc+ABytCuV7klYgDvq9vZJ7hsPVtmwjWKYUbF/bp/EcC
 Oilliy3/kq69ohuRdHDHt1sN0WqllfmeBK0PA3bmOt33PYByl5DZkyGxt3aG8JeVrdma
 MXLeIGVJyxZJTBpjD3ztKpUSnkvsiwIvClmunyObwRYCXJLItn7H8y/fT/NKL+YLfjaE
 ppkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RBdwv8C2zWSCXm9kFqdZLTYTeRupN3jSjblct2gox8s=;
 b=RS3EfcINMabje8iCtMG1Ubljwy7yUWpnFRSDmMaRs85nJAjamnw40eWlMpCMh8QJUw
 S7OLPnWLKCEBfnC+r+V/bJjLH71wunbktq85TEoKwz4iOTirYHasnQ96iQnMvYjsZ5/N
 a85p/Sk9AKZFSKITp4dom1Sm/zSWuriqDI5V6eNjUir9ms9tXRWbOG8usa5BbCYAcOpQ
 Zrc35Kzhf3rjfyO9m6AtHonpAtg3KbXMMffVdJ+LXsWYOWz4YK0wHW0BJlqKJo85K5R2
 Ds51W/nIpFH2+yYOGoyFU55wmGI16dpAXRV/Ow31OmIsrqXWHkV1veG/OqjlR4tRfkOy
 rANg==
X-Gm-Message-State: AOAM530/fNvYxIah3upcpgZDom/NIV+TTqAwfobG2CAYpr+Z5KjiobQh
 4rlnJH+9wWVCrOP3UClX1ZCG/Q==
X-Google-Smtp-Source: ABdhPJxU86O9OrfPSwDpzF5vc+DzPzD1gUymNmku2eiSYHqSUNEzJviyarRmUCu72kW//QWtrovSTg==
X-Received: by 2002:a05:600c:42d3:b0:397:47ae:188c with SMTP id
 j19-20020a05600c42d300b0039747ae188cmr6376412wme.150.1653303018361; 
 Mon, 23 May 2022 03:50:18 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6141-9d1b-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6141:9d1b:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 n11-20020a7bc5cb000000b003942a244f38sm8453607wmk.17.2022.05.23.03.50.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 03:50:18 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Helge Deller <deller@gmx.de>, CK Hu <ck.hu@mediatek.com>,
 Jitao shi <jitao.shi@mediatek.com>
Cc: Markus Schneider-Pargmann <msp@baylibre.com>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org
Subject: [PATCH v10 02/21] dt-bindings: mediatek,dp: Add Display Port binding
Date: Mon, 23 May 2022 12:47:35 +0200
Message-Id: <20220523104758.29531-3-granquet@baylibre.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220523104758.29531-1-granquet@baylibre.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_035021_229044_EEFA826E 
X-CRM114-Status: GOOD (  15.02  )
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
 .../display/mediatek/mediatek,dp.yaml         | 99 +++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
new file mode 100644
index 000000000000..36ae0a6df299
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,dp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek Display Port Controller
+
+maintainers:
+  - CK Hu <ck.hu@mediatek.com>
+  - Jitao shi <jitao.shi@mediatek.com>
+
+description: |
+  Device tree bindings for the MediaTek (embedded) Display Port controller
+  present on some MediaTek SoCs.
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8195-dp-tx
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
+  max-lanes:
+    maxItems: 1
+    description: maximum number of lanes supported by the hardware
+
+  max-linkrate:
+    maxItems: 1
+    description: maximum link rate supported by the hardware
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - ports
+  - max-lanes
+  - max-linkrate
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8195-power.h>
+    edp_tx: edp_tx@1c500000 {
+        compatible = "mediatek,mt8195-dp-tx";
+        reg = <0 0x1c500000 0 0x8000>;
+        interrupts = <GIC_SPI 676 IRQ_TYPE_LEVEL_HIGH 0>;
+        power-domains = <&spm MT8195_POWER_DOMAIN_EPD_TX>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&edp_pin>;
+        max-lanes = /bits/ 8 <4>;
+        max-linkrate = /bits/ 8 <0x1e>;
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
+                	remote-endpoint = <&panel_in>;
+                };
+            };
+        };
+    };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
