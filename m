Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92A0FC61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 15:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8lSiPqacnoX6HYo1PfN+B9gpgpH4DU7BsSapr6da+Q=; b=Uzfn47r4q6UfNC
	4JAH656yPEnOZdXBRCASVTIEr02UEOehfU1jS4I9FVtZDl/SzdQcAr1M3rx44xiaSfv8aTzvXXEXR
	YSsIcoJIsu9LtV90Ac+jeYljne3uA7AjzobU5BI252ZKG9EFNQ8EysEDQAtO8aWP9ZUlvrOnt9RWJ
	i+VECsyWnLyFaXz56Nubxhiv6KRlAaxpxNDMZ0D9chivaifcpovozczTud524wapmXbNS6p6iDcO9
	2+Bo305r7GWs2bNusfwUxlz5Es7akn81PDKcM+EyjUsCTRZ01d+t9AvXABgkNIK0ZWiAFNVY9TGIU
	vgij83n5dPhzp7s41OaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0Z-0000000CPZg-1DUG;
	Tue, 01 Sep 2026 15:02:43 +0000
Received: from mail-pz2-x01.google.com ([2607:f8b0:4864:3b::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0W-0000000CPWp-0rSM
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 15:02:42 +0000
Received: by mail-pz2-x01.google.com with SMTP id 41be03b00d2f7-c9fe62e0da3so1695349a12.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 08:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788274959; x=1788879759; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z6aB1UFx2dxtuDUMhshejketJxUphgoMFv4AnQI5Bfw=;
        b=AjKvRJ2IZrmq9yLRibJHSGI8uIn3A9/GBuo3nhypCpwzw/dDwkdAKOOzBK82bqzAD1
         btXgblyWjE3pztXoSJi1BhtEtJwyA7+MkxlU3lxa2lpNuFlj4St8noiu4LUR72UgXAC8
         oFrWIzshSkxxeyhTj0G7bgqzNEyOtrPmtLvjNj+7P5zaBp3WRNlhnxePtJacg1zDmWdU
         s9+hjxSmQfPHQH0DDMLOOueNvX32bqoTZ5CTwQgwyoQb+umIyOb0L65HdkeBoaDG0+jK
         bVyBHCZO8boOiMu8OjMYq+wmiF3Z3N5F06BNuk0uoqtrBtwv3p5MawADWk5s5f50VHNH
         QtuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788274959; x=1788879759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=z6aB1UFx2dxtuDUMhshejketJxUphgoMFv4AnQI5Bfw=;
        b=IJvvOBRAu1u7OAvY8fH5RW3lUPogrY1Z4v/CIC/1PIxfoAfdGtkX/gX56e4+ZyLpOl
         R2eXgPoOhv0/M4LhwiGt+MxTMabYHf3EDU0zyD1MEKhd2PvcimT9k0wC0jHgMlHG89vv
         ZiyKfhdOUUoUGlLJQPSYJXOjAyh5Wlrf2AUd+pc2pZ+OmsjgmOF91l1LeO/IQ98bHbbr
         ujWnIqTrVnokH1xkamfT+IhmKZbQKkbxeUknziDj9yVYYHrGyHmxdI34TphQmimndgZ5
         Wu+sV3of/yBOvo9iKelU5zoyhStH7qO/nXobmcK7aJQ20iQl4Nh0i/rDQLak/UZ5lcId
         /PHw==
X-Forwarded-Encrypted: i=1; AHgh+RpYfOeTDvJEu7itUC5Bmewn4aTPRVXSAy+C6g23nyuhwLvWbnoJfky/1JRYpd4NVHPRIJqZP4JrbnE=@lists.infradead.org
X-Gm-Message-State: AFuF++mfpcX7z8qVTAvdJUbB7dUl44zzAAf+oelaXd7lYXwzOa+tiY13
	yXqIgWRIjwgLgbraDWmuo/HWOu25yArNSOfpBXDFhf0EpBCHG7cUk7Y4
X-Gm-Gg: AR+sD12JHggZ7/llPed3qCo7iJYQVmfFrE48P12ly/2e5ztm0buAgRj2eYw7SMQs1F7
	g6Zz8swMQbDedceSa4L8RJVO8YvJvKpQEq3wDw8OjODItCgTkJPItzNGoGOLgTJNmCTeckiexRC
	BYoRV7RJf38pizaz/qEhSTt7OdFEHnNCjSUzL0xAoR0fLF0LHpdvdlxqQ3wXQxXgAg0t3EWvc6s
	g13px2Fi2sDCSl8NhYA+PlW9NoFASkNj1RMHDrKsmvsuFN9p1cwyZYFnfLPx4Ea+14nZtWDazO6
	MI5bSpjqRONgt+LTs9cY7z1+AbbvFuPymMOvvafWm7TPYzAwLpTAE0n0PkzDV8NgQu7A1CDkhya
	yQa05Ekn1ZkTRuW660o9OTNRsvucSVoZhwDmR+hLmLJeQC+YsbgnjN6YLqjwAu91sKdTPajT613
	lV19ZfN8LREgsv9n70jOj3XlAN+xdLli+VEHHnfSfd/smhiakyBnX+sA7MzrTM
X-Received: by 2002:a05:6a00:3ccd:b0:847:770f:da4c with SMTP id d2e1a72fcca58-8562bf5a609mr51668111b3a.16.1788274959110;
        Tue, 01 Sep 2026 08:02:39 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:02:37 -0700 (PDT)
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
Subject: [PATCH net-next v3 04/10] dt-bindings: net: pcs: add rockchip,rk3568-xpcs support
Date: Tue,  1 Sep 2026 23:01:04 +0800
Message-ID: <20260901150111.141037-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080240_249737_8A173A1D 
X-CRM114-Status: GOOD (  14.04  )
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
