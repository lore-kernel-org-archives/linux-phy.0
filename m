Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0572C77B73
	for <linux-phy@archiver.kernel.org>; Wed, 24 May 2023 09:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URGF9oZUayXFyV7Xd9tNrIaamSviVxs9cMi6dp066Kc=; b=lc8wv2efK1poCr
	vBg0RzXuPhjkoaFJFh5gswkMBQEA7XIMLUgPqTnWcNxnvhYYHbIQiCkmpnWS3eeUw0W2c0WJBD+PV
	Vx0vVDL7XO2OZ99yDC5k+ZqXkoCWsyGBwQGPXe+a972RVdzscihBRz681KoR7cwsdwJ1DGI7Nvcpj
	MRL3HORt5nfSq8taU376cgqKxr0sm/+jMs8HaJHIDC+HOo+WEjYMGDfLvPtA2rYPz/614sz47nVFI
	NcgiSmxUj2mcwBCi6MbHbHyARXEygThZo+omxqW2i1S7FQnEdWthKXRnm0KTrtHyvYIeT0fje6aEV
	pavQw1coExlhXl2M7S2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ktl-00Cz9P-1S;
	Wed, 24 May 2023 09:35:13 +0000
Received: from mail-wr1-f48.google.com ([209.85.221.48])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1jtV-00CmbO-1k
	for linux-phy@lists.infradead.org;
	Wed, 24 May 2023 08:30:56 +0000
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3093a6311dcso473404f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 24 May 2023 01:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684917051; x=1687509051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1bgK81zYJJlKzJwC/YpUVSKkmte5LSImvMG9blyHL8w=;
        b=q3rlhiN1dqBA2GKz3Baz0KFqAEsTk9Qe+RSwPRNOe/jjZ3ukXTwBxzpVyKlxqS3oJk
         BikGg2jYUATGzhaIdGoeT/DrFEkG8IDjhW5p65ywpyai0QXsEH/hv9LzF2PVM4/bcUpG
         TTPCH9s57Yp/5jPz1TCf1SW3gnCEo7w06js9iutJCPnpdnSOnHnlFs+313+Apq9cJgtu
         7x8RzeXcP/ArERx4Vg6UdoEjNUjJRmhy7qgCR6GzK4SfoMuE23SG8pbo594k6H1c6JXs
         DCsfmjLYVxHZO73M52cFGNZJDtdjFM3Dh+RRbIpvlR4UfYU5xv0YmViBPjducNXwgp0U
         j8oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684917051; x=1687509051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1bgK81zYJJlKzJwC/YpUVSKkmte5LSImvMG9blyHL8w=;
        b=QDevBoyO/lJ2GmNiA3s+EqfBM5ayq8K71+NRBd3naTifUVwD6RgdWarerDsXRNgYIr
         U9few9ItEbrlruali5uDVw3YEno/rUExRSR3VfZNxd25s6tsedPODDGGz/Mwmsmn7aTc
         ZUtsWUP+iqN5sLQG4nvcnCfKYH+EirF9qePeQX340EwKCqAmOJP8IruLc7lgiyx/zFmI
         9aZ7OOeDL6qvD3tWO2na6badlv9FPcPEjWQUoPhiBGU1iC39mTQSEOzdyTUH1SlhE18Y
         tqCA3EmB2DO/4HI1MIq2RQkWVvCJh1QwMmNZuoH/o3HZgQLtXFnvuNyLED1Bsib0t+aS
         GzwA==
X-Gm-Message-State: AC+VfDx4Cqj8inQbDgYoYKUNEpT9+wAmr+i9Yq2/keXeGvfq6BB12Hi4
	pNlVBnVwPoT8fttgxpUsJYK7fA==
X-Google-Smtp-Source: ACHHUZ4rg9xDTlc33OxE5pi3GZwUh53PWH0eMhBen5R9zYe/bMYwZfbseDecOPk9Jj73PjeMwBppWg==
X-Received: by 2002:adf:ef42:0:b0:301:8551:446a with SMTP id c2-20020adfef42000000b003018551446amr12446568wrp.2.1684917050983;
        Wed, 24 May 2023 01:30:50 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d484b000000b00307c0afc030sm13871832wrs.4.2023.05.24.01.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 01:30:50 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
To: 
Cc: mkorpershoek@baylibre.com,
	khilman@baylibre.com,
	Florian Sylvestre <fsylvestre@baylibre.com>,
	Julien Stephan <jstephan@baylibre.com>,
	Andy Hsieh <andy.hsieh@mediatek.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 2/3] dt-bindings: phy: add mediatek MIPI CD-PHY module v0.5
Date: Wed, 24 May 2023 10:30:31 +0200
Message-Id: <20230524083033.486490-3-jstephan@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524083033.486490-1-jstephan@baylibre.com>
References: <20230524083033.486490-1-jstephan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_013053_608453_6DD6A850 
X-CRM114-Status: GOOD (  16.38  )
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

From: Florian Sylvestre <fsylvestre@baylibre.com>

This adds the bindings, for the MIPI CD-PHY module v0.5 embedded in
some Mediatek soc, such as the mt8365

Signed-off-by: Florian Sylvestre <fsylvestre@baylibre.com>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 .../bindings/phy/mediatek,mt8365-csi-rx.yaml  | 67 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
new file mode 100644
index 000000000000..a1bd96a98051
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2023 MediaTek, BayLibre
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/mediatek,mt8365-csi-rx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek Sensor Interface MIPI CSI CD-PHY
+
+maintainers:
+  - Julien Stephan <jstephan@baylibre.com>
+  - Andy Hsieh <andy.hsieh@mediatek.com>
+
+description:
+  The SENINF CD-PHY is a set of CD-PHY connected to the SENINF CSI-2
+  receivers. The number of PHYs depends on the SoC model.
+  Depending on the SoC model, each PHYs can be either CD-PHY or D-PHY only
+  capable.
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8365-csi-rx
+
+  reg:
+    maxItems: 1
+
+  '#phy-cells':
+    const: 0
+
+  mediatek,phy-type:
+    description:
+      Specify the phy type. Supported phy are D-PHY only or CD-PHY capable phys.
+      See include/dt-bindings/phy/phy.h for constants.
+    enum: [10, 13]
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+  - reg
+  - mediatek,phy-type
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/phy/phy.h>
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      csi0_rx: phy@11c10000 {
+        compatible = "mediatek,mt8365-csi-rx";
+        reg = <0 0x11c10000 0 0x2000>;
+        mediatek,phy-type = <PHY_TYPE_CDPHY>;
+        #phy-cells = <0>;
+      };
+
+      csi1_rx: phy@11c12000 {
+        compatible = "mediatek,mt8365-csi-rx";
+        reg = <0 0x11c12000 0 0x2000>;
+        mediatek,phy-type = <PHY_TYPE_DPHY>;
+        #phy-cells = <0>;
+      };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index b81e9fcc66cb..5da594fbb761 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13184,6 +13184,12 @@ F:	Documentation/devicetree/bindings/media/mediatek-vpu.txt
 F:	drivers/media/platform/mediatek/vcodec/
 F:	drivers/media/platform/mediatek/vpu/
 
+MEDIATEK MIPI-CSI CDPHY DRIVER
+M:	Julien Stephan <jstephan@baylibre.com>
+M:	Andy Hsieh <andy.hsieh@mediatek.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
+
 MEDIATEK MMC/SD/SDIO DRIVER
 M:	Chaotian Jing <chaotian.jing@mediatek.com>
 S:	Maintained
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
