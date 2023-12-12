Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9C34C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 12 Dec 2023 03:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uyxs+sdzWbQbRGYJ3c0EPl2h+WiLtprNwUpHRj/199I=; b=FfO7TDsboB82kK
	PRpf0WT6NqsZraJLEEDPT/8BolXLkk7cOi7Q3gNbqOFS5wmjWUCi7tLRrKkB5yNUKOoGEu9oIhhQ9
	lipTM5eYKGW01pILKo8oZYJz2gvd2Dsu3d0+MTjq8cJpaa/EkQI8Faw2y62NSAVL5CZEGOOwPVuSm
	yHHFNaWHa1UNQxcBW/s0D5o+srnK+Eg1++99cYWsq6JrRiQLqjPir2G0uM3UbdQ+qexhik0V9iXe2
	7Bm768/8nEoq9uKLYzAaoRkIpO8uVhKc27/8y+snY/0dl326412ndBM6oVvL7M5MPrJhy3EXDRGGw
	0gD6oizStnvu6dey/qfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCtkN-00AfDv-1T;
	Tue, 12 Dec 2023 03:47:51 +0000
Received: from pidgin.makrotopia.org ([185.142.180.65])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCtkI-00AfAl-38;
	Tue, 12 Dec 2023 03:47:48 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rCtk6-0002rv-1g;
	Tue, 12 Dec 2023 03:47:35 +0000
Date: Tue, 12 Dec 2023 03:47:31 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexander Couzens <lynxis@fe80.eu>,
	Daniel Golle <daniel@makrotopia.org>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: [RFC PATCH net-next v3 4/8] dt-bindings: net: pcs: add bindings for
 MediaTek USXGMII PCS
Message-ID: <510af8550385da947e2e2516629c4fbed7fc0f64.1702352117.git.daniel@makrotopia.org>
References: <cover.1702352117.git.daniel@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1702352117.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_194747_011278_4EE5DBA6 
X-CRM114-Status: GOOD (  14.11  )
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

MediaTek's USXGMII can be found in the MT7988 SoC. We need to access
it in order to configure and monitor the Ethernet SerDes link in
USXGMII, 10GBase-R and 5GBase-R mode. By including a wrapped
legacy 1000Base-X/2500Base-X/Cisco SGMII LynxI PCS as well, those
interface modes are also available.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 .../bindings/net/pcs/mediatek,usxgmii.yaml    | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml

diff --git a/Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml b/Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml
new file mode 100644
index 0000000000000..0cdaa3545edb0
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/pcs/mediatek,usxgmii.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek USXGMII PCS
+
+maintainers:
+  - Daniel Golle <daniel@makrotopia.org>
+
+description:
+  The MediaTek USXGMII PCS provides physical link control and status
+  for USXGMII, 10GBase-R and 5GBase-R links on the SerDes interfaces
+  provided by the PEXTP PHY.
+  In order to also support legacy 2500Base-X, 1000Base-X and Cisco
+  SGMII an existing mediatek,*-sgmiisys LynxI PCS is wrapped to
+  provide those interfaces modes on the same SerDes interfaces shared
+  with the USXGMII PCS.
+
+properties:
+  $nodename:
+    pattern: "^pcs@[0-9a-f]+$"
+
+  compatible:
+    const: mediatek,mt7988-usxgmiisys
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: USXGMII top-level clock
+
+  resets:
+    items:
+      - description: XFI reset
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mediatek,mt7988-clk.h>
+    #define MT7988_TOPRGU_XFI0_GRST 12
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+        usxgmiisys0: pcs@10080000 {
+          compatible = "mediatek,mt7988-usxgmiisys";
+          reg = <0 0x10080000 0 0x1000>;
+          clocks = <&topckgen CLK_TOP_USXGMII_SBUS_0_SEL>;
+          resets = <&watchdog MT7988_TOPRGU_XFI0_GRST>;
+        };
+    };
-- 
2.43.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
