Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFAB9C982CC
	for <linux-phy@archiver.kernel.org>; Sat, 19 Sep 2026 12:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUsSdp1rhq27o714iSBBwOEd/bVCC4NgssWmO1UdwT4=; b=qIfRBPTLOhO56I
	joN1TguOISWOEwUPSoKpl3fry59qE2kqkTuH+mfRN8Mdk2QZZE2mihL469xPhT36ztxbxWEaDsigV
	7d+TXueYYPg+YACpeuELGFOKmljxQ9p+rOjQrvvSHT/hyqZ7jUTzLZ1cBTesnif/fiU4VxOomYwWi
	fO25g1qcvIjIPPn7SIt1+R0kpZhEpNbNi42pOuhZJ1Vx2AdiORc3fp2yoDkGM5U5shscTk2KT33lD
	yXxBeuzDu1RQf83/AJmKpTgmrxvDN8Qs7lh9TesGILOygew2kbKvfQuqTS9cSY3nMERItB1e5BXgl
	kM08/m25/XOkGciSuKFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYP-0000000GHFa-1P3n;
	Sat, 19 Sep 2026 12:52:29 +0000
Received: from mail-pz2-x0b.google.com ([2607:f8b0:4864:3b::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYL-0000000GHAy-39g5
	for linux-phy@lists.infradead.org;
	Sat, 19 Sep 2026 12:52:28 +0000
Received: by mail-pz2-x0b.google.com with SMTP id 41be03b00d2f7-cc150711112so188390a12.0
        for <linux-phy@lists.infradead.org>; Sat, 19 Sep 2026 05:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822345; x=1790427145; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=NRkahPtNQPpWbJTrJttmQehKRUP5Hpx8ji3mjBrb8FQFQEaFdjlF4jdLaZlWFjLdRa
         /4ZlBdE0hP1F3b0QFtX44wrLaBH0ZpQSrLcYVMfr3dSBZSk2wsdCDq41m1LCfOGeAXLh
         BI30hjtFfU+F2LT6gcq1cZIHZABH/5NPUoe7rnnKiiLgoW3La1B+aPvyYRmrOHZTb8Oa
         nJaSpwG7YNKTz6zJOVxsAiveamBjEymhLlUaZdlDhD4EpCQxIJm+JsP/FH1xSRGrkuRV
         VDcKvWxhkjDAgQz8xykistai4UcInEScna7FbZ9DuA9qLrXF5DBpgMkWXno52VPtSS36
         Y0/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822345; x=1790427145;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Mg8/YZyIZ3CihMksQCv23yBYBJSGhmM45ppIsWYSP5M=;
        b=dKpMPMA2b3FQPtOlA5lp7ZNcTjbzFsYZbnlUxb0cPUT/npZwpV+G1ZBeqK7NoVP+xg
         o9j9ieOe83BLBELwBtZwWac3NQ28yu083D9xiw0QTsSFSHJjh2CWnzyRSJ1knP5CZvK4
         tc3h7J4Z7PGdLxQWACyWDL3xiCpZ03Eks8OxzLCIULPY12tyeoaVoJUHSKEQQp0cLhwH
         bNENfbEbkIs+1MV/AXGzCCPJmC7RfK0PdTNVIkWo1HzreSG2nJ/YsSBQiccPX5QE719h
         jmlbOGvJRFc+F8q3buhBKLy5ERuC6GE9mQIXOQxTNK4a29MiW+sKi8QkF7Z+NwUvszu+
         ojmQ==
X-Forwarded-Encrypted: i=1; AKwUvByL4hcQz/bf028V/MllsM/GJYiNiudQmAjWwNXVjLrRSJK4L0I1ITu2jXoV02SgUmnamZKGSee8TbM=@lists.infradead.org
X-Gm-Message-State: AFuF++mECLG9VnMRzJZDmDOkI10lLGCyvSwuMFpfaDSLlbFVZb+FronW
	p+Qy0nDbOl8v0oUxUtEUz1zNs/4QEYWuqQqfdf88OnfIgGF9oq36d4vW
X-Gm-Gg: AYBFou275QRCtHon1VLCJVkSZWknhnCyU8kYdHVv6pop94XIUxLGV2ec42SIDR4WK0b
	ndLCkTEhyPcV0s5IQai49wDg7IEII6R7Gg8gvttpaJJGI/Vrik8j9Y/RgRrbCCVP6aOQEoRnay3
	r5+lXv1y5cQ0q4PZ9QHUKl2IErNJM+vvzP53oYKYj2vkivP5CQe8cMzFbLT2F9dVn22SVlNazkj
	nzK1IunHNO0YBu1XkgpkWWoIgiNsrdrOh69mvQx1aEx9y9cl4HDbNZsPe7BAcg1+MjYQI9HZciG
	a2DY9LWw4jtzpYaCcK27/PMJIx5GZFWwSq6JHwo1Pi7vHwigVbI8M8kMbcW1k5Zyfm2heYWG30x
	nxgUn2Cp7Vgz7ndFtbC2gWKajHLTM4Ls2YOx93j3xHRed+K9O6LBPBhWkDuS6y7Nc/PQ07OvM6X
	v+qpUCF8h12oKYYNUZLqW7emmunHQPvYmI/k3HsAoqwa5eRYlMW9XF9eB8NsI4OO2kfPAZvA==
X-Received: by 2002:a05:6a00:148a:b0:878:34d7:69b0 with SMTP id d2e1a72fcca58-87834d76faamr1660285b3a.55.1789822344779;
        Sat, 19 Sep 2026 05:52:24 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:52:23 -0700 (PDT)
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
Subject: [PATCH net-next v8 05/11] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Sat, 19 Sep 2026 20:51:12 +0800
Message-ID: <20260919125119.2107089-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055225_830979_47B40479 
X-CRM114-Status: GOOD (  13.32  )
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
