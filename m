Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC487C4332F
	for <linux-phy@archiver.kernel.org>; Thu,  9 Nov 2023 21:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTvPbdgENv4JTlWWmSnzA51JTdcAtWvZA+Odj3p+y6A=; b=ttpIGJ9TzRqeWm
	IVtnKVNheRlM+3FT5NJiibO1LLsH5EBAQP59NOzQ3aGKbsUW1Y8ZQtrwqa/WAVr4I+wXFLD8xs+Yr
	MzCiiAPScI5jvvGlpLu+J4b8h+oGLn/ckfT+36IWwZrMeqkrCL3D8w5f6Wc5oSllcEgpkRbne3QR8
	awYgxf3JQ30IotcZArCMbak2EbKjPfVQda6a05SHuzDH+JLLSFX9MzPS6/gjLysErD7zuNoe2maRQ
	BhzBsnWe78+K5iqSZJ45TZBi1ilXmX+AbKfc0FzVKj9NPaRO22aq5iAab/4qJhr9BFt0pKkbIcRZp
	bE1LxVR1soIjLpfj7W3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Cw9-007IWj-24;
	Thu, 09 Nov 2023 21:51:41 +0000
Received: from pidgin.makrotopia.org ([185.142.180.65])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Cw5-007ITi-1J;
	Thu, 09 Nov 2023 21:51:38 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1r1Cvu-0003Vy-0e;
	Thu, 09 Nov 2023 21:51:26 +0000
Date: Thu, 9 Nov 2023 21:51:22 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexander Couzens <lynxis@fe80.eu>,
	Daniel Golle <daniel@makrotopia.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: [RFC PATCH 3/8] net: pcs: pcs-mtk-lynxi: use 2500Base-X without AN
Message-ID: <091e466912f1333bb76d23e95dc6019c9b71645f.1699565880.git.daniel@makrotopia.org>
References: <cover.1699565880.git.daniel@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1699565880.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_135137_455139_72124D2B 
X-CRM114-Status: GOOD (  14.93  )
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

Using 2500Base-T SFP modules e.g. on the BananaPi R3 requires manually
disabling auto-negotiation, e.g. using ethtool. While a proper fix
using SFP quirks is being discussed upstream, bring a work-around to
restore user experience to what it was before the switch to the
dedicated SGMII PCS driver.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 drivers/net/pcs/pcs-mtk-lynxi.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/net/pcs/pcs-mtk-lynxi.c b/drivers/net/pcs/pcs-mtk-lynxi.c
index 8501dd365279b..6204448d8eac6 100644
--- a/drivers/net/pcs/pcs-mtk-lynxi.c
+++ b/drivers/net/pcs/pcs-mtk-lynxi.c
@@ -92,14 +92,23 @@ static void mtk_pcs_lynxi_get_state(struct phylink_pcs *pcs,
 				    struct phylink_link_state *state)
 {
 	struct mtk_pcs_lynxi *mpcs = pcs_to_mtk_pcs_lynxi(pcs);
-	unsigned int bm, adv;
+	unsigned int bm, bmsr, adv;
 
 	/* Read the BMSR and LPA */
 	regmap_read(mpcs->regmap, SGMSYS_PCS_CONTROL_1, &bm);
-	regmap_read(mpcs->regmap, SGMSYS_PCS_ADVERTISE, &adv);
+	bmsr = FIELD_GET(SGMII_BMSR, bm);
+
+	if (state->interface == PHY_INTERFACE_MODE_2500BASEX) {
+		state->link = !!(bmsr & BMSR_LSTATUS);
+		state->an_complete = !!(bmsr & BMSR_ANEGCOMPLETE);
+		state->speed = SPEED_2500;
+		state->duplex = DUPLEX_FULL;
+
+		return;
+	}
 
-	phylink_mii_c22_pcs_decode_state(state, FIELD_GET(SGMII_BMSR, bm),
-					 FIELD_GET(SGMII_LPA, adv));
+	regmap_read(mpcs->regmap, SGMSYS_PCS_ADVERTISE, &adv);
+	phylink_mii_c22_pcs_decode_state(state, bmsr, FIELD_GET(SGMII_LPA, adv));
 }
 
 static int mtk_pcs_lynxi_config(struct phylink_pcs *pcs, unsigned int neg_mode,
@@ -129,7 +138,8 @@ static int mtk_pcs_lynxi_config(struct phylink_pcs *pcs, unsigned int neg_mode,
 	if (neg_mode & PHYLINK_PCS_NEG_INBAND)
 		sgm_mode |= SGMII_REMOTE_FAULT_DIS;
 
-	if (neg_mode == PHYLINK_PCS_NEG_INBAND_ENABLED) {
+	if (neg_mode == PHYLINK_PCS_NEG_INBAND_ENABLED &&
+	    interface != PHY_INTERFACE_MODE_2500BASEX) {
 		if (interface == PHY_INTERFACE_MODE_SGMII)
 			sgm_mode |= SGMII_SPEED_DUPLEX_AN;
 		bmcr = BMCR_ANENABLE;
-- 
2.42.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
