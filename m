Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE64C7115A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 10:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQg5JxY+V3uBv/JMCNsYGz74/jGwcU7iAaurwSLxyK0=; b=uAlzNF+R80e23o
	ogO31BvUFGzdxZdnak0GHlquKqHvk82uAtCKHTCRierYs/ngXICxCsZCymZCzgi0g0hes/uQyWh87
	ivGyxalzC4yBYmhpQs6GxUE/2TYycxDgmxj4zK94/v8bx6wvyOVfLw9CEG3XOkHk5Ehbac6/Sgqd9
	RDqU+R2QC47FjT+PlGsz7wFDWrpd9ZqwmA72e1Dt2V+/img/YMmr95HtZ32o5r8bfOr4j1lw7T87t
	NFvnBVlUL0t30CvsGC9KN4pFtS5HHHOEqGHJV3LqBXAhKqycObz9y8fBI2zAIdctxRyHYoHHvOXBV
	LvMv9pzc3QoeCi9YlrBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRq2R-00000009mx1-2fWc;
	Wed, 18 Jun 2025 10:29:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpa7-00000009gX4-27CV
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 09:59:48 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 79B6B5278;
	Wed, 18 Jun 2025 11:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1750240773;
	bh=nOIk7nVK0gYGQHYfnFn+wepDOT+LG8Fpmo2vGsvo32Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EpU1yAMPNLkNLJ6x8vjdJ8jtvjyV+En7JfsCRyqX1gZ248V3ysZuvghrIiBQwyfK0
	 KIvofryA8kxAElGDgNMQeWOib9yDN0+mvzdVdtkMrZrjnLw4YCeWrGJcjZv80uO1W2
	 CdUAsOOYmkC6UfqewNtTEXjjsYi1ph+ivhYPiPtM=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 18 Jun 2025 12:59:14 +0300
Subject: [PATCH v4 11/17] drm/bridge: cdns-dsi: Drop
 cdns_dsi_adjust_phy_config()
MIME-Version: 1.0
Message-Id: <20250618-cdns-dsi-impro-v4-11-862c841dbe02@ideasonboard.com>
References: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
In-Reply-To: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
To: Jyri Sarha <jyri.sarha@iki.fi>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Jayesh Choudhary <j-choudhary@ti.com>, Dmitry Baryshkov <lumag@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Parth Pancholi <parth.pancholi@toradex.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=3979;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=nOIk7nVK0gYGQHYfnFn+wepDOT+LG8Fpmo2vGsvo32Q=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBoUo4Azi1FzGS5kuKlatY6+5w+Ff8BaSgyy6KKe
 9HlGyPbsJSJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaFKOAAAKCRD6PaqMvJYe
 9U1dEACuVvO6hwjUGQePXtDyET3qfUTLzhf6GaexsOVTYP6R1oF1MdzccG6WAsgkQPpKZCeM5oz
 k3aoxDcty40HL9DV6UcpMkjZjBtek5YBnvW6u3Msd8CxPSIsprj+HR7BTN3mqKKWrRR3RkyMmgP
 t8AOdHYg2af97+cXxBpKtWKLGaIVmvx0RVTe5f8IS8BP4rf2cu9h0Y/Z/qgWc/PdSzOaH8pk4LZ
 0ACs73Qmx57MTziyfnGp6L4UMwOg/J3RHEcQbssvyHq24y574n1Rie0Cr3Rvat/CoEupgiloWMW
 8Qi6q8PMzko9bWsNnZxgMgZFltfw77ixLcusgmdJ5Kn3atFLS9SvcOPAnAHjWPHR4Rj50CDxk8V
 fNxayXsXuGQRV2X/WMounnoGZNGLlqeQwHg9s4nDp1IqEl2Fx8hlaMmUhCIZI7WnEmsgnhAtEkb
 LnlWSt+9c+MACdAW6AM/139yy+ufsAbeZpq/+0InpR52uRja27l+FxuL+17TjRPATad1rEowq9X
 A3yuYKOjLY7DXmElFW1n1pMi4+TOQUHgiRfRt/fUlFmKZI5fttVRt4Jp1b/t6DwVyQxo7dwwsGV
 4v4rDZAVsb7eQviSRwJBisrjhzFdGPDAiMi/Jh71lv8RKee8Wp59COxLwcPjKk9l9MlcfCrS8dD
 kd1JjyvT1lbtp6g==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_025947_694919_9AA2D620 
