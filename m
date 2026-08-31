Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03994C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cuaojZwWuR4Lv44gjm11BRzVYORNcqgWOp97agAk+h0=; b=Zd86Mc48wnm5VS
	EYxd+qL7END+esyDwsvx5LpC57Mc96LUhIHLQCkDhkXCKPaNfk92R18ICMjfU9fXAx8W90Y7Sw8gp
	K/J+gOEPS4Wg31gmG8SnEB5lohVuBZ9h/B8CkUJ4H0T9ppH/7OcKHoftKcqCrKvHXvPhe3XblW6bJ
	D+hor/IfbaRl/eoCJssE3dsU6u5Aoc6PEtU1NpjkieT20VXpgxs/xs8AlT5DnZp0BNxWGIZaz809O
	OBl36webPFjD2/cYOLdC6ZOS0BrFz+NwH2Q3Jf0X1g7acLPmzhPUjUyRDqGR3EfY+f2kuJbD8mayK
	hwlUFy3uIdLG5kJYplyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BNp-0000000AelV-336C;
	Mon, 31 Aug 2026 23:25:45 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1BNm-0000000Ael0-2YeX
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:25:44 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-398fb0feb91so168385a91.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788218742; x=1788823542; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=l6om3FeFy+vwSp6+A3N9tIRqD8PcybsChQtR5r/26Do=;
        b=D2/UlLG19b+NfFFQtPkUAmQ13MyWQJymMvD//JnrrFGDWAkHADLhgB+c7tpWr81UcV
         wX5kD75ikgC5e/XWsfZG+k0ac2ej1/eAYaDuSvd+TFAIAyR7mYQ5UvATJkc7lNbfzIJs
         W33IWfZUFAmzLzu5WO16irXodHv5X7ktlOs0ZOdQWqKOn+Gku4qXLu506JrWsTWSpz1m
         C2s42p2T7Q9PbT3sgO7zE5JmqIF8Pkqg72bQxPHdemtFEa7BItg91QI5iHKc8kts9g/D
         nF2mNfUloI9IjODrdFCRsM7Ce3/PEOO2FEYuKUtdI05fMoLWKk5eH58Va8/AKp1DWW5R
         HzAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788218742; x=1788823542;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=l6om3FeFy+vwSp6+A3N9tIRqD8PcybsChQtR5r/26Do=;
        b=Mu9VwbRNrsJzmpS4lZYDtUCmX7hKORf2mAoto9fAYoeiH3QPzN+SOx3ts2cM1OQK8G
         C0FBTUt5tPXMsBe8qlKHHVUtrct099WEgdoVDDDE+jE2I49gaUzwxaVL4h00zcyCQSWa
         4p6PdH0B8wnYqA+EDYKS6CoGsTim92r4Mq8bHgD0x0Pp0jZBun77Ry/a+MX3DF4PDame
         Qnv0nNDBO95HX09N4PXH4WUQTpHXOxvgkLox8qY+C6NnZtV55IiIb+7BksbIiYyDLq4j
         ZWd8EZyZto5VHQRXAIlblmw9m/TWkc8Lsu76Tdz7CTzHyPfqCcX/JedxJvdPAJaerJlo
         LoYg==
X-Forwarded-Encrypted: i=1; AKwUvBxw0d+TlVYv2IF4KDHfkGZV0ijH8hLgpcjJ2bZ25KZP5tkLoW1TF6bNHQjrKI1SZCYjTXelyv2qPDk=@lists.infradead.org
X-Gm-Message-State: AFuF++mYAvbFcQxuKfGF5UPhOJVUba+OTBQm65t3V1AvsLubTxMI2YzR
	qfeW+RPoV6Ojx+MNF2SUx/HDd0yaAPlw9tZGI+Bq30P+bIFRkn+0wgWc
