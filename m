Return-Path: <SRS0=Qt1L=OT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 744F5C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 09:47:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 261666120D
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 09:47:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 261666120D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLK1M/K6I4hcQ9ii2fSC34G+dfJAekuKJgqUmJfCY5c=; b=JIdhVcdrsLkvKh
	aWsGT0bXQpRXe0aR79uqEUnbR6eYUxWMzz2eU1E9Z0OqFDJ+pe0YZgnM22LyFOfgXVvG/dI5gT7B7
	UAuBnl7pt6/svXs5PykpeHuT8mKEU/mzfO1uBhlhZGGwM5wz0t9M3Cqfdlab4AzuMXnWfYskuZbJm
	WlSu+QEx/EAarQUzFs77GVcVv4nUj8AjU4KFHTBwimnUJx58ylevfU6THjyr4R5DRaYNFgKo9jWUD
	u7PTkN4LOeVaOisgoJhzlJwSQu9PkUFvsP/gizp3/MSqXk4bg53HNEvqEmVURY6qUBDsAxgQFAC7c
	JAcuNF8yRXDR6EJMKXSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVWBQ-00Abaa-Ig; Wed, 29 Sep 2021 09:47:24 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVWAw-00AbRY-Gh
 for linux-phy@lists.infradead.org; Wed, 29 Sep 2021 09:46:57 +0000
Received: by mail-wr1-x430.google.com with SMTP id t8so3202134wrq.4
 for <linux-phy@lists.infradead.org>; Wed, 29 Sep 2021 02:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0TEsDRiyoS/4OSMn47r8BWf1M3rX4YjYUeKvcYaH4Lw=;
 b=N4Ij3KaqTN6lCzIHUNYiS0hXtG8BxP1YsyVEsbtdMh6naQw4xDybUjSQ0smteyfRFr
 h7i1lbPa5OCh5a0YSiwTRNgVYTWKurZw+xYghnggMg12SDdOfrcl9CpryfDAbYVTvJpY
 UGcfcp3pOIUbR1iyB+MmXbIz311XBBD4gq78zZA5wTsGRooYXf1ZDkDziGKUiV6cdhSk
 4ItFnGUVtxgdDiO+dqt8vIwANMVY5MgNL8nGEZCtBj96TX2MdxS22PBGr28/C9RtOKAs
 h9bUR9ZYCvJNgwvUKFn4dLcqQ+TxAVei/ilUgtWEltJL340kzv2/rY04SB1Kt+r6Ro3m
 DppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0TEsDRiyoS/4OSMn47r8BWf1M3rX4YjYUeKvcYaH4Lw=;
 b=hCdDfJYzbxX5FshvvCAwsxwijInf8yRT03/DQFIqjkKNtf+ULHbpBs/Fv/AikIv1KS
 Wz0X4mtS7rJ9f/X3DADhDRrq/6hynUt57n8ZqHRsKFpBl8odml03AwqgJvqzQGjpM5z2
 ol6PhgfbHm1+ziLmYu2kfYfjHRSf/JLc7UPFUmZ7myyEVFY0Jw/ufz8Kpk5Icu7a56tG
 qZ5Vvfi+kuZqJoTGMY/vyeY5cebhAw6U1FWapdQgBd5B4dceoFx95hBg3SiqCN9ijV7e
 YTtPjvr9Amt4oDt0Cp2WZP8yT/MCXYVSM3SbaqEDBw5WBEC15F5UQirI1c9MV3vimyvs
 6Oaw==
X-Gm-Message-State: AOAM530TDHan36exUf1WeZC5icBXCRISiZgkTUj+Liqd+9cZEVOaa0mM
 hpmFN7POm3UF9C2P5eCV9KbCmQ==
X-Google-Smtp-Source: ABdhPJxoWBasUJskF/U8ajOUDOopKjdiX2cNUcJ5NjEaYxV81lHoLSDmAM6EpXMdEzCh/pwDTEXw7A==
X-Received: by 2002:adf:a115:: with SMTP id o21mr1617016wro.208.1632908813085; 
 Wed, 29 Sep 2021 02:46:53 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6240-2cf3-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6240:2cf3:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id h7sm1751938wrx.14.2021.09.29.02.46.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Sep 2021 02:46:52 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/4] dt-bindings: phy: Add binding for Mediatek MT8195 HDMI
 PHY
Date: Wed, 29 Sep 2021 11:44:22 +0200
Message-Id: <20210929094425.745-2-granquet@baylibre.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210929094425.745-1-granquet@baylibre.com>
References: <20210929094425.745-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210929_024654_595352_749D9B2C 
X-CRM114-Status: GOOD (  13.42  )
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

Add bindings to describe Mediatek MT8195 HDMI PHY

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 .../phy/mediatek,mtk8195-hdmi-phy.yaml        | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mtk8195-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mtk8195-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mtk8195-hdmi-phy.yaml
new file mode 100644
index 0000000000000..6b39bb8c9dfe7
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,mtk8195-hdmi-phy.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (c) 2020 MediaTek
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/mediatek,hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek High Definition Multimedia Interface (HDMI) PHY binding for mt8195
+
+maintainers:
+  - Chun-Kuang Hu <chunkuang.hu@kernel.org>
+  - Philipp Zabel <p.zabel@pengutronix.de>
+  - Chunfeng Yun <chunfeng.yun@mediatek.com>
+
+description: |
+  The HDMI PHY serializes the HDMI encoder's three channel 10-bit parallel
+  output and drives the HDMI pads.
+
+properties:
+  $nodename:
+    pattern: "^hdmi-phy@[0-9a-f]+$"
+
+  compatible:
+    - const: mediatek,mt8195-hdmi-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PLL reference clock
+
+  clock-names:
+    items:
+      - const: hdmi_xtal_sel
+
+  clock-output-names:
+    items:
+      - const: hdmi_txpll
+
+  "#phy-cells":
+    const: 0
+
+  "#clock-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - clock-output-names
+  - "#phy-cells"
+  - "#clock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    hdmi_phy: hdmi-phy@11d5f000 {
+        compatible = "mediatek,mt8195-hdmi-phy";
+        reg = <0 0x11d5f000 0 0x100>;
+        clocks = <&topckgen 77>;
+        clock-names = "hdmi_xtal_sel";
+        clock-output-names = "hdmi_txpll";
+        #clock-cells = <0>;
+        #phy-cells = <0>;
+    };
+
+...
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
