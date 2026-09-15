Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3351C88E75
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 12:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtGnWOLIVy1AVpVaSpbrL+ROJZzjFfhNHMUstUQHVww=; b=jEUbE1G94H4wnw
	ZQnMv+vxrLWvCrFOSIp50ZVyEHBC1qozChocaBEaIMCrVxYLrVJKBC5i8jD+5yQjup5IUD9yvVVgW
	onCTiAH/Ocb8MVkX/DBChWbI1JE67w6jHWgoacgJU8pnIOW5Y3Q89r52AoioCQPUMqXCfH0Ae63VY
	5FEWumlPKytyX2ylxCaASamiCCLyJi0tjCzt8sKN/QkbMeL6w8JABoBcOJwJ6tW6Y+P8VFikJ6D+M
	7aIEq57E2LRvL5JFkm32AMYMRTN5y99JtqbfBuio5fvIQh1yfNJuDwb9S0toBaiZ7WyGQft+TZrPD
	A8PnGe5MrRwgnYvR0FyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRZ-00000006Xun-42I3;
	Tue, 15 Sep 2026 12:39:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRM-00000006XRc-2Dbn
	for linux-phy@bombadil.infradead.org;
	Tue, 15 Sep 2026 12:39:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=af5XJnE7hcWtAkVsrU4T0JVcIxPb3Aa/NhPJOVNgxm8=; b=kgtZplPcowpeAs3itOSGdQaQwq
	El/KLXNo85gxtKnO7odhgsGSoUox/P55MMB81SZkR+vxBrNvNySil2/aWVlzur1bbv51IKcaHaE1J
	1/Z6lPKdUz+PqEawZDF1ibT0KiQ4DE0yKV4yCDFChUJrFjGn+1jaO6UlbV7HH5wshGlTTncwVxq7d
	831VvIVaITPcAmTRz674tM8YPO+O9e03CfBx5ZbcMWEzBAqzO++Y0lhBXc9WhatdbQhX5xrzBCS+h
	RCPkpUlYNnwzMxR/ANsmR2J+AG3/6oHYoLNv3Z2pieghbLGz4Eb+WDWyX2TrsI0IeaqXbkG2iQbLO
	YS+MrABg==;
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6SRJ-00000006kKj-3jxw
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 12:39:11 +0000
Received: by mail-pj2-x01.google.com with SMTP id d9443c01a7336-2dae660f31bso31615185ad.1
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 05:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475948; x=1790080748; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=af5XJnE7hcWtAkVsrU4T0JVcIxPb3Aa/NhPJOVNgxm8=;
        b=A+umL6mM38G9nU3EOVVJB35+J8QCDJS7Q1K2eXG+bhJHaIEGBJYzBVy/Xdi1L7qlSB
         Zp9Feu1fVUCqf1HJUxnoHK4OV+4sbVWcHb/OlvRXnESyBI/elGa8mt6i0WSTeINBs9Fs
         ytnRLNdgIx3rWVuLhr3SblBx4+LaKA6XlIhuYHH88tLcfXHuUXOk4vCHFfp+0BUKhWm4
         PqRyXmZ+9ICwobT58GiUezVx+JxGjbTrOdAHEWC7TKuCcVKVja8WLTc67pbS7I/eAme9
         xX7C6HAfbAseH54gKE/Rg/HduFqH4c1y2B1GUb/oOqvvl6R5kFXC8BNzKIR2WFbcIcyr
         e+0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475948; x=1790080748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=af5XJnE7hcWtAkVsrU4T0JVcIxPb3Aa/NhPJOVNgxm8=;
        b=Xcs3ov29Gvm9uVjRd0gkFp9/rUCjY5JAun7ct5/ksqcO93YFFYUzc14OgBg5pyz6uR
         FuMmkvxSOwzlFvgtV7S9R3C7E4FRhU9YSt32LNskOul5Iz9bR60xr3JNUUGGqmblXft/
         rT/Nbcfy+prtO+KJ3eSkBrGusYgjxuEs/45fwi18yTF9AhFiT7EHObC0lm2Ata4ku42b
         3NBYP8bDAmKju6fP/Sy4iJwQ693rajOsn+sM57t/OQ69mPcdf4luBCmg5J/jixfFl4RE
         LXsL77q4OGqmMK0NbsG1TZEWZZ1Dc6u/aTUULNkEhN+f+Bh13ylhoGgCkh37j7DEnk5N
         M0Qw==
X-Forwarded-Encrypted: i=1; AKwUvBz1j5ThunxATXlfMHrPxPasICbmh3PIQCLAtWLMF+DlWoz4epd+fa6YjScjQs4Hl4WSRMLbfG48bqU=@lists.infradead.org
X-Gm-Message-State: AFuF++kOlUaGL87YhJyIlxevBkqNOOv6+QlQzrjqZq+9+7NxxORUPXzv
	BXvx6/5U9jNq1glmGgkYIaZpYufjWm+J2swDJ7BL3zJVHiG0QlwkaRq/
X-Gm-Gg: AYBFou3lVQanjF5vXO8RvonCb35e/4dZ70ePjkfSflBSlqGxpqAUYJGtNzLi5z4XeMk
	4qDPTo5NgyQReACKEbkf+SAYC9xg45Np3HS+7UB18EXCJSPEExIYmeQD0u+JuoXX65SSp4srIM6
	HjLYdSBZWxiNNTKyeFBZrK7S+IK7ag3PDz1sr+ZoAtPgAXJ1D2+eKsEDbAsggK1Jt0xf/xBLwPq
	+SOnUeU5rouYlPq4X5tXl6k/oTt+Sznucgdx55HH8FFmB6+ei5m2KV5Spbo7BRo1WWemTnsfpAp
	xddO5bjdg8gwpwFs5rr9WI0KIw5Kb1tkw/gTdzbsXcjmDkI1XWVQf/MEWMpbiiOZ5EwG9jzUvXP
	j7l1zhzi3PJqp3PmKRafDn/Ld/pXnDNE6B3X+2g3z5xIYghJ5EYsWPou1ptVr2FdHg4KV8Tnjnu
	s0+HtY0MTxNP6w+ReesBeAfOqHgMBBg9P4/2IvMIsiTk7RjLACFjrxBGE5BwVT7RaYc/605Q==
X-Received: by 2002:a17:90b:440b:b0:39d:e784:3e1c with SMTP id 98e67ed59e1d1-39dec0f7193mr14930029a91.19.1789475947417;
        Tue, 15 Sep 2026 05:39:07 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39dfdd28acbsm5307259a91.10.2026.09.15.05.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:39:06 -0700 (PDT)
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
Subject: [PATCH net-next v6 05/11] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Tue, 15 Sep 2026 20:37:54 +0800
Message-ID: <20260915123802.1561724-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260915123802.1561724-1-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_133910_022501_2B91A984 
X-CRM114-Status: GOOD (  11.80  )
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

Also add two fixed-clock nodes (xpcs_gmac0_clk and xpcs_gmac1_clk)
providing the 125 MHz reference clock for the GMACs when operating
with XPCS.  These clocks are used as the assigned-clock-parents
for the respective GMAC nodes in board-level device trees.

The XPCS node and its pcs-mii sub-nodes are disabled by default and
must be enabled at the board level when 1000BASE-X/SGMII/QSGMII is
in use.  The fixed-clock nodes are always present and do not have a
status property, as they are static clock sources.

The XPCS node also requires a reference to the appropriate Naneng
Combo PHY via the phys property at the board level.

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
