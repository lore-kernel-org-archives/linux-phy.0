Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91CFDC98302
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 20:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAAoMuwc6glf/TVWQQFLnAywd8jav6Mx4qE4F94jr8k=; b=ur8n5MF0rdjGse
	qQi8cRgy8zEbIPRX5aB9ZN7JL1NoQMBFF4JzpQG9Nmfbp9I8jDOrpIYkVPgEcR72cGdu4rOqcLFmC
	gZ+/em12HEMwVRvPjIOLxP2RtWhLrndnaa4KU0h1uyZ2222Urh6vGLzz7BjYFrLmtGDrR73T6V5uv
	FtG7TORxYNWr4X4mXt4+mrtC/mHF0Vglz1NYFaTfV/g/ATEeePJWwtg80sZxCCLPSdPOBaEnWcRzO
	bNU9jGfZjXnIAy9tAnS6p4eulDNEYh3jT0pXiswhvyLpX7cbLZzb3eYTvFasg5DxU2plXZ1hJBo9J
	rPZxhmC0HIcaHjV/0law==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96jC-00000006UFG-1HyI;
	Tue, 22 Sep 2026 20:04:34 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96j4-00000006U7P-35Iq
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 20:04:29 +0000
Received: by mail-pj2-x0b.google.com with SMTP id d9443c01a7336-2df5ab2f7b4so756295ad.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 13:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107466; x=1790712266; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pIbZ2Qb+jhg9YxUorYRFCm5h/dMc9oDQD6qvJFZg4XI=;
        b=b+jD2MPC7nre9vRLukjs6XSdDTpLwZ39MNwgIaYkTHyRONNedCJV6Bfna6b9rhSjQI
         8j9BE8G59UGc4JISoaYYQQX8lmWJYwkQO/Ya5eV9umG2corcvWM6OHNx08xcpxxITibn
         V7ks7vDZTcg4H4xLYTr9U9vIH0uX0ZFWTfuIB7R6KtmrH/dEJWdO0rWDqbQ9ybJMXYLo
         6F6qnSiHXYDwsnlDedQfELU1jpC4Hh8205VHPHCvtoYCL6uyQo+1uyOQd0sFKMB31opa
         ta0WyNUVnPRaqiJPG3GgzXyuOlgah/d6jSQIXJNHC6GWEystGUpvbVICBjDaT4A9X0kP
         sQ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107466; x=1790712266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=pIbZ2Qb+jhg9YxUorYRFCm5h/dMc9oDQD6qvJFZg4XI=;
        b=Umq2Dr4UaEyaIXRzq+7UoXKugUo00lMckswHFMAnFWMaeDmUCj0s4jXXhJclveGvZZ
         KfFK3xXJUtN4KMDxf3LNLMIIiszleGjYaODetFUmUYZSKI8Iz5193MiPP43++hJlohWb
         D3ySqnmMxIvoCr2JrAi3mcI4Ip9HbrfgP/VvyFSQw/j+3/kj6GEfp+LTblOjJbyWoWi4
         v0J19vSlpRxyBrsx1ZuI95cCyofY/edXQ7ckBzfXY39PryJvAdbbwI+o+H11euyXGAkU
         zIgFA8RgsTFAurtqeaQbh+2cLfZGuCj2yZa6lMFjaDc6SuOosZ92KbPGzxRr83abpwoy
         oO6Q==
X-Forwarded-Encrypted: i=1; AKwUvBys2Ng2aoMKEqYhbNwpj0lshoAZ8BF6aKSNYYjFLMOSPW/jXw6XAp7J+Wy8Ebdb2ogeIkbpG4PbC5U=@lists.infradead.org
X-Gm-Message-State: AFuF++liCicNNo6e+Pf76aPVk6kMDzS1QriUJCjJvV2nxckqviQkiMua
	vvukgexebxTbRfAmZI+zZrQjd9AmeOvU9D++OgPWqTdTr95Klel3KqBs
