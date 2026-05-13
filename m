Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1BADCD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 13:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dAAHxK55CAOeDlFi8WaG3Z3QbRZBxmwxKHRk7dY691c=; b=f1KLEeOvglAf71
	3r7jMao41hcSYU+j0/mZ87FLii3XaYSFwuS2oEfexV/OFjWZ65cVzQQFRKXagp3N7DRMQ4nF3moFu
	gee7JHvER+h+otEkNqlWbR16NYP9su6uZdgHMEonjaaewk0jN6a0RztWyKTJKvHT4GsUpVQS/0+dH
	9llyHIH7HbMaxIEGqykxk3BUmgSCDm+lapaaAIrFPLctI/+FKpBWY8XDIASVEPxvdNG4A6W5W/gSf
	mNNOrGDiDsVzZOAMaUrn2VubIu6pCBQAibMhlV8t5MIuMeekN/sLMdTQKFfX/olFxvFk9bD0e7ksp
	y+YUPUqKchxgUVXyD3bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN9Nk-00000002cXA-1ixU;
	Wed, 13 May 2026 13:12:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN9Ng-00000002cVJ-3mjj
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 13:12:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B8FCE43CB9;
	Wed, 13 May 2026 13:12:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B451C4AF0B;
	Wed, 13 May 2026 13:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778677927;
	bh=mrYufZayANyHbmSl28kp/x2VGhkIQRMjMFMD1iMr0/w=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=aFNKEvjhMqhemQ5CZDvdUVcZqfQTCC9++eC0JCoOJ6chRdS9kWJ069uWB5bQJ3hGe
	 xEzNQVOMnEJgmbr3p07vy1vACe/aVWQHtFI+nFeoyCs2y53XzetG+99LRwySAmbYH+
	 KvssCovzZlRPGvZsqq2GQTpTUYNknuMyA9lpDrw6ryGAfaAGT6ipb3WYiovmtVOwlx
	 3rfG1TFCTB2NiubMZbpnMvvrbiTYU4Io9Smkh8RoK+hbwSTzwi0dzORSBgbbJrV8g3
	 Iqn4BTfXCEiWmsYegiQpE2fzcYAL3gtruiB8jqGINBEOXE90nmP52SsYqvHKKQAxp8
	 +H6JxXiNTxqUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88F9CCD4851;
	Wed, 13 May 2026 13:12:07 +0000 (UTC)
From: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Date: Wed, 13 May 2026 15:12:02 +0200
Subject: [PATCH v5 1/2] dt-bindings: phy: add support for NXPs TJA1145 CAN
 transceiver
MIME-Version: 1.0
Message-Id: <20260513-tja1145-support-v5-1-38720a7ee63e@liebherr.com>
References: <20260513-tja1145-support-v5-0-38720a7ee63e@liebherr.com>
In-Reply-To: <20260513-tja1145-support-v5-0-38720a7ee63e@liebherr.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dimitri Fedrau <dimitri.fedrau@liebherr.com>, 
 Dimitri Fedrau <dima.fedrau@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778677926; l=2608;
 i=dimitri.fedrau@liebherr.com; s=20241202; h=from:subject:message-id;
 bh=gO1sGVTxGhuOYWVBuaPrvVGhpYnctsS7WdK7HQbRpIY=;
 b=mrLckBKnirP5Y5c+tmLHjSOZr01KPgrbOdUcPMyZimv7TTFkFIxt0lMRSO3ByVF/wTtK3vCXj
 RnYvx0MiABpDsYazOQm3LbhwXdyGkTHPI4LGB/lvuXber71l1H0nzIn
X-Developer-Key: i=dimitri.fedrau@liebherr.com; a=ed25519;
 pk=rT653x09JSQvotxIqQl4/XiI4AOiBZrdOGvxDUbb5m8=
X-Endpoint-Received: by B4 Relay for dimitri.fedrau@liebherr.com/20241202
 with auth_id=290
X-Original-From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_061208_989218_4FAA43A9 
X-CRM114-Status: GOOD (  10.77  )
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
Reply-To: dimitri.fedrau@liebherr.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>

Adding documentation for NXPs TJA1145 CAN transceiver, which resides like
the ti,tcan104x-can.yaml in the same directory as other generic PHY
subsystem bindings. At the moment there is only support for simple PHYs
by using regulator bindings in combination with can-transceiver.yaml or
PHYs that implement the generic PHY subsystem like the NXP TJA1145.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
---
 .../devicetree/bindings/phy/nxp,tja1145.yaml       | 80 ++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/nxp,tja1145.yaml b/Documentation/devicetree/bindings/phy/nxp,tja1145.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..46de6d0f2dd9b9fd41c97eb4c9340e3ac36090a3
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nxp,tja1145.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nxp,tja1145.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TJA1145 CAN transceiver
+
+maintainers:
+  - Dimitri Fedrau <dimitri.fedrau@liebherr.com>
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    const: nxp,tja1145
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  spi-cpha: true
+
+  spi-max-frequency:
+    maximum: 4000000
+
+  spi-cs-setup-delay-ns:
+    minimum: 50
+    default: 50
+
+  spi-cs-hold-delay-ns:
+    minimum: 50
+    default: 50
+
+  spi-cs-inactive-delay-ns:
+    minimum: 250
+    default: 250
+
+  vcc-supply:
+    description:
+      CAN transceiver supply voltage
+
+  vio-supply:
+    description:
+      Supply voltage for I/O level adaptor
+
+  vbat-supply:
+    description:
+      Battery supply voltage
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - spi-cpha
+
+additionalProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        can-phy@0 {
+            compatible = "nxp,tja1145";
+            reg = <0>;
+            #phy-cells = <0>;
+            spi-cpha;
+            spi-max-frequency = <4000000>;
+            spi-cs-setup-delay-ns = <50>;
+            spi-cs-hold-delay-ns = <50>;
+            spi-cs-inactive-delay-ns = <250>;
+            vcc-supply = <&reg_5v0>;
+            vio-supply = <&reg_3v3>;
+            vbat-supply = <&reg_24v0>;
+        };
+    };

-- 
2.39.5



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
