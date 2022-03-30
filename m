Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9381AC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 05:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96BqCbRYiW/3ffPDLFP+pPRkC4pe7maxIUW2U0hhO54=; b=y53fmd1ChQJduM
	A81OlSfas7MTylMQa8dm4oEe8TEfX2C/lnuYy3bW+bhOwQyMPizzoCsFR8EvBXyWMbTYAbxnLEkiE
	z1gahoDwu8FPaqbbcSveTeMF8sKDltOF9WSuIBLwU5sGRFr53vsOYayg0JMCTVorLuL19x8ZPkM3E
	2OhRle6dlueyj57sHH1JASpON0lJ6jXbfcgWMx7BpzP0Mbj2847OZ5iG+CMJO0n5cs9/yTsD7iRuC
	8FBCRkA9LF6laqTfydHbpxs0+XSb2lstaQLE6VRRHnr7W8hC0oGW3xUIC3QD+3Q/C5F4WpQ7soR34
	oDsGt3aDTj4lIIM9G9xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZQdm-00EEyg-0k; Wed, 30 Mar 2022 05:13:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZQdh-00EExF-Rj; Wed, 30 Mar 2022 05:13:04 +0000
X-UUID: 7d0b3bf71e114cf48dbc0d600caf40e3-20220329
X-UUID: 7d0b3bf71e114cf48dbc0d600caf40e3-20220329
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 353334105; Tue, 29 Mar 2022 22:12:21 -0700
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 29 Mar 2022 22:12:19 -0700
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 30 Mar 2022 13:12:17 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 30 Mar 2022 13:12:17 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: <granquet@baylibre.com>
CC: <airlied@linux.ie>, <angelogioacchino.delregno@collabora.com>,
 <chunfeng.yun@mediatek.com>, <chunkuang.hu@kernel.org>, <ck.hu@mediatek.com>, 
 <daniel@ffwll.ch>, <deller@gmx.de>, <devicetree@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <jitao.shi@mediatek.com>, <kishon@ti.com>, 
 <krzk+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-fbdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-mediatek@lists.infradead.org>, <linux-phy@lists.infradead.org>,
 <maarten.lankhorst@linux.intel.com>, <markyacoub@google.com>,
 <matthias.bgg@gmail.com>, <mripard@kernel.org>, <p.zabel@pengutronix.de>,
 <robh+dt@kernel.org>, <tzimmermann@suse.de>, <vkoul@kernel.org>
Subject: Re: [PATCH v9 03/22] dt-bindings: mediatek,
 dp_phy: Add Display Port PHY binding
Date: Wed, 30 Mar 2022 13:12:17 +0800
Message-ID: <20220330051217.19789-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20220327223927.20848-4-granquet@baylibre.com>
References: <20220327223927.20848-4-granquet@baylibre.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_221301_912887_FC84BE6D 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
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

>This phy controller is embedded in the Display Port Controller on mt8195 SoCs.
>
>Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>---
> .../bindings/phy/mediatek,dp-phy.yaml         | 43 +++++++++++++++++++
> 1 file changed, 43 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/phy/mediatek,dp-phy.yaml
>
>diff --git a/Documentation/devicetree/bindings/phy/mediatek,dp-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,dp-phy.yaml
>new file mode 100644
>index 000000000000..1f5ffca4e140
>--- /dev/null
>+++ b/Documentation/devicetree/bindings/phy/mediatek,dp-phy.yaml
>@@ -0,0 +1,43 @@
>+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>+# Copyright (c) 2022 MediaTek
>+%YAML 1.2
>+---
>+$id: http://devicetree.org/schemas/phy/mediatek,dp-phy.yaml#
>+$schema: http://devicetree.org/meta-schemas/core.yaml#
>+
>+title: MediaTek Display Port PHY
>+
>+maintainers:
>+  - CK Hu <ck.hu@mediatek.com>
>+  - Jitao shi <jitao.shi@mediatek.com>
>+
>+description: |
>+  Device tree bindings for the Mediatek (embedded) Display Port PHY

s/Mediatek/MediaTek/

>+  present on some Mediatek SoCs.

s/Mediatek/MediaTek/

>+
>+properties:
>+  compatible:
>+    enum:
>+      - mediatek,mt8195-dp-phy
>+
>+  mediatek,dp-syscon:
>+    $ref: /schemas/types.yaml#/definitions/phandle
>+    description: Phandle to the Display Port node.
>+
>+  "#phy-cells":
>+    const: 0
>+
>+required:
>+  - compatible
>+  - mediatek,dp-syscon
>+  - "#phy-cells"
>+
>+additionalProperties: false
>+
>+examples:
>+  - |
>+    dp_phy: dp-phy {
>+      compatible = "mediatek,mt8195-dp-phy";
>+      mediatek,dp-syscon = <&dp_tx>;
>+      #phy-cells = <0>;
>+    };
>-- 
>2.34.1
>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
