Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E63CBC982DA
	for <linux-phy@archiver.kernel.org>; Sat, 19 Sep 2026 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yxLWIzlM8CitROfz+jFkYEcsZU4/zKrZIqsvEhI2O1k=; b=N2WUQJp4Xp2O3I
	8XuLj7I2NYUD4pUF+HQtLDz9RXDhdDp9GDrfbcWHaVLz6Ip7gJNR9dkLgBPWUrviZC/U6x003xnZG
	t3kz4SWwuU0zDljB2RoHMJZEFQ2maZdU6oC8IUJFd8kIAMYd23nr9YlNjrj/XecbPVCg3x0gKa0re
	VAho/FETMTp/oX3RE/pjsM2bB/SDOq/j5vOLrny3ZJnvCGtWTAViAySKAeYK1WsUZn+inZjPynvzT
	ymDC6+qiqafAPmVzvq0XLnG1hZjOjkfpZcx6kYkJ7+8WaQNAhWQBRzuhaeMd2sKIeRoUTKyuWexxg
	EMpVuijZQCdj8LoyLx6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYI-0000000GH84-2eHe;
	Sat, 19 Sep 2026 12:52:22 +0000
Received: from mail-pz2-x05.google.com ([2607:f8b0:4864:3b::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYD-0000000GH2D-0wRs
	for linux-phy@lists.infradead.org;
	Sat, 19 Sep 2026 12:52:21 +0000
Received: by mail-pz2-x05.google.com with SMTP id 41be03b00d2f7-cc1beca96deso835889a12.0
        for <linux-phy@lists.infradead.org>; Sat, 19 Sep 2026 05:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822336; x=1790427136; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=KsbyX/oYrDWgo0oVtGLWYO5vAo8wD44uSFhAnWOmg9qltxfWCX3CLiaw5Ys/nti2lf
         Kr4tF7iv6NGUhPochxQZBhl+e7YzH4SVKnFZ+cZ4cF3j0v+Lgiudrf0IhRDSbYJMcxda
         YEJOEKu6g7zVdDV6TN2RSr8JlFz8XoFjlytrfK7A5pQjDWkACuiRNRR46DlZr1i51utt
         xSWPO0cXuc41NIR5+r+yWvbKUdECk6O5Xtth7UYXZmWeWfPBoKWdsRUrojRsBXjwBric
         oCHYj1yXxmiRwOjNokfbVvxVS4z/KA7dQ3ovudQ7BBtxknlwh8zqRreaf00ku3jvvPeq
         Go8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822336; x=1790427136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WzUxf96lJcOF3iW8gS5QIxqqy13/2PJtTrFNEXc29ug=;
        b=xntO5Isrs4f3sW3dj+2FW5dx01TEyNW34iu5KRj1PKBJilzB3NUjnNeRpRPXFOfCIg
         XL9P2DW1mt3Qs5g2o7IUy6eFVxa4i4K3LjrguJs75LvV92bEt+sFov+lCkfNTY1+x59I
         z+UXIUqPrUIa0OwuUpAqUZjezBR27d/cnpKMy6h3UHaio2ksquzkOyU1NQdcY/dTyY2v
         RwUIG93K06PCgM/H17vfU1JFg50lh3xMByJvHmSYz006Yzma4xD9jjQtk4f/3m9xLKc2
         KfVDarPLA76YBHw7WLLU/sYudyHFVdpi/7xS2qWzvAOSs5ekZr8QBH7PPaaRCr+8lGuo
         yx0Q==
X-Forwarded-Encrypted: i=1; AKwUvByLOa1NoUpchbYRZj4LhTSAxxtT8wYcj4hGocuU2EHktFrjyVqYuwTufc3oBaQeFKcylu4qlmCZFjY=@lists.infradead.org
X-Gm-Message-State: AFuF++nRV9j+eXQyWI/r3Id/IN/s4b2IMALoE48wGDrBwEf+EAKXURZY
	1drv0VF7aJCikWqwubZvBAd/m2Yk1pMyszKrpL3nHJaV55kwDpUXevxD
X-Gm-Gg: AYBFou1S+spJkCExK3QQHkOszw0CemDjkWr8yL+UuITxN/Nx4yka4kNPCZcSAPm2+Hj
	xilFd0ERSzpZNrN3mQjQdXBbh8PyGZ6kWfXB3sJeLl8KtcHHESO2lYFuMw976xQEaD2K8RhoMJz
	o3ZlBWLHdPmRFfoVhwPrRE9VfnRabjPb019y3jet3SHwk31QzQKTeHWcymUEktEw9PfuU37aBxm
	3z7UycKjAh8N/TK1n9UMLgmxL2ddJIvTTGRaxsecspRNgL9y8G0h7QXKmJ/CvqRmVTH4m/e2Nkw
	pj+kK6xIRn1COLY8ChosLe5E5atl+lWu9ZptUGJUzT+NIiD8sUjHt3vJqjO6N2204ia81xJ83wo
	OOsJ/Xf2A91J2Ojal+w9JAE4lshXw+1h7yhMxPCcGp+jxEIGFlEiX2Y/nQra60202LDFkj/nO3A
	ukhhRR5oBEx9+tv4+f9k5BmOA2sP/nix9zMpoy++ryK4a8yJOcLzTpWi7a4UhtGJIleKbiDw==
X-Received: by 2002:a05:6a00:39a6:b0:878:34d7:6a35 with SMTP id d2e1a72fcca58-87834d76f58mr1393269b3a.41.1789822336163;
        Sat, 19 Sep 2026 05:52:16 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:52:14 -0700 (PDT)
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
Subject: [PATCH net-next v8 04/11] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Sat, 19 Sep 2026 20:51:11 +0800
Message-ID: <20260919125119.2107089-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055217_303369_14B65761 
X-CRM114-Status: GOOD (  15.20  )
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
