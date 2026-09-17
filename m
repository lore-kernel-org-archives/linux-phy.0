Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA0E6C982D0
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 20:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltcuGmdX+nU3v20TGjdnbXQaEk/ZCxWiV/rUviX3EOw=; b=gW9usBqFYtxi/+
	GK1oxu0gFX8a9N735FQdO+9gJHTP+9m/dpll28vqk/3HTzacTHbknnJWxCxuz5O9NAJ3Vu5U2Xk/y
	1DMV0VWiMXJUIpUjj/Z4+s9DXNpzZKcMVBlow9vNGfUiuqjqU0V3lqc2NYuoyV0yT6x46R14MU49Z
	CuYoD/wjPyPdQAQLJMwGoISJamjCGZ6+o4+LAQS50a11nTUGJ3gg+LWV7zeKCbC5e6XxDJbjEsrwF
	CU6s36p9RumqCizwUEamgaIrt+Ua0QNF3cjwKrVhE2m8QsyuqmlJhyQAhRY6CekrMMQWgC24wEXQn
	qHf3KSbVYBhKMUOHst5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J17-0000000CSex-1nje;
	Thu, 17 Sep 2026 20:47:37 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J13-0000000CSbn-4115
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 20:47:35 +0000
Received: by mail-pj2-x00.google.com with SMTP id 98e67ed59e1d1-39e44984991so42839a91.1
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 13:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678053; x=1790282853; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=LwuOT4pLaLcaWj46933wZGFKnhjnbLBu/XaisxUkQwompIp8xfgvji2Mv7b/j39DRp
         //B0HdJOvAkSzhk2voUN9TAXvwAFKmqc5lf1+/MahQ209sBynDQ6Dcywglb0QiSc8Cyi
         UbFvl8WgRBGlsB1NTwsvpLlkeItKxdE8LeImr0j6YsIAK1ipyBdqZbr8hbxOn4zhM/gG
         DcPcWEKqrPsouw0JreAWyRyCksysjb07Cfa2vsJKn/p3qoTSTSgFfq+YSUSghckWDXps
         fAR8FTz/NB0LPXHPcLhFASwETcvOWAeyuKa9BZHG6Bp+qxEKJLo3KlmTe338GHvPVL7U
         kpmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678053; x=1790282853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=q1y930Lz3m5jd8C7GTp1OrpxOMmdDkg4d7ncIQ3lPgBWPLDyyU+Bp8TrxQHqvuwHm8
         mv+WKSOlSxNypjDCBooSMxDdJrdtcSOf1gzc4zhJM5jmiTP/ptXRnPfRffRpuYuvWe6W
         7e54DTuQh50cbCuWrrrQ8T1sa58ZKWVm9RucbEnhGFlTwF5oaK7t2gXNLlcogug69y1Y
         GkXB3Kzloe1W/efoGi/56q3zSPPfiYvsmDjkz/1ThKldLH4pg6qcQoguE3nVHVBWsILP
         jAYtQSgooMwKmk++qTws6hF2xBq3L3cKFET6daInpmvkukmQjcoD5sfn/Vick3RLeTR9
         p8JA==
X-Forwarded-Encrypted: i=1; AKwUvBwKmimaK8zNxEC6qsttZKYeQ8xcptAptfaXZA+hvaZgd+vNffgswpoZTesDk+SZH4tSvMh9YWwVPNU=@lists.infradead.org
X-Gm-Message-State: AFuF++mlX09odnwbKTtvJ+uOgurljTy4XkS7xkqprEjyRujHO/BapcpS
	l/km+TBwNyPweC7ah54kXYDktmJ3AJeRldbzY//FNFJBt9hnq0poo9wQ
X-Gm-Gg: AYBFou1vECcf7RHzaaBrpSlPVYKl8Np53sO53YApcMvrK9rGB75t3xiut0iGob2s7EE
	f2z14VRKdi627xgw7prqVUehgxc3R/eVi2ZtAvCKlIweSy+i4i5q3C2USQkpS7da+F7wPDEq8k+
	FBQgp8bCWTheHXOUBW1yKqz/WrA657ou99M4k4j0Zfwuk+pazAA8sYARoKY8OHokc8NyCcPMhhv
	FDpo+a/DMrJZqLXYbmIiyTsWsduxDjiMJQY44qCgo50bPGScEX88q7y2bcshlCIgbwUb3CnlSwt
	OpMTfOCQOZqqIK4bVv4YpZ+IxwRnJTjDheEqif8+9YXC2wTkR5TR54PMTWa1LOToxtMobk7yOmu
	ZyPtHS9+bejN/idvGQr8wuVqvVWTZE1/MpBqlmwyLE/2EzHGOtHsZxoWhBzRVLMkgui7uFNhhqd
	nA0eK+6IzZ+akT/ELMDmgWm8Za0lBcfT9sUiCOUkkCp1tlaHYWIOf8LKMIBOYGcqu/J502Wg==
X-Received: by 2002:a17:90b:56c5:b0:39d:f95d:bd08 with SMTP id 98e67ed59e1d1-39e55008a3amr1261148a91.14.1789678053238;
        Thu, 17 Sep 2026 13:47:33 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:47:32 -0700 (PDT)
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
Subject: [PATCH net-next v7 03/11] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Fri, 18 Sep 2026 04:46:14 +0800
Message-ID: <20260917204624.2427486-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134734_003299_83453562 
X-CRM114-Status: GOOD (  15.50  )
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

Out-of-range values are rejected by dtschema, so the driver does not
duplicate the range check.

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