X-Gm-Gg: AYBFou2MltlLMhZMgcjPk6uNkEi1/3bHnO+ZjW/fbFOqIXOnDG31phNKnRaJ/2Fm4y4
	W8mc5f7kaxnRzZziCowuPshwYdfS6MgoVxUJ4A5ID+RHDJIG5xx63xIEgafnLTSoEkUdScxmXcP
	Igzjo7le8hakQpe4E1kE5XZbybU9IRY9M752kKP8J+WQAr4pL5xDOiqaSw4nq7i6ZK0WVor9+YG
	0y5MYQjL6485G79NYPWaRye65qzjahG9hyM9AfF6dMZByf5ANhY8uH6lUmPwJqbkZHHTJwcFu37
	3QGFWMrVOPhx5bpRExEenZ/MCW1dnHUDlo6ApAwBLPKiKVIAT6Xlq00pFJt0WYxrXTSYZeoXtJg
	AzhgLxLlH/d1SLMZQJHQs7YIsfqqWzy57xs2RP7d7zvAZsu4nWA2J5JvF+FM5Ks0KQHZSeBLkjL
	YP7VpOp5fco3H+dQpze5yk6NIUEGSzweYHwjwHMCo/lNEV/7a4Iez45QPEL4oIJJh18BeD0q4=
X-Received: by 2002:a17:90a:e7cb:b0:398:bac0:238e with SMTP id 98e67ed59e1d1-398bac026b0mr15204624a91.6.1788218741556;
        Mon, 31 Aug 2026 16:25:41 -0700 (PDT)
Received: from [10.60.78.252] ([2409:40c2:5002:4362:354a:8f21:7ceb:c8a6])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3990d75fc49sm1963213a91.12.2026.08.31.16.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 16:25:41 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 01 Sep 2026 04:53:10 +0530
Subject: [PATCH v3 6/6] dt-bindings: usb: ti,da830-musb: Convert to DT
 schema
MIME-Version: 1.0
Message-Id: <20260901-ti-am33-usb-v3-6-5e15c617d2e9@gmail.com>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
In-Reply-To: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, Bin Liu <b-liu@ti.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788218595; l=5263;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=uM708j09j6nSOP7IiMsV0ytTgwnrzIZATjME+J7mX5E=;
 b=3rKnxP+0ubnqPfB1KGJfmvBJbDtMtM57d7hApu3Tc/BQkJgnnS2cvdQ9c2FKRUcp3mct7jCXb
 bSBnPJPSyxvANvstRgX8Nl2s+b9M+nb2iECTqjA9qQdy6JJ//qSvH5L
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_162543_001549_18941517 
X-CRM114-Status: GOOD (  15.57  )
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

Convert the TI DA8xx/OMAP-L1x MUSB text bindings to DT schema. Since
DA8xx MUSB node acts as a parent bus for the CPPI41 DMA controller add
required #address-cells, #size-cells, and ranges properties.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
 .../devicetree/bindings/usb/da8xx-usb.txt          |  69 -------------
 .../devicetree/bindings/usb/ti,da830-musb.yaml     | 113 +++++++++++++++++++++
 2 files changed, 113 insertions(+), 69 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/da8xx-usb.txt b/Documentation/devicetree/bindings/usb/da8xx-usb.txt
