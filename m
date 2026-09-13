Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2DD0C88E63
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 19:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtGnWOLIVy1AVpVaSpbrL+ROJZzjFfhNHMUstUQHVww=; b=CMZ6A5iJi6J8A9
	W4XcsALXk/eM78N2zaDALG59rjBMNG43QaqR3K68sL9nslqSdMswsVLE/wMObsLNB+5BHgiT/12P/
	gqhXG+PmgJw9vxqEuxTaP/vXeKV+3m1cwlL9QKTd2teXWPXl6kQmBV7iziHzsHgQCtf64aHeNXS1g
	0pF/4gvPwaCjUqt7QzKB/l8Z9h9uW9CRZFGhEH6QLyEcKv1VA52jKAvfQOgO8xV2RhYhHgjlxd2H3
	wHCWSKHvkMVJhmDoKaBQAFDiD9O+vEZruB4eAcv5p3osYxo8EZ+kehnFQ89hLG+nkU5WYFOBDR1Wm
	XjeYm2ZoD36o0tQ8cTug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRD-00000001xBl-24Q1;
	Sun, 13 Sep 2026 19:00:27 +0000
Received: from mail-pj2-x03.google.com ([2607:f8b0:4864:39::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pR9-00000001x85-2Ywp
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 19:00:26 +0000
Received: by mail-pj2-x03.google.com with SMTP id d9443c01a7336-2d6fff25530so9852535ad.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 12:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789326023; x=1789930823; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=af5XJnE7hcWtAkVsrU4T0JVcIxPb3Aa/NhPJOVNgxm8=;
        b=C5mfl79maCxrGqifHHR0dO5SQpRCyxINwu0oe6EsPdNVWUmnHtdXKg7x0R8M7wJ8Yp
         SLn55LKBJveJuvUNx/de7Wqj9aVStff2fr4N4AgIPIK5mkUp/vm75FlKLd+t8BkV3dFq
         4Y81eEDKisMXEhaTF3ibuzMvAZSVdjumhtrz6IGRUOglW5XBWqGc91Wvo+3h0O3/EJsF
         6agScrodExpfpIEMxmE+hLuQSa7V7V6RtFVnlkyCZMUk8t8fLvC92RgK95i4lE+52Ce8
         7NsW5dnmtHN/JPJyJLI46nGFUaCQRIAHUd3bqYJsnnMF3isYJIErgWU7OgYfp5ZxseYQ
         NOaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789326023; x=1789930823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=af5XJnE7hcWtAkVsrU4T0JVcIxPb3Aa/NhPJOVNgxm8=;
        b=Cj7yKqazl/Yhuut861K+7s/wSGQmz8RPhKYXZT/NSHyERt2LYoreC4zzD37x+f6zen
         UbuJBlTpbOB4FJ/ukT3daf+9FpSGcvyDuqOBFhyEytqAJXu9Jks4YofA4tnRRVeDiA5Q
         3kbwqKbAhtCnXsGzq6GGu+DLyw0agnzDlZI+vMC3V6PjQjVU64uoif9dmMqGMlKSj1sc
         g2XVqcA1pjtE95bqZ18ckuRHAg/IwwwA6qPiNNPdKmnT/Hhr0iUCMcSHLtyoI4LkxKJU
         2rlrIAKl//dSrbDrsEgNpYVCZ2UMBLLK9xJ7yB8fBfqFihXNfFqPCH8MYr3fu5nZrS+u
         NCfg==
X-Forwarded-Encrypted: i=1; AKwUvBzvPTcuWWHdds8226fXsF2HI4+c0gq3OtUPKv24LzDb8if+A7gxFsAH/tTOe7xkCTTra4uND6oLAtQ=@lists.infradead.org
X-Gm-Message-State: AFuF++kRtqL92tFUvh6pho5ZteE2frmuQT7wv05X6c+TE3odPLuwxviP
	m0oCubCoVZ/nqYo2D8pq7z+K+YeksKtDUw10npOn1cJQQG2WfT8ma69M
X-Gm-Gg: AYBFou3bieW463U/8SBNMjnVFwCQIErixVf8uleaDIdarj0DQy27DYuA7Gb2MZLPS+I
	EyoNjEYOPwgmgR+I/FF5PlZT1sSjATxxSzFgI29Mmqq/ruPrTj1rMVh0OrATzHtlXfZM7aNwgMD
	fbgV3iNbONdsVy9Cxj1f7swSXqHDq+pvW3/BzMHY+HtNujihPwgPcYxTxgarTaJWlE1efXZ4ehC
	28BLRzztqT7cGlWK/wopxlOIXv+A79T7nI6Ce1ZMYuoYYqGfwN4YSucNih+xjZ1Inljw6rIp6vT
	wYaOItnOtMnpEi6k+nm62UvauZms8iHJuxg4jtr1UUvklfiw0T3S1O7BXPrUV0wCzmORuCc+d6i
	pikGxDGK2C2YfWdZRJgN+rFPsO14hMFlwjidxnkcOop1A6GLH6r5nwYYSlY1VSRWOXPgpBRW4hI
	BvPXf/boc/c/pmz+xph8Hoy9rFEqh9AWa6iHGSvLHJfRXhQfb1/LXEB/INC8ZvWBstp6REvw==
X-Received: by 2002:a17:903:98f:b0:2d9:26b3:547 with SMTP id d9443c01a7336-2dd2a46f4cfmr250162755ad.20.1789326022854;
        Sun, 13 Sep 2026 12:00:22 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.12.00.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 12:00:19 -0700 (PDT)
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
Subject: [PATCH net-next v5 05/11] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
Date: Mon, 14 Sep 2026 02:58:40 +0800
Message-ID: <20260913185849.907479-6-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_120023_670972_E4352168 
X-CRM114-Status: GOOD (  11.56  )
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
