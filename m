Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02926C48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:25:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B477160FDA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 07:25:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B477160FDA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4c0mrwt7gXCnBeUayBpkWmhsi0I0xHnOiLkLLQAGnc=; b=vF8x5MIumEB2la
	6MMB+ffjmqN2hcZ4LCPofecRgrV9G2b8aaYDvPTMoHY68qg3HUYOe62lnI3xnfcWIa0QnnkuqhzjX
	PsMQH0VvAB7D/eYenoNqC2+bZriZK2AH59d2mFjcDcU//+56Iz8r9PoZ/cqr/BFzOf3lLveNqc+s6
	S5P/T+u3N0KKmGROoyseLPhrQ7iENm8PeSaMex/UD7bAd7sYNSa7p0v+QsGrbSSF41EhDMdSsjkPE
	XXCc7wtm7Ll2XNWxER22rxwgwoMnkWubUg6gmtG5YSgX3fM+1JLpXmelobniybpgXG+XKvTgSD+g7
	f6NOzXUaAclcSE0bovvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvEIs-002TrV-4i; Mon, 21 Jun 2021 07:25:06 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEIZ-002Tjr-IG
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 07:24:49 +0000
Received: by mail-pj1-x1029.google.com with SMTP id
 22-20020a17090a0c16b0290164a5354ad0so12035192pjs.2
 for <linux-phy@lists.infradead.org>; Mon, 21 Jun 2021 00:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aJX1UFosdGgtQiivB9jicucdS1I6wv967TxVmwHSdxs=;
 b=V71Ch/PoqunpqXNk2/DoavvTbggIYZldcnabdHtFy1UiLBMjHIrOmIoMNQxCaDTm5c
 +3KxqNIZZO+knQOcz1JRXGFCJJ438OjCADQ9pTf4aNCbVuVny8KyLPLlAqTazVySGaN/
 EwK0UGohgNug02bYbuADf0FVuQWHASoWe/MjM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aJX1UFosdGgtQiivB9jicucdS1I6wv967TxVmwHSdxs=;
 b=OnCOm3t/nb9U3JNzs/qYWlRTGRstC4h4YmnE5dEd9MR2CuxFwC1NrQ+UMtmK2VURtj
 mOIZ3Tan2IItd86A04wN8+CcGUwPI9mZ9yrp6l3nLqLqTMHfPOAXZD1d0ZA+5dxhG1tT
 +XmU26ClRYUKPcaBsMi7l16dG/p35+9bzrv9qZDwXNnm0/oqxlCej40i7KtFxK4CdchV
 dkPaNCmO4Nuflt8hYGw2oyLyLv9kalqxQPXoAwTL/g1K0oDqDEJOW1E7tEPKf/Mxqs3x
 +emmPCY8ghKE1EQ/jhujYD3GFWAjA06GJzH86On+Uq9wlnqi2rs58r02AYjP/DwDt88H
 t3gA==
X-Gm-Message-State: AOAM530LeeiAXjtaf8Y4VgelKcXaEKexclyxE+vHeBixTLu6+dbeIIV8
 G+/fiL5fJDUEJZ0Qg3qHkmB7TA==
X-Google-Smtp-Source: ABdhPJwU1bWmmohuzHzeMlHexUvRRwFgo3iijG24rag/pcc6xo/yhAOBfU/HkQeeafJbe9suXTD2cA==
X-Received: by 2002:a17:90a:17ad:: with SMTP id
 q42mr37357200pja.181.1624260286358; 
 Mon, 21 Jun 2021 00:24:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a884:139:e97f:a55d:7f66])
 by smtp.gmail.com with ESMTPSA id
 21sm13951294pfh.103.2021.06.21.00.24.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 00:24:45 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Tomasz Figa <t.figa@samsung.com>,
 Fancy Fang <chen.fang@nxp.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 linux-amarula@amarulasolutions.com,
 Anthony Brandon <anthony@amarulasolutions.com>,
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>,
 Milco Pratesi <milco.pratesi@engicam.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [RFC PATCH 1/9] dt-bindings: display: bridge: Add Samsung SEC MIPI
 DSIM bindings
Date: Mon, 21 Jun 2021 12:54:16 +0530
Message-Id: <20210621072424.111733-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210621072424.111733-1-jagan@amarulasolutions.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_002447_644600_E84F4386 
X-CRM114-Status: GOOD (  14.94  )
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

