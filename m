Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A5A7C79FA0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 15:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8lSiPqacnoX6HYo1PfN+B9gpgpH4DU7BsSapr6da+Q=; b=qczef2fjFxnab7
	X3Lhs0CEjjkEODqtsFGi/Jhke6vxOERRD+DC8AZIUuEI7UmMbXp5xBnfTyHIMA9oRwBkfG0FTyl6E
	tzxYN45sCUf4S9105WFVsKzm79KooMyOEFYtDtGxYKMuGDIiafzeGKMPLykxKvIdztDOWnSgvcpeg
	qVeWxa9hgQRGhSUMkBv/nIM6fDMgZmERifiqYAUjtV6+vjpcnjeib3X4XWNgB4BAJ0DiiJtVQ+fG0
	ParQYGx0YbM9FEyOIiC3K/pGKpKYAG3/EAlYovyqrXi43tcrGNNhOjGPdHpjBbQPeyV1rwlm5oIjC
	vv0FZxIfWgeFSzg3l5Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bR9-00000007CFp-0vGA;
	Mon, 07 Sep 2026 15:39:11 +0000
Received: from mail-pj2-x07.google.com ([2607:f8b0:4864:39::7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bR4-00000007CBH-2uwM
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 15:39:09 +0000
Received: by mail-pj2-x07.google.com with SMTP id 98e67ed59e1d1-398da2bdcb9so1463942a91.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 08:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795546; x=1789400346; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z6aB1UFx2dxtuDUMhshejketJxUphgoMFv4AnQI5Bfw=;
        b=bpckWL66EAIQvABaMb0gr2sLI9nayjuzxNQgM9NDNLNCaBf1pEgQSccvyXvN7lIPzs
         uKElfpMhpGlFu8nS6aJPf3iXhaIoAI+a64GfVazeBGMC/FpD4uGznFUHfySVNzlBAzZj
         OUvmsvm4lF1sqrXhOC9m5dfTeb2PPBBwaPm4FLJGe/m2scHZubBuRm5epo3PiwfQYuxD
         uP04OMtgnZGjRhIu820VGMoBkoBxe2xfCaKOSv4XfIPTG65RY23GtamZ7R5rs1rlbnQ6
         c0U+U03uvXJw4TF3D9oebFaIDRhbLNdqBos66cJ7Ka0bMkO9CmRWNcTDBfwc6j5WALk8
         qZtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795546; x=1789400346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=z6aB1UFx2dxtuDUMhshejketJxUphgoMFv4AnQI5Bfw=;
        b=BoS9V/JCXL4uKdlquiE3QlT32tnMWkKuLvwnUYEJ+pDLUwR0UQm6r+DjhfAf/cX7ZA
         4v4sGA3TNBU0Uw8Ntrg4Fu/g2C5RqUOwZvZTUnBODQwiFSZ+44AHw8Tqo+MrzcVotmGS
         IqV4l1vn/oFGLR5E0WqEv3pUND26bxk8Oz4tPvOpE4RJ3x1CdorbMCWKIC86isD2Ghez
         OoB0SLcSd+gdnLa8cdu98dozyGl6cQynVL6B5/ik0xRPvNtO1F+EqQUJU1rCKgex0H6h
         AFMe7dndZHdLjhHNhFU4ku+CxjpZPzY43OAImRUfEEaaOP7wey5nbYLQncybQqPjw/iI
         tZAA==
X-Forwarded-Encrypted: i=1; AKwUvByQkSCCsCgpj3SkmetcBcLL3oiYRNpm/KMxDDXOPYCWGrIa7QHrqk020lJtEsi1zyRE9ZqHMqSuJek=@lists.infradead.org
X-Gm-Message-State: AFuF++lmPeoj6mDb51EWKwiEi0j3u1X9P+wTdzX5BO1NuZtNkbrK50hn
	xmFA7551r4RHbqsL3tDzyWWNFfRZ/keMh7XhyQKfV7pvLHxfwV0gkF+8
X-Gm-Gg: AYBFou1P733Wy3I8J4CBlUezeXVIDZGRMNxFJ2sBDmaPHakppqzg69VHxH79fcPooBT
	fiJCS51EetiYmUFnSC9fm3fVEW2AGX9r+PdbamyigePMgKSN5MbbDZrSQnDeaKa4P1OM4/4Dk3B
	DEg8wRnDBJcFySHeL7m04bxm+twbw5QQzpDmaYKAb13ciBsWJft3elxTGqYynYin0mZpB8ybSoQ
	/tQma5fe3/HcBRI9m8qC++5xTpMMOpXk1v3XhaT/uOIl0DCIR1yYCGrV7/ZbVxHE67sED9378tq
	iwDQ0dkV/gX3o1HWP6uhMd24j96HdjRvLAip1QFlgsdgEOrlueekauBDtPphgwGZL37s4esW65Q
	nWcyuo3IGIyDqLgScAh5/AjausJG1VAbcL62amOHSJgLbkpucF6ocOapcTZW/d1lW2Z8ojqGTqJ
	sJxSCTPmMSibqLcHwGSiQF9gG8JsJQeWZLekioXti9DbechrlGkiatxzGW4Is=
X-Received: by 2002:a17:90b:3149:b0:393:194d:5366 with SMTP id 98e67ed59e1d1-39b2618060cmr36557328a91.10.1788795545874;
        Mon, 07 Sep 2026 08:39:05 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:39:05 -0700 (PDT)
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
Subject: [PATCH net-next v4 04/10] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Mon,  7 Sep 2026 23:37:07 +0800
Message-ID: <20260907153713.2572547-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260907153713.2572547-2-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_083906_740203_402AFC5C 
X-CRM114-Status: GOOD (  13.47  )
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

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/net/pcs/rockchip-dwxpcs.yaml     | 110 ++++++++++++++++++
 1 file changed, 110 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml

diff --git a/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml b/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
new file mode 100644
index 0000000000000..0852d0bcb66a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
@@ -0,0 +1,110 @@
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
+  "^pcs-mii@[0-3]$":
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
+    pcs@fda00000 {
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
