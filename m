Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D79ECAAD3
	for <linux-phy@archiver.kernel.org>; Mon, 12 Sep 2022 00:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNQpiwN9Ba01gMwOJJg/2T5av9ZQkK16+yGKquyC+hY=; b=Mz/WUVFXxWX3GN
	8nFoIJ+HMmUjjY3etFsrowPegqAqnemr380wc9xXiHYuoqnhxsMoQzHY+7zUmRarTvDwSwmIdOxcA
	4Jme2QUAKfu++A3RS1D2yIZnx/W/gYMPmqC2G+K4rUJr3Td5l1Rjoi1BbfRBl32cBzTunia057H2z
	AXdLbFa8pGBGNTjKmUPPrkWPh6Dz/g34FnpQIiN/zsmIcDL25AOUl/vta06MF3PCiHdtDdChA6Slt
	DofL+bqR4clzvIGNXksuiVIIxSD8104NRC2pA8W32cLd/v2KUPSpwiHZfOVMXNa9X2ZtSppv+lSp7
	8aFUsY3vr7ZcAIuCKtdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXWu1-005PQw-5M; Mon, 12 Sep 2022 00:02:17 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXWtg-005PHE-3M; Mon, 12 Sep 2022 00:01:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8A8816F8;
	Sun, 11 Sep 2022 17:01:55 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9AFF03F73B;
	Sun, 11 Sep 2022 17:01:46 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Karl Kurbjun <karl.os@veroson.com>,
	Icenowy Zheng <icenowy@aosc.io>
Subject: [PATCH 2/7] dt-bindings: usb: Add special clock for Allwinner H616 PHY
Date: Mon, 12 Sep 2022 00:59:40 +0100
Message-Id: <20220911235945.6635-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220911235945.6635-1-andre.przywara@arm.com>
References: <20220911235945.6635-1-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220911_170156_230363_FDE8AB37 
X-CRM114-Status: UNSURE (   9.67  )
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

The USB PHY IP in the Allwinner H616 SoC requires a quirk that involves
some resources from port 2's PHY and HCI IP. In particular the PMU clock
for port 2 must be surely ungated before accessing the REG_HCI_PHY_CTL
register of port 2. To allow each USB port to be controlled
independently of port 2, we need a handle to that particular PMU clock
in the *PHY* node, as the HCI and PHY part might be handled by separate
drivers.

Add that clock to the requirements of the H616 PHY binding, so that a
PHY driver can apply the quirk in isolation, without requiring help from
port 2's HCI driver.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../phy/allwinner,sun8i-h3-usb-phy.yaml       | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
index e288450e0844..3a3168392597 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
@@ -36,18 +36,22 @@ properties:
       - const: pmu3
 
   clocks:
+    minItems: 4
     items:
       - description: USB OTG PHY bus clock
       - description: USB Host 0 PHY bus clock
       - description: USB Host 1 PHY bus clock
       - description: USB Host 2 PHY bus clock
+      - description: PMU clock for host port 2
 
   clock-names:
+    minItems: 4
     items:
       - const: usb0_phy
       - const: usb1_phy
       - const: usb2_phy
       - const: usb3_phy
+      - const: pmu2_clk
 
   resets:
     items:
@@ -98,6 +102,21 @@ required:
 
 additionalProperties: false
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - sun50i-h616-usb-phy
+
+then:
+  properties:
+    clocks:
+      minItems: 5
+
+    clock-names:
+      minItems: 5
+
 examples:
   - |
     #include <dt-bindings/gpio/gpio.h>
-- 
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
