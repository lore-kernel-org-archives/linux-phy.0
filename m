Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F01DDC98302
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 20:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yxLWIzlM8CitROfz+jFkYEcsZU4/zKrZIqsvEhI2O1k=; b=2VcPFMmQaa/5Uo
	Y82NV15YLur8F/9m7yP4t3EdaDflsOnmNzm24zlfEQMW+VXLZ6n9x1+/2E+sVtKKBhlam7AHCzn5j
	NW9TAQ4V74QTUzsvlnjGQPJ2fvxpUnGLByx/b1UXfFnfWQIJunxjSfgcx63Uoa38QtQYHEF6S2iNv
	y5wlk2VgjqkAOf+ALaY2ZwcoNRyEnjq1bRjj6KU/vFHsAP5o0Xsg6dcRVZZd0kBK/5SZJpa4VT510
	0vHBn92DizVJAR+Da+a0hyn4NsqjpgPKHtJ6pv+zL/e+hf+hvTuhCGvtFHlmwKzQ6OGvzxgDMs3tp
	+B+8vuykFXA40gjG5xKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96j1-00000006U4H-2lcv;
	Tue, 22 Sep 2026 20:04:23 +0000
Received: from mail-pj2-x03.google.com ([2607:f8b0:4864:39::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96ix-00000006TzO-0I6W
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 20:04:21 +0000
Received: by mail-pj2-x03.google.com with SMTP id d9443c01a7336-2d6fff25530so862335ad.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 13:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107458; x=1790712258; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=qrAIG15g5A5mGd66/9zK1H549hg4FgxsFuIqgGUx1RLouZsK7O57UlLJVzaSDKdWaO
         MMy7ntaYCxnq0jtNz6Y82Uv7SnUK1VDMcDa5p9PFxlnkUWucgY+bHev5czMW8PX+Wza/
         TtYW/0rxBj0ZqY/Kqvj6FqTf3ZvsIK5p2H4xgCunPtpeQtdRb5SqR2F8CoecRdVeaWdN
         jJA15+OnNfpdQBFb0Q0T+J+xCchNepUWLMS1+Yezr4AGu76rY1+oaUMhKxKEuP0/fC87
         J6gcSRH5YUm+ejVfLvBd5akiRGyxUGWSaKMAxqn8f8rgYTCBfJf1U6Ucm2OXcXl7Axvq
         cnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107458; x=1790712258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=dT8pvcwFODGCxx7ia3Q19xM2ghQ1m7AHOzBP4gR+VZ4qvuMVDZvq0iqk8H8Dm6Sl+p
         pF0v2L4LGHtaIV8k+UADWqvV7sco2vzijX725PkORfgnQBzScyINRUlVzELZ3GPVoE5G
         aoaHpoS3UUGLGnexxc4qFIqJRq4IODBNlqa2/r33CdIoSdnQOUZxbpXWDR/gtgMkiJGH
         v5DpXnyw26K64gh81Ln7QDdp2uO4lv9A0U0Opw/MF8lUP8XuOlHDqs0fh3SiIylbBdWA
         ee5I9HIXpix2RRmMY4y98M3pldLwkjFzqMEgJdyAkpOC3iXHc2trRoRsQeoJdTPua1aW
         ckTQ==
X-Forwarded-Encrypted: i=1; AKwUvBzjnt4azdUrRdHG47csGxPSuhD61e8yQNzp7I+PR0ozxt7C3Gn5hHHPzt2pqLFGkxBwebDZN+WpG/E=@lists.infradead.org
X-Gm-Message-State: AFuF++nKnZncRwjiAbJ0fr6y+wc7giZM19DM/bcqHu2K82/nKbn8fDHO
	KX0ZRwSmope8Pc9s7dPixm8zDsF0EDbNYvsrhxFLB3xQWgoy27njTTFS
X-Gm-Gg: AYBFou3ETNLmz7ziWHZkdJqZ57P+dWezgv/50pINQyrDV6Gz5jeKoEPgZr7TRZpZnSV
	zivlrJaBO9olW3Oo9SF1ILQPS4nofQrIykb8dhKdF8pWY0ZEhAkTJ4QWnsaC/puMaZkJkpHBzMF
	AMt95V/sp8mT+7u6EjMgxVCxTr7BwPBUlVHJ90RLYsHLS8+1mATjhf1pq1RBaktbWNqqznCqIx8
	J6OWxXcDPAe5fevSo+50I7/iO8EbKU3tLDtFX7u2bKOs7MTNJmk5hrLueFhJWTFvgFGPXZ9OZlu
	E1fL2tuC+dDWkPmhDGxb6N0jny+oo3X4lBT8+A+AiJvnPza8HX5N6RMLV3POWks9MZBP85EuUEp
	QY5tjIjJXGpdmjr05q27ZeiCEfx4feknW8X88doWUvRQKXKAcjGFFELxSNnWAEYq7K4+uN1tpxt
	6UvTQHGIicRaritUEbGBliQ64fK2yRPiWSBztIQG1ZCT1OLpa2siNNC5BnGTtjWvWnD261
X-Received: by 2002:a17:903:2350:b0:2db:31d5:1448 with SMTP id d9443c01a7336-2df69d689a1mr3760135ad.22.1790107458354;
        Tue, 22 Sep 2026 13:04:18 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:04:17 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v10 04/11] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Wed, 23 Sep 2026 04:03:28 +0800
Message-ID: <20260922200336.2201212-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130419_407714_E2D92C5D 
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

Add device tree binding documentation for the Synopsys DesignWare
XPCS integrated on the Rockchip RK3568 SoC.

The XPCS is accessed over the APB3 bus and internally connected to
a Naneng Combo SerDes PHY.  It supports 1000BASE-X, SGMII, and
QSGMII modes, with four MII ports.

The four MII ports are described as ethernet-pcs-mii@N child nodes,
consumed by the Rockchip XPCS glue driver later in this series.

phys and phy-names are required because dtbs_check only validates
required properties for enabled nodes. The SerDes link is a board-level
design choice (combphy1 on some boards, combphy2 on others), so these
properties must be provided by the board device tree, not the SoC dtsi.

The CRU reset lines (SRST_XPCS*) are intentionally not described: no
in-tree user requests them, and bring-up relies on the PD_PIPE power
domain, the SerDes PHY and the in-IP soft reset. They can be added
later as optional without breaking ABI.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../net/pcs/rockchip,rk3568-xpcs.yaml         | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml

diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
new file mode 100644
index 0000000000000..703fcff0e3f70
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
@@ -0,0 +1,110 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/pcs/rockchip,rk3568-xpcs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3568 Synopsys DesignWare Ethernet PCS
+
+maintainers:
+  - Coia Prant <coiaprant@gmail.com>
+
+description: |
+  Rockchip RK3568 SoC integrates a Synopsys DesignWare Ethernet Physical
+  Coding Sublayer (XPCS).
+  The PCS provides an interface between the Media Access Control (MAC)
+  and the Physical Medium Attachment (PMA) sublayer through a Media
+  Independent Interface (GMII).
+
+  The XPCS is accessed over the APB3 bus and internally connected to a
+  Naneng Combo SerDes PHY.
+  It supports 1000BASE-X, SGMII and QSGMII modes.
+
+  The block contains four MII ports that can be individually enabled and
+  routed to one of the Ethernet GMAC controllers via the pcs-handle
+  property in the MAC device tree node.
+
+properties:
+  compatible:
+    const: rockchip,rk3568-xpcs
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: APB3 bus interface clock (clk_csr_i), required for register access
+      - description: EEE clock (clk_eee_i), required for Energy Efficient Ethernet operation
+
+  clock-names:
+    items:
+      - const: csr
+      - const: eee
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: serdes
+
+  power-domains:
+    maxItems: 1
+
+patternProperties:
+  "^ethernet-pcs-mii@[0-3]$":
+    type: object
+    description:
+      One of the four MII ports of the XPCS. The port is linked to an
+      Ethernet MAC controller via the pcs-handle property in the MAC's
+      device tree node.
+
+    properties:
+      reg:
+        description: MII port number.
+        enum: [0, 1, 2, 3]
+
+    required:
+      - reg
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - clocks
+  - clock-names
+  - phys
+  - phy-names
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    #include <dt-bindings/power/rk3568-power.h>
+    #include <dt-bindings/phy/phy.h>
+
+    ethernet-pcs@fda00000 {
+      compatible = "rockchip,rk3568-xpcs";
+      reg = <0xfda00000 0x200000>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+      clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+      clock-names = "csr", "eee";
+      phys = <&combphy2 PHY_TYPE_SGMII>;
+      phy-names = "serdes";
+      power-domains = <&power RK3568_PD_PIPE>;
+
+      ethernet-pcs-mii@0 {
+        reg = <0>;
+      };
+    };
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
