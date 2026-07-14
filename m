Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 198EEC4450A
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 19:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23RtTMbpieU8lVF7cWnVl/5N7rmCMqevlnWQ6nGeBsA=; b=jh6IXrCP8j7PDv
	1cXm/DryOaC5oTb+SYuPZkSs0iZX5o3olb7t8tf2WHoi75RE3yfweujKqZhw9awqo8spJMaz0j/V8
	X+XrzYo4aiMlt9dCRj+yAWVczzIss85TFU6mKoruRPjGheDUfKqP1Y3jqOmCoavMMd1V02k2W8fpL
	KPfjP8p2w2dq2SAspUxR5vaC20en5YZgDRBV1F+FgzyBldbwSLQFLqhqXdphTvL+Yaz6fX1+Voc9C
	AO3K4kyDhvgSnIoMbR9AjC2ERP63hUmFeFKcf5xqjzvrLHldpo30gfjc9w8vmyvGXQbTiiS2q5S1H
	axYwwFRBQOdNRTzY65wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjimM-0000000D3mm-2Vou;
	Tue, 14 Jul 2026 19:26:54 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjilr-0000000D2ud-3xE4;
	Tue, 14 Jul 2026 19:26:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784057170;
	bh=KsztTcLL1hh9As65BcDTh5Y7TjOnYb7YivozEbWiMmA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AAjUyJ7de2ngGZyvzDv86kKk7IBaDgqEtOsSXZ6CqT2mEIraKYCDHCP/Jo9qjU4C6
	 GlbybFTTZ38TsqUtTmKNV6gc2pTOcoUisX95f5cQTeXGqNNtH6RGJBbmKCREx3JOUm
	 +m6BcPPhi2Il0MgU5uvTk/22c73y4KUBDyCtEb7IAJZOFYoG4tHljnWcI8cj3AeRqh
	 9oqvnP+dykHT1g2uELpyAg+1SyvoVuRxEmKM9Aa6XclGEBAyA1vDmKMdVbpyJC4vok
	 C1e+NU2hMrjhY+IExrhlOFyJjE0q+v1KFk8HOOpPgSGP4nVmaT65Je/MDwPApsRPfr
	 V6Xt22BE2BpWA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CE7A417E1066;
	Tue, 14 Jul 2026 21:26:09 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E8FBA480064; Tue, 14 Jul 2026 21:26:08 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 14 Jul 2026 21:26:19 +0200
Subject: [PATCH v13 18/35] phy: rockchip: usbdp: Rename mode_change to
 phy_needs_reinit
MIME-Version: 1.0
Message-Id: <20260714-rockchip-usbdp-cleanup-v13-18-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1831;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=KsztTcLL1hh9As65BcDTh5Y7TjOnYb7YivozEbWiMmA=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpWjVDMasSM5tZO04D8eI8/xlSbGyK/r2RXz
 LkdgeaQfIV6o4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqVo1QAAoJENju1/PI
 O/qa6LQP/3SP95HlK/XgRh8lWAXEWwzW0x3rp1NOjrRh9Rk15Xqx6RyaRPa02kjkzI4g+myqy6m
 cgWO1PeF8ujVY7E8RIpq/hZvVdleHRsIHA/DfBvFhBpOzRR9BMHFcTkLYDSneGw4ZZvNPsZhHyd
 QFFXSkDhJzwt25XHPWnnS0T5u5nJBpWl2rN/TSwLg67RvLko8iHvib7HqOFpHw1QLERJM3A8zAh
 QuHLvBvC2c0+RZS8tyAnh7U1FmHpT8tS8U1jZcuEoehkkuUvDzjqPF02uasEksf2ANY5LZvfpyN
 UhyRG6M4V7zR689Q7/UFN+aewtGEyrjo6dM5ln9SL0M8sSZF3SuGIVLZAfYojg2tKmJ/zFdy0qG
 6dZy9zkLYMI9kc3mapoS4PVpnKR2NdWcyhIeF1S2p80AmEEsKvJpYRzlIfI12fYFHjU/av+CKYB
 diQdUpJJB7O/VZ5jJlQm8xc8fbVhLYDW6jT+4IIBcG1UAKb23740zCV+oPzSiY8uoUKAj849oAh
 cy8Lup/NwoVThnSlsK4z2w6RykjvMk+L77zdqnuUzbHIzh9LdjhNtpPZmWIVXJ9nUwEs2OKSQLl
 URnkAPMxNTjbJ2NZ8r7kttvXorql9XaU51pYjb0CbLAAF8vGkBtemGE4txDgEt90OTmGaHcpUQX
 dXMYLajiDIBQppKozwooqOQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_122624_216662_EED38C93 
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

Right now the mode_change property is set whenever the mode changes
between USB-only, DP-only and USB-DP. It is needed, because on any
mode change the PHY needs to be re-initialized. Apparently at least
DP also requires a re-init when the cable orientation is changed,
which is currently not being done (except when the orientation switch
also involves a mode change). Prepare for this by renaming mode_change
to phy_needs_reinit.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 24108816e3b9..e44d19c9d119 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -171,7 +171,7 @@ struct rk_udphy {
 
 	/* PHY status management */
 	bool flip;
-	bool mode_change;
+	bool phy_needs_reinit;
 	u8 mode;
 	u8 status;
 
@@ -578,7 +578,7 @@ static void rk_udphy_mode_set(struct rk_udphy *udphy, u8 mode)
 	if (udphy->mode == mode)
 		return;
 
-	udphy->mode_change = true;
+	udphy->phy_needs_reinit = true;
 	udphy->mode = mode;
 }
 
@@ -951,15 +951,15 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 
 		if (udphy->mode & UDPHY_MODE_USB)
 			rk_udphy_u3_port_disable(udphy, false);
-		udphy->mode_change = false;
-	} else if (udphy->mode_change) {
+		udphy->phy_needs_reinit = false;
+	} else if (udphy->phy_needs_reinit) {
 		if (udphy->mode == UDPHY_MODE_DP)
 			rk_udphy_u3_port_disable(udphy, true);
 
 		ret = rk_udphy_init(udphy);
 		if (ret)
 			return ret;
-		udphy->mode_change = false;
+		udphy->phy_needs_reinit = false;
 	}
 
 	udphy->status |= mode;

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