deleted file mode 100644
index 00320d92d3bb..000000000000
--- a/Documentation/devicetree/bindings/usb/da8xx-usb.txt
+++ /dev/null
@@ -1,69 +0,0 @@
-TI DA8xx MUSB
-~~~~~~~~~~~~~
-For DA8xx/OMAP-L1x/AM17xx/AM18xx platforms.
-
-Required properties:
-~~~~~~~~~~~~~~~~~~~~
- - compatible : Should be set to "ti,da830-musb".
-
- - reg: Offset and length of the USB controller register set.
-
- - interrupts: The USB interrupt number.
-
- - interrupt-names: Should be set to "mc".
-
- - dr_mode: The USB operation mode. Should be one of "host", "peripheral" or "otg".
-
- - phys: Phandle for the PHY device
-
- - phy-names: Should be "usb-phy"
-
- - dmas: specifies the dma channels
-
- - dma-names: specifies the names of the channels. Use "rxN" for receive
-   and "txN" for transmit endpoints. N specifies the endpoint number.
-
-Optional properties:
-~~~~~~~~~~~~~~~~~~~~
- - vbus-supply: Phandle to a regulator providing the USB bus power.
-
-Example:
-	usb_phy: usb-phy {
-		compatible = "ti,da830-usb-phy";
-		#phy-cells = <0>;
-	};
-	usb0: usb@200000 {
-		compatible = "ti,da830-musb";
-		reg = <0x00200000 0x1000>;
-		ranges;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		interrupts = <58>;
-		interrupt-names = "mc";
-
-		dr_mode = "host";
-		vbus-supply = <&usb_vbus>;
-		phys = <&usb_phy 0>;
-		phy-names = "usb-phy";
-
-		dmas = <&cppi41dma 0 0 &cppi41dma 1 0
-			&cppi41dma 2 0 &cppi41dma 3 0
-			&cppi41dma 0 1 &cppi41dma 1 1
-			&cppi41dma 2 1 &cppi41dma 3 1>;
-		dma-names =
-			"rx1", "rx2", "rx3", "rx4",
-			"tx1", "tx2", "tx3", "tx4";
-
-
-		cppi41dma: dma-controller@201000 {
-			compatible = "ti,da830-cppi41";
-			reg =  <0x201000 0x1000
-				0x202000 0x1000
-				0x204000 0x4000>;
-			reg-names = "controller", "scheduler", "queuemgr";
-			interrupts = <58>;
-			#dma-cells = <2>;
-			dma-channels = <4>;
-		};
-
-	};
diff --git a/Documentation/devicetree/bindings/usb/ti,da830-musb.yaml b/Documentation/devicetree/bindings/usb/ti,da830-musb.yaml
new file mode 100644
index 000000000000..fefae735b34d
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/ti,da830-musb.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/ti,da830-musb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI DA8xx MUSB
+
+maintainers:
+  - Bin Liu <b-liu@ti.com>
+
+allOf:
+  - $ref: /schemas/usb/usb-drd.yaml#
+
+properties:
+  compatible:
+    const: ti,da830-musb
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    const: mc
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: usb-phy
+
+  dmas:
+    minItems: 1
+    maxItems: 8
+
+  dma-names:
+    minItems: 1
+    maxItems: 8
+    items:
+      pattern: "^(rx|tx)[1-4]$"
+
+  vbus-supply:
+    description: Phandle to a regulator providing the USB bus power.
+
+  clocks:
+    maxItems: 1
+
+  clock-ranges: true
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "^dma-controller@[0-9a-f]+$":
+    $ref: /schemas/dma/ti/ti,cppi41.yaml#
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - phys
+  - phy-names
+  - ranges
+  - "#address-cells"
+  - "#size-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    usb@200000 {
+        compatible = "ti,da830-musb";
+        reg = <0x00200000 0x1000>;
+        ranges;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        interrupts = <58>;
+        interrupt-names = "mc";
+
+        dr_mode = "host";
+        vbus-supply = <&usb_vbus>;
+        phys = <&usb_phy 0>;
+        phy-names = "usb-phy";
+
+        clocks = <&psc1 1>;
+        clock-ranges;
+
+        dmas = <&cppi41dma 0 0>, <&cppi41dma 1 0>,
+               <&cppi41dma 2 0>, <&cppi41dma 3 0>,
+               <&cppi41dma 0 1>, <&cppi41dma 1 1>,
+               <&cppi41dma 2 1>, <&cppi41dma 3 1>;
+        dma-names = "rx1", "rx2", "rx3", "rx4",
+                    "tx1", "tx2", "tx3", "tx4";
+
+        dma-controller@201000 {
+            compatible = "ti,da830-cppi41";
+            reg = <0x201000 0x1000>,
+                  <0x202000 0x1000>,
+                  <0x204000 0x4000>;
+            reg-names = "controller", "scheduler", "queuemgr";
+            interrupts = <58>;
+            #dma-cells = <2>;
+            dma-channels = <4>;
+        };
+    };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
