Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41ECDCCF2F7
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jan 2026 12:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xNl+5TP1wljvcUx5SadmvIchFZaqExaC/YtEkA9AUW4=; b=NNlw/1HCFvOeNt
	N/zuWcJv0BwMB9BzL9yYs27coZKATGFtC4oeJTjZVAQFFi3HI/v1JAHN/ipCfqLmOhEphkKwIxQtL
	dHvlKo1gLHssECLRFx244QbFaLr3hN0moMx0KNXxqHKapP1nK8N0ittJkrz3mLVVhAXY5r7asNEW5
	3Lhd2gs50PczJgs97ds8azid1D7SYkA3u/buAdCWpglw3JgUVU8qah8Yp8srBxvl/l1cvoABv+0Tt
	GKEHjzwiIwVDaYX61E3HG/zguEHLmFBXYazcBL+v0P3LeYJ9zYmV0zdX/NcVQgsQwn66zEYuT03Pj
	ukXW09mLZ869eVJTJxpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhobW-000000022Tm-45dB;
	Mon, 19 Jan 2026 12:43:35 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhobU-000000022SF-1ksX;
	Mon, 19 Jan 2026 12:43:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RIxtW9pHgFoSB9hWlBfDu5uAWfxTZyga1Fv2xaSrx3E=; b=t+ITliaCoeUPZ8eY6voAno2L8Q
	yn8GfIxRXDaaFiIu29f6e3tGIOQP1Mp4ffyH2xmWiOQ97qK+EwVBGhDWASQ3dy1Gdh29QCUiErkF4
	7oKNEy/fcWmMBHJgeUQ77j4+vbGP2oVdLPXZapJM98ulvGw1+trDmCtV4lz0HYaLsO0WNd8nhUbIK
	343hnB9PBSMwcU4scoWxNgz6VnK3OKwyyRUILAWMlQNVIdsCS5TcL/q4+HG4Ha4C5tsAExv5t16vp
	XWkkG1xKC3uu1J85tI+yHih4uJev7KLL7EM7267qUYhrdAx4zj0qc1gxbSKXj9PfayFpG0j3Oy22L
	kQfobhVA==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:36888 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vhoSy-0000000054y-3iIQ;
	Mon, 19 Jan 2026 12:34:45 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vhoSw-00000005H2T-2oVw;
	Mon, 19 Jan 2026 12:34:42 +0000
In-Reply-To: <aW4kakF3Ly7VaxN6@shell.armlinux.org.uk>
References: <aW4kakF3Ly7VaxN6@shell.armlinux.org.uk>
From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH net-next 13/14] net: stmmac: configure SGMII AN control
 according to phylink
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vhoSw-00000005H2T-2oVw@rmk-PC.armlinux.org.uk>
Date: Mon, 19 Jan 2026 12:34:42 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_044332_459625_18AFB301 
X-CRM114-Status: GOOD (  10.99  )
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

Provide phylink with the integrated PCS autonegotiation capabilities,
and configure the PCS's AN settings according to phylink's requested
requirements.

This may cause regressions.

Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 .../net/ethernet/stmicro/stmmac/stmmac_pcs.c  | 20 ++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.c
index 9dd7e78cfbc4..0426f608ebdf 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.c
@@ -65,7 +65,8 @@ static int dwmac_integrated_pcs_validate(struct phylink_pcs *pcs,
 static unsigned int dwmac_integrated_pcs_inband_caps(struct phylink_pcs *pcs,
 						     phy_interface_t interface)
 {
-	if (phy_interface_mode_is_8023z(interface))
+	if (phy_interface_mode_is_8023z(interface) ||
+	    interface == PHY_INTERFACE_MODE_SGMII)
 		return LINK_INBAND_ENABLE | LINK_INBAND_DISABLE;
 
 	return 0;
@@ -162,8 +163,9 @@ static int dwmac_integrated_pcs_config(struct phylink_pcs *pcs,
 				       bool permit_pause_to_mac)
 {
 	struct stmmac_pcs *spcs = phylink_pcs_to_stmmac_pcs(pcs);
-	bool changed = false, ane = true;
-	u32 adv;
+	void __iomem *an_control = spcs->base + GMAC_AN_CTRL(0);
+	bool changed = false;
+	u32 adv, ctrl;
 	int ret;
 
 	if (spcs->interface != interface) {
@@ -180,12 +182,16 @@ static int dwmac_integrated_pcs_config(struct phylink_pcs *pcs,
 		if (readl(spcs->base + GMAC_ANE_ADV) != adv)
 			changed = true;
 		writel(adv, spcs->base + GMAC_ANE_ADV);
-
-		ane = neg_mode == PHYLINK_PCS_NEG_INBAND_ENABLED;
 	}
 
-	dwmac_ctrl_ane(spcs->base, 0, ane,
-		       spcs->priv->hw->reverse_sgmii_enable);
+	ctrl = readl(an_control) & ~(GMAC_AN_CTRL_ANE | GMAC_AN_CTRL_SGMRAL);
+	if (spcs->priv->hw->reverse_sgmii_enable)
+		ctrl |= GMAC_AN_CTRL_SGMRAL | GMAC_AN_CTRL_ANE;
+	else if (neg_mode == PHYLINK_PCS_NEG_INBAND_ENABLED)
+		ctrl |= GMAC_AN_CTRL_ANE;
+	else
+		ctrl |= GMAC_AN_CTRL_SGMRAL;
+	writel(ctrl, an_control);
 
 	return changed;
 }
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
