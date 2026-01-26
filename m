Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D00B0D74EF7
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jan 2026 09:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBwDVtHAQchjDmAsvLUag+xfKSrmMqC8SvyT5miW2IQ=; b=Ky+dOpE4Ua1JRX
	U7CDKtTfHNPm1I8bSGIPFGnfFnInZgR+PnPwR+OEFmnlKT5zzzKpM74QY9Zk21dW17tUAMEdfAt5I
	COyOfudvg6ryNttk3CmOWdgKPwyIEuS3HXdBk+EEXFEtb+kb3hJdxARMsxw8LSJocpcg3H6xluwhW
	USw6jahC+66xs1CA23IZu5/IcvlJeZRu2g9Cq5NeGYuFxWtNz/eKd4sH105hsNe08yOF5zzvGQQra
	lO0d7zinXsXlEwPQfZJ2rOrYzwb32H5o+FJwBxKvXt29ps+sny004f6RKtxpim9C7oMQ6aTnJVA9f
	I52A7LRp7C1QYQE0wDuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkInP-0000000CBAV-207G;
	Mon, 26 Jan 2026 09:22:07 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkInM-0000000CB8P-3VZu
	for linux-phy@lists.infradead.org;
	Mon, 26 Jan 2026 09:22:06 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-48049955f7fso35991405e9.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 01:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769419323; x=1770024123; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3Z4Yd2fRXfRsRi8a3YRl2niiXC4DwI7ABHuLbV15ig=;
        b=lInwwxNBArTa/klPr/Ay9n1c6M03hYwXomvgw0PjLvMkLXDHXuRQwZ7mmq00zQNMeQ
         M0dGhwU9vYj9GuDLvK8KNvz1lTsmIXhVLVulSy9cx81nwZ1braKpXSIuCn5nzH7a+FjA
         ltuBZcq84mwlUGDapOwhgF6HTSuSF7dDaYjJgfY1MZVn/q06BSgUZgFR9IZsBCErbf/5
         F5WWc1U698MOVrtmVxNs7+P9nOOFdrPUImKXBpglV4G+a4zXw7B8tlI0LPR44NR33JtV
         gB+d5Es4iEZXDR3d6sKG3lMZXC4R6KpWt4XW2+tCUy6eF8gHgQ2g6QGJzX92gcxyLkV0
         Eg4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769419323; x=1770024123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j3Z4Yd2fRXfRsRi8a3YRl2niiXC4DwI7ABHuLbV15ig=;
        b=XnOosrQPG0CMGS1BYDo0zswu9gMK17UWKTsGNhsz54fpjtvMbvoFuM1vrP7SV1WEQH
         0ynemRggMuE0zwgK9vm7J4fpzxzDyvDCN0T39lAr6yTGQZeHR0smsswM9R5n1MIlCYvt
         WPFZYsZ8b3+Kvweu8i+2S4NH1yOvV1A4k9iCrg0fluQuYZdRZuUFJgBs6BZ9ryeKJoXb
         gKZ6kDT94yNrsJl9o3xzQax/nUfB5H/FSc1agYwTjudDPtkxdTTi1CNqKWJCdHr/6LXy
         ksedkro2ycZ1nKCD72kuw1Lyo8YWXkkUTUY27YE7NHr4EK+kNRX0VE1GJW3PuHToXHMr
         +Fkw==
X-Forwarded-Encrypted: i=1; AJvYcCXHQ4IaCsxhkQArPSiD2EIx0ZJxwRn3t0WpKcDt8FHM2i+gRxp/ICy968U4CVgzfTEh/Kv13OwcRAg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwW5zCpANbLkxBU9YMTRifEqHj7DApSZarrxL2XmxNH9fpsYfqX
	L4sw7Qv0stafNEbnxIsIFgz0lf+58j5/5dVdfzJyfHkGaNdnuH/mqvhL3UmKXCmpxq4=
X-Gm-Gg: AZuq6aLfI5sKKgi4Nl99GWwSTksS02WB7ik40iXfYErtfvkz9iuWOZ1wclgJ2MXXGwT
	RMqpKmjQpIEZU2hedODCtyUzNJstTnL1GCnajeJmL+jJpuZYWdTm5A1hPpb0xpiaTNxEVzvSRrW
	Ia40rZLfnosXxOJJ8n0NJUDHEVMU7HH1jr0dzT0RCgdxioDpSxhLp805+ksvkjKnk7pJ7qhlrsC
	7gfoWpTB6yaFPddbM1+8bcDqdjp/qYoToOQmEq/MjrFhQJ4xbxh6h2iAAQWHGvX0PpWfB85BnKR
	u//71rZ5rqdCvp/vm3LeMr6fwkfyv3pqSIeYBJphPhv+AXRs+9sNKkmzmhnOBsszX6e5Dk719C1
	xb3XOeWBr/A3vVbuzlU+bA8dOO7Mr0L+A8tBiM2nMnAPmLvotWILiTwMZhlDg7VNo2C+0E9LB3R
	7yVB1eO5boh1xMJRrHFec=
