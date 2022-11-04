Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CA1CC433FE
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 15:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHeeiJBRVd/eWgw0YOD7SkOi5ALbfGVzelCOnMsQdo0=; b=x17kdBYoDEZyhv
	0A8Em8EGewp5qY5aC8HsZAyuHY2i6qUNjhMrKwQqbnPa3V516+V6CM+1UUG0BnohbbpQ0ebllunem
	0zR2lxCNxIdgllt3+NQUeat/yyaLpPqTPrIedfd6LxFCGH6GVK8uG+vHK03onoRPPOQCEPkkVQ4tk
	n+4D8fKtfU+KKNYqdkF3MxP3T6TmEIhrOoN+cEnZWNQu2TVrbiKvZHoG012JjrV5hY/vZgC9dX2G8
	nyfVNAONPC0LZG6BVAL+GG0c5+7y1Vxn2qWqelCslTS171+QcwmiDAU+Gt++TG4FLMbS89H6Or6xj
	3U/Q3vNtjFBKmP8aioXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqyQa-0049QG-Ru; Fri, 04 Nov 2022 15:16:16 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqxSX-003skP-1v
	for linux-phy@lists.infradead.org; Fri, 04 Nov 2022 14:14:17 +0000
Received: by mail-wm1-x333.google.com with SMTP id i5-20020a1c3b05000000b003cf47dcd316so5492920wma.4
        for <linux-phy@lists.infradead.org>; Fri, 04 Nov 2022 07:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0q8teUzKNgtMplj7gJB0893Qj4aOvidpeEgoISBJV9A=;
        b=HbgG0kEc9BSFFor9gq+tpXzxHNCwNuoUwyoRQJS3dAQ/YrwqgnlWsZBAByoQIqb6Vk
         gJUPZDgjUPBPg3+T6MBSV8PQfXTUSUIM4CzjU4SHkU+3GE1u//QcHRVHosAe2JRaXwP+
         hcLANi0iFlOZvFthWT/YobhcxIdk0I58sahY3LRXxAA2wYCEkbgMNWrDjQxfpSgNWqW1
         oQoJC8ZDz3YWbOvGZSJphyP82fyRKeqv/Hb5X/umrnOUImlxScHuYt6sVZQYgDXsJ0BT
         /ZrTVbzpBluQ7aJRYR0vxYqgDnD2XuC6leAqlmiD+dE3AJMxlcvNyByDHdrI1KETPNdT
         13zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0q8teUzKNgtMplj7gJB0893Qj4aOvidpeEgoISBJV9A=;
        b=eQ5YJrknJfYEYEzfMXJpADajAz1vioL2RDOOzgQt6xqGkU9uX7BdVCZv6tmNoHrRti
         MG3bvJzrEWt8fPpMsZMabBBLcipYetZryB2naZmghJzg27lBgMrd2qOIjSMGSLO90/Po
         +ypI0YkMX1B5mU31i+l4/zdgSoLSzQz/efFt51aLHvm2ttLcGdjQhc1Y4BClCDXbYxsp
         iqYXfIM6QpkdAWeudgsO39/GwqSRhbf1/ORZl0o3PC82jM2bDQQns4BfeD4lOkQI+kLS
         Of91L2VSam5QW5+QeX58zsRoxobZKwMFkK7Zcl2ETiLRuHZQmkf5AAutA8cUIGDUGPSd
         IW3Q==
X-Gm-Message-State: ACrzQf33P3CVIJglDzIOWGSH957YRD+Bip7Jj0Oc3XpoXrEPTpeAg5cN
	J0NQja7DVOS6MTnK6xVTxkieSA==
X-Google-Smtp-Source: AMsMyM7kxdfrCh9pAcyAISWlhEGYBRt8NTBSUUXcJr54mIhTbztE0AxpM7P3yDFdZcFqth3QR8k8OA==
X-Received: by 2002:a05:600c:384f:b0:3c6:fb0d:4369 with SMTP id s15-20020a05600c384f00b003c6fb0d4369mr23498820wmr.18.1667571250782;
        Fri, 04 Nov 2022 07:14:10 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6440-7fff-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6440:7fff:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id bj9-20020a0560001e0900b002365cd93d05sm3594512wrb.102.2022.11.04.07.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 07:14:10 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 04 Nov 2022 15:09:48 +0100
Subject: [PATCH v3 02/12] dt-bindings: display: mediatek: add MT8195 hdmi bindings
MIME-Version: 1.0
Message-Id: <20220919-v3-2-a803f2660127@baylibre.com>
References: <20220919-v3-0-a803f2660127@baylibre.com>
In-Reply-To: <20220919-v3-0-a803f2660127@baylibre.com>
To: Rob Herring <robh+dt@kernel.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Jitao shi <jitao.shi@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 CK Hu <ck.hu@mediatek.com>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, Guillaume Ranquet <granquet@baylibre.com>, mac.shen@mediatek.com,
 linux-phy@lists.infradead.org
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_071413_172934_900A6C4A 
X-CRM114-Status: GOOD (  13.10  )
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

On mt8195 the ddc i2c controller is part of the hdmi IP block and thus has no
specific register range, power domain or interrupt, making it simpler
than its the legacy "mediatek,hdmi-ddc" binding.

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 .../bindings/display/mediatek/mediatek,hdmi.yaml   | 61 ++++++++++++++++++----
 .../display/mediatek/mediatek,mt8195-hdmi-ddc.yaml | 51 ++++++++++++++++++
 2 files changed, 101 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
index bdaf0b51e68c..9710b7b6e9bf 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
@@ -21,6 +21,7 @@ properties:
       - mediatek,mt7623-hdmi
       - mediatek,mt8167-hdmi
       - mediatek,mt8173-hdmi
+      - mediatek,mt8195-hdmi
 
   reg:
     maxItems: 1
@@ -29,18 +30,12 @@ properties:
     maxItems: 1
 
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
index 000000000000..2dc273689584
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
+    hdmiddc0: i2c {
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
