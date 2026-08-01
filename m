Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87F44C55173
	for <linux-phy@archiver.kernel.org>; Sat,  1 Aug 2026 14:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFCPWeAUERmWIAS80+DmwkozEp9ERGu06SVDFBKk4m8=; b=voOSw5E1Jds7Fb
	+uT7oRWNxE2F0b9jMyOElohogeaWCLV7mpcwGoFmGWXW2xsIUvpncxWFuz2Qr7Ab751LQFrQQ52Gp
	PHv0DLVL3q7zL0RGOthRO8qRkkCDRxWpK0nFlN3cCZ4hngrtMyXwBHP2dYPXYFAB1x3P3+ywxDoZS
	MvyXIS9TLizyKs0PKGNhSH9dndQRwszi2kJum8W+PfJyAFGk8+8R1d6zCydFkPESQYkhvYk8T62fP
	cMXJuWl60N2ikFrlBAbbOFekE25bt5nlq27fdEmUWrTTmTgKQnCu7MTSaeDCzJ3QqiM7uLqBvK+VN
	guVxs25Fapj0nZopyp9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAcs-0000000Eie7-0jhg;
	Sat, 01 Aug 2026 14:23:46 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAcn-0000000Eia3-17P7
	for linux-phy@lists.infradead.org;
	Sat, 01 Aug 2026 14:23:45 +0000
Received: by mail-pj2-x00.google.com with SMTP id d9443c01a7336-2cc2c6e0688so14638845ad.0
        for <linux-phy@lists.infradead.org>; Sat, 01 Aug 2026 07:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785594221; x=1786199021; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ApDMeM/bjE3TDpuc1mM/C2VeZt90bzUPQWagsmJ3H2c=;
        b=gjvpghUZS1r+ITs2Sg4NWtdk2Bnbj43zUe7pnoR3YADdNizSSW2w/nduEXkALD6HFp
         atIg+bI/7YFrDAbXMOsnaAejrMQKPRFmYVSVqel/ThX4g0Ed5H7bX0UG8VRdK6AAeitr
         vWQVoecZWYSL/vp+kZu17e+nyGtal8KyComcUQHrWu2ccx/XY7lPdVEn5yR0lZqybTRY
         j0ess1Lh4PBDvnd/VwRLb5VewZkxt8byeDleUukNmpg0oIHmaYoPUjVx/g/zyFxh34bM
         246wx/HPaIx+A02zCxX6M98XTs9R32h9/s+08lHi/y2zHOyFCrLGqJsW1V/2cVKl0CmV
         VagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785594221; x=1786199021;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ApDMeM/bjE3TDpuc1mM/C2VeZt90bzUPQWagsmJ3H2c=;
        b=olX0UliYnd7BKqtxjhB+Op9tSGYGCudpDFRW7/ZgJyKd1xsBpe0F7EjXYGAzCQuxQw
         /6r9uWmj4GA1hjs6wrBMwi8kBbAWSoFRfULNWznJhhp/bneCGMu4ce/TPCJDancLR4zC
         2RlkDn7gmD4OYbMQlIp+ppddvGfPRX3QfEAvFnsG18f4dNL4u9vrz8hQFJ04EBxnmHXi
         VCijWD/iVOrMn+MAMCWE+e6fCnHon2C+/w3pXGaXwK9uzcgv+J2criFduYlwa9mAyjnT
         sFXVdLZNF8sLC+lFVaFeQq2ca5huN85bXB1kto7/cdN0S7VLgOiItLivDBhBO27DN9hB
         p77A==
X-Forwarded-Encrypted: i=1; AHgh+Rp5nfxgRkWahYMia3GWqki3BbXBnolgyJAfxA4XRCcu04+Y/NZqkBR1ulUwmN+gOaJpt1j9VtTL/nA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxu1jAVANiyTWmpbw0VIdEfIYEmzCbrKUOkhAl7n9tLGEpB8XtS
	HdJjMpPObcibj3/SxBcIbSkmEtu3D/I6yWFxfg1QD4ThaiQPM6rhBEJm
