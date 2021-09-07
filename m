Return-Path: <SRS0=iYEg=N5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 440CCC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Sep 2021 08:40:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B7746105A
	for <linux-phy@archiver.kernel.org>; Tue,  7 Sep 2021 08:40:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0B7746105A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUKUKllxUtM70AonMuF9NtiEFfzfArfEa6JpNrjigaQ=; b=w2jHNQJsoOO2i+
	131ScUw0ZHUdZwCSCpiLMCPyxt4jWSAG9jMxb3lMzGtxkqyON2HwXx/0b45uhbga6w7RrLeEg7UWM
	hBqJBfxLV1mRcc9+iG4z69yvbj6jkxENehBA8XD9P8YZXm/ZIEYvhosDG/oGP0Ythb2V+YcjmDPYz
	Nt1cL7t7384aISM9dISYgVs5rwIKoycl7RExJ5XMJdCCSm1RmRW43WBf19EY/d+b6MgPfjfIcVtKQ
	E5Wx83TKb4Ct1RfvXoUfBugNia+vqAhVTYADoNXXKMXkHFdp75FrdG8Sc7x2JqsLUt12wLGEWeyyu
	bWr/8O5BCu9J9v3O2TNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNWeL-002tih-FI; Tue, 07 Sep 2021 08:40:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNWdk-002tQ2-7H
 for linux-phy@lists.infradead.org; Tue, 07 Sep 2021 08:39:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id x6so13171442wrv.13
 for <linux-phy@lists.infradead.org>; Tue, 07 Sep 2021 01:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Oz+Hr4rbZnT8MxqfF16y/QcdvWXwOuV/sANx8R9T0v0=;
 b=ttURaYZ3GOJrLfiRPVgP6FVt1sTn4/VjQ3JvUq4LS0dEDBsGsWxw1syT5yrRjMnusR
 ZXTp0q+DB+1ZHvy/fjom9NJV7cJBn7L8Ylqgw1rEmRCYk9Vr/pclGjEWmJNe48UmpO6F
 9Pilf3J37Uac9vF59TO/60Icd3P39suwl9BO6BfWJVRH0tXmh8/kk/6r6st0fVhySvuL
 F4rVlFtvAJxLrMO5rFu0DBikqxvljKrHI8Ia4r6FDoUoD1DJGMm7+A/M4IILsWtix8oF
 DZwIn2pd4TxcA1gjAvH0QkKcsr/5ovIJHsVgK35NoqpYrBp+6eJ6qbCHYSoykacMlB6D
 paHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Oz+Hr4rbZnT8MxqfF16y/QcdvWXwOuV/sANx8R9T0v0=;
 b=Sg+/WwDu6NuSVCMEgmRHtV1RuU1LH9/H7fpWDCfRt69d/TarrHoU27AmeZixJwBRej
 vzaZzncqQM55B69UWB4iMaGjTO95j+GrdDThKPwoThMQQZTQeZ3h9wWrSstEt0EDuatA
 1OyBFWZK997gCvC9VmbVdvf3MrpanvIAyLJcMevmH1i+08kNlMJxWLdSc/j7KclgbMZ2
 uOD+q47Sn7RfDaixo1LF4qEAaUtbHXhIafivkrUAsp/pDERlwLhgAcjHvpr5f7K7OCeJ
 6rzlxZSwscivsQ4kJuImITyU+zykblcHdAZxHCU0N8BsqP1RFuk4vN5Bh6Wmz+Y/2HcL
 U1Wg==
X-Gm-Message-State: AOAM533dW4lGDhL1IZs08HCQ8XQCIVTFdTdHmKINN3iNsysYTZg83sVb
 Q88sJsXrojUpTy+ePy1zTSgv4Q==
X-Google-Smtp-Source: ABdhPJzoBZMmsSD6ztdMvt5juS04ZdEQi35jGlbPEby6MJaVuXCnGNXgqWHtQvmCP6Ssf+r4FgiM4Q==
X-Received: by 2002:adf:de8f:: with SMTP id w15mr17787801wrl.277.1631003975036; 
 Tue, 07 Sep 2021 01:39:35 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6141-3317-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6141:3317:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id m186sm1737027wme.48.2021.09.07.01.39.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Sep 2021 01:39:34 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: 
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH 3/4] dt-bindings: phy: Add binding for Mediatek MT8195 HDMI PHY
Date: Tue,  7 Sep 2021 10:37:20 +0200
Message-Id: <20210907083723.7725-4-granquet@baylibre.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210907083723.7725-1-granquet@baylibre.com>
References: <20210907083723.7725-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_013936_341582_A3A1AFC7 
X-CRM114-Status: GOOD (  14.87  )
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
 .../phy/mediatek,mtk8195-hdmi-phy.yaml        | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mtk8195-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mtk8195-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mtk8195-hdmi-phy.yaml
new file mode 100644
index 000000000000..f03bd3af7fd8
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,mtk8195-hdmi-phy.yaml
@@ -0,0 +1,71 @@
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
+    #include <dt-bindings/clock/mt8195-clk.h>
+    hdmi_phy: hdmi-phy@11d5f000 {
+        compatible = "mediatek,mt8195-hdmi-phy";
+        reg = <0 0x11d5f000 0 0x100>;
+        clocks = <&topckgen CLK_TOP_HDMI_XTAL>;
+        clock-names = "hdmi_xtal_sel";
+        clock-output-names = "hdmi_txpll";
+        #clock-cells = <0>;
+        #phy-cells = <0>;
+    };
+
+...
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
