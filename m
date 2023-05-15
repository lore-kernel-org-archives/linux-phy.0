Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C55DCC7EE22
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 10:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mv80nlTl9wNbPyeNo68JzMG0CaLGC2Pcg/tl3CoaBs=; b=zwHaPD2NxRmuuW
	E2tVemJgSgPC1v6/jT10k13FmBZfaE+6jjoO+XLjFJlZDE9brJxxyY+xysguZPdikf5zQrURjdKfz
	M0AFt8pLtwAKoNOZC/gEstgL1HIKm+zKtassgDymDCwpVWcQ5lmCF71kh5r/JFMYtAJ+QxFik0hDc
	sxrQna5TMGQBUoCMv6zvQqdw/e5QjJn/A7iWFrPPJhAipgz4o7J05BLfz6RYhLD2Tigo3AE66LqYD
	T4DX40fIWqzXPMlrncdt08tNr8BSMCRMqhDvQ9cY7Y5OsCFpj0ZfJ08UlCdPvAgZlxYMjSqohmIFb
	ijsKhp6MDnORsm7zZJKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyVhb-001sr5-14;
	Mon, 15 May 2023 10:45:15 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUcW-001Zv9-0Y
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 09:35:59 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f41dceb9d4so93664115e9.1
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 02:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684143355; x=1686735355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i1U5d4MLxOVRGxYrIG94ORc3atBG6AwDIhORaNjU7E8=;
        b=0I7No2h2vVPxZmELHElkO+DCMmo/7h06fCuFCt9VWkpo8/xiz0U4nvQr+oP9mcYZtf
         FX4pXi+9qn6fWaFgnuy9ee8GlUrAvc8uOIPfMUmMy7ACNpBV4nfERAdFfCntOoJ20RN9
         zoQsNqlbnxRL3Gg+Kxjq+LQr44RsWRr1z+XR6KwIl47cS1kUp2xFQg0lQLdiHdPsWGRR
         eAA0GQQjkW/1ExWten9k75ga4J8zLaqeB3zjT9+EgCjfS4qgaI50Zsg4keJHUZPEA3V1
         XL1tbgpzyYuCd+brFvK8S14n9y8WsypZnjmYhBHTwpgto1VIDsbN7OmbxQm3QCNaUEas
         mfAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684143355; x=1686735355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i1U5d4MLxOVRGxYrIG94ORc3atBG6AwDIhORaNjU7E8=;
        b=B4QMX9fpWrNYJjRhXsldm2PsKsIjTBRXSBc0/J0EwOABlb+5SraKnJQgiEhDz+GRrC
         SgmfCR/4rwzSgfPy8idquoSmh9L1oyhhiNYVzQmibcL60sOTShEOnZowK7dmwlpbcrKH
         yqgT//eGYpyYzwXkfGCyB9RSqOOUORyz6Cm64EBnhojx9t1WO3dkwu6ahSjb0hTyrVoS
         Af5RD15r9la7EHFdtujENRJHShqDB84lMU721/Q6tzumbvYHFUAy1W7OKLTAbRPg23vO
         a4D/nQL/pktZkob3F3g5Mw3Usll4TWW7K6Z8gi2K58XaIZOWH7kHIGKOavLxAGD4+RL6
         EH+A==
X-Gm-Message-State: AC+VfDw/XsKVBBVoJmgWhWebdJtkbqaNnq78+vjLzuMWLmW6lF2yAZYv
	frVFDmFWZ6k/wnRoUBptSxCNOA==
X-Google-Smtp-Source: ACHHUZ7+Cb+vH+WpGUTIuorFy/U4TAkpqUMxuly4awYN+dmnigKVjCrRjrsxKfKFu1bnpDBzyacmPA==
X-Received: by 2002:a1c:cc0e:0:b0:3ef:622c:26d3 with SMTP id h14-20020a1ccc0e000000b003ef622c26d3mr26682092wmb.35.1684143354910;
        Mon, 15 May 2023 02:35:54 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:55f:21e0:fd3b:9fed:e621:cc8f])
        by smtp.gmail.com with ESMTPSA id z22-20020a7bc7d6000000b003f42813b315sm21035451wmk.32.2023.05.15.02.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 02:35:54 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
To: 
Cc: krzysztof.kozlowski@linaro.org,
	robh@kernel.org,
	chunkuang.hu@kernel.org,
	linux-mediatek@lists.infradead.org,
	Florian Sylvestre <fsylvestre@baylibre.com>,
	Julien Stephan <jstephan@baylibre.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Andy Hsieh <andy.hsieh@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek USB3 PHY DRIVER),
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 1/2] dt-bindings: phy: add  mediatek mipi csi driver v 0.5
Date: Mon, 15 May 2023 11:05:50 +0200
Message-Id: <20230515090551.1251389-2-jstephan@baylibre.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230515090551.1251389-1-jstephan@baylibre.com>
References: <20230515090551.1251389-1-jstephan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_023556_212067_E47D5745 
X-CRM114-Status: GOOD (  16.68  )
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

This adds the bindings, for the MIPI CD-PHY module v 0.5 embedded in
some Mediatek soc, such as the mt8365

Signed-off-by: Florian Sylvestre <fsylvestre@baylibre.com>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 .../phy/mediatek,phy-mipi-csi-0-5.yaml        | 62 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,phy-mipi-csi-0-5.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,phy-mipi-csi-0-5.yaml b/Documentation/devicetree/bindings/phy/mediatek,phy-mipi-csi-0-5.yaml
new file mode 100644
index 000000000000..5aa8c0b41cdf
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,phy-mipi-csi-0-5.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-Only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/mediatek,phy-mipi-csi-0-5.yaml#
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
+  Depending on the soc model, each PHYs can support CDPHY or DPHY only
+
+properties:
+  compatible:
+    enum:
+      - mediatek,phy-mipi-csi-0-5
+
+  reg:
+    maxItems: 1
+
+  '#phy-cells':
+    const: 0
+
+  mediatek,is_cdphy:
+    description:
+      Specify if the current phy support CDPHY configuration
+    type: boolean
+
+required:
+  - compatible
+  - reg
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      mipi_rx_csi0: mipi_rx_csi0@11c10000 {
+        compatible = "mediatek,phy-mipi-csi-0-5";
+        reg = <0 0x11C10000 0 0x2000>;
+        status = "okay";
+        mediatek,is_cdphy;
+        #phy-cells = <0>;
+      };
+
+      mipi_rx_csi1: mipi-rx-csi1@11c12000 {
+        compatible = "mediatek,phy-mipi-csi-0-5";
+        reg = <0 0x11C12000 0 0x2000>;
+        status = "disabled";
+        #phy-cells = <0>;
+      };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 6d54f3193075..44f0ff11e984 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13098,6 +13098,12 @@ F:	Documentation/devicetree/bindings/media/mediatek-vpu.txt
 F:	drivers/media/platform/mediatek/vcodec/
 F:	drivers/media/platform/mediatek/vpu/
 
+MEDIATEK MIPI-CSI CDPHY DRIVER
+M:	Julien Stephan <jstephan@baylibre.com>
+M:	Andy Hsieh <andy.hsieh@mediatek.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/phy/mediatek,phy-mipi-csi-0-5.yaml
+
 MEDIATEK MMC/SD/SDIO DRIVER
 M:	Chaotian Jing <chaotian.jing@mediatek.com>
 S:	Maintained
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