X-Gm-Gg: AR+sD13lvS+/mlPqaXocBfgitBzg5pjpyrjxKLc0vc3jO3R/UB/o/rXEV7PNeN5Xukx
	y9EEc+GWsnd4IWqzba+YV/ckc0VOW439YoD51mF1WWeCittSbivW0AVD825lma9REqeeC4lblTT
	4PKTTKB1J2N4bYSiFWPm1d/csQrZqGKp9fwQsU2JQzWDKvQndmfeZsM4mtChQeqpxiyo10TDUP3
	OvUXlgHjabEKMTBM2tu4qXOBYDAwG8J6TlI8jx2VzChD+waz13j9Gwb5jQk9kssN65Kb5ExIIrR
	WIwrAQwGKEijhtyrxdpidh1YF1BWrIv/7SK5EkE5xOM/T6qk/lY/tSnjkgSTVusBj01QQVg8jcb
	ClYtV9mJsP6n7pKhdTvPq9QgZjHESPLy/MM/pPHHCd9XeoEBfmoYv8APUWqzNJ1H+s2XVLIg46m
	ChFNCixp/x3pcyOIXsYkOTrApT2Iz7ink+cZrFbAc8EptmZ6JA2yC7h7c=
X-Received: by 2002:a17:902:f54e:b0:2cc:6329:b7ba with SMTP id d9443c01a7336-2d05224fa51mr37049725ad.16.1785594220516;
        Sat, 01 Aug 2026 07:23:40 -0700 (PDT)
Received: from server.lan ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae5ac3dsm18043845ad.23.2026.08.01.07.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 07:23:39 -0700 (PDT)
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
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 04/10] dt-bindings: net: pcs: add rockchip,rk3568-xpcs binding
Date: Sat,  1 Aug 2026 22:22:28 +0800
Message-ID: <20260801142244.679437-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260801142244.679437-2-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_072341_322125_43B62F4A 
X-CRM114-Status: GOOD (  16.30  )
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

The binding describes:
- Required properties: compatible, reg, clocks, clock-names
- Optional properties: phys, phy-names, power-domains
- pcs-mii sub-nodes for each MII port (reg 0..3)

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/net/pcs/rockchip-dwxpcs.yaml     | 127 ++++++++++++++++++
 1 file changed, 127 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml

diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
new file mode 100644
index 0000000000000..3e3f3a388d822
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
@@ -0,0 +1,127 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/pcs/rockchip-dwxpcs.yaml#
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
+  The block contains four MII ports (pcs-mii@0..3) that can be
+  individually enabled and routed to one of the Ethernet GMAC controllers
+  via the pcs-handle property in the MAC device tree node.
+
+properties:
+  compatible:
+    const: rockchip,rk3568-xpcs
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  reg:
+    description: |
+      Base address and size of the XPCS register space mapped over the
+      APB3 bus.
+    maxItems: 1
+
+  clocks:
+    description: |
+      Clock sources for the XPCS:
+      - csr: APB3 bus interface clock (clk_csr_i), required for register
+        access.
+      - eee: EEE clock (clk_eee_i), required for Energy Efficient
+        Ethernet (EEE) operation.
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: csr
+      - const: eee
+
+  phys:
+    description: |
+      The phandle of SerDes PHY (Naneng Combo PHY) that provides
+      the serial lanes for 1000BASE-X / SGMII / QSGMII.
+      The SerDes must be powered on and initialised before any XPCS
+      register access.
+    maxItems: 1
+
+  phy-names:
+    const: serdes
+
+  power-domains:
+    description: |
+      Power domain for the XPCS.
+      On RK3568 this is typically the PD_PIPE power domain, which also
+      supplies the SerDes PHY.
+    maxItems: 1
+
+patternProperties:
+  "^pcs-mii@[0-3]$":
+    type: object
+    description: |
+      One of the four MII ports of the XPCS.
+      The port number is specified by the reg property (0..3).
+      The port is linked to an Ethernet MAC controller via the
+      pcs-handle property in the MAC's device tree node.
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 3
+        description: |
+          MII port number of PCS.
+
+      status: true
+
+    required:
+      - reg
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    #include <dt-bindings/power/rk3568-power.h>
+    #include <dt-bindings/phy/phy.h>
+
+    pcs@fda00000 {
+      compatible = "rockchip,rk3568-xpcs";
+      #address-cells = <1>;
+      #size-cells = <0>;
+      reg = <0xfda00000 0x200000>;
+      clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+      clock-names = "csr", "eee";
+      phys = <&combphy2 PHY_TYPE_SGMII>;
+      phy-names = "serdes";
+      power-domains = <&power RK3568_PD_PIPE>;
+
+      pcs-mii@0 {
+        reg = <0>;
+      };
+    };
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