X-CRM114-Status: GOOD (  18.41  )
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

cdns_dsi_adjust_phy_config() is called from cdns_dsi_check_conf(), which
is called from .atomic_check(). It checks the DSI htotal and adjusts it
to align on the DSI lane boundary by changing hfp and then recalculating
htotal and HS clock rate.

This has a few problems.

First is the fact that the whole thing is not needed: we do not need to
align on the lane boundary. The whole frame is sent in HS mode, and it
is fine if the line's last byte clock tick fills, say, only 2 of the 4
lanes. The next line will just continue from there. Assuming the
DSI timing values have been calculated to match the incoming DPI stream,
and the HS clock is compatible with the DPI pixel clock, the "uneven"
DSI lines will even out when multiple lines are being sent.

But we could do the align, aligning is not a problem as such. However,
adding more bytes to the hfp, as the function currently does, makes the
DSI line time longer, so the function then adjusts the HS clock rate.
This is where things fail: we don't know what rates we can get from the
HS clock, and at least in TI K3 SoC case the rates are quite coarsely
grained. Thus small adjustment to hfp will lead to a big change in HS
clock rate, and things break down.

We could do a loop here, adjusting hfp, adjusting clock, checking clock
rate, adjusting hfp again, etc., but considering that the whole
adjustment shouldn't be needed at all, it's easier to just remove the
function.

Something like this function should be added back later, when adding
burst mode support, but that's a bigger change and I don't think this
function would help that work in any way.

Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 45 --------------------------
 1 file changed, 45 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 7103878df1e7..f7d7d277367e 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -508,47 +508,6 @@ static int cdns_dsi_mode2cfg(struct cdns_dsi *dsi,
 	return 0;
 }
 
-static int cdns_dsi_adjust_phy_config(struct cdns_dsi *dsi,
-			      struct cdns_dsi_cfg *dsi_cfg,
-			      struct phy_configure_opts_mipi_dphy *phy_cfg,
-			      const struct drm_display_mode *mode)
-{
-	struct cdns_dsi_output *output = &dsi->output;
-	unsigned long long dlane_bps;
-	unsigned long adj_dsi_htotal;
-	unsigned long dsi_htotal;
-	unsigned long dpi_hz;
-	unsigned int dsi_hfp_ext;
-	unsigned int lanes = output->dev->lanes;
-
-	dsi_htotal = dsi_cfg->htotal;
-
-	/*
-	 * Make sure DSI htotal is aligned on a lane boundary when calculating
-	 * the expected data rate. This is done by extending HFP in case of
-	 * misalignment.
-	 */
-	adj_dsi_htotal = dsi_htotal;
-	if (dsi_htotal % lanes)
-		adj_dsi_htotal += lanes - (dsi_htotal % lanes);
-
-	dpi_hz = mode->clock * 1000;
-	dlane_bps = (unsigned long long)dpi_hz * adj_dsi_htotal;
-
-	/* data rate in bytes/sec is not an integer, refuse the mode. */
-	if (do_div(dlane_bps, lanes * mode->htotal))
-		return -EINVAL;
-
-	/* data rate was in bytes/sec, convert to bits/sec. */
-	phy_cfg->hs_clk_rate = dlane_bps * 8;
-
-	dsi_hfp_ext = adj_dsi_htotal - dsi_htotal;
-	dsi_cfg->hfp += dsi_hfp_ext;
-	dsi_cfg->htotal = dsi_htotal + dsi_hfp_ext;
-
-	return 0;
-}
-
 static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
 			       const struct drm_display_mode *mode,
 			       struct cdns_dsi_cfg *dsi_cfg)
@@ -568,10 +527,6 @@ static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
 	if (ret)
 		return ret;
 
-	ret = cdns_dsi_adjust_phy_config(dsi, dsi_cfg, phy_cfg, mode);
-	if (ret)
-		return ret;
-
 	ret = phy_validate(dsi->dphy, PHY_MODE_MIPI_DPHY, 0, &output->phy_opts);
 	if (ret)
 		return ret;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
