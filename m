Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6365C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJTJa5wZJgwJH4z7GMdLh6u55RqP08fuBcsDfNUvmow=; b=qh2uAj/sC8rCOZ
	ENetczs9A+S1zsPynIbAG/3kAB3xaLUtPrGPrp9/5ohGKROvTqS0SO5gwjk0bFsE0llmU0YSwaruU
	bTp22fqkNwURpSPGoUWqzDrXvIJACpUeE9CCeO/Lzm6x5dd2JMq8UQj5PefVnIdLOAJHD8fTHeYA+
	Lb/tww+zZ/kv7svoQm9W7AtjWFCW9UJR6DSwFk8BZtxefUtYPXL8ubVWc5vo5ObJ76P33H693M6pq
	ju19gZ0ISbc8UsDEsgeq4SjpAn0pn4Inj60Qy3C7vZ876C2vcX9qRJVacBDqBgfFgSjf9n1iBvQZp
	rOaCJC3vX42uDxYGPHOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0P-0000000CPSi-1wrL;
	Tue, 01 Sep 2026 15:02:33 +0000
Received: from mail-pz2-x0a.google.com ([2607:f8b0:4864:3b::a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0L-0000000CPOz-314C
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 15:02:32 +0000
Received: by mail-pz2-x0a.google.com with SMTP id 41be03b00d2f7-cc2085ecd44so334427a12.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 08:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788274949; x=1788879749; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=F3aEYb5uf8Ywd6IPUhePKv9EQrcFVFS6EHQyfufoEjE=;
        b=TBeXoZinOVkfTpMHF9UZ/RypvCXoCbRjlk+ltIDWDaJWOTrqLzX2362MK9jgprECJv
         2UVHIECD0/f5mLiI3qP3C332OkVe0DBXBzh8rbafKNJeCbngAbPqxPm7HOyzwEsk/PWg
         43OFREM7eCPhmykycM22mGX+EeeTgkt7XRWkP+/rZRerC3mg7ZlWxit0pGgMBT2EMCd9
         M3y5dTi+HZQRAKiXwwNKwi3qq24npSzOPFDp0+qz/J7HNrqMBKWGiUZWJAQsxl9csYsv
         pOHKOFYidPfmuePGLaxYYAU16zlUrlDn5L9zCsIzovkI9dNGVAvuHVvbSHBBSa7Z4kc6
         +kkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788274949; x=1788879749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=F3aEYb5uf8Ywd6IPUhePKv9EQrcFVFS6EHQyfufoEjE=;
        b=eb6fh6vClwzW1LDSs8fRDYyDceJYqWykBrw/tBsceh1MMTziGcojHgdaFE55u/Hinw
         9hxaTaXAy0dvN3OePSF/o25fhNoCvJKKSOMitq9kCfoandd3QyHeFN+DADqwlE6/U+lD
         xxk2x6PtMuytxzxJ63XCCuEDfJHLFc58biaVaRTPkuDR3jRi9rAtaqOsBTM7u8zq2ilf
         QqWQfyzXhSyvnwKdyYZsJNhhJF3YLqaAk04xB5Lm4eiz8T9wIxqQNA/fCwfHyHSOUTlB
         0Xiq8LEG2R4rmZ/uVyzy7mz1L0170Su38pT0KD5eAtoVii0v186HI18OjwIGP7sj63vt
         R6cw==
X-Forwarded-Encrypted: i=1; AHgh+RoDVpOX08sP9h8YLcCwhG4O6utW1zpfHyt78pGB2rT0aTvY8jfya+HHDOM9GFfFgLDhX8irTL2UXhY=@lists.infradead.org
X-Gm-Message-State: AFuF++ljK81b/4U+HpmAXZbj433av0elRJl2uJD17VCkUsA2XulY/rvt
	ir8syrhNflQcK+H3h6C4g/1XZVXihMc+cVPHcQI9zFuTuShP2crquUho
X-Gm-Gg: AR+sD11iLurUbb/67Og/nkO8IH1JXzvV4JiJ0217LOcI2LniStfXcvg4NqvCi0pxiwx
	XNgnssPU6iGK7zLPmEY8bK10MfcGmDP3AmEel5nWG/rR+ehmwSKy3zaWSI3InlklqHhe7DfZWsW
	kWR1mmYoYKHOpnqDtNIvPBj9NiD7fbB+R4jrALJ564YSwYNGCHGu1iZTJUs8o1Ql3m5BM/aMNH+
	8P4+EtGfkpwToc9bliyqa3vJkPWAGeW5kddFuwH7UPM2/IunMFYiZUxYj3Gnckk/ldpdZcMP0sE
	oHAHRPG4GK1vg0R/80ffTgbIwxOwistMGuyYQD5gusqcODveGTFbn5a1FpltHGUAXgy03jVQAdo
	D4ooW5zqqjb529oLiOuoQOLtxgILE4z21NrhFE45vcCbHNkHUadiZfHF9znCzKmKvSrqAirRNft
	mDp9/hIuIVa+hJow6rSgSwwACbUIapcrmZ/rcLa3ogJHotx35BlOIRqQz3uxo=
X-Received: by 2002:a05:6a00:b46:b0:848:30c3:45dd with SMTP id d2e1a72fcca58-8562b499a35mr49867000b3a.11.1788274948514;
        Tue, 01 Sep 2026 08:02:28 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.02.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:02:27 -0700 (PDT)
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
Subject: [PATCH net-next v3 03/10] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Tue,  1 Sep 2026 23:01:03 +0800
Message-ID: <20260901150111.141037-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080229_771466_9DECE192 
X-CRM114-Status: GOOD (  15.15  )
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

The hardware reset value is GMAC1 (1). If the property is set to 0,
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
index 7843356a4dd47..919bb97a4b182 100644
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
+					priv->sgmii_mac_sel > 0);
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
