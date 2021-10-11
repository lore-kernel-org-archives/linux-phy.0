Return-Path: <SRS0=o6wI=O7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B098C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 09:53:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0805960F22
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 09:53:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0805960F22
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUgPRKNzakk2g9A6ZOUjUSlkn8pVc16n3c71U8o8LSo=; b=tzOx7SzsPaWuYP
	rESA1aCjFMNQEi683RrRCg0Q4r5Zg6NQD+Dx3yiNPI9LkSKgbk1eVj3m8MnpU+3AuvB0UBQluTcG9
	Lqj8Ub/im0H6HB4RSrj5IKmvitFq718n5mQyOIV+oFt354iptoorgCGntbNCE7DoW4E88fCbUxwCY
	Q0EW/GaeH4uOy4n35Ik8f57mXwGfNSAf0+bDi02GQdcUMwki5+LbCR/D8Q70KU1G6UIyWpF7+zUDo
	BtJXQIA90rP/Ynpnu+3mpz4Q1Av9PEjygwvHB1mxM0wD2YEEdyWKMHW2T0OG7LQH+ZKd7KaHKi4iH
	vXCTa5YCZyWUyg8f4Fbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZs04-008fcr-8I; Mon, 11 Oct 2021 09:53:40 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZrtB-008cNH-6I
 for linux-phy@lists.infradead.org; Mon, 11 Oct 2021 09:46:39 +0000
Received: by mail-wr1-x430.google.com with SMTP id e12so54178522wra.4
 for <linux-phy@lists.infradead.org>; Mon, 11 Oct 2021 02:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2EEEytKyiHl9MpK92vctIYCtuI6jVdoVhBUl4pU7DhM=;
 b=7QmUw9oUjeAXQ+N4EGb7qUEi7igSPAWW7qJ42AeU3ZI8za+ANUSgJh3Xv1hfT4IXT4
 5pP/KUCQYJF543uBLE2kDaMGxjkLyDn21Okir7Q/O2tQNWdvFDAL7tWKk9ixihm6ie/a
 +uwsStaPyh2DbVnn5FzFE4YxYAWNEPMIr/Drr+o/UICJVlo0iCDp5v8RlF1tmCn2I/Ip
 y6fXyfIpliplrJrnSwG+NcGHbn53x9L8YBCygcwEBpFEFOKyC3/SB9BjmjSEt49Nm04h
 27vxc9r7BRfhAKVy3QeJcYBv2TD7KksKYwcweVu0iffHTIh0nHTMZEgFOQg1bIqCh2f7
 5ysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2EEEytKyiHl9MpK92vctIYCtuI6jVdoVhBUl4pU7DhM=;
 b=KWVstwIEqsNlCGenVKz1A016bwjSk98WxakwDOl4Ehbwc6VjIUHf9/d7MaCkKTfzTZ
 3qougXQgClZw0UP5sc/RURD5qHG6SYpxaMUSoLV2PuuQUuRhUNij/nuvJ6crO6Wnxzfe
 vEENJEb41hL3YDKGchYUAvFl4HYeIG2RpO+04TebHbrIle06E9lOBzkWhX+NbPSbbfOC
 ioB0v8FH8kk2KKeoGifw1W5hohSU8YooFeIPk8s1Eh1XFPaNln5XSirqGqYzfuIm5JES
 QVzbnPpxPhqMSZfZd53M8Bqy+NntrcDJ/NOvWFutQP2TZcSjQz1rvfhMANgbddryvX/w
 OIbQ==
X-Gm-Message-State: AOAM5303NuT3Dxc7bNHjt4ki6Lsg2g4JpfLaphE4zlvgqyqha4DuDoXt
 RACEVmylO4TQX6xn/rqpog6nrw==
X-Google-Smtp-Source: ABdhPJy49jJmzwFQTvOOSCXErrx4sl47Ylj9R8HPx2KuflIOgsK25MWAhOfYiIYYCyLv+vTPAMKitg==
X-Received: by 2002:a05:6000:1689:: with SMTP id
 y9mr23685780wrd.52.1633945591821; 
 Mon, 11 Oct 2021 02:46:31 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
 by smtp.gmail.com with ESMTPSA id o8sm21349291wme.38.2021.10.11.02.46.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 02:46:31 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v4 2/7] dt-bindings: mediatek,dp: Add Display Port binding
Date: Mon, 11 Oct 2021 11:46:19 +0200
Message-Id: <20211011094624.3416029-3-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211011094624.3416029-1-msp@baylibre.com>
References: <20211011094624.3416029-1-msp@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_024633_350125_6BBB5B61 
X-CRM114-Status: GOOD (  11.55  )
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

This controller is present on several mediatek hardware. Currently
mt8195 and mt8395 have this controller without a functional difference,
so only one compatible field is added.

The controller can have two forms, as a normal display port and as an
embedded display port.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 .../display/mediatek/mediatek,dp.yaml         | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
new file mode 100644
index 000000000000..f7a35962c23b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,dp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek Display Port Controller
+
+maintainers:
+  - CK Hu <ck.hu@mediatek.com>
+  - Jitao shi <jitao.shi@mediatek.com>
+
+description: |
+  Device tree bindings for the Mediatek (embedded) Display Port controller
+  present on some Mediatek SoCs.
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8195-edp_tx
+      - mediatek,mt8195-dp_tx
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: faxi clock
+
+  clock-names:
+    items:
+      - const: faxi
+
+  power-domains:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Input endpoint of the controller, usually dp_intf
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output endpoint of the controller
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/mt8195-power.h>
+    dp_tx: edp_tx@1c500000 {
+        compatible = "mediatek,mt8195-edp_tx";
+        reg = <0 0x1c500000 0 0x8000>;
+        interrupts = <GIC_SPI 676 IRQ_TYPE_LEVEL_HIGH 0>;
+        power-domains = <&spm MT8195_POWER_DOMAIN_EPD_TX>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&edp_pin>;
+        status = "okay";
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                edp_in: endpoint {
+                    remote-endpoint = <&dp_intf0_out>;
+                };
+            };
+            port@1 {
+                reg = <1>;
+                edp_out: endpoint {
+                	remote-endpoint = <&panel_in>;
+                };
+            };
+        };
+    };
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
