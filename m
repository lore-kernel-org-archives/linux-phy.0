Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFA44C36007
	for <linux-phy@archiver.kernel.org>; Thu, 20 Mar 2025 16:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvUSKUyKI+s+g2FwYm5s/tutyB908LOcxJFhCZztYbs=; b=eNfk9xT3dkkCYs
	7fE9j3EH4e++YMY8ayr4ZfflAfsxgoJKiLGcDKRiTKkVnojpJctgW1/xrEjPTPIH7hrT2ywe0u8AJ
	Gfpfr7SInWSQIn2pFA0TzGEb5dpJmGSbaTN7SFrcMiq8pD0+GSL1egGnWRMH5DdtF0EwLQXT/XAAp
	NkUF67YnSm1N5U3nN7J+f5LloFEG1XL9jL9+6ve6W1jF/8Ur50tuCzsVB+0ZDpIPyA8ejcTu+uqlN
	Ad5dCHkxmiFT/e78gtyb/eVQevhdbYmJ4OaXYG46XcPMmjw/dtFZ5XrxvIs0fvDrQESZmnV0O0vlA
	7XytmofYZjDGWvJUMsBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvINq-0000000CdTg-2xsq;
	Thu, 20 Mar 2025 16:04:38 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvIKB-0000000CbO4-1GSZ
	for linux-phy@lists.infradead.org;
	Thu, 20 Mar 2025 16:00:52 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B655B1D4F;
	Thu, 20 Mar 2025 16:59:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1742486346;
	bh=0UMDOMabLZ6w671e9DBv9w+zXTuDsT+vgr965ZIFrf0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nkbTwJ+b6fMn1dt1bgbHotFGHrmuDe0A3uJfNqMJd4f/H41TiR1WDVV+OEsWxJ4E+
	 H4YtKCJAbvCPuDxCipMKtP0gTlIG8ye78DrEUivycCLSiUTmkXxBaZmsoOzaolL8aP
	 bnExdrfVWw3/7NWLzflM2gK0lMO1fgFqb3Hj3xno=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Thu, 20 Mar 2025 18:00:12 +0200
Subject: [PATCH 17/18] drm/bridge: cdns-dsi: Drop
 cdns_dsi_adjust_phy_config()
MIME-Version: 1.0
Message-Id: <20250320-cdns-dsi-impro-v1-17-725277c5f43b@ideasonboard.com>
References: <20250320-cdns-dsi-impro-v1-0-725277c5f43b@ideasonboard.com>
In-Reply-To: <20250320-cdns-dsi-impro-v1-0-725277c5f43b@ideasonboard.com>
To: Jyri Sarha <jyri.sarha@iki.fi>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Francesco Dolcini <francesco@dolcini.it>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15-dev-c25d1
X-Developer-Signature: v=1; a=openpgp-sha256; l=4069;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=0UMDOMabLZ6w671e9DBv9w+zXTuDsT+vgr965ZIFrf0=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn3DucyiYCunaMHkYZkOsUbBr33TNxokGQwFmLG
 XrME8B6hKOJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ9w7nAAKCRD6PaqMvJYe
 9auiEACs13tj8wCr1mA8KSZCTPlaKJDMjz/Z5gzTVKEMiTgmbK6/7FVpneNGemYUbeECPZl5FGi
 5vaqWxwnQmcaCQcFQlozn8lVUDOzQwUaaU0JQMVj++T5VaO7Ag72UK77t6lcqxj7YmpSe8w8rI0
 gpwohmP4cxRFDvlXr/END82vNze9O1AG+1dQNaT2YpSo9DR4kIR3kXla5l7fmPrLZ9UZMDXoFZG
 jSvg3wUkyt12FjDnnyE/u6Cho1fILi69LRV8FgpVyMa9NPTBetq+j729cNuii14Xc41IQ6gv/q6
 MAp9JMrQ+LgkZAPDj1tkoF2pZx0fFlVCllwQICAeYRjLjvxKFYiPR5DDQl1HnBL0SjWVwrMlsNc
 C7j5mpQN8SAso738VtWgOsYTQISzk7aKsBkIkRnwm0Kq4QhZQqx3BncoCV1QAWcuOSoMVcRyk1L
 FDnoAIxo3r6yQtKGAOyqWhFY2cwJMtaH3LfHhT8ZYCl/99Se8yLrzRE4GEzM/Xg0HWGAqLaIT2f
 lTqWgUpn2LuWjRRhPUYpwpxiqjUXa+RZjI1ANj+DZh0Pabk1zLO0yXcsxLLmRdflrsuaP/lVVQg
 S/l5YdkNzdvqi0VTX1l3XPnMi//wEwmLcD2fXQnHFbtCIn5Gy/79SjwDZP96kglJeNYXlVcDGjz
 +93rFU+g3CsNdWg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_090051_496357_76282239 
X-CRM114-Status: GOOD (  19.56  )
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

cdns_dsi_adjust_phy_config() is called from
cdns_dsi_adjust_phy_config(), which is called from .atomic_check(). It
checks the DSI htotal and adjusts it to align on the DSI lane boundary
by changing hfp and then recalculating htotal and HS clock rate.

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

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 48 --------------------------
 1 file changed, 48 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 2a272fd8ea3e..0bb55584cb44 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -517,50 +517,6 @@ static int cdns_dsi_mode2cfg(struct cdns_dsi *dsi,
 	return 0;
 }
 
-static int cdns_dsi_adjust_phy_config(struct cdns_dsi *dsi,
-			      struct cdns_dsi_cfg *dsi_cfg,
-			      struct phy_configure_opts_mipi_dphy *phy_cfg,
-			      const struct videomode *vm)
-{
-	struct cdns_dsi_output *output = &dsi->output;
-	unsigned long long dlane_bps;
-	unsigned long adj_dsi_htotal;
-	unsigned long dsi_htotal;
-	unsigned long dpi_htotal;
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
-	dpi_hz = vm->pixelclock;
-	dlane_bps = (unsigned long long)dpi_hz * adj_dsi_htotal;
-
-	/* data rate in bytes/sec is not an integer, refuse the mode. */
-	dpi_htotal = vm->hactive + vm->hfront_porch + vm->hback_porch +
-		     vm->hsync_len;
-	if (do_div(dlane_bps, lanes * dpi_htotal))
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
 			       const struct videomode *vm,
 			       struct cdns_dsi_cfg *dsi_cfg)
@@ -581,10 +537,6 @@ static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
 	if (ret)
 		return ret;
 
-	ret = cdns_dsi_adjust_phy_config(dsi, dsi_cfg, phy_cfg, vm);
-	if (ret)
-		return ret;
-
 	req_hs_clk_rate = output->phy_opts.mipi_dphy.hs_clk_rate;
 	ret = phy_validate(dsi->dphy, PHY_MODE_MIPI_DPHY, 0, &output->phy_opts);
 	if (ret)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
