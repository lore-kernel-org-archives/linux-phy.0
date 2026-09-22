Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DABCDC98302
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 20:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltcuGmdX+nU3v20TGjdnbXQaEk/ZCxWiV/rUviX3EOw=; b=Y6KKXK+i9/xVeR
	d+uITP3q8qr4xKo9heEzJyKCebWXZBZBuQafMKs304FDTr4I/BRLKVXJyWGURWG0MavDip/c1qDck
	2wBc8zQOnQCsDtrjylxO8zHZTE5SThYU424aVASTrLAeenKX84KH5q8XG2RE35oOQD4ZuiGwt+yP6
	Y5SUc6rmEje2pCZWhnZxUhXLsQ0LXGVsk+cd6g8FNU2IdBUjTPvBZ3fohgMcEZMXXHWhQWx0kuydn
	jYND3/8Os2tkSAnBxdUIjTftrqaC78BSCulKlGZl/bDzwgBiV6oc5uz/KVpUtNYTitWjZ7tbbTk+R
	3e758svuVh1nSRJ9KCBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96iu-00000006TxK-2ACQ;
	Tue, 22 Sep 2026 20:04:16 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96ip-00000006Tst-26Bt
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 20:04:13 +0000
Received: by mail-pj2-x05.google.com with SMTP id d9443c01a7336-2d952ac253dso1214755ad.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 13:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107451; x=1790712251; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=RQ33PaUAFA7Y5jtx+pSj87/vvjNlVDxmriKhcycQ45FXtdPRlx1vMvN4v/7gHZNwaa
         vJ5UgvnN752O8dTDqAxqMpNlAsBDHfdCJyt28hFVCeOD/WGV5dEr7TUzNFe6We8aSysX
         AP7OlojCW/fkpbHrFJextAb3lEA5Rz8xo+a4+fdKBeIv+ShNX4zLoMgfaZ/tMF5zZkfY
         NDPLPuhd/F2y9fcdMZVNaZ158MkxV7r+/4kq0w1kKSHi6MobPt4lekkexfqJH9XpEXX7
         G+0jfIv0jBiNn8iyzAWOtxQTlbuBn9Y971qoCVcPU984h7sp0CntJ/4zmNOLcKNEI51O
         oicA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107451; x=1790712251;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=YEBBksJMMrMqldG5hMaEMWV/ScedD/jD1qTsCz/Lcz9lXotamM0vcHItF9vHDhSVhR
         ICaF7afbjsb+ZcjiibwB6nc+E+fvHgiTEoiHhl1QGOCudGK7t1rNDepWPMx/ZR5wSnS/
         t0C92LZGfIO6B00/9vZwhzFas5N8Jiz+sDR5eoyqLHR9ml2KYs6Xr3EHeP0dk9moWg1j
         tM1XxkkRek66O60Ttkd3mlU3ofWRbHHRYVzhMPiiVYVk+LrXBDF6+qESjuy7ZmHHX2b2
         woi5rCuL5wWTkXHeIkN1XWUNHbf0FAEFRKc2Vu4IxAn52eddTUkDGUwhw2UU6ewQzt9W
         MiYA==
X-Forwarded-Encrypted: i=1; AKwUvBz54bk2DUQBX8ZyiaPoHMGSX6Vvm0eEjyLdl+cc83VgoVzT5b8QZ7XzGqy59ev8O2YvFvlVTFtZvMw=@lists.infradead.org
X-Gm-Message-State: AFuF++kW6L5MnDPTjzKl4ambUN7716LgYjdmfoR+yPD0uIlZ8dHi5zbA
	XdTsOApaHEelcvjW30gwBoQV1lkg/m4n9NW4Y2cO30hl8ngeid3px5TT
X-Gm-Gg: AYBFou18AEJECGMAu+IsNYG7+zMSujy9oZEcnVQ6E5AEdxc9mZopT2Bb1D1Hp1l34DF
	8VmkBKEfqnoWwz06wm80+uXB0dGXakfOCZ+w7iZTXGoWuzRphYmqDVupVzHpEhwOEoqqzcKxG8y
	jwv0GnjKWLVDpzkPC5OnLpA8pOjcI/AvQ/DhRvhmtXWcQqRkeNWnTSLgyA0ttxQ2Yv0i4diSxaV
	dGsjkN2HTztOLvEJWypsEF5byPdT1E8QkYYNLvjT/aNyX+i1CRYt+wkXD5Y0zTJ8X71jT6fG/a5
	PCTu6gLhbl2J3Db4CJPQrEycup6Kl8yOo6MnucHA1qjuiXLrF2e9dgiX1baCKzXetJvGbqYcvpz
	RdPWtkiCIAQq7+bYFkEg5xQkETZLdMG+hOdb7kefhdkNbSTHotjB2thhV10yghWcyT5g+e6LUvD
	feJ25ruLUAqaBIL9hY6hzJRbCj908cCVdNnm7KD/yJfyGgRDAr6X1MfksZNyjOPiaWqRD7
X-Received: by 2002:a17:903:2302:b0:2df:6969:7d5d with SMTP id d9443c01a7336-2df69ddf0c0mr4048995ad.40.1790107450787;
        Tue, 22 Sep 2026 13:04:10 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.04.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:04:10 -0700 (PDT)
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
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v10 03/11] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Wed, 23 Sep 2026 04:03:27 +0800
Message-ID: <20260922200336.2201212-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130411_623602_9EEDA31B 
X-CRM114-Status: GOOD (  15.93  )
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
