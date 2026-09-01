Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C843DC61DD6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 15:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQIHPs6FQnhXddObKVakbzjey1z2QpFJDwlKXAsmG74=; b=Shq398ipQmobcv
	5X1rGbZGWO4yv0Yjun86f5IiJxOBWasE8hy1yTav9MwnhEieOM7fWbaRZ+f2vc4nrqnZiBIMtfFCj
	fC9cuQWX6d/86oddEqxcg6Ak0WUF68rGxOEa4Tks2BGE4DK9WvRIMZ5clhC0MHqz0QNhjG4ziJmVE
	DZAJ6CyCrkpxzhC521Qrlwxs4GrZiGpkTpm0vcuWnwKAtSItlgSqDKN/FhI9xQ/b9uz2FHh99SHzy
	LARw6sGZRUb61HJ1APUewZdbVA6o5HVtCCa5v3BxrU88Yj2OYm2Zp6atZUCUe7CuO8SW6yFEDtbjp
	Fq2NMXVfmEGIKh2bK7uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0m-0000000CPja-2B1g;
	Tue, 01 Sep 2026 15:02:56 +0000
Received: from mail-pz2-x04.google.com ([2607:f8b0:4864:3b::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0j-0000000CPgQ-3otj
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 15:02:55 +0000
Received: by mail-pz2-x04.google.com with SMTP id 41be03b00d2f7-cc1bf4744e6so2319019a12.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 08:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788274973; x=1788879773; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7/ufsj+YTp5B4a6XdY0sQWUkJ+NQSUpM6CSLQJOVS40=;
        b=TvZeRT+QMHL6HqUL2ZNFqAgnpGAvwCWvYlXVFu7Q6QhspCm8sHejbJXqu5K/Q89wdX
         xEMp8W1gjk20eAUyomBLFFxqVYX1NeKjfjPm9zmp5vUnLFVw+aPD28jSErIPKS4D0XDK
         QOG/2ZMRGnwkxqoXTaNh+88Yu/VEUp6FKrSMpg/k9czFPRPf0uL57yCmen+C/sX+VLC3
         yQFHwT6y5ReFkSR7OgPrpSpWclh70BszSI1rQ39Jso/5qVNV4zrFRv0IoBt8v1l3nkKy
         ijr7+sMSclMky/Xeb5FEgUoAfhS1k2CwyunCg5/r9XYuMWwNvJIDW6BlRUeCl2k4ICvp
         LZEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788274973; x=1788879773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7/ufsj+YTp5B4a6XdY0sQWUkJ+NQSUpM6CSLQJOVS40=;
        b=joqM672vE/sSQROJ763FfJ2wtOrWUM5mPjuFTuNcooAm02jglBbs3SACCLGp4EvV+w
         4oMKIQa06y7b1RFf8+rVFIqcvsZJcyUuDoDGal9Mlbu3UzQTp8hC0n2p1+A88c6HrDOm
         t2ecJgalpCSUUziZHrAQiJDGPW5cUzP9rtcq4WV/FtlsM2BjWhAdqtFUyHh09eXxZy12
         imngBMcL8stJEltBWPr8527uv8yOMzRpHjpxpy6cPPFjumiBSsls4sW7P7NcTXNS/zvC
         i8arY3auqjjE9cPW+SaA5Ol8ZzOp8sOgeQdhLrd50KjtrfBSGbxTJClYaCo9HcEIqQeR
         AIcw==
X-Forwarded-Encrypted: i=1; AHgh+Rrlgc0XOSy8/zPD3DEk1TsulmYXJC8W5xfiDTtG8CcNoBBCj/Er3+/qLzA9okwcEd+h2jyh/pwfqJE=@lists.infradead.org
X-Gm-Message-State: AFuF++kGUo+8L86x1s1eU4ScVnhPYGgG230OWKcTJ9XQ49HI+VGkv9EV
	ewGXLpY69Qg9ADuZy+CjEhENYwYKO2B/QdIS/UnfrpeAH5LG9fFM/6mT
X-Gm-Gg: AR+sD13YdkX/CwLTf3+06mxlswO9yp9ns8AltRJc+e1KLpqJP5NAPkB6dGWQ9bYcfoS
	1sh3pf6qT1KhFoFBXbrLpC85e7KaN+iBpqA6s7jH+dAzGQlvDwJpDneGlBJzmke0W21x7nNNPOg
	XIKxUa3g5IuiEM0E+e0POBxHwLpUBDwRy0o+Iv5aU2T1SfAmaC7Jpf/6mxPXxW2tOEyOrqmwtwW
	AYoSjx1wavYBJ+JzpaRF301eWlwWW50PHCtRqQJX/76WkcQhA3bXRZ3t6OHJTcRGluTDuPmvJXW
	fS7XkCTBzlxvplkREYkHH2SKKOarNX+QGreQEUnAwURJCE3cpRXV138JXVHC6apHiFAGQUR/Kbj
	nW9pNtN+L4vwip7RGAwxKZEt8m/gLw7xUIQOW881M1uNgjW1qmOLg8lr5bHf31OlACrKLdqANcB
	HuF75t7pAO+VQBqf3RX8w+bMPW5YNk+5hNuiN7K9Nqinwn0fX3OSnZQ0FbB/o=
X-Received: by 2002:a05:6a00:4187:b0:851:b03a:fcb with SMTP id d2e1a72fcca58-85629543442mr61618818b3a.14.1788274968953;
        Tue, 01 Sep 2026 08:02:48 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:02:47 -0700 (PDT)
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
Subject: [PATCH net-next v3 05/10] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Tue,  1 Sep 2026 23:01:05 +0800
Message-ID: <20260901150111.141037-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080253_949289_3786F423 
X-CRM114-Status: GOOD (  12.37  )
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
index 3bc653f027f1f..989e164c0eb39 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -110,6 +110,51 @@ sata0: sata@fc000000 {
 		status = "disabled";
 	};
 
+	xpcs: pcs@fda00000 {
+		compatible = "rockchip,rk3568-xpcs";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x0 0xfda00000 0x0 0x200000>;
+		clocks = <&cru PCLK_XPCS>, <&cru CLK_XPCS_EEE>;
+		clock-names = "csr", "eee";
+		power-domains = <&power RK3568_PD_PIPE>;
+		status = "disabled";
+
+		xpcs_mii0: pcs-mii@0 {
+			reg = <0>;
+			status = "disabled";
+		};
+
+		xpcs_mii1: pcs-mii@1 {
+			reg = <1>;
+			status = "disabled";
+		};
+
+		xpcs_mii2: pcs-mii@2 {
+			reg = <2>;
+			status = "disabled";
+		};
+
+		xpcs_mii3: pcs-mii@3 {
+			reg = <3>;
+			status = "disabled";
+		};
+	};
+
+	xpcs_gmac0_clk: xpcs-gmac0-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "clk_gmac0_xpcs_mii";
+		#clock-cells = <0>;
+	};
+
+	xpcs_gmac1_clk: xpcs-gmac1-clock {
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
