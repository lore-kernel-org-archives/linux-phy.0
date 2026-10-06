Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F18DCA5FED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 07:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltcuGmdX+nU3v20TGjdnbXQaEk/ZCxWiV/rUviX3EOw=; b=aJ8moYEmEFT2x/
	yxWV5pkxQZDX+pqapGLdywhusd8m+GtvRMYmvBcGurNa+mmuOgwM7/cpyCbu1dz1Q05b0Bpf7nT+n
	xtPQUoI5JGythcwtvuKh6jq09AH16nIxeUHnAN1MdIuFZkuqn5+wZEOTzVwfBJCH6EDitpSiN/Fwy
	uulm+uBJ7T+1Y+6y1FaSz3Za1WwBsKZTNxAj1FfwFm78CVyypl6WKiNudl/ZOiiX0QW40LTjGl3gK
	rxMf6MlVtfiBA2iWT0cQYxX0K08qz9a6v+8t7R4KDjhZ4pjYn8U7KsbBQ0lW7l/Qp+oGQllhqn6um
	qUmRsSBh9y+u19RdepTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzv1-00000000DXX-45Tp;
	Tue, 06 Oct 2026 07:48:59 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDzux-00000000DSE-49IJ
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 07:48:58 +0000
Received: by mail-pj2-x05.google.com with SMTP id d9443c01a7336-2df921c1d0eso10945105ad.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 00:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791272935; x=1791877735; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=q9gjrOKNL2bTH+wFuBBopQlmkDKoaPGk0IbPNoSvHqNO4bfGecaP68HySy+0+ZHB3O
         Qd/MkNFqNT0YXMAeb+AgN1A4PjID+/opGVxvvbP3yDGTW+6+6Lbf2rzD/upFH5e+uQwt
         6tWBj2a3YxJerSqvsJAsCLMYhUlJD7TjXPQtoYxvVWQD5Dt6rE5ekCU0cY6dwDPIUVnB
         AK/Ad/twZQU3o2q/CXk5MXhQcdLUIxVG1Q21uG5s15EZtFujMlSvl9Vo3++hbGVRnY/M
         jp9kJzn/ceG/Swqp3+TmgFLwa6KlL0YGOaHEpBEf5oUvBNpnYrDAtjDtZLpi4/QG/kVU
         wAiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791272935; x=1791877735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=uoVwnHssWmYsfFitymVpFUVy21RUxqJMMYXy3GMmdFsfp5tfVoVVx2AinCVCMC4DLb
         Ogrvxy+Moiuan+PnfFFBSVSRArPbuHkvFH8clj3LQlKP6CS65y3P3MOOJ9e5oph6/Rin
         8gjkUi4To7TPdFe16Cj6C88iBRcj+00uPvKhEgyETIkZzJyTAECpjwvCW70C15zFL+1K
         d/62Ad+A6YK/0g4FL7TEbDmxVJQaNEUaPibAmUtXhh8LMiwbp41F2LQiErmXYhQcuHBd
         OfqH9j7wqo9ywTNHKHDr/WvUvQuLKhF8d5dbTL3PgQIrsWG740Nz7VA5DWkvQ40+v5Wf
         Qq5Q==
X-Forwarded-Encrypted: i=1; AKwUvBxWAA89+VtKe3fw3j+6JmOursvIaFGAjkIrOLuDZDYGl+P/OuYXsfgS0lQ1xiQ5k99Bi2zQti/mpKI=@lists.infradead.org
X-Gm-Message-State: AFuF++k+pDxHLZvtXg0BppL/EgfiNtrafCf3THbfNuyLoMPHCdmsrPaT
	kz7xZlkZccaEHJ/9pl954xrS31m0MCeECOQ9vwxj9BYwgUBnJNvuAyUd
X-Gm-Gg: AYBFou0JZokR28Df6LERfnfESyxTei3kcSxV3unWYrWzd0Gw9p6qfLsgFtjt9GtyIqV
	H1G3sgFVDIKOh6CuXmL+lyKeVppx5Zmbk8lFdUUeB3fuGZwY732nAu+XnEBUDyHdQtn3g/u/pCT
	HkWXeY507gzfFAkEW8E9wQaRcQyY9jCrKRCm3OMyCpS9N/BUIXkMIJqhkJC6XHJhori2JLGnUZW
	nd0cUoRhM91XjF5BNUnFTbwSNzp32mbqUS2AleOkFeOwgQKtPgwKQuFWuUv/g1/ZLvcOrBrvUXW
	YrRaHAZFa1M4Eu4Gp1KuCgcc0gO+h+QBJMyt9j74TlAaJ40oBVMcfd0ZebbwOhRH40r0+C0pYEc
	g90DH+zxFYFn7ZHfD+L9mRPkdUGc9FHcj1WR9mEPvFNvl9onxCqgbgXgCE25+M8ROAVOdTdQDsi
	5VwJKA7mhB1YLEdn44I8ssc/I7uaXqdc+6wFyB9VVeqTwGyJpnB2KAdfg35UwB8u9pbIcL
X-Received: by 2002:a05:6a21:6b10:b0:3dd:a195:fa24 with SMTP id adf61e73a8af0-3e0d6d83bccmr8487088637.73.1791272935144;
        Tue, 06 Oct 2026 00:48:55 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cce6d2406b1sm1998173a12.8.2026.10.06.00.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 00:48:53 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v12 2/2] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Tue,  6 Oct 2026 15:47:49 +0800
Message-ID: <20261006074749.2010233-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261006074749.2010233-1-coiaprant@gmail.com>
References: <20261006074749.2010233-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_004856_040639_7E59A231 
X-CRM114-Status: GOOD (  15.28  )
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
