Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 122ABC83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 07:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcE/T3iif6BHN2E/zL1bACg/WS0PLpFU+rCCCHhFVHQ=; b=ZQDdMNTdnkcLzR
	4NLG3/x8nVxDjGTw4WUtlIrXKAgKvHCQPq2y0osst4hnxxIK/SySD+yCRu87E1ThPJckEOkNIEIBZ
	cUWVu9A1e1R2pxgGN14e1Vvw2uWMWde8v2f4zqQARPGx60RLLbeFgOWFPFoTKJQ85vgHno7vMNxaV
	mCJTu9sYUUOFPNvu8zaQha0YYKFoFANNy3SbtTQqUAGh3V6IF915xjb05XYtr/zpsRmdN8CpzjzKt
	r4t7hlidaITRf5Xm53njldhXnfryXpCzlYG/f3R+0CAHuzS9XEAE9BMEWCU/4rEYNWC9hyW6o9hvh
	7D5fAcY/t9//h+DX/B2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qat2i-00AvZZ-1p;
	Tue, 29 Aug 2023 07:21:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qat2V-00AvY7-35;
	Tue, 29 Aug 2023 07:21:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=References:In-Reply-To:Message-Id:Date
	:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=NAvdVNQJl8rZLqjDhppcfI1VqoNcbbdlw2NTuyQHHFs=; b=meSQa383ZJItxj9yKMSVIegGDT
	Lyz4BdOSVbrSZwmrRg5U0f/ayMnrVTEffJ3De5biU8ccuMc4u+pYvoqwQYz89Zf0eiBx2Iy33rlK7
	tuRUHyHya2pv0ohef+DWcTIAuqtsIDRMmQhYbo/Q05h2zqreZQFUrprNPtLKoIYEZV5EYYerrGAS7
	IDuUrRWfYD6eKIRTE+0GCAjKHvf0H227t0S/ANPhIoBKJut/xGgQUOBGuhaidQEmAUSE/ih3W4z+R
	v516um1malEKvn1bfBFwo98dTiY4rXRqED6T8rFeipJTKWrYxZxxTvOcTmp2piw8GAQeDvTydyHsr
	KhXAUQmg==;
Received: from inva021.nxp.com ([92.121.34.21])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qat2P-00BNdf-2Q;
	Tue, 29 Aug 2023 07:21:26 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D9D8B200923;
	Tue, 29 Aug 2023 09:21:14 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 734B020028B;
	Tue, 29 Aug 2023 09:21:14 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 80C7C1802202;
	Tue, 29 Aug 2023 15:21:12 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	l.stach@pengutronix.de,
	a.fatoum@pengutronix.de,
	u.kleine-koenig@pengutronix.de
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: [PATCH v1 1/3] dt-bindings: phy: Add i.MX8QM PCIe PHY binding
Date: Tue, 29 Aug 2023 14:45:32 +0800
Message-Id: <1693291534-32092-2-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1693291534-32092-1-git-send-email-hongxing.zhu@nxp.com>
References: <1693291534-32092-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_082122_007953_8568D4F8 
X-CRM114-Status: UNSURE (   9.00  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add i.MX8QM PCIe PHY binding.

i.MX8QM HSIO(High Speed IO) module has three instances of single lane
SERDES PHYs, an instance of two lanes PCIe GEN3 controller, an
instance of single lane PCIe GEN3 controller, as well as an instance
of SATA 3.0 controller.

The HSIO module can be configured as the following different usecases.
1 - A two lanes PCIea and a single lane SATA.
2 - A single lane PCIea, a single lane PCIeb and a single lane SATA.
3 - A two lanes PCIea, a single lane PCIeb.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 .../bindings/phy/fsl,imx8-pcie-phy.yaml       | 70 ++++++++++++++++++-
 1 file changed, 67 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
index 182a219387b0..764790f2b10b 100644
--- a/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml
@@ -17,16 +17,18 @@ properties:
     enum:
       - fsl,imx8mm-pcie-phy
       - fsl,imx8mp-pcie-phy
+      - fsl,imx8qm-pcie-phy
 
   reg:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 5
 
   clock-names:
-    items:
-      - const: ref
+    minItems: 1
+    maxItems: 5
 
   resets:
     minItems: 1
@@ -70,6 +72,36 @@ properties:
     description: PCIe PHY  power domain (optional).
     maxItems: 1
 
+  hsio-cfg:
+    description: |
+      Specifies the different usecases supported by the HSIO(High Speed IO)
+      module. PCIEAX2SATA means two lanes PCIea and a single lane SATA.
+      PCIEAX1PCIEBX1SATA represents a single lane PCIea, a single lane
+      PCIeb and a single lane SATA. PCIEAX2PCIEBX1 on behalf of a two
+      lanes PCIea, a single lane PCIeb.
+      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants to
+      be used (optional).
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [ 1, 2, 3 ]
+
+  ctrl-csr:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to the ctrl-csr region containing the HSIO control and
+      status registers for PCIe or SATA controller (optional).
+
+  misc-csr:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to the misc-csr region containing the HSIO control and
+      status registers for misc (optional).
+
+  phy-csr:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to the phy-csr region containing the HSIO control and
+      status registers for phy (optional).
+
 required:
   - "#phy-cells"
   - compatible
@@ -78,6 +110,38 @@ required:
   - clock-names
   - fsl,refclk-pad-mode
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - fsl,imx8qm-pcie-phy
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 5
+        clock-names:
+          oneOf:
+            - items:
+                - const: pipe_pclk
+                - const: ctrl_ips_clk
+                - const: phy_ips_clk
+                - const: misc_ips_clk
+            - items:
+                - const: apb_pclk
+                - const: pipe_pclk
+                - const: ctrl_ips_clk
+                - const: phy_ips_clk
+                - const: misc_ips_clk
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          items:
+            - const: ref
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
