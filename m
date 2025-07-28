Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 228C6C83F26
	for <linux-phy@archiver.kernel.org>; Mon, 28 Jul 2025 16:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJRxlqqBwKXY8WkjtZYl/F8xxskMpAF9oiAaEnYnNSU=; b=DVBXVw2c5qKRDh
	JawJSUWWR94K76ldntyFaToWFzSI8ty9E+wfDVsYr4TANEQ+TCnMOJbiZ3I0tnUa6Hyt/FakZMvA1
	tCMUQ2WsNO/CcunCiRliKZToAKlWQny7fJmVFc/Qfe1ILAvzeEuhng/xevgFzG3bvGYvJYRmaagvG
	/VPhvTcKH44K6Qi7IeBl7IopwVY/EpJreWKqAjOfzH+5hichRt5WasMG146jx/4NXmIeYZ9la3BYR
	fcXA0bWbMnYspoW8B20zL642qm2gaDbDWUCveQjOyVmcSczy19DpUBUqDsr/NFoSBd+FUdMzRkeMT
	cdy3I8amHg7JvCQWZOLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugQq2-0000000Eznp-32ir;
	Mon, 28 Jul 2025 16:36:34 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugPwy-0000000Eqvp-2c1h
	for linux-phy@lists.infradead.org;
	Mon, 28 Jul 2025 15:39:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5F357A54F91;
	Mon, 28 Jul 2025 15:39:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EC3C4CEF8;
	Mon, 28 Jul 2025 15:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753717178;
	bh=2dlmVNDzFn4SKLMFjpyPd+qPrj8XTn0qgn+ou7n4k0Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=RHpK8ukbmXFHqSRy6a9GoPtJqrX5d5xh9fGJt1jmQEcHilwQgxOlRd41GiZ/+w0l6
	 Q1wbe6gTmgpNVh83fwJBJBPKo6mz80tv+F9MarBxUqO588yKE9AakjC2jr8FIw63Qt
	 QvHDYn7upFrmTWqJJlIyS9Jh+8M/Mddx9qxi6mOGZIK7kEbvGvhD+aA+NR7KVz7ZGl
	 2rCx1gE1wbbhAc84k04ZC8FnRvvnYPv2WotOaEy6Fc0cjtGqVS8o9yDpu11tUjq2OJ
	 WryDd6VwBVYzpuM7M/3A16SxL4/8E3ACV3xJgiM3I/5ofT6sY0q9fNS12WvGTqhGKY
	 ogHt4vfhSuASQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00F0C83F17;
	Mon, 28 Jul 2025 15:39:38 +0000 (UTC)
From: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Date: Mon, 28 Jul 2025 17:39:29 +0200
Subject: [PATCH 1/2] dt-bindings: phy: add support for NXPs TJA1145 CAN
 transceiver
MIME-Version: 1.0
Message-Id: <20250728-tja1145-support-v1-1-ebd8494d545c@liebherr.com>
References: <20250728-tja1145-support-v1-0-ebd8494d545c@liebherr.com>
In-Reply-To: <20250728-tja1145-support-v1-0-ebd8494d545c@liebherr.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dimitri Fedrau <dimitri.fedrau@liebherr.com>, 
 Dimitri Fedrau <dima.fedrau@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753717177; l=2250;
 i=dimitri.fedrau@liebherr.com; s=20241202; h=from:subject:message-id;
 bh=yrzBTmcx39zZhA3B4Bmom+/Ve4V+seQpPo+U7ONsiAo=;
 b=KhSNFKffrIFnWTTO5yAeLdNiDimIL6feKrhTGJYwDBLXzqpYOUY4N+2UQtYk8nL2VCutAXa6J
 Psy8g12k+CxCavpUNWBF14bOtn8HX2E64ftVkl10v0ieITrJjqSGBbK
X-Developer-Key: i=dimitri.fedrau@liebherr.com; a=ed25519;
 pk=rT653x09JSQvotxIqQl4/XiI4AOiBZrdOGvxDUbb5m8=
X-Endpoint-Received: by B4 Relay for dimitri.fedrau@liebherr.com/20241202
 with auth_id=290
X-Original-From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_083940_795328_EEAB1AF1 
X-CRM114-Status: GOOD (  10.20  )
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

Adding documentation for NXPs TJA1145 CAN transceiver.

Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
---
 .../devicetree/bindings/phy/nxp,tja1145-can.yaml   | 79 ++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml b/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..10bf2bce1b35788b3284c42e544a56eda6d79947
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nxp,tja1145-can.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nxp,tja1145-can.yaml#
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
+  "#phy-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 4000000
+
+  spi-cpha: true
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
+  - "#phy-cells"
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        canphy@0 {
+            compatible = "nxp,tja1145";
+            #phy-cells = <0>;
+            reg = <0>;
+            spi-max-frequency = <4000000>;
+            spi-cpha;
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
