Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5106CC0015E
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jun 2023 12:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCODjZrJYh/+pfVtyM3MmdmPHCK/2vNsc1D/2kL7A5w=; b=d6NDv51nTIVwF9
	LnY9NokNSxoeoyW5F/PGOGLCeVg9tC5o/hSF7rlevdTxBRgyos1uEu6yMxFTCnV2MnWuQvPeaT817
	KcVgKICQEo2tbeTDgjjcF0rwX4HjAUQGF0XyOXDEVJUpgf8dTfCgZjhbzyp7HZ6jZKy7xhkOyX9CZ
	cbV/8MtiL4fMqdmHbZz7vLExv5OU0Z6ntLs4i2V2x9vZCxpYfOL3ADhqg4RjB+1Zfi7al313VbZCJ
	goCpqDVBsgDn88W/zvoOy9luHRVRTaBUHQkeTx9h0v4VOizomgQnaMDOWKQuinhUIldh7YiimUbgI
	AQUDjHy1Gs0zR6/Z03hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBaL8-00BEL3-3C;
	Tue, 20 Jun 2023 12:20:06 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBaL5-00BEJ4-2g
	for linux-phy@lists.infradead.org;
	Tue, 20 Jun 2023 12:20:06 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f97e08b012so26887985e9.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Jun 2023 05:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1687263602; x=1689855602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YXmcS/2oGuecncHurBHCDvbohS0tejnBEtI7u/YX0AI=;
        b=wKB3l+lEX1/Z9vBIXHTZgagfJ354S2rdf9kwVBTuhiZx43ftmPdmHcEYiZS5IKnJ9c
         Lc9NyLJHKYQ22KfUqsxbP3mrfAJybli5wZ4AugqSYz0CpzkgUK3TrRFQG+YuYvet4CU9
         Kg7c61zibcQnm6WGypl99+rpdx++8kZe3mRPbpFa3Gw17sLnZiZ/8D7yLpaDyxbs4SvK
         pj4K04nzsaJGLFNUmNaz0tcHIQIRnNVYZAYAOSn/zJ59UPiQbq/EVgJ9l7jTeQ9sQkNZ
         +fNyk/q+J4djq7JMD5ULCvPR21quwxhfvW74UYppQCbxDoB9XhPPMpswiC72rgn3icq1
         AuRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687263602; x=1689855602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXmcS/2oGuecncHurBHCDvbohS0tejnBEtI7u/YX0AI=;
        b=CJg6NlWOcC6C62WdKCAmhfW/tDa1nbaJpVZe2eCGbXi+URvk6X4h6BD/kpfGwwzPJM
         nqP7/xwokuvyMGdJcBH3/2w2Vr/b7kXp1aLzCTck3Qc/t/xEZgnrCJGm1M7mnPnR9S+H
         wihvUTa19DNz/yXBEMDyW3lZzL10CYFTleCeqyYCSVnKpuwSrARJb2TBrByV5H8x7ds+
         24CAR1aI8F6wmJrq9KWoC9QkhgACHH1UFBtIL05HjqrJOww4kkh3NQL3E/o3FntIh1HU
         CAAtmZr5fpBYiuA6kfzvbN6cbBXGBKYThkRUXbasitZEaQ/2yHEIg8Gk2XSm5c3tOSX2
         d36w==
X-Gm-Message-State: AC+VfDxLlWDC8NVxfTIJ0Fsl0H1/qB3WWsFrMldZgEusYIO8c0tWUwBO
	uv0mUkaGywlOMlJvTbChdcixc+X5x3KV50cmJL9yFg==
X-Google-Smtp-Source: ACHHUZ6Mdas/N0VFI0B+z8neuKplKhLqK8MFi7ecgPSeIHTj3Y0/v3za8BLHZFriATu3xAZkw2u6+g==
X-Received: by 2002:a1c:ed0b:0:b0:3f7:948f:ad1c with SMTP id l11-20020a1ced0b000000b003f7948fad1cmr10661593wmh.6.1687263602421;
        Tue, 20 Jun 2023 05:20:02 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id u15-20020a05600c210f00b003f18b942338sm2242513wml.3.2023.06.20.05.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 05:20:02 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
To: 
Cc: pnguyen@baylibre.com,
	louis.kuo@mediatek.com,
	fsylvestre@baylibre.com,
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
Subject: [PATCH v4 1/2] dt-bindings: phy: add mediatek MIPI CD-PHY module v0.5
Date: Tue, 20 Jun 2023 14:18:46 +0200
Message-ID: <20230620121928.1231745-2-jstephan@baylibre.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230620121928.1231745-1-jstephan@baylibre.com>
References: <20230620121928.1231745-1-jstephan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_052003_891137_C5143290 
X-CRM114-Status: GOOD (  17.79  )
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
 .../bindings/phy/mediatek,mt8365-csi-rx.yaml  | 79 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 85 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
new file mode 100644
index 000000000000..2127a5732f73
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt8365-csi-rx.yaml
@@ -0,0 +1,79 @@
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
+  num-lanes:
+    enum: [2, 3, 4]
+
+  '#phy-cells':
+    enum: [0, 1]
+    description: |
+      If the PHY doesn't support mode selection then #phy-cells must be 0 and
+      PHY mode is described using phy-type property.
+      If the PHY supports mode selection, then #phy-cells must be 1 and mode
+      is set in the PHY cells. Supported modes are:
+        - PHY_TYPE_DPHY
+        - PHY_TYPE_CPHY
+      See include/dt-bindings/phy/phy.h for constants.
+
+  phy-type:
+    description:
+      If the PHY doesn't support mode selection then this set the operating mode.
+      See include/dt-bindings/phy/phy.h for constants.
+    const: 10
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+required:
+  - compatible
+  - reg
+  - num-lanes
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
+        num-lanes = <2>;
+        #phy-cells = <1>;
+      };
+
+      csi1_rx: phy@11c12000 {
+        compatible = "mediatek,mt8365-csi-rx";
+        reg = <0 0x11c12000 0 0x2000>;
+        phy-type = <PHY_TYPE_DPHY>;
+        num-lanes = <2>;
+        #phy-cells = <0>;
+      };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 45fc831f1654..024d67eb7a94 100644
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
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
