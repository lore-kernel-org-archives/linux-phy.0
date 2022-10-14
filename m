Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B75BDC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 14 Oct 2022 16:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlJAhU1F8Cfmbs36s/NBCQ8Mb11xH0y9dvC0VKRRbx4=; b=H5i2rnO2+jloCT
	emRfI7unm10xMF9DsM9NMbLfXgjkoVK0uNUlFxeoeTA++YdQtdt2izzNNGpVkx+hKey6AvxsWmZxt
	7/hEPQg1UJP9U4yBicFRJrH1L+rqpVIfQ2gG2YqxY/2HQyrEgsZ3l93nIRvFunI/qvxs26HdGTh6q
	dEBQ9jIGQT3CLV5GKxHiVWpfVn8NsWEo0FLc6oL71OaGbsUxeVIEytDYovTcBJYhGeCjqD6CmbWc8
	YcdI35Mz11fH548DnyVGRc4AmKX84i2XHg3BvrTTQMpEIbsXoBNNP87hGQ4isZkHKAV+r++oqAgtC
	EqVaKAR33N+o3Kdo1jTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNaQ-00FLlH-4g; Fri, 14 Oct 2022 16:31:02 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojMTp-00F9dd-2a
	for linux-phy@lists.infradead.org; Fri, 14 Oct 2022 15:20:10 +0000
Received: by mail-wm1-x331.google.com with SMTP id r3-20020a05600c35c300b003b4b5f6c6bdso3762288wmq.2
        for <linux-phy@lists.infradead.org>; Fri, 14 Oct 2022 08:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G+qRFSBJ+VCcrm8OgMqVSB4wBGSDumRukXHEi1aq3ic=;
        b=mNrZDV3KBcXf6FixJKWBJ1C3FABLGivwTv4I9P5qaHrzMf7zXZJbq5/pQpJsuyVA+U
         4o21CcHjTPmSr31ckmhY+msDYTsX4QfcWC2HmxiRvsSl7A26y7IpYuCUS9l7zbEPuyVI
         JYCCbX99/d3FDyxccszQzz4mdzorR5hvP4L6+8Jsam0HeDcTtSqtQ0KDtEu9AiJialp5
         9D7N0CNSvGhrK/yr6rxfp8VmMEQ9AivaCXr6m3EYRTn98BPj5/gIpzA7IO14IszJNdEE
         F8dvRC329BHZfS9T3KV9Keb/VadAFkiIKOeOHgZOu5He6AtliytBttcgpq6poXLOEey0
         K5HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G+qRFSBJ+VCcrm8OgMqVSB4wBGSDumRukXHEi1aq3ic=;
        b=uVpZgW8ucMTsP/pnZ3FQII3xbHE8nzxtaOXY6500+SlALEqRhLe7B63Oi9SScHPgW8
         1aH/asb0CSDJEfeDh2KgKmHcU5r3G6ZjNDYx+3/h2FQPVS/OGYLsA7VHnwR1Ai0a7mo2
         byVdMMFNezOrjWN5B5LtPj3N1JwtGX5FmzGUQG/xuNogTW1+eSo9qaFfI4FZ7yRp1yPP
         Vkpm9IsizKYwUo6JHG9phxL7Qe9pMdc+k1O+tmmWM2fHiXpYnPxsq6+S1vp3j1AS2yx/
         1hfrSQkoCd6N7Ps4WZK6OUg0tdXWRjQZG9rMngHfjxd4trJixrc8Eyr+OwJRoRimLoHt
         zY0w==
X-Gm-Message-State: ACrzQf32FwQjhX+2qtCt/FMXCmfhaHYY4YBkkLtzOEyas8pPuiOBPsxX
	Swe/yNSvp2dqZTqt1lCL73+r7A==
X-Google-Smtp-Source: AMsMyM7tvePcKp2mnsbqKpN0/ErKnzP3D2TVserIxIygBlRAmG317STdtCV6LSvAtpr6Gn/DRV+qvg==
X-Received: by 2002:a05:600c:a4c:b0:3b4:fc1b:81 with SMTP id c12-20020a05600c0a4c00b003b4fc1b0081mr3916369wmq.125.1665760805442;
        Fri, 14 Oct 2022 08:20:05 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6241-7429-3074-96af-9642-0004.rev.sfr.net. [2a02:8440:6241:7429:3074:96af:9642:4])
        by smtp.gmail.com with ESMTPSA id z11-20020a05600c0a0b00b003c6bd91caa5sm2818223wmp.17.2022.10.14.08.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 08:20:05 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 14 Oct 2022 17:15:55 +0200