Samsung SEC MIPI DSIM Bridge controller is MIPI DSI bridge
available in NXP's i.MX8M Mini and Nano Processors.

Add dt-bingings for it.

Cc: Andrzej Hajda <a.hajda@samsung.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Robert Foss <robert.foss@linaro.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../display/bridge/samsung,sec-dsim.yaml      | 184 ++++++++++++++++++
 1 file changed, 184 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
new file mode 100644
index 000000000000..32f67f313dfd
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
@@ -0,0 +1,184 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/samsung,sec-dsim.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung SEC MIPI DSIM Bridge controller on i.MX8M Mini and Nano SoCs
+
+maintainers:
+  - Jagan Teki <jagan@amarulasolutions.com>
+
+description: |
+  NWL MIPI-DSI host controller found on i.MX8 platforms. This is a dsi bridge for
+  the SOCs NWL MIPI-DSI host controller.
+
+allOf:
+  - $ref: ../dsi-controller.yaml#
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx8mm-sec-dsim
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  assigned-clock-parents: true
+  assigned-clock-rates: true
+  assigned-clocks: true
+
+  clocks:
+    items:
+      - description: DSI bus clock
+      - description: PHY_REF clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: phy_ref
+
+  phys:
+    maxItems: 1
+    description: phandle to the phy module representing the DPHY
+
+  phy-names:
+    items:
+      - const: dphy
+
+  power-domains:
+    maxItems: 1
+    description: phandle to the associated power domain
+
+  samsung,burst-clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      DSIM high speed burst mode frequency.
+
+  samsung,esc-clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      DSIM escape mode frequency.
+
+  samsung,pll-clock-frequency:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      DSIM oscillator clock frequency.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description:
+          Input port node to receive pixel data from the
+          display controller. Exactly one endpoint must be
+          specified.
+        properties:
+          endpoint@0:
+            $ref: /schemas/graph.yaml#/properties/endpoint
+            description: sub-node describing the input from LCDIF
+
+          endpoint@1:
+            $ref: /schemas/graph.yaml#/properties/endpoint
+            description: sub-node describing the input from DCSS
+
+        oneOf:
+          - required:
+              - endpoint@0
+          - required:
+              - endpoint@1
+
+        unevaluatedProperties: false
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          DSI output port node to the panel or the next bridge
+          in the chain
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - '#address-cells'
+  - '#size-cells'
+  - clock-names
+  - clocks
+  - compatible
+  - interrupts
+  - phy-names
+  - phys
+  - ports
+  - reg
+  - samsung,burst-clock-frequency
+  - samsung,esc-clock-frequency
+  - samsung,pll-clock-frequency
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mm-clock.h>
+    #include <dt-bindings/power/imx8mm-power.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    dsi: dsi@32e10000 {
+      compatible = "fsl,imx8mm-sec-dsim";
+      reg = <0x32e10000 0xa0>;
+      clocks = <&clk IMX8MM_CLK_DSI_CORE>,
+               <&clk IMX8MM_CLK_DSI_PHY_REF>;
+      clock-names = "bus", "phy_ref";
+      assigned-clocks = <&clk IMX8MM_CLK_DSI_CORE>,
+                        <&clk IMX8MM_VIDEO_PLL1_OUT>,
+                        <&clk IMX8MM_CLK_DSI_PHY_REF>;
+      assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_266M>,
+                               <&clk IMX8MM_VIDEO_PLL1_BYPASS>,
+                               <&clk IMX8MM_VIDEO_PLL1_OUT>;
+      assigned-clock-rates = <266000000>, <594000000>, <27000000>;
+      interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+      phys = <&dphy>;
+      phy-names = "dphy";
+      power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DSI>;
+      samsung,burst-clock-frequency = <891000000>;
+      samsung,esc-clock-frequency = <54000000>;
+      samsung,pll-clock-frequency = <27000000>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        port@0 {
+          reg = <0>;
+          #size-cells = <0>;
+          #address-cells = <1>;
+
+          dsi_in_lcdif: endpoint@0 {
+            reg = <0>;
+            remote-endpoint = <&lcdif_out_dsi>;
+          };
+        };
+
+        port@1 {
+          reg = <1>;
+
+          dsi_out_panel: endpoint {
+            remote-endpoint = <&panel_in_dsi>;
+          };
+        };
+      };
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
