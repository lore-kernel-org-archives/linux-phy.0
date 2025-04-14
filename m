Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A861CC369B9
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQ4g+9DdSCGkoLjXaIgD5MNJRJePjfOrhUAkyI5GMcI=; b=lqheoJdrmp5OXx
	emrigf1o/auN856DD38y11jcNGf8AT+FywLNx9PrcVYc+cspZ4DyzgqMo2Le4MAjFn5fO4t4tWXra
	3q6A9aUg2o+BQ4+i7p4m94+0giHt1PE2NdDN6E9FDqhUcObw0NAI8ZuiREmJjaqy+LnV/wPznLilo
	538OzmhKW24OqtV2lrO9qiy+hk60kcEst8u/exQ8fl2mD8cNA4Z6LqNW7QBImp8EwiF3UR6kiq6Gq
	lTbGUhR1vU7r5RSpYV+oMxxpzYuvWTLdKOf/W6/XErJP54s43NRqqV4XrP3AJy9TTHECxSsIwayxa
	/HdsbCLG01dUtTVk7nUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnM-00000001ioz-1dAp;
	Mon, 14 Apr 2025 11:16:08 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hjg-00000001hI5-3M9M
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:22 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6D7A51A78;
	Mon, 14 Apr 2025 13:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629018;
	bh=YOFz63JzljKPD78q10dTnyaY1ocLDBf5kpnKoq+T+4w=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=H2k5u3hOftjAQmGa8qUUHi/ikYQBY0ovIVPZ7c9vNxa8TFyB08paZHsB0iJNUSyU0
	 JuAHJfnBwf4gyPHuzhg2AxIDiIF+jOR/cJWmZ27RKVvNJuk1AJDsF7QF7SilCH9oIq
	 CtHnN5B+pBxyHhCik64mF8FbjcUqPppNqODvf5Kk=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:22 +0300
Subject: [PATCH v3 13/17] drm/bridge: cdns-dsi: Fix REG_WAKEUP_TIME value
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-13-4e52551d4f07@ideasonboard.com>
References: <20250414-cdns-dsi-impro-v3-0-4e52551d4f07@ideasonboard.com>
In-Reply-To: <20250414-cdns-dsi-impro-v3-0-4e52551d4f07@ideasonboard.com>
To: Jyri Sarha <jyri.sarha@iki.fi>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Jayesh Choudhary <j-choudhary@ti.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1914;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=YOFz63JzljKPD78q10dTnyaY1ocLDBf5kpnKoq+T+4w=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O2A3rPjfcdggqDjJDVvwAexTdYOx6yKZjOo8
 N+p47bA3eyJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztgAAKCRD6PaqMvJYe
 9TxwD/0WCSjrtl3JIf92rhufeilD1pCHWl23FMfXyELuBPt+ovfNWAbWqn5tcOtkvWbdF2C0SBC
 BLdVIUqg8gA+2/SCQZduNcvAIwJ5TLLncbeGnlTkOLy4ouOMvAACG1AnFT2RJRzEPZtP4K8lRSw
 yhePNIxEOXrBYuhORcWlJO216rC7fPVvv/OimdJyIdQGX44K1KZM+JDKlfKShUId8XUxkOXGC4y
 BP6PpO/bhuGGqC6M1xSCEMrjZy12vHf2behjIbkLVAFWcCw3JKM5Xkg3ID7qzI5M+6xOfjsRgEm
 AB6L2HMwmAYmBdJH/jdtOo3h52sLQc2vO3KtEMPbhqeREduNUCb+jreGaMcRV61yzyOeNAXvhV9
 gWhaRgegIIXjJFTYX5bVSUWesSCIh3nk86T9f5bY3b+ynlXJCVZPiVpCjRCWcJUvEMLGOwFsN0g
 ab2dYnggImHqmCoo/ZQgqIdYuHwVEFPVfIaOfeEgeVMI0OK2MrmpIjb1yay5DwW6sWDVoScmdTl
 wJ71QtLwP3KFbsJt4sbT6GH17Q5q2C4TJqRuaYGKqTge9vWwv4HMM7V3XBT0HT9D8TehrBx+7Bv
 n6KBM6h9/h+Pd3hv9EWN+gPfIO69QbUidX8z0dHCKcE+oaPdCr1nb6gpfCOtwwwn9nMbSp8xJUH
 EKT8aMUKJcCJffw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041221_017737_C9C3BFE5 
X-CRM114-Status: GOOD (  14.36  )
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

The driver tries to calculate the value for REG_WAKEUP_TIME. However,
the calculation itself is not correct, and to add on it, the resulting
value is almost always larger than the field's size, so the actual
result is more or less random.

According to the docs, figuring out the value for REG_WAKEUP_TIME
requires HW characterization and there's no way to have a generic
algorithm to come up with the value. That doesn't help at all...

However, we know that the value must be smaller than the line time, and,
at least in my understanding, the proper value for it is quite small.
Testing shows that setting it to 1/10 of the line time seems to work
well. All video modes from my HDMI monitor work with this algorithm.

Hopefully we'll get more information on how to calculate the value, and
we can then update this.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 182845c54c3d..fb0623d3f854 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -786,7 +786,13 @@ static void cdns_dsi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
 
 	tx_byte_period = DIV_ROUND_DOWN_ULL((u64)NSEC_PER_SEC * 8,
 					    phy_cfg->hs_clk_rate);
-	reg_wakeup = (phy_cfg->hs_prepare + phy_cfg->hs_zero) / tx_byte_period;
+
+	/*
+	 * Estimated time [in clock cycles] to perform LP->HS on D-PHY.
+	 * It is not clear how to calculate this, so for now,
+	 * set it to 1/10 of the total number of clocks in a line.
+	 */
+	reg_wakeup = dsi_cfg.htotal / nlanes / 10;
 	writel(REG_WAKEUP_TIME(reg_wakeup) | REG_LINE_DURATION(tmp),
 	       dsi->regs + VID_DPHY_TIME);
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