Subject: [PATCH v2 02/12] dt-bindings: display: mediatek: add MT8195 hdmi bindings
MIME-Version: 1.0
Message-Id: <20220919-v2-2-8419dcf4f09d@baylibre.com>
References: <20220919-v2-0-8419dcf4f09d@baylibre.com>
In-Reply-To: <20220919-v2-0-8419dcf4f09d@baylibre.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, David Airlie <airlied@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Jitao shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Guillaume Ranquet <granquet@baylibre.com>, stuart.lee@mediatek.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, mac.shen@mediatek.com, linux-mediatek@lists.infradead.org,
 dri-devel@lists.freedesktop.org
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_082009_161088_4C5D9DC5 
X-CRM114-Status: GOOD (  11.63  )
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

Add mt8195 SoC bindings for hdmi and hdmi-ddc

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 .../bindings/display/mediatek/mediatek,hdmi.yaml   | 67 +++++++++++++++++-----
 .../display/mediatek/mediatek,mt8195-hdmi-ddc.yaml | 51 ++++++++++++++++
 2 files changed, 104 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
index bdaf0b51e68c..955026cd7ca5 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
@@ -21,26 +21,21 @@ properties:
       - mediatek,mt7623-hdmi
       - mediatek,mt8167-hdmi
       - mediatek,mt8173-hdmi
+      - mediatek,mt8195-hdmi
 
   reg:
     maxItems: 1
 
-  interrupts:
-    maxItems: 1
-
   clocks:
-    items:
-      - description: Pixel Clock
-      - description: HDMI PLL
-      - description: Bit Clock
-      - description: S/PDIF Clock
+    minItems: 4
+    maxItems: 4
 
   clock-names:
-    items:
-      - const: pixel
-      - const: pll
-      - const: bclk
-      - const: spdif
+    minItems: 4
+    maxItems: 4
+
+  interrupts:
+    maxItems: 1
 
   phys:
     maxItems: 1
@@ -58,6 +53,9 @@ properties:
     description: |
       phandle link and register offset to the system configuration registers.
 
+  power-domains:
+    maxItems: 1
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -86,9 +84,50 @@ required:
   - clock-names
   - phys
   - phy-names
-  - mediatek,syscon-hdmi
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt8195-hdmi
+    then:
+      properties:
+        clocks:
+          items:
+            - description: APB
+            - description: HDCP
+            - description: HDCP 24M
+            - description: Split HDMI
+        clock-names:
+          items:
+            - const: hdmi_apb_sel
+            - const: hdcp_sel
+            - const: hdcp24_sel
+            - const: split_hdmi
+
+      required:
+        - power-domains
+    else:
+      properties:
+        clocks:
+          items:
+            - description: Pixel Clock
+            - description: HDMI PLL
+            - description: Bit Clock
+            - description: S/PDIF Clock
+
+        clock-names:
+          items:
+            - const: pixel
+            - const: pll
+            - const: bclk
+            - const: spdif
+
+      required:
+        - mediatek,syscon-hdmi
+
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
new file mode 100644
index 000000000000..0fe0a2a2f17f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek HDMI DDC for mt8195
+
+maintainers:
+  - CK Hu <ck.hu@mediatek.com>
+  - Jitao shi <jitao.shi@mediatek.com>
+
+description: |
+  The HDMI DDC i2c controller is used to interface with the HDMI DDC pins.
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8195-hdmi-ddc
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: ddc
+
+  mediatek,hdmi:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      A phandle to the mt8195 hdmi controller
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    hdmiddc0: ddc_i2c {
+      compatible = "mediatek,mt8195-hdmi-ddc";
+      mediatek,hdmi = <&hdmi0>;
+      clocks = <&clk26m>;
+      clock-names = "ddc";
+    };
+
+...

-- 
b4 0.11.0-dev

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
