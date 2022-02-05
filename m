Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64E51C433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 18:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyFHza37PmKeO6LCOwYZwDPOfoMWXeI3s764JRAdXzg=; b=OlnsCP1alPRljs
	Gi9xZcS9VHDiW+NR8ghXDJKwirD2WA0wU2QHkjKS+fOh3mKqg4fc9wInPG63NtJe3RT0ohBi/6U5G
	j3DQG/5X9MAdnwYXjyt9uY95ntf0ZAtKc+MiWDgf4FAvTbtkDHhUkN3YbRqKL8CMzd8ST+6dRMS5w
	mgeS6SaF/u2LujNzpQ4T/Xfo8HwqwiugzWmYf5YDFjnSIzVA0FMT+cr2b1XVmsXAWuN8GITgBNEoS
	MqxVZ5KYcrSCiqM6EsTOkoTicmHju/m37LEswWVrsu4A6Ezfc0W4YEgAWW2p2+fVXWmInFm8WZT2l
	CHvuDaR/vmI8+QN8EnMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQFq-00718S-JV; Sat, 05 Feb 2022 18:57:50 +0000
Received: from relay10.mail.gandi.net ([2001:4b98:dc4:8::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQCy-006zHs-8D; Sat, 05 Feb 2022 18:54:54 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id E84E324000A;
 Sat,  5 Feb 2022 18:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=29+cdXhI7L+2Gxc8tUO/DTtQnEvp3UwBUI/8lM2KtFc=;
 b=SX+D04eBXLLpgWObpYKueWwe0B+Xy4hJcCDJP+JF14LGOpZvh7uLA+XUvjKGB72NDJyt6R
 7yWWL2ol3So3g52bmaRFY6EhwGrS1AqaQzIKXkKDqKEerDrSgpDTlVoDYCA7IQozkxlDri
 E88zpaPD6vUSnAkDrWqyYLtPw7yZ4g7D9zPPpgCkLmotUnKJNaD6w9ydMyQhZb9/BCxNjN
 kcP2es4/UoXdErLs+pjU9OjCUxdze9PyOFSVhhIKyM6PHU+kihzVxmE+DLIZDhOAegWiuX
 e4NqadwyGN7uXkj6oC54J8MdSZc87fhGVCzJaZx06fQxDPAtt6xHGzne8RcExw==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v2 06/66] phy: allwinner: phy-sun6i-mipi-dphy: Support D-PHY
 Rx mode for MIPI CSI-2
Date: Sat,  5 Feb 2022 19:53:29 +0100
Message-Id: <20220205185429.2278860-7-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105452_645467_0D3D1814 
X-CRM114-Status: GOOD (  19.71  )
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

The Allwinner A31 D-PHY supports both Rx and Tx modes. While the latter
is already supported and used for MIPI DSI this adds support for the
former, to be used with MIPI CSI-2.

This implementation is inspired by Allwinner's V3s Linux SDK
implementation, which was used as a documentation base.

It uses the direction dt property to distinguish between tx and rx
directions.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/phy/allwinner/phy-sun6i-mipi-dphy.c | 166 +++++++++++++++++++-
 1 file changed, 162 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c b/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
index f0bc87d654d4..3900f1650851 100644
--- a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
+++ b/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
@@ -24,6 +24,14 @@
 #define SUN6I_DPHY_TX_CTL_REG		0x04
 #define SUN6I_DPHY_TX_CTL_HS_TX_CLK_CONT	BIT(28)
 
+#define SUN6I_DPHY_RX_CTL_REG		0x08
+#define SUN6I_DPHY_RX_CTL_EN_DBC	BIT(31)
+#define SUN6I_DPHY_RX_CTL_RX_CLK_FORCE	BIT(24)
+#define SUN6I_DPHY_RX_CTL_RX_D3_FORCE	BIT(23)
+#define SUN6I_DPHY_RX_CTL_RX_D2_FORCE	BIT(22)
+#define SUN6I_DPHY_RX_CTL_RX_D1_FORCE	BIT(21)
+#define SUN6I_DPHY_RX_CTL_RX_D0_FORCE	BIT(20)
+
 #define SUN6I_DPHY_TX_TIME0_REG		0x10
 #define SUN6I_DPHY_TX_TIME0_HS_TRAIL(n)		(((n) & 0xff) << 24)
 #define SUN6I_DPHY_TX_TIME0_HS_PREPARE(n)	(((n) & 0xff) << 16)
@@ -44,12 +52,29 @@
 #define SUN6I_DPHY_TX_TIME4_HS_TX_ANA1(n)	(((n) & 0xff) << 8)
 #define SUN6I_DPHY_TX_TIME4_HS_TX_ANA0(n)	((n) & 0xff)
 
+#define SUN6I_DPHY_RX_TIME0_REG		0x30
+#define SUN6I_DPHY_RX_TIME0_HS_RX_SYNC(n)	(((n) & 0xff) << 24)
+#define SUN6I_DPHY_RX_TIME0_HS_RX_CLK_MISS(n)	(((n) & 0xff) << 16)
+#define SUN6I_DPHY_RX_TIME0_LP_RX(n)		(((n) & 0xff) << 8)
+
+#define SUN6I_DPHY_RX_TIME1_REG		0x34
+#define SUN6I_DPHY_RX_TIME1_RX_DLY(n)		(((n) & 0xfff) << 20)
+#define SUN6I_DPHY_RX_TIME1_LP_RX_ULPS_WP(n)	((n) & 0xfffff)
+
+#define SUN6I_DPHY_RX_TIME2_REG		0x38
+#define SUN6I_DPHY_RX_TIME2_HS_RX_ANA1(n)	(((n) & 0xff) << 8)
+#define SUN6I_DPHY_RX_TIME2_HS_RX_ANA0(n)	((n) & 0xff)
+
+#define SUN6I_DPHY_RX_TIME3_REG		0x40
+#define SUN6I_DPHY_RX_TIME3_LPRST_DLY(n)	(((n) & 0xffff) << 16)
+
 #define SUN6I_DPHY_ANA0_REG		0x4c
 #define SUN6I_DPHY_ANA0_REG_PWS			BIT(31)
 #define SUN6I_DPHY_ANA0_REG_DMPC		BIT(28)
 #define SUN6I_DPHY_ANA0_REG_DMPD(n)		(((n) & 0xf) << 24)
 #define SUN6I_DPHY_ANA0_REG_SLV(n)		(((n) & 7) << 12)
 #define SUN6I_DPHY_ANA0_REG_DEN(n)		(((n) & 0xf) << 8)
+#define SUN6I_DPHY_ANA0_REG_SFB(n)		(((n) & 3) << 2)
 
 #define SUN6I_DPHY_ANA1_REG		0x50
 #define SUN6I_DPHY_ANA1_REG_VTTMODE		BIT(31)
@@ -84,6 +109,11 @@
 
 #define SUN6I_DPHY_DBG5_REG		0xf4
 
+enum sun6i_dphy_direction {
+	SUN6I_DPHY_DIRECTION_TX,
+	SUN6I_DPHY_DIRECTION_RX,
+};
+
 struct sun6i_dphy {
 	struct clk				*bus_clk;
 	struct clk				*mod_clk;
@@ -92,6 +122,8 @@ struct sun6i_dphy {
 
 	struct phy				*phy;
 	struct phy_configure_opts_mipi_dphy	config;
+
+	enum sun6i_dphy_direction		direction;
 };
 
 static int sun6i_dphy_init(struct phy *phy)
@@ -119,9 +151,8 @@ static int sun6i_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
 	return 0;
 }
 
-static int sun6i_dphy_power_on(struct phy *phy)
+static int sun6i_dphy_tx_power_on(struct sun6i_dphy *dphy)
 {
-	struct sun6i_dphy *dphy = phy_get_drvdata(phy);
 	u8 lanes_mask = GENMASK(dphy->config.lanes - 1, 0);
 
 	regmap_write(dphy->regs, SUN6I_DPHY_TX_CTL_REG,
@@ -211,12 +242,129 @@ static int sun6i_dphy_power_on(struct phy *phy)
 	return 0;
 }
 
+static int sun6i_dphy_rx_power_on(struct sun6i_dphy *dphy)
+{
+	/* Physical clock rate is actually half of symbol rate with DDR. */
+	unsigned long mipi_symbol_rate = dphy->config.hs_clk_rate;
+	unsigned long dphy_clk_rate;
+	unsigned int rx_dly;
+	unsigned int lprst_dly;
+	u32 value;
+
+	dphy_clk_rate = clk_get_rate(dphy->mod_clk);
+	if (!dphy_clk_rate)
+		return -EINVAL;
+
+	/* Hardcoded timing parameters from the Allwinner BSP. */
+	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME0_REG,
+		     SUN6I_DPHY_RX_TIME0_HS_RX_SYNC(255) |
+		     SUN6I_DPHY_RX_TIME0_HS_RX_CLK_MISS(255) |
+		     SUN6I_DPHY_RX_TIME0_LP_RX(255));
+
+	/*
+	 * Formula from the Allwinner BSP, with hardcoded coefficients
+	 * (probably internal divider/multiplier).
+	 */
+	rx_dly = 8 * (unsigned int)(dphy_clk_rate / (mipi_symbol_rate / 8));
+
+	/*
+	 * The Allwinner BSP has an alternative formula for LP_RX_ULPS_WP:
+	 * lp_ulps_wp_cnt = lp_ulps_wp_ms * lp_clk / 1000
+	 * but does not use it and hardcodes 255 instead.
+	 */
+	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME1_REG,
+		     SUN6I_DPHY_RX_TIME1_RX_DLY(rx_dly) |
+		     SUN6I_DPHY_RX_TIME1_LP_RX_ULPS_WP(255));
+
+	/* HS_RX_ANA0 value is hardcoded in the Allwinner BSP. */
+	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME2_REG,
+		     SUN6I_DPHY_RX_TIME2_HS_RX_ANA0(4));
+
+	/*
+	 * Formula from the Allwinner BSP, with hardcoded coefficients
+	 * (probably internal divider/multiplier).
+	 */
+	lprst_dly = 4 * (unsigned int)(dphy_clk_rate / (mipi_symbol_rate / 2));
+
+	regmap_write(dphy->regs, SUN6I_DPHY_RX_TIME3_REG,
+		     SUN6I_DPHY_RX_TIME3_LPRST_DLY(lprst_dly));
+
+	/* Analog parameters are hardcoded in the Allwinner BSP. */
+	regmap_write(dphy->regs, SUN6I_DPHY_ANA0_REG,
+		     SUN6I_DPHY_ANA0_REG_PWS |
+		     SUN6I_DPHY_ANA0_REG_SLV(7) |
+		     SUN6I_DPHY_ANA0_REG_SFB(2));
+
+	regmap_write(dphy->regs, SUN6I_DPHY_ANA1_REG,
+		     SUN6I_DPHY_ANA1_REG_SVTT(4));
+
+	regmap_write(dphy->regs, SUN6I_DPHY_ANA4_REG,
+		     SUN6I_DPHY_ANA4_REG_DMPLVC |
+		     SUN6I_DPHY_ANA4_REG_DMPLVD(1));
+
+	regmap_write(dphy->regs, SUN6I_DPHY_ANA2_REG,
+		     SUN6I_DPHY_ANA2_REG_ENIB);
+
+	regmap_write(dphy->regs, SUN6I_DPHY_ANA3_REG,
+		     SUN6I_DPHY_ANA3_EN_LDOR |
+		     SUN6I_DPHY_ANA3_EN_LDOC |
+		     SUN6I_DPHY_ANA3_EN_LDOD);
+
+	/*
+	 * Delay comes from the Allwinner BSP, likely for internal regulator
+	 * ramp-up.
+	 */
+	udelay(3);
+
+	value = SUN6I_DPHY_RX_CTL_EN_DBC | SUN6I_DPHY_RX_CTL_RX_CLK_FORCE;
+
+	/*
+	 * Rx data lane force-enable bits are used as regular RX enable by the
+	 * Allwinner BSP.
+	 */
+	if (dphy->config.lanes >= 1)
+		value |= SUN6I_DPHY_RX_CTL_RX_D0_FORCE;
+	if (dphy->config.lanes >= 2)
+		value |= SUN6I_DPHY_RX_CTL_RX_D1_FORCE;
+	if (dphy->config.lanes >= 3)
+		value |= SUN6I_DPHY_RX_CTL_RX_D2_FORCE;
+	if (dphy->config.lanes == 4)
+		value |= SUN6I_DPHY_RX_CTL_RX_D3_FORCE;
+
+	regmap_write(dphy->regs, SUN6I_DPHY_RX_CTL_REG, value);
+
+	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG,
+		     SUN6I_DPHY_GCTL_LANE_NUM(dphy->config.lanes) |
+		     SUN6I_DPHY_GCTL_EN);
+
+	return 0;
+}
+
+static int sun6i_dphy_power_on(struct phy *phy)
+{
+	struct sun6i_dphy *dphy = phy_get_drvdata(phy);
+
+	switch (dphy->direction) {
+	case SUN6I_DPHY_DIRECTION_TX:
+		return sun6i_dphy_tx_power_on(dphy);
+	case SUN6I_DPHY_DIRECTION_RX:
+		return sun6i_dphy_rx_power_on(dphy);
+	default:
+		return -EINVAL;
+	}
+}
+
 static int sun6i_dphy_power_off(struct phy *phy)
 {
 	struct sun6i_dphy *dphy = phy_get_drvdata(phy);
 
-	regmap_update_bits(dphy->regs, SUN6I_DPHY_ANA1_REG,
-			   SUN6I_DPHY_ANA1_REG_VTTMODE, 0);
+	regmap_write(dphy->regs, SUN6I_DPHY_GCTL_REG, 0);
+
+	regmap_write(dphy->regs, SUN6I_DPHY_ANA0_REG, 0);
+	regmap_write(dphy->regs, SUN6I_DPHY_ANA1_REG, 0);
+	regmap_write(dphy->regs, SUN6I_DPHY_ANA2_REG, 0);
+	regmap_write(dphy->regs, SUN6I_DPHY_ANA3_REG, 0);
+	regmap_write(dphy->regs, SUN6I_DPHY_ANA4_REG, 0);
 
 	return 0;
 }
@@ -253,7 +401,9 @@ static int sun6i_dphy_probe(struct platform_device *pdev)
 {
 	struct phy_provider *phy_provider;
 	struct sun6i_dphy *dphy;
+	const char *direction;
 	void __iomem *regs;
+	int ret;
 
 	dphy = devm_kzalloc(&pdev->dev, sizeof(*dphy), GFP_KERNEL);
 	if (!dphy)
@@ -290,6 +440,14 @@ static int sun6i_dphy_probe(struct platform_device *pdev)
 		return PTR_ERR(dphy->phy);
 	}
 
+	dphy->direction = SUN6I_DPHY_DIRECTION_TX;
+
+	ret = of_property_read_string(pdev->dev.of_node, "allwinner,direction",
+				      &direction);
+
+	if (!ret && !strncmp(direction, "rx", 2))
+		dphy->direction = SUN6I_DPHY_DIRECTION_RX;
+
 	phy_set_drvdata(dphy->phy, dphy);
 	phy_provider = devm_of_phy_provider_register(&pdev->dev, of_phy_simple_xlate);
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
