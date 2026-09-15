Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E5A7C982C4
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 12:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJOI/jXqNUJSuIt2x4uUYn3/qZ59ip5elUn0BPm5Anw=; b=J+z/mYVAuDBnnZ
	cDDMu5GRS2klDF0OhishdqaJjE/rvkc1dH5pI3t9Cj/atDhE6AdNNJPomt+f8BTBavXTnM7ZmuzBN
	iImeGD0YyXvgih2Zq4t+taglNnxZYQgnIZ4EJ1/K5hL/cSSI5QESAYJE+3OHbVauGiXJIPpvggWLk
	ayzonNcBBVsoYk8UKr8RE5XviC8pik7YApMl5FgF6noQqXuEyO8GI0xX91deMVR2jqE6QGjQxJvoC
	U87wnjRW1XuAqyCBorj9aK9C5JDP/ikiYQXj4mSWbby7cAU+Dnp5oUJgdidr5zazwXCjs5SHNARNl
	5JGkNrdO3YZ7qbwIbv/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRI-00000006XMn-36jB;
	Tue, 15 Sep 2026 12:39:08 +0000
Received: from mail-pj2-x0a.google.com ([2607:f8b0:4864:39::a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SR1-00000006Wsb-0iw9
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 12:38:53 +0000
Received: by mail-pj2-x0a.google.com with SMTP id 98e67ed59e1d1-39ded0d7f52so1312019a91.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 05:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475930; x=1790080730; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NfuBhi93xftDhshvbIutU6M31n4jH/ZjDQQ4jx2k6og=;
        b=dOStY7P7koO1L2qM8N9dyY5qvR6Usni8ZE1CxiHqRCLQn0KTWBABSyT8eoqlNjM818
         o6tne8uPtMwftZD0fVjZPRsxJWxbAD6WzCnfQlkBDUvCKFk5UIzBQK7cDph+L+FbrsIi
         EsBjpDWxZE1Y7Kz3/wLzzlqnq6Kylp3A1I847s7iF75ZqNy4dk7AHYAYAgQii52ADpoK
         HKY8M5bXBk7mruu4AsZ1qv9ZmPpaHldt4XfiFvnODRc2gRlPrdKu25Q5kkJN67Pwhnoa
         oopvOFIPXreN1q63170bzJPdcBU8JbiDa3EbiMthnNvAgtGcXzDUi5o6Yn/nz1vO+fUO
         b29w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475930; x=1790080730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=NfuBhi93xftDhshvbIutU6M31n4jH/ZjDQQ4jx2k6og=;
        b=CCHy1hlWW1+xlCAD7BmLS740dA5l3n+EFs5S8zqPHLcaYff/XfO0Tse3gePU2Oc6XK
         lnutS3xMtfDsI6vwJFCFZklPux+B4f8CycOdtFZDPt/Jy1UuBtpDmG3F0IAp8i1ySoDL
         thIzmTOJ3zLyDJ2nHDmC3yZIoL29Zbj3RCw/gizWNhZxym3PPjz+/1h64vO+3GcS3GqG
         RgWmjSvlceYcN0huU/uOzZYc1TumT/1SiUJorxyMN974RxH6cqQjiaAYwsI8ZW+E7LGJ
         6aV3dN02uaUe253UyvIOeHBG43kAAWQ9YOEl8NonUNHRPTWLOBaXgbCf76b52tQKeOyn
         belg==
X-Forwarded-Encrypted: i=1; AKwUvBzBw3KbVjtucgNxngjYvDdg8O+w773+KhpyanLVn7aLwxYuugJ1tOx+tpp4sUs8SIChu+G3SUGO1fs=@lists.infradead.org
X-Gm-Message-State: AFuF++kF+y3qKIksOfUniOZhbJE0zqpgJx5XCXsFIIrf2hw0bV+xwSZl
	hhDE+Iu6AEGQX3zyIT0JhIEVBabJ8DP1V0U5YYvlK1KtCqyGGD77lyWm
X-Gm-Gg: AYBFou1Shu6mEwBmZbDv7AuVT+Yq0no8EVyu9uAnhH+CV5ozOYfb1dVLoAOeA61orxm
	qQ/tObYGSrodQHtCLL8cws3hRhEAJ130O61IZ3LgQP5NBPNTJJeo1f715dYjj8jWOBDj7MQ3hTC
	0YFnVog8HPWdE9E11+oZUR/fQvpd3Csn+G7dEOsJJfDka5zTG4wT3ovz1KqClPIQ0Edqz48EpvR
	KnMYfdrSuKMj1sPrh6zxVE+Yjr7CzKdzltv5Sm/NG78uQAKuFDpz+dMA8CTxpaNGXfbnsVthcOk
	J39evidFjzauPCdwnf4/i7BG7ak5GJO+xs2EwY2u3NzXl5Ruxp2ohfqI2fGlwMwKJVpjz/2Txy/
	xiq3zbKlU7rHyCj0uNzdlwQLHjE6Bjvj+CR+ajwWkbcRdECKyVtux6wJlYu+Eedk7AgMjwtPCun
	r2OGW5bZvoVp/wBNyCnw9qVcHR5Kw89ScOL+6oBBhSdzthEbBfN9GOIVw92We5sc7zCirk4w==
X-Received: by 2002:a17:90b:4990:b0:39e:ad:d31b with SMTP id 98e67ed59e1d1-39e10e2d518mr1347485a91.6.1789475930366;
        Tue, 15 Sep 2026 05:38:50 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39dfdd28acbsm5307259a91.10.2026.09.15.05.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:38:49 -0700 (PDT)
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
Subject: [PATCH net-next v6 03/11] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Tue, 15 Sep 2026 20:37:52 +0800
Message-ID: <20260915123802.1561724-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260915123802.1561724-1-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_053851_217737_8484E0B4 
X-CRM114-Status: GOOD (  15.48  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the GRF register pipe_sgmii_mac_sel.

Add support for this selection by introducing
the "rockchip,sgmii-mac-sel" DT property.

From the RK3568 TRM (Part1, Page 229), the PIPE_GRF_XPCS_CON0
bit 1 (pipe_sgmii_mac_sel) is defined as:

    0: SGMII routed to GMAC0
    1: SGMII routed to GMAC1

The hardware reset value is 1 (GMAC1). If the property is set to 0,
the driver routes SGMII to GMAC0; if set to 1 (or omitted), it
remains at GMAC1.

This is necessary for boards such as the Ariaboard Photonicat, which
uses the SGMII interface connected to GMAC0.

Link: https://dl.radxa.com/rock3/docs/hw/datasheet/Rockchip%20RK3568%20TRM%20Part1%20V1.1-20210301.pdf (Page 229)
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 7843356a4dd47..7b867e7520064 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -186,6 +186,7 @@ struct rockchip_combphy_grfcfg {
 	struct combphy_reg pipe_xpcs_phy_ready;
 	struct combphy_reg pipe_pcie1l0_sel;
 	struct combphy_reg pipe_pcie1l1_sel;
+	struct combphy_reg pipe_sgmii_mac_sel;
 	struct combphy_reg u3otg0_port_en;
 	struct combphy_reg u3otg1_port_en;
 };
@@ -212,6 +213,7 @@ struct rockchip_combphy_priv {
 	bool enable_ssc;
 	bool ext_refclk;
 	struct clk *refclk;
+	u32 sgmii_mac_sel;
 };
 
 static void rockchip_combphy_updatel(struct rockchip_combphy_priv *priv,
@@ -375,6 +377,9 @@ static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy
 
 	priv->ext_refclk = device_property_present(dev, "rockchip,ext-refclk");
 
+	priv->sgmii_mac_sel = 1;
+	device_property_read_u32(dev, "rockchip,sgmii-mac-sel", &priv->sgmii_mac_sel);
+
 	priv->phy_rst = devm_reset_control_get_exclusive(dev, "phy");
 	/* fallback to old behaviour */
 	if (PTR_ERR(priv->phy_rst) == -ENOENT)
@@ -873,6 +878,8 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 		break;
 
 	case PHY_TYPE_SGMII:
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_sgmii_mac_sel,
+					     priv->sgmii_mac_sel > 0);
 		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_xpcs_phy_ready, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_phymode_sel, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_sel_qsgmii, true);
@@ -984,6 +991,7 @@ static const struct rockchip_combphy_grfcfg rk3568_combphy_grfcfgs = {
 	.con3_for_sata		= { 0x000c, 15, 0, 0x00, 0x4407 },
 	/* pipe-grf */
 	.pipe_con0_for_sata	= { 0x0000, 15, 0, 0x00, 0x2220 },
+	.pipe_sgmii_mac_sel	= { 0x0040, 1, 1, 0x00, 0x01 },
 	.pipe_xpcs_phy_ready	= { 0x0040, 2, 2, 0x00, 0x01 },
 	.u3otg0_port_en		= { 0x0104, 15, 0, 0x0181, 0x1100 },
 	.u3otg1_port_en		= { 0x0144, 15, 0, 0x0181, 0x1100 },
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
