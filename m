Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80355C982DA
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 17:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUsSdp1rhq27o714iSBBwOEd/bVCC4NgssWmO1UdwT4=; b=q7rgGUc785A1df
	T1iW2MVIN480k4hB2p9Iocw0d6z76a60qwNSZr/AAY3xxw4lTt5ITRNbCN07Q+dCPRO4XTHQXwCGp
	rcOX43KoDNirn1HIZfV9tBwXRb8wo8Vwj7Rr/HKedHkUTmo1U8XXBotHC/7mCL+KDl6mFG53i5SbQ
	F5VIBECZr6VY1NdoKSl9HVMRvrF+u3CJaaS4hnX2e5Cw2kcrehPF6IIhfMrEcvNr6utYTn7PMvwMC
	O+mDx6YcGhCwczi/JTChcSGRVmMxjnoETbkcEAvl/W9TRBIuOhyOn72jx5t6qjVaIThvwZAQTf7hP
	LRGIk+RqMt3HjRkAZPBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8KwJ-0000000097x-0cnr;
	Sun, 20 Sep 2026 17:02:55 +0000
Received: from mail-pz2-x06.google.com ([2607:f8b0:4864:3b::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8KwG-0000000094E-0TZU
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 17:02:53 +0000
Received: by mail-pz2-x06.google.com with SMTP id 41be03b00d2f7-cc4b14f0364so950348a12.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 10:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923771; x=1790528571; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=KtlgqDn+ehoX0f9gtcg9ds8R34JRZtw/ohuGtzjHptUTlQjdAP+EB4eahntJkQBgZB
         0d4Xrvf7vKZ/qu+Fvie0hsewc65zVFQYpymEYMY23HqIhyQxPWcVQOeVyXAaTW7hgkyp
         RpLwF4h5do7wVgYjzOUNe4ilCJclli2I9a7DAF2/8UbGdXCgDr58Wi24uZLTs88vdmH5
         VEJOJeT/3lZvR87Okk84JOE91aeMRr47XXUK70Vk9XihGSVxYXrH/ysNeRkWBY3VMGtz
         LXFZ09OBJE/6L7/6XDJIDN4xibeQ9JURmkke5obZH/PUNDR4T9ebr87VQ5V7dhLWDtuR
         88iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923771; x=1790528571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=pwjJ//mYm69tRPvKv9P6lDy70bT55Im3oRSC3d/DlhQ97U45/gyCgK2yQ6onokVOYg
         iC5YBr+7yPebJZl+LK9YdXxU9aTQOeGquh0PXB2cRNlhUIikmhstHO/HgubLxazjITxs
         5gQ26H8KZYEdJ6MebBB4o7IgGsSp3MoN/cr8FQwls8YwWo2R4jq0HQ6FJCCqBTqhfv/l
         FKiKUQ4rFvvHK1CH9VQeMQv8SLh6r46D63ptrumwPukVrpjnyUXZzZ/VjD9vR384XvN4
         oxS7zMvv/p/7h4KlHVafOyqW2FDCHKGOR25cSDJVTb4QPpF4HAvORrB5XOoTkZmMhG9D
         lUZQ==
X-Forwarded-Encrypted: i=1; AKwUvBzlr9MymmMFrVYSEevNRYvquJpR3ZVx8MvEQe9JVS/2zGep+n8S8EsPIpyVfQJi1XDz1HNhE+ITmxM=@lists.infradead.org
X-Gm-Message-State: AFuF++mpegseDKngovz1FaBSU4HsNNfn4hw4KXwhKKsPiMoTT3zPjVbC
	MDIlh43OMa/R5PspNrluV9pXlMG8sa9NZc6eCJeo0nHxwsK9e3VL3i27
X-Gm-Gg: AYBFou3oDz5lQGbRwfx28h9Fu2tT+dF4TCe5oUvEVZJirRLNKz0gN7mtnoW6bEQ3dbi
	DsdgDv/nG7xgz7ChNtyGKHILRZ+JLxWLlGwhHQPW8qrSZlJog0RY5putvroAhSHivKhUWZcnMqn
	tYlOhgjszP2GLpdv3ma8fbj4dsW4GiDp1uDChSzz6VwCnX9wehDzlOhpLQdKRuyao7VLdBzZ4TL
	gNvsKa2Wlthj5im8E94Mkts72LbLzghRn5fcaBQG2Iwt/Ly5xMgOh0JtAzJpeUBBnpjmfWaY0EE
	1DxmvgOtHMi9qJha6q8XjMXtO80NqEFRLNEOeEekuI81MfR1gnLlMffNt8/8PYNvibVoGLh6Vdp
	jBfYGC6L6guwVlqa69+1lSikSc2j+XG3Mi4rd9YYpHY5qHMSn09kADO8kKmaXz1+MckWjknc7V3
	iZ0b2TkntMyJSy56eiXYHsQE/qliHI+Ug6cy+AB2wZhlxBhSUXAx1B5xsez2OTApTMUvXOjfAMp
	GiWIJFl
X-Received: by 2002:a05:6a00:1ca2:b0:851:8baf:5b26 with SMTP id d2e1a72fcca58-874dc5eb6b5mr12081998b3a.14.1789923771468;
        Sun, 20 Sep 2026 10:02:51 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:02:50 -0700 (PDT)
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
Subject: [PATCH net-next v9 05/11] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Mon, 21 Sep 2026 01:01:09 +0800
Message-ID: <20260920170116.3624104-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260920170116.3624104-1-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100252_158986_EABBAE76 
X-CRM114-Status: GOOD (  12.46  )
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
index 3bc653f027f1f..227d03e336043 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -110,6 +110,51 @@ sata0: sata@fc000000 {
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
 	pipe_phy_grf0: syscon@fdc70000 {
 		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
 		reg = <0x0 0xfdc70000 0x0 0x1000>;
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