X-Received: by 2002:a05:600c:3ba8:b0:47d:264e:b435 with SMTP id 5b1f17b1804b1-4805cf5ecb7mr68589285e9.22.1769419322750;
        Mon, 26 Jan 2026 01:22:02 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:e270:a43a:f2fa:900a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-480470cf1acsm346669855e9.14.2026.01.26.01.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 01:22:01 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ciprianmarian.costea@oss.nxp.com,
	s32@nxp.com,
	p.zabel@pengutronix.de,
	linux@armlinux.org.uk,
	ghennadi.procopciuc@nxp.com,
	bogdan-gabriel.roman@nxp.com,
	Ionut.Vicovan@nxp.com,
	alexandru-catalin.ionita@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org
Cc: Frank.li@nxp.com
Subject: [PATCH 1/4] dt-bindings: serdes: s32g: Add NXP serdes subsystem
Date: Mon, 26 Jan 2026 10:21:56 +0100
Message-ID: <20260126092159.815968-2-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260126092159.815968-1-vincent.guittot@linaro.org>
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_012204_900952_AECC0BB1 
X-CRM114-Status: GOOD (  12.81  )
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

Describe the serdes subsystem available on the S32G platforms.

Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 .../bindings/phy/nxp,s32g-serdes.yaml         | 154 ++++++++++++++++++
 1 file changed, 154 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
new file mode 100644
index 000000000000..fad34bee2a4f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
@@ -0,0 +1,154 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nxp,s32g-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP S32G2xxx/S32G3xxx SerDes PHY subsystem
+
+maintainers:
+  - Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
+
+description: |
+  The SerDes subsystem on S32G SoC Family includes two types of PHYs:
+    - One PCIe PHY: Supports various PCIe operation modes
+    - Two Ethernet Physical Coding Sublayer (XPCS) controllers
+
+  SerDes operation mode selects the enabled PHYs and speeds. Clock frequency
+  must be adapted accordingly. Below table describes all possible operation
+  modes.
+
+  Mode  PCIe	XPCS0		XPCS1		PHY clock	Description
+                SGMII		SGMII		  (MHz)
+  -------------------------------------------------------------------------
+  0	Gen3	N/A		N/A		100		Single PCIe
+  1	Gen2	1.25Gbps	N/A		100		PCIe/SGMII
+  2	Gen2	N/A		1.25Gbps	100		PCIe/SGMII
+  3	N/A	1.25Gbps	1.25Gbps	100,125		SGMII
+  4	N/A	3.125/1.25Gbps	3.125/1.25Gbps 	125		SGMII
+  5	Gen2	N/A	        3.125Gbps     	100		PCIe/SGMII
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - nxp,s32g2-serdes
+      - items:
+          - const: nxp,s32g3-serdes
+          - const: nxp,s32g2-serdes
+
+  reg:
+    maxItems: 4
+
+  reg-names:
+    items:
+      - const: ss_pcie
+      - const: pcie_phy
+      - const: xpcs0
+      - const: xpcs1
+
+  clocks:
+    minItems: 4
+    maxItems: 5
+
+  clock-names:
+    items:
+      - const: axi
+      - const: aux
+      - const: apb
+      - const: ref
+      - const: ext
+    minItems: 4
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: serdes
+      - const: pcie
+
+  nxp,sys-mode:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      SerDes operational mode. See above table for possible values.
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  '^serdes[0,1]_lane@[0,1]$':
+    description:
+      Describe a serdes lane.
+    type: object
+
+    properties:
+      compatible:
+        enum:
+          - nxp,s32g2-serdes-pcie-phy
+          - nxp,s32g2-serdes-xpcs
+
+      reg:
+        maxItems: 1
+
+      '#phy-cells':
+        const: 0
+
+    required:
+      - reg
+      - compatible
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - nxp,sys-mode
+  - '#address-cells'
+  - '#size-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        serdes0: serdes@40480000 {
+          compatible = "nxp,s32g3-serdes", "nxp,s32g2-serdes";
+            reg = <0x0 0x40480000 0x0 0x108>,
+                  <0x0 0x40483008 0x0 0x10>,
+                  <0x0 0x40482000 0x0 0x800>,
+                  <0x0 0x40482800 0x0 0x800>;
+            reg-names = "ss_pcie", "pcie_phy", "xpcs0", "xpcs1";
+            clocks = <&clks 1>,
+                     <&clks 2>,
+                     <&clks 3>,
+                     <&clks 4>,
+                     <&serdes_100_ext>;
+            clock-names = "axi", "aux", "apb", "ref", "ext";
+            resets = <&reset 9>,
+                     <&reset 8>;
+            reset-names = "serdes", "pcie";
+            nxp,sys-mode = <1>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            phy_pcie0: serdes0_lane@0 {
+              compatible = "nxp,s32g2-serdes-pcie-phy";
+              #phy-cells = <0>;
+              reg = <0>;
+            };
+            phy_xpcs0_0: serdes0_lane@1 {
+              compatible = "nxp,s32g2-serdes-xpcs";
+              reg = <0>;
+            };
+        };
+    };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
