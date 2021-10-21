Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBC38C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 09:27:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF3FE610EA
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 09:27:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AF3FE610EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPLUIvd7i52faIgxJsz5gfFIoiIajt2EHdj8+q31098=; b=QWSHV74BWw4Mlg
	rm27w8HNmA4fzZO1WykbbIaF+0CxxSh1b5RikOx0Ha8y3yt6MICoSCMQ1nJw6v/14J0djnMP6IWGo
	4IXpCU5B/yxJvatr9p35+JrBMKBX7YlBd5X/LF5FZPpr9b5POIHFXPmzUSO1BZ6zq4ReCjbuA+t3k
	g9XS35ITZ9s7UxhjxGiFS3WKijl1VSfJ9Y69LDh/VZ9+e/qDzYzjlsXxERpDkTBoDVD5QwcMPC5av
	Ohvyq3wa9q6Ssl9SgRI6UQvgJHPrm/nLlC8GBsaDlqufWZk0fFxa6uKDuv2CN8MCsgHXAlSd7hsOI
	cLiOYOHz+uiFhCXTB87Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdUMf-00715o-7y; Thu, 21 Oct 2021 09:27:57 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdUMC-0070qk-NR
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 09:27:32 +0000
Received: by mail-wm1-x331.google.com with SMTP id v127so22230716wme.5
 for <linux-phy@lists.infradead.org>; Thu, 21 Oct 2021 02:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YHEDIhS7d+5sM1yG3p7LLvTgb3WIu2jXt+RBb0xlASQ=;
 b=suBCQYcolAMiamEKklNw9fxTBgPAmFMotspeeFnbt+Z4XGzKvJt4sQZTa3p8/ni6eW
 BOJtY3MahjWyuYgmfFedP95W7Q/cgesyiXY1FuEy1Q3NLPfegO1Z3xPg7fRBmvYRUelk
 bpphtoRk5KCu8Kuxd8Ic2X+FU1eUli9eE1cdV4p1viwyYP8iQM2pTjxcYmVhnDx9Ngh9
 d1rPcAmMAmymRTglNqcSWXNfewgtwPgLwsHqeQGjFeiMTmrWnXfwIZO0cvBTmi8xaM30
 NT1ie9sFJ8p/qNBUK2Ae6eiiNbFy4eNSHJTgB+qA6sOUNKOCFPUaYqXpOGyIG2Jj693n
 FAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YHEDIhS7d+5sM1yG3p7LLvTgb3WIu2jXt+RBb0xlASQ=;
 b=VEYec6rtX4rCRopigvCPdzRy8eS1DoRZeEhJty3YU27HqwNYPsWW867Vkbz6hbRjF0
 cBvRMrebr5rNLmyBWYbYu/h8weVgXL5IXufT3nybPtXVgVrOqF08UJfhnbAOmifMikkX
 DYV5sl+QnR4Z83NLiO64tMD3y9+wmArCuAs6dzVuf7fJx3eHvqaTKXf53M782Lrme4Kb
 Ot8tbR0jLHFbbaTgG0zDfaEeUQRpQTcPWh7g4D3DYZ/UpOeKCMnkS3kpeEi5B/nuHPQR
 2702iVrKRyik3xybNE3BP2lA35DYTwBqimUvEWWr8oGN/+kW1ect6hxnTzxoqwJDhQhy
 DRww==
X-Gm-Message-State: AOAM531HkUepbSM43uYXtnDyGfffOC3DohdGgaQ8EjDVMRxdYX8Zeved
 qp5JYEx4kzEob3XN8sqHfswg+A==
X-Google-Smtp-Source: ABdhPJxsU39aMKJTYEdpIYWuk95pmYltvZ1+5U+rjQtV/hGfMNChjMIVWlwgXwnzaSYjbMJbH9LKrg==
X-Received: by 2002:a7b:c76b:: with SMTP id x11mr5445941wmk.83.1634808446897; 
 Thu, 21 Oct 2021 02:27:26 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
 by smtp.gmail.com with ESMTPSA id d3sm4538468wrb.36.2021.10.21.02.27.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 02:27:26 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v5 2/7] dt-bindings: mediatek,dp: Add Display Port binding
Date: Thu, 21 Oct 2021 11:27:02 +0200
Message-Id: <20211021092707.3562523-3-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211021092707.3562523-1-msp@baylibre.com>
References: <20211021092707.3562523-1-msp@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_022728_814945_8BA00795 
X-CRM114-Status: GOOD (  11.93  )
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

Notes:
    Changes v4 -> v5:
    - Removed "status" in the example
    - Remove edp_tx compatible.
    - Rename dp_tx compatible to dp-tx.

 .../display/mediatek/mediatek,dp.yaml         | 87 +++++++++++++++++++
 1 file changed, 87 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
new file mode 100644
index 000000000000..068b11d766e2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
@@ -0,0 +1,87 @@
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
+      - mediatek,mt8195-dp-tx
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
+    edp_tx: edp_tx@1c500000 {
+        compatible = "mediatek,mt8195-dp-tx";
+        reg = <0 0x1c500000 0 0x8000>;
+        interrupts = <GIC_SPI 676 IRQ_TYPE_LEVEL_HIGH 0>;
+        power-domains = <&spm MT8195_POWER_DOMAIN_EPD_TX>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&edp_pin>;
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
