Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B22D3C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 05:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9X+crEIvwDJ65oFd/tftFFPn+8ojMZkMDYarfYsbDI=; b=sOw/VHMgDDnEJg
	xGVclxXje/Gj1RM0S8nvvspAv3PZ7+/H2VcU5oMz1uqvPDiX1c38u3ExIFJ0yIWAwr50YAVw/cFxN
	Vz7OLZsNyv9unpo6IPPo+4OPQ9d9zZdBroZ9ZZpJtp7O7q7Qfh0orsb/kmToZbR6y8OoKVaCsnbj3
	hn6tMbC34NcriQQ0j51TvgmQa5kP3so/rAOz2ImKPN0moY376DeR/K3/duuArD5Ymmx3CRjhGojoc
	EYmrz+SJ/1SYuLERwm1NFr2UBsoKREpHXSPC/Ual2IntiFaOG8KlZQkahySsPU13GIZQWLhKaz0Z3
	ZA301c17xdltf8G0I09g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZQnC-00EIKX-TH; Wed, 30 Mar 2022 05:22:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZQmd-00EI0F-Ly; Wed, 30 Mar 2022 05:22:17 +0000
X-UUID: 5eb99a1faaf14d179bd0d03efb182068-20220329
X-UUID: 5eb99a1faaf14d179bd0d03efb182068-20220329
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 1820507464; Tue, 29 Mar 2022 22:22:12 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 29 Mar 2022 22:12:09 -0700
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.792.3; 
 Wed, 30 Mar 2022 13:12:02 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 30 Mar 2022 13:12:02 +0800
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
 <matthias.bgg@gmail.com>, <mripard@kernel.org>, <msp@baylibre.com>,
 <p.zabel@pengutronix.de>, <robh+dt@kernel.org>, <tzimmermann@suse.de>,
 <vkoul@kernel.org>
Subject: Re: [PATCH v9 02/22] dt-bindings: mediatek,
 dp: Add Display Port binding
Date: Wed, 30 Mar 2022 13:12:02 +0800
Message-ID: <20220330051202.19594-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20220327223927.20848-3-granquet@baylibre.com>
References: <20220327223927.20848-3-granquet@baylibre.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_222215_776964_B047C8E7 
X-CRM114-Status: UNSURE (   7.94  )
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

>This controller is present on several mediatek hardware. Currently
>mt8195 and mt8395 have this controller without a functional difference,
>so only one compatible field is added.
>
>The controller can have two forms, as a normal display port and as an
>embedded display port.
>
>Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>---
> .../display/mediatek/mediatek,dp.yaml         | 100 ++++++++++++++++++
> 1 file changed, 100 insertions(+)
> create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
>
>diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
>new file mode 100644
>index 000000000000..802cc406c72b
>--- /dev/null
>+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
>@@ -0,0 +1,100 @@
>+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>+%YAML 1.2
>+---
>+$id: http://devicetree.org/schemas/display/mediatek/mediatek,dp.yaml#
>+$schema: http://devicetree.org/meta-schemas/core.yaml#
>+
>+title: Mediatek Display Port Controller

s/Mediatek/MediaTek/

>+
>+maintainers:
>+  - CK Hu <ck.hu@mediatek.com>
>+  - Jitao shi <jitao.shi@mediatek.com>
>+
>+description: |
>+  Device tree bindings for the Mediatek (embedded) Display Port controller

s/Mediatek/MediaTek/

>+  present on some Mediatek SoCs.

s/Mediatek/MediaTek/

>+
>+properties:
>+  compatible:
>+    items:
>+      - const: mediatek,mt8195-dp-tx
>+      - const: syscon
>+
>+  reg:
>+    maxItems: 1
>+
>+  interrupts:
>+    maxItems: 1
>+
>+  clocks:
>+    items:
>+      - description: faxi clock
>+
>+  clock-names:
>+    items:
>+      - const: faxi
>+
>+  phys:
>+    maxItems: 1
>+
>+  phy-names:
>+    items:
>+      - const: dp
>+
>+  power-domains:
>+    maxItems: 1
>+
>+  ports:
>+    $ref: /schemas/graph.yaml#/properties/ports
>+    properties:
>+      port@0:
>+        $ref: /schemas/graph.yaml#/properties/port
>+        description: Input endpoint of the controller, usually dp_intf
>+
>+      port@1:
>+        $ref: /schemas/graph.yaml#/properties/port
>+        description: Output endpoint of the controller
>+
>+    required:
>+      - port@0
>+
>+required:
>+  - compatible
>+  - reg
>+  - interrupts
>+  - ports
>+
>+additionalProperties: false
>+
>+examples:
>+  - |
>+    #include <dt-bindings/interrupt-controller/arm-gic.h>
>+    #include <dt-bindings/power/mt8195-power.h>
>+    edp_tx: edisplay-port-tx@1c500000 {
>+        compatible = "mediatek,mt8195-dp-tx","syscon";
>+        reg = <0 0x1c500000 0 0x8000>;
>+        interrupts = <GIC_SPI 676 IRQ_TYPE_LEVEL_HIGH 0>;
>+        power-domains = <&spm MT8195_POWER_DOMAIN_EPD_TX>;
>+        pinctrl-names = "default";
>+        pinctrl-0 = <&edp_pin>;
>+        phys = <&dp_phy>;
>+        phy-names = "dp";
>+
>+        ports {
>+            #address-cells = <1>;
>+            #size-cells = <0>;
>+
>+            port@0 {
>+                reg = <0>;
>+                edp_in: endpoint {
>+                    remote-endpoint = <&dp_intf0_out>;
>+                };
>+            };
>+            port@1 {
>+                reg = <1>;
>+                edp_out: endpoint {
>+                    remote-endpoint = <&panel_in>;
>+                };
>+            };
>+        };
>+    };
>-- 
>2.34.1
>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
