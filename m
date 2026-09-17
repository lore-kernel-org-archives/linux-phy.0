Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2994C982D0
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 20:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUsSdp1rhq27o714iSBBwOEd/bVCC4NgssWmO1UdwT4=; b=kmamUSahjWTE2Z
	vMXGiBfngSETLJdkdTwgtDlkolRp+mjTdQwhBw1hbQLrA7JtwrNDfnU22OrjSRLhpE1U6uPSI/d3E
	+n68dCSSS7wwUiserBogCOLGWSLFUeWMADdTyIywpfzfY+Oq4E8CEbDoJ0+2Hev3qTKIiDnSO4dEL
	Advvx+FUG0XHQL1mjmri2AV8Z4lbP8s5bOIw40MIpu4PjmUE3/xv8hTxReMOKNl+uowHY34d5Wytr
	C/bLL+/lcodxLRNuOYd2gK4DL8p8Vcf+5QOkw+rf0viGHGIa259MU0iH8kK4J2YNOAe5LWdzeyhnD
	yAITclkRM5ce/d0FX46A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1P-0000000CSyv-1kHn;
	Thu, 17 Sep 2026 20:47:55 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1L-0000000CSuS-30EI
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 20:47:53 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-39569e136f9so64839a91.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 13:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678071; x=1790282871; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=Be1b8WTHOYzSZL5t0BVD/C3nUSG7S+7QoMoh/FkfxWhJvHnz8MjQicnRVEHMkg7lLv
         3ZOCATLc2MbwGOQFj9OWu/HXc89zDJ1ZBXSwbImKExpRNFA4m2k/4/xsZLCFepwerM44
         noNpx7y0EoooPeOLo2INY4d+4Zm8gR+QlxqWDYgopyBLZEmY655qRuqtiDQ3xVmWCWyr
         Z0hEpJWDmuekj05K83/FX66UQjhGzecPiwu44rAezBqQfFhUwXFtGSG+EOzvMVXOTtVr
         KnYBDn/mj3UUIgGsaCfon0g+C/K3s1TgiOtiAJ79lrhLdNEQv1ReKe6OsWL+y72gmnKm
         Kogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678071; x=1790282871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=M20O0NBaCNvnBzRuGxBX/1IiRupB67Knj8ldpKoUgbd1bDDB91aOXu5gk1g+Hf5BNU
         ad0vGM3UpibFTGmIABaAixnJ8ABxb+d0SswW9Bf7OD3QBRMik26BwYOZPifnf9lw/fv6
         793iazFn3VugJarAUPzt7NUwEynz6uHIHds+7+rY2wuw73fXaMDONPUMik2TyJIDKuEk
         6wDXFhY4btNWM7M40w9Tmn/b4lfRpKkx7eutHhV3KwebuUTh14MaX1kX0phGWXZ/stku
         80JlXC8zkdWgqGhX3lBgEBP/ONR5T29kBXYweZo91eqf+dHeyqkXqwjXytnReqoqsJAO
         haFg==
X-Forwarded-Encrypted: i=1; AKwUvByPFaFN12HrtXYBH3ZJnWbxeaN0OzbhwKVAvsvbCv6coRbV6xEx/vNgLPH1VyiJLyqN2yEwA2D1Cak=@lists.infradead.org
X-Gm-Message-State: AFuF++k+2Wpcul9ig+D2DeH75eL0y+tAhAcF/U2+bSBgVeOT3lFckJsq
	9nwHthaOoJKbAR5uimkghOMWv2z/jQspIzKxYcuVJ4KJHOBq4Ix7ETGT
X-Gm-Gg: AYBFou2ONxxS+lATANXSGluylivCGlBYg0/jEiSIGClonKNJNqQDepFRkFG17+OuaUI
	xCgISe+/meFL0BZshzKhcePYJFB0hkP3464WDTb+5FKEQWbWFVH5jaJdSnb58j99d3Xx5zn5zxO
	dT4TdQYiipuSZ41g/LL8J5gBQxECXszdG/Y6sbuJdyt8nZtJIXruNcgJWJVUQF5jiABRphXpnRd
	NZ+KqSA9Bfmbp1jxchF1cZGrZUkBefm7cv4BE+TRcVtqJzR6nQvsBv7mEKXF3yGFxT+F/f2mOPq
	6k9J2T8eoZO4I6YJ3cpWFNHzV5Z4OZtIq6SqOGdV5BzQ6T1qbeZ82Uv2j1kzoIz67nfYQeAXrS4
	eT06t7v9OOM6XWsYxZvb7L0GaQaTzFaGbYG2mRWIEeC0d1Gb+fCfkSd6KcjtLOc73f4pmXxDlgy
	uS0iHZUsWvmAet3z9JmAkIwGufSJPS2NtmFIZ5bjT4teaR2G5WAN429BbZBgFFIOcNXeYK8DPJI
	T+IfDW0
X-Received: by 2002:a17:90b:3b4b:b0:39e:d2a:e25a with SMTP id 98e67ed59e1d1-39e54b771c2mr760897a91.13.1789678071020;
        Thu, 17 Sep 2026 13:47:51 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:47:50 -0700 (PDT)
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
Subject: [PATCH net-next v7 05/11] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Fri, 18 Sep 2026 04:46:16 +0800
Message-ID: <20260917204624.2427486-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134751_819924_A385F23F 
X-CRM114-Status: GOOD (  12.35  )
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
