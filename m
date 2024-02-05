Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23E84C4828D
	for <linux-phy@archiver.kernel.org>; Mon,  5 Feb 2024 17:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7rRlWVRHq298bPtK7wlyrW/cuDENzT0QLCb1Hopl3yo=; b=tAaQJo2r0eafEd
	BsnuzaKklgWHeDG0XSM/2F49UNHjSfdMSW+ydNr5VpHTe4O02oJeLBaLE3NFjTkCTmFOEr8YucB9p
	xYdxJAtfFQzuALu0rPzQrIwGl3ITMGNXjtgPKl0SEeHk3Uny8K9Wd+F7CBU4vJ8q0LdcUvPu3eRvx
	s50Juk8dcL26j8ufm9dHMc7OIz0jltPPjWya72EjLUV28GwFdZ7hL0evLcHFjJ5YPvg2qIu4pO1T9
	0G3L40Aezw0SHFbQ4EdmLQkWwv1fdtMXVQsDDJcxfHuiflbQqbM+pyr/jRl+Ulz+3zVrq9ra5QuCK
	E+ecaMHcu8mZUkzR2DIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rX2ls-000000049YT-2vae;
	Mon, 05 Feb 2024 17:28:40 +0000
Received: from pidgin.makrotopia.org ([185.142.180.65])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rX2lo-000000049Wl-1c05;
	Mon, 05 Feb 2024 17:28:38 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rX2lZ-0000ND-05;
	Mon, 05 Feb 2024 17:28:21 +0000
Date: Mon, 5 Feb 2024 17:28:17 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Daniel Golle <daniel@makrotopia.org>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: phy: mediatek,mt7988-xfi-tphy: add new
 bindings
Message-ID: <3251ac3db1a739e0c18ded0a824edae981c1e2df.1707153425.git.daniel@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_092836_448644_E23F6FA7 
X-CRM114-Status: GOOD (  12.14  )
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

Add bindings for the MediaTek XFI Ethernet SerDes T-PHY found in the
MediaTek MT7988 SoC which can operate at various interfaces modes:

via USXGMII PCS:
 * USXGMII
 * 10GBase-R
 * 5GBase-R

via LynxI SGMII PCS:
 * 2500Base-X
 * 1000Base-X
 * Cisco SGMII (MAC side)

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
v2: unify filename and compatible as requested

 .../phy/mediatek,mt7988-xfi-tphy.yaml         | 77 +++++++++++++++++++
 1 file changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt7988-xfi-tphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt7988-xfi-tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt7988-xfi-tphy.yaml
new file mode 100644
index 0000000000000..e897118dcf7e6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt7988-xfi-tphy.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/mediatek,mt7988-xfi-tphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek XFI T-PHY
+
+maintainers:
+  - Daniel Golle <daniel@makrotopia.org>
+
+description:
+  The MediaTek XFI SerDes T-PHY provides the physical SerDes lanes
+  used by the (10G/5G) USXGMII PCS and (1G/2.5G) LynxI PCS found in
+  MediaTek's 10G-capabale MT7988 SoC.
+
+properties:
+  compatible:
+    const: mediatek,mt7988-xfi-tphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: XFI PHY clock
+      - description: XFI register clock
+
+  clock-names:
+    items:
+      - const: xfipll
+      - const: topxtal
+
+  resets:
+    items:
+      - description: PEXTP reset
+
+  mediatek,usxgmii-performance-errata:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      One instance of the T-PHY on MT7988 suffers from a performance
+      problem in 10GBase-R mode which needs a work-around in the driver.
+      The work-around is enabled using this flag.
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mediatek,mt7988-clk.h>
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      phy@11f20000 {
+        compatible = "mediatek,mt7988-xfi-tphy";
+        reg = <0 0x11f20000 0 0x10000>;
+        clocks = <&xfi_pll CLK_XFIPLL_PLL_EN>,
+                 <&topckgen CLK_TOP_XFI_PHY_0_XTAL_SEL>;
+        clock-names = "xfipll", "topxtal";
+        resets = <&watchdog 14>;
+        mediatek,usxgmii-performance-errata;
+        #phy-cells = <0>;
+      };
+    };
+
+...
-- 
2.43.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
