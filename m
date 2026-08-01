Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C10BDC55173
	for <linux-phy@archiver.kernel.org>; Sat,  1 Aug 2026 14:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQIHPs6FQnhXddObKVakbzjey1z2QpFJDwlKXAsmG74=; b=jLf8YzsDJ6Q6HR
	/3sQ3XCtMkpJoU70ppwup8QOKNOwzdChD/QrSSJJ0P6S1j8K/oNVSNxaxhl9aHpbmD0t9/SmGtW9U
	mfvx+irIpDDqPsKT4yCUhLGqeeVBIB8b69cIDnYNdQ7ILoM0OwydCmslOsdiufSBxxVtSqs/ylYjn
	/MTXoTI1dhrgH4+z9mt2/gA/U2637l8qza6Mw5mkbP0TpihiICdvvRS/qTGhmAPylxMERafpTDAHh
	7ftGEEYJYUb90iKoazhSqiNLa15BQtYdFvD4vY5hKeTnHzxx8pqsME81fN3H1U9Jda93eZw9njCSX
	Ol0a9Toxd0fM3MsHzJeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAcx-0000000EikA-20Rk;
	Sat, 01 Aug 2026 14:23:51 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAct-0000000EifC-3mgN
	for linux-phy@lists.infradead.org;
	Sat, 01 Aug 2026 14:23:50 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2cac634f921so6328755ad.0
        for <linux-phy@lists.infradead.org>; Sat, 01 Aug 2026 07:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785594227; x=1786199027; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7/ufsj+YTp5B4a6XdY0sQWUkJ+NQSUpM6CSLQJOVS40=;
        b=cILHdB7t3gGnaxxUPK0u8OR1uMDTPWrxXOqJGoKaMi+C205btIlmzAs/C1xQIZs/PA
         vDYaQhqc+w1ymM/oH0A1n4hh78Ar2TvvWolDgYaggF80LKgXplKSR16jfGq6m507xYs4
         pOjHInkkibXPaxDKPgqKZvrngyIZzTl28dhaWwpMj0zpQoG5h8OD247IDfI3evAuL3Jp
         lidQGqRsISBwwvMPOMdN/5+KvKQh89y4wsWYONx4QymEpOEl7sFB3j97bAf35e2qfrLZ
         eNEnEgniFgPy9qrYYsloF6IUc2XfCU063xdSK2Z/MkpcKaZnPHb4KQuB3ji2OgIt7gFB
         jC9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785594227; x=1786199027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7/ufsj+YTp5B4a6XdY0sQWUkJ+NQSUpM6CSLQJOVS40=;
        b=haPlc3HbPCw9mWhAvDAI3BR5lrG7bNnJzTZw6Qch8DOeASElH3D1Oso9URVwStMUD+
         a4tH6KUR4U0pkv0PSpdx5lsE6zGXkGEj0iiEAglsTzK5+/579ZSJBuwuxez4N2Wpg4La
         1sq/fwtYzBNpydm3ak/VZcAc5h8iN449smmxqX6Kb2um7kQW1c0SBr70lDspPpg2EtQz
         GjP59XOoWRfIahVgyzlI26kMIy9xNhU0kziMFzpodpPveJa2rB6AkkdgeFhUXcp8ud8D
         4XBpTFbjLEjJlSWOBQFh1ZJIDxMIIEjjxmvD5Da6CsFg1bsjbtYJxKgupsu5iLZBBh9V
         1eiA==
X-Forwarded-Encrypted: i=1; AHgh+Rp+YO223zcgpSgQWByXY1/qlTcKTR1ay+YbzMnhFidV0fCMee9MAdNcnOgmSnY0m9u9AO4eSZE0j5k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz59mB+OQD/KTaFbkJVDydi2Cxgf+p07k5YeJKTgifFRmkYtfL3
	Wac0TAVfVLFsH9JnSm96S4oek+P4Hhi8SPOC2HKtflVc0RwzREu+Hsq6
X-Gm-Gg: AR+sD114MJWl/f2GNpVUxJV/pQw0ik1UQ288RJU67PwM7mhM0960qlktZeHHNPCStfX
	+8mLVdT0JyGiUeAIPBr7oU3Z9B3USMbTFQ2Ji8DfO6HAsOSC5m2P0QggnyeT0erz5wm91lXy+B9
	lSo41lUTP2IulPwjt9Iy9+R7wq8z09tIBTiTKSyGECHEZ5S88gkhS3Iad3I28ujORdHGJPdG/QF
	Zmjafw+dA7PrZsDLOfBftUxN5EZ7iqCtvfM5wlnt73ENLxbj26Mg+c+uKKYUABfTOtVOsBoRKFe
	PIkcnEnDa2a94Peh09TgIKtzxCclGdaizf0IUj2eTK5iGeZvKUvDOYczqzsNoQ3+Wj0Q4XHSp/4
	yQp6Ln6KYC/ZgnNX5au2CvpiLdCfgE5DixL/4t4uNbvPXPzN145KmjIZBIzixpzAnA3FQi3fpPB
	schcXA8bLfKlja+/MQgY2SmYtK7851vxKXMbZzIPMWPHjugAJNWbOr28U=
X-Received: by 2002:a17:903:1a30:b0:2cc:670d:9b2f with SMTP id d9443c01a7336-2d052412606mr37512065ad.33.1785594227258;
        Sat, 01 Aug 2026 07:23:47 -0700 (PDT)
Received: from server.lan ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae5ac3dsm18043845ad.23.2026.08.01.07.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 07:23:46 -0700 (PDT)
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
Subject: [PATCH v2 05/10] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Sat,  1 Aug 2026 22:22:29 +0800
Message-ID: <20260801142244.679437-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260801142244.679437-2-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_072348_153739_3E888FA4 
X-CRM114-Status: GOOD (  12.06  )
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
