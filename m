Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9477C44507
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 19:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7aqPpdI4KJD4O2+Ltj+6/u6sKtoWReLG6G6gTWJi5us=; b=3wBsNL/JRQa0yh
	Uru/63jj3rr4g1QOSbDA56Cp5Jwzgq74Mwo45CUBdxt8cbfGmRsG/+6iwy6FzGRBoPWdZhNo/IC2Y
	QgcMRRr8YFpaOfLiR6zpJWWrTwOxZ0EeWCB1qicoB9zoxm8DySovyd1n1XlhXUaPGJc8Mj8jlJmdQ
	G2g2tNVurKQtKfEiwpV17h7FwZ4hGlMKi5ZYXSExQ/nobA/ikS7CkQXjAoLLGcN8K4FLeIRZh0d6e
	wbV7G2WTFIDmth8CnRrpjv3nreBWmyy5gZAJhof1WyeOlhyfwZlvYe9rFQ8Za54dFsUUAiL+QVLqd
	+TBuMRYeADaLmVoYBRpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjia4-0000000Czwd-1qrj;
	Tue, 14 Jul 2026 19:14:12 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjia0-0000000Czpa-1ra1
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 19:14:10 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2cc80544c74so4349775ad.0
        for <linux-phy@lists.infradead.org>; Tue, 14 Jul 2026 12:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784056448; x=1784661248; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pmQewzkR5beR2pgYuttXOlNbbfZWq2Schv5a88VtBYQ=;
        b=LH3B6dhUbslf804An34XZmUPyU/7mDzWOR4d6QyZumh4I03WGTQP+Ow37/WUOEqWH5
         sHmShcjmxNQVBIjkCvPNfIlTCI8TZ7YUgP6YQphi1TRjwP7yhniOehNvNfPp+StEO3Ku
         qyjQ7dLjlWmM5DP0poRlWsAX1gGCtpooaa/fMN48RX+q1TEyAwdHFNSK9q/6/JzS31+k
         2CBKDHYMQnCzIKZtnqH4VaD/Pq9BYERm/CbMZj92ipFNBeCzP0eT8lFf/IGUb0vpxVyo
         49X1J3C3WEFpjNB3dq3cBA7H9NFEc0IJjfSHz1WWgjrYpOJFr/rKLmMiFTQqeFecMEwt
         NqqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056448; x=1784661248;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=pmQewzkR5beR2pgYuttXOlNbbfZWq2Schv5a88VtBYQ=;
        b=s63tJf7DljihUBEqjqs9wgwWeI/1c9kty/6sHWG6/V81vuzF/ccLeTTIVlwSX+nhnp
         QRMdAZI2TykHGlRCQi6jKQABs6wSTarTDfezKwnKpbg2B0fw8GRopnCCNML4hQBzL6ft
         riSRyNS8i6ph7+lkZO4Q6UoQJN9Vr62uutjb90HMDa1OG9a3sPjUEWV+MwFXVi4dc/M0
         8C3yjSYX2zK1X/K3xNcPKJoJ/6N3ONN3zZ0u0b/mdsEJndC1o1Jd2qPWun86PVwh+W+2
         ge/Vvo1NsF+PrnDWRLSP7sPTHqeK4CS0eEy0GQoezFVsiFTUEDWPHe9JefeoFWSa7m49
         2Y1g==
X-Forwarded-Encrypted: i=1; AHgh+RrBqHYhwDB44LuKVaMnIVjqb8aY1P7J4/l5MA3ece1PofbpWjUDnD1JI2Y0RwU9O2byFuoWY9Y4i5Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxpg8LlDdygL1AD2rWJTRBD1kYKk8O09pD7G1tz5zMFR+k55udV
	pf1tBSdz1KEVXU0fhiSVo4i70N1xkTglr5MUFpGt7LRjAVR3YVIM9xXD
X-Gm-Gg: AfdE7clDgIJGhtOsgJXhUek2+Dkj1gJxrsD3KkWS6PXaPjN6OkOEmj6p9asmZ0ZImKK
	VbRgwVr61k1wRpZvVGpKDEzzKOrE4bh9ijzj81oJ8n4zN4uXoZivUDoeR3+ZrzBC85L8IG7G1/j
	a+7Lri7QFzJ+QIfk//FzzXB+0BAE5UkUESWigp0jiINlOk3weuYQ0wuvJ8Squ0fzrYJgsr+SIjM
	bkuEWkJOraRjvxivms1VrF4ZkZpl7VbQiVhDGLsE9mIrfYYZffCFszAVdwLxY7Lp4RN881jT81d
	zcZOqyiNAcQAkprcC/rwoHoPTOOas36Ttw3JCSWMrTIFZ6jTkHlKjpwtOjjLLq88fTP2lNCO962
	GUyq+KPsccHEcn+oR3ToF5bj6pNSa8mi6LXZxCOfJae1K7I3OC3qeMPv19TnekIKb47scWyx072
	0nQTaOPcOEOECvVxj2YW9hXxS8n8/vq1fl
X-Received: by 2002:a17:903:292:b0:2ca:52ce:6f91 with SMTP id d9443c01a7336-2ce9f285148mr135561755ad.27.1784056447537;
        Tue, 14 Jul 2026 12:14:07 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3d451sm120763245ad.65.2026.07.14.12.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:14:07 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	andrew+netdev@lunn.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de
Cc: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [RFC PATCH 03/10] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Wed, 15 Jul 2026 03:08:31 +0800
Message-ID: <20260714191341.690906-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714191341.690906-1-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_121408_514074_0423AC9E 
X-CRM114-Status: GOOD (  12.92  )
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

When the property is set to a non-zero value, GMAC1 is selected;
otherwise GMAC0 remains the default. (HW Reset Value: GMAC1)

This is necessary for boards such as the Ariaboard Photonicat, which
uses the SGMII interface connected to GMAC0.

Link: https://dl.radxa.com/rock3/docs/hw/datasheet/Rockchip%20RK3568%20TRM%20Part1%20V1.1-20210301.pdf (Page 229)
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 2b0f152f54709..ff290bc18589a 100644
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
 
+	priv->sgmii_mac_sel = 0;
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