X-Gm-Gg: AYBFou10E9AupjLa8ZwQknknjpQMyiwXBbh3I+MFJX8bIhL3ONTXHnsJQs2lkqQKDgO
	lxPi+gbHIbnGr6py96neNrYB41fxwDFRihzNx/a2/5Xt/04/ScPHuklhnQkHSZZK+OYfGwT8oh/
	4DO9uKF1i46NqylIGi58HeOFhCIcg71D/W9R+MxCtR3q7Njef7ktkV4Lj7PgTh2g0J3QE7peCOZ
	T/RgSvDbi5vcPUXkODf9JNMa2TlICDp3hSgjhKaG4eUATTK/qYb0tFn41E7y7QvC6P7IzYNzIJu
	RReTZ9pJkq/2TETK0Uzyd2Eg9Vt/tsV5fE/AQOvj1Ne7mSlm89TmFdTL5R9wF+zWYeYftJVocHN
	jq8pZ4rLy/5y+hRy7uS6zYYR3H6e4YscK5pw2+WfUnBlHF3tpd9Q5Lpo6ik9XEFiAML1DVcbusg
	0oMzJWfWcExpIlhj7R+0nXHOS6p/Mm3VSEbsHYZvujCk0zsLm2FZHJWbf41AXBE3Kz2ELyj+7mV
	gOqhAQ=
X-Received: by 2002:a17:903:3245:b0:2d9:438e:b70d with SMTP id d9443c01a7336-2df69d0cfd9mr4017475ad.1.1790107465799;
        Tue, 22 Sep 2026 13:04:25 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.04.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:04:25 -0700 (PDT)
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
Subject: [PATCH net-next v10 05/11] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Wed, 23 Sep 2026 04:03:29 +0800
Message-ID: <20260922200336.2201212-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130426_785416_39290D7C 
X-CRM114-Status: GOOD (  13.24  )
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

The RK3568 SoC integrates a Synopsys DesignWare XPCS that provides
the Physical Coding Sublayer for 1000BASE-X, SGMII, and QSGMII
interfaces via its four MII ports.  Add the XPCS device node and
its pcs-mii sub-nodes to the SoC device tree.

The XPCS device is accessed via the APB3 bus at 0xfda00000 and
requires the CSR clock (PCLK_XPCS) for register access and the EEE
clock (CLK_XPCS_EEE) for Energy Efficient Ethernet operation.  The
PD_PIPE power domain must be enabled before any register access.

Also add two fixed-clock nodes (clock-xpcs-gmac0 and clock-xpcs-gmac1,
labelled clk_gmac0_xpcs_mii and clk_gmac1_xpcs_mii) providing the
125 MHz reference clock for the GMACs when operating with XPCS.  Their
clock-output-names match the CRU mux parent names in clk-rk3568.c, so
boards can reparent SCLK_GMAC0_RX_TX / SCLK_GMAC1_RX_TX through
assigned-clock-parents.

The XPCS node and its mii sub-nodes are disabled by default and
must be enabled at the board level when 1000BASE-X/SGMII/QSGMII is
in use.  The fixed-clock nodes are always present and do not have a
status property, as they are static clock sources.

The XPCS node requires a reference to the appropriate Naneng Combo PHY
via the phys property.  dtbs_check only validates required properties
for enabled nodes, so the SoC dtsi does not provide phys/phy-names:
boards that enable the XPCS must supply them, since the SerDes link is
a board-level design choice (combphy1 on some boards, combphy2 on
others).

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 45 ++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 3bc653f027f1f..2cea108b31a4e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -8,6 +8,20 @@
 / {
 	compatible = "rockchip,rk3568";
 
+	clk_gmac0_xpcs_mii: clock-xpcs-gmac0 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac0_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
+	clk_gmac1_xpcs_mii: clock-xpcs-gmac1 {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac1_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
 	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
@@ -110,6 +124,37 @@ sata0: sata@fc000000 {
 		status = "disabled";
 	};
 
+	xpcs: ethernet-pcs@fda00000 {
+		compatible = "rockchip,rk3568-xpcs";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x0 0xfda00000 0x0 0x200000>;
+		clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+		clock-names = "csr", "eee";
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+
+		xpcs_mii0: ethernet-pcs-mii@0 {
+			reg = <0>;
+			status = "disabled";
+		};
+
+		xpcs_mii1: ethernet-pcs-mii@1 {
+			reg = <1>;
+			status = "disabled";
+		};
+
+		xpcs_mii2: ethernet-pcs-mii@2 {
+			reg = <2>;
+			status = "disabled";
+		};
+
+		xpcs_mii3: ethernet-pcs-mii@3 {
+			reg = <3>;
+			status = "disabled";
+		};
+	};
+
 	pipe_phy_grf0: syscon@fdc70000 {
 		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
 		reg = <0x0 0xfdc70000 0x0 0x1000>;
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
