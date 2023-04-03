Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC7F9C77B60
	for <linux-phy@archiver.kernel.org>; Mon,  3 Apr 2023 07:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Cqus+5Qz0WkkRdMAZXZT8Pa2ClM5+bzIashbjjrrxc=; b=Jev7NUr6lCMI2D
	g6rPniK+iN58NxZ6f2DyJsP0ynOVdJDMYzEDunvF050jUb+vcXviNrUN0k5WxtRhHeLnmR7HtLJHz
	dtS6DQ6xcuV03qvZctGXOsY1bwjWYNtthEhQvlln9A7xQm7AVwaTlIbnJCQE9+fuJUbBlby6KKPc4
	gKaoOfrCTop/3I+Cz/D48sAKnq6XuULgkxAgsWbPRHI9eujli86Ep4Pp5Iqt25uYfDweW5zj1qbu/
	v1uU7x8i1QKFeBBZEB5wfC3g1xsdrUU4WiFtcQNzqw84NWTa5OKltJI3yJI9bLHUirP+G9eVhmg6C
	nbVKtKykBNx4rNBI65aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjEU1-00EMMj-1R;
	Mon, 03 Apr 2023 07:20:05 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjETv-00EMHr-1C
	for linux-phy@lists.infradead.org;
	Mon, 03 Apr 2023 07:20:01 +0000
Received: by mail-wm1-x32f.google.com with SMTP id l15-20020a05600c4f0f00b003ef6d684102so13795957wmq.3
        for <linux-phy@lists.infradead.org>; Mon, 03 Apr 2023 00:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680506397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SVU4RWnnyUxN/4R/aQctGtgga+2F97ZjMTd4w/vQJpk=;
        b=4UU7G4p85jYpbaznDqsi6k/mDKHAj8qWT5nGe+5FtXHC6uM3e+A3ES3ck75BH8EEdA
         cfmNs4gqmcFKLXj3Ox9b20prhVLC8qkyx7JXK2b3WIaUncdlThZMSwDDA4kxibFeLVnH
         XkaXjAvFUm/ar+eOmHPB8Wv3emiVJniLVfjCMPnDAhzSOitBKgJuKf2apIlIvL2w5cIb
         l9+GLsw1c8Zw7hg20aSh+SIjFCMqN1ZoHMjD58Bja3iAiu8NMFX0eyt2z6Wz7cB8ioIH
         exuB9Rn4WDQYSv4GKK2vXpgBg5zkozurLXhpRm60zKWQ8iOpumrar0QK7xOPMOKXuNSV
         LCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680506397;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SVU4RWnnyUxN/4R/aQctGtgga+2F97ZjMTd4w/vQJpk=;
        b=Lcl2JAH0Wxjg7vfJzfR2MrgYlB9Lh8w6fEmqJaPnTN9WXDhI8doy/O4qtxfcakHmNJ
         elGV7rqYiKh5XZROpSRBO9AjRewmGDPKBkI0MN6gPKRbyHGpmqAZSAb+hrL438ZK2Tyc
         92ZEo8p7A79zHOuKT0rPIxUdMnRxK28cpWMJCUFygMNo/aFMnMjWDuyEHSl00aFa07Xi
         hjwgQgQkvbEAljdty7AoZQW2o/alOVL+MhQWoH/jw94Rdai5JaHdQAslgg/5UgHzOs86
         NL9JISkNjOmVhSbaUNb7DscA4g0EpsuHKYM5H9jlF0hEUV+hFMc3M4Lq+DbrpgkLjtt+
         hzKg==
X-Gm-Message-State: AO0yUKVFRe1h8oMclRjuVvTdVE2L5iqzzqfNNZGKkVfsIzWE+CvG3p7H
	5laxeY2BtKijN4s2zs/T2z439g==
X-Google-Smtp-Source: AK7set9JfS6EkdNxsvq8m3JaM4HWW8unwj4xfBqnQFM5v1P4Yau30M6jCRGb3xcdcBySIEnH0yG3pg==
X-Received: by 2002:a1c:4b13:0:b0:3ed:33a1:ba8e with SMTP id y19-20020a1c4b13000000b003ed33a1ba8emr24618383wma.1.1680506396912;
        Mon, 03 Apr 2023 00:19:56 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id z3-20020a05600c0a0300b003ee6aa4e6a9sm19060418wmp.5.2023.04.03.00.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 00:19:56 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
To: 
Cc: Florian Sylvestre <fsylvestre@baylibre.com>,
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
	linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek USB3 PHY DRIVER),
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/2] dt-bindings: phy: add mtk-mipi-csi driver
Date: Mon,  3 Apr 2023 09:19:28 +0200
Message-Id: <20230403071929.360911-2-jstephan@baylibre.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230403071929.360911-1-jstephan@baylibre.com>
References: <20230403071929.360911-1-jstephan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_001959_404956_B142F57D 
X-CRM114-Status: GOOD (  14.86  )
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

Signed-off-by: Florian Sylvestre <fsylvestre@baylibre.com>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 .../bindings/phy/mediatek,csi-phy.yaml        | 41 +++++++++++++++++++
 MAINTAINERS                                   |  6 +++
 2 files changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml
new file mode 100644
index 000000000000..c026e43f35fd
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-Only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/mediatek,csi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek Sensor Interface MIPI CSI CD-PHY
+
+maintainers:
+  - Julien Stephan <jstephan@baylibre.com>
+  - Andy Hsieh <andy.hsieh@mediatek.com>
+
+description: |
+  The SENINF CD-PHY is a set of CD-PHY connected to the SENINF CSI-2
+  receivers. The number of PHYs depends on the SoC model.
+
+properties:
+  compatible:
+    const: mediatek,mt8365-mipi-csi
+
+  reg:
+    minItems: 1
+
+  '#phy-cells':
+    const: 1
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
+    phy@10011800 {
+        compatible = "mediatek,mt8365-mipi-csi";
+        reg = <0 0x10011800 0 0x60>;
+        #phy-cells = <1>;
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 6d54f3193075..9308b4bb88bf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13098,6 +13098,12 @@ F:	Documentation/devicetree/bindings/media/mediatek-vpu.txt
 F:	drivers/media/platform/mediatek/vcodec/
 F:	drivers/media/platform/mediatek/vpu/
 
+MEDIATEK MIPI-CSI CDPHY DRIVER
+M:	Julien Stephan <jstephan@baylibre.com>
+M:	Andy Hsieh <andy.hsieh@mediatek.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/phy/mediatek,csi-phy.yaml
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
