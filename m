Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 204F1C982DA
	for <linux-phy@archiver.kernel.org>; Sat, 19 Sep 2026 12:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltcuGmdX+nU3v20TGjdnbXQaEk/ZCxWiV/rUviX3EOw=; b=SgFECGwfQgT+1G
	B28LtJFuHiLNrxrtuTwKPwQCLBgwpW8Dbr5qQepkMCp8VFcu/qkvC14q1zhKfis5XiTgsRfWtd3fa
	NX+HkgCaKPCorXjmdczQ341TtDI1WzgUjex9MDltCFhgZL3RTxljvPFQ21xiUkQ9By37kMRkdCAGp
	VgnIY2ZbqPYMNVWxb4gO/YvgnORBZB0GlJVQ7/x29IHAJNaTXfm6wZz7EIoNvC0/nEgwRCzw+GF0I
	Sd6dIYdBcAW2yjuTYUOQJ/feHtWyjP37/pbjLSzkJpTBg6nUFZCSLOg1XJZxf+WApapPxUBJ7UYnZ
	dmpVYaCD4scMuBd9RR+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uY7-0000000GGxY-3NoQ;
	Sat, 19 Sep 2026 12:52:11 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uY4-0000000GGus-3fmp
	for linux-phy@lists.infradead.org;
	Sat, 19 Sep 2026 12:52:11 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc4b166d0dbso508946a12.1
        for <linux-phy@lists.infradead.org>; Sat, 19 Sep 2026 05:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822328; x=1790427128; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=j15Ft8kRkSvNLqv6/o8Tz3sNz2rn/CghW4LEEslb8Ej10ePlRHktrBvGC+e+5/tEHW
         I6WzteHHYuSTJ7a2uR+ZLcwBY31S3aJ6uIRgBAdEnPe16NrgilO+xwNswwTiatoozBSM
         BCD8DScl8+PDLchgUMTMxTNp0VJzIOp2DrzSLsx52FwfwWZCUfY5TBfj3DzPtkwRn24m
         Te5C0LBGRt6LXdotjElSGD8ugXZXX/Z/NDitoFlyv1Mv9qqwNFR8fJMsBajDSV+6S6hd
         2n0BlIauU9Q3LVjyVL5oXPl9J4BbZspBBMmTahbaEJRS6XaXdMhp1gyG8egb3CBNzp4p
         4LEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822328; x=1790427128;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=HbXnZBzLjwICN+MTDdHajRSbQFmpfCYTOoBibRhSIxGuEF7gt4rMQ82g3d5Ou9UBRk
         0Nk82MMXbVmXke28/g8rHe1aLf6EwoBuzFaH3iIdhhDPA/zSmusQqtT2WGpxNalBwdk1
         FuhozU4KpUjemPVOUcssHy7CDsj1rZAPFKdvNjs2r/LPyIPCMSpvWdZldDK6uCsp5mQt
         cpuAfYtn2Y2jQ/8gLLANx2xYdekLWgAtgYnPZANIHetpqdR+QF9g55vYIIipTLPTcuOm
         Ck4rBitwxJfpz3+lk4h7GCMNmu9LLHuGYYW56ciENHgjSThP2TFR8uC50+ul+2tGTJSF
         o5GA==
X-Forwarded-Encrypted: i=1; AKwUvBxQgqtjsdCAnXvnrC03Dz2OmJ1PhVlFnCKZUM8tGeSZxgfdC0xjozVraOAIDx5bHXV7OoDA779u1tE=@lists.infradead.org
X-Gm-Message-State: AFuF++mZP9AA6kpdX4ARskmVwWsNJNpP9wc8vEj2SkYELB+fJf1lbbUn
	MallUxA34V0/vfyDFkZ8T8Xoy6XQ/SPoTlGa9fVxOv1JPAWHqlqk1LE2
X-Gm-Gg: AYBFou2OcKp1wrD2VYIvcX3kKT0TwI8J9rjuQ5uIXv5f9DP+lgQ/8FSG8sdU/X0tPf3
	UfG6O4hbiIbjbrhH0K/Yjj1fFHYggBYv1tYwxsOODn+IOLbjqMF5MK9nUo57nSysvNrVyKMrDZY
	P29ZEIS05Fqmx9eyf6EqKh2LoGyU1u2A6yQvAKr8mGZ/Fgt7BZI6BG6pIPE0xUwP329q9j/bOrV
	fZSpo2DDl7VFWQrT8V2UPfecE7UqgWo2VOKRyTwoSqDzi4qutYboYMnqUd8kjezQEHWcbK2qrzF
	yE+v2EaVyIJNOThpSQkh/cdczCz+mEizBJ48BdI6WKIPw6k49UCIzalMbjs2fbINzsRcoBMJ/a/
	BsvnJ6SlOe4v8CzJ5G9/TCnWAtl5O/bzqWUP6vj9ZTdMD2JR8cDwS0+ZsaT4cVCKY2X39AZCkaN
	8TXtc3TQJUgKeg+W0IUSjPlETR4cS8yd6PO38Arwl5aV+5b7yEmZlfBukc0rnlvzISihW+q8g=
X-Received: by 2002:a05:6a00:3a02:b0:868:f29f:67c9 with SMTP id d2e1a72fcca58-874dcbee984mr8960818b3a.9.1789822328120;
        Sat, 19 Sep 2026 05:52:08 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:52:07 -0700 (PDT)
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
Subject: [PATCH net-next v8 03/11] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Sat, 19 Sep 2026 20:51:10 +0800
Message-ID: <20260919125119.2107089-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055208_949912_5B4B85B5 
X-CRM114-Status: GOOD (  16.07  )
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
