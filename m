Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1483C87FCD
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmcNsAhyUWhUhkIMWP0i82t49yP8B8g+51vuTkMrDKw=; b=eLyHo3ovs1VWM2
	eRIToTlCdc1nC6HcYlx6MODxekC0gnHgDmDUdsuRTo7hRlKPGodhRFT1GWZyt/CeBKhMxhw0frF08
	zgJ7boQ6hrOSUgjfOwgjW49aijdPvvluJfesO6+o77NJl144JC2t5c/5C6sqjdibUHE9q4cjwvw/n
	qhRjsIwAv4jLkZc395vI5LMgLPzIrASJ8dBHUAiVsTWtVN3oXkjE8C03pDTExxOseIxOHSp4QM73F
	0DPhG+I6IYmQbJTizlxoIfMXRCQLmRhGl1lec/lN73z9rfFJvLENPB2QlKlVXE6AtYS/joeX26dU5
	gIOWSxCV6+FYLNpCF4tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWcT-00000004fay-1crP;
	Wed, 23 Jul 2025 10:22:41 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWM9-00000004cMk-1SoD
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:05:50 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1442F134F;
	Wed, 23 Jul 2025 12:05:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753265110;
	bh=AIjszP/iGXkGjj23VjMych22bAgvN9HKxmaLXYlZiI4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nxD906sUntKXTKtqZlII27MbW5l6FC8MENd0MOKOH6jry3MkjbckQiA7yeXSlW1Fj
	 PFRTWYGRyDmHDnyxHnZ/x9okPrRDWJsJrCtA7I4LaXUmMgsoaC/SE1pCJuVKuZ5agU
	 6c4gWOUgWUb2WU2h3BihPoE0kJOwjOQOXFw6TvRY=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 23 Jul 2025 13:05:15 +0300
Subject: [PATCH v5 09/15] drm/bridge: cdns-dsi: Drop
 cdns_dsi_adjust_phy_config()
MIME-Version: 1.0
Message-Id: <20250723-cdns-dsi-impro-v5-9-e61cc06074c2@ideasonboard.com>
References: <20250723-cdns-dsi-impro-v5-0-e61cc06074c2@ideasonboard.com>
In-Reply-To: <20250723-cdns-dsi-impro-v5-0-e61cc06074c2@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4077;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=AIjszP/iGXkGjj23VjMych22bAgvN9HKxmaLXYlZiI4=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBogLPsk20j3LpAdEg4rSjoqN0ZJ1Hhayte5db8D
 bdtCrCOyc2JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaICz7AAKCRD6PaqMvJYe
 9QnNEACQRtFQ6t1lr3SbQOaOL6qwBZuRIEfBoCq29OO1WbAWvUWjXqRtFgnF8O720V1VTh4GjIk
 DmF8Qyon5+Qes/47i4pwIJqjgkoBS1rGJZBoHgn+Bxybem+qnWB7T8bQuWWNYyZCEkX133fuBmq
 vYkdBNnE3J6wABuNmllbyTs09KzZqJLdftFDELwQ/Hi4nLMnH4LGgfQg4ZsBggQ9vZki+xLo0Ww
 19QQk9BcRQ+pFndKhwslVB/PDJG1TDgIna04uykiu1wZcFN+A3jz/36kqpmJM9/WpKak8dousKg
 hA0prPtwaahzJ/z9ZFI/4g6JiJouGX2cxaoKTtwPZNL7YaNtBWDrIjIdjWl32ZRUZzHzBH2tknK
 Md7ZQemeLcYODB4XRqf1Ck/CbYm8zKUMFyyxAqQbedpeZjNznuiRurpmIW5TreiYUXYW9Fomj1R
 k19litD2W2gNf+ogKaejpXZ6SZCmP3ndMw4LimYoiOHxyqf4hg4jLWjpz5xZRiZcqMbwCbJIeP7
 1IrVPTB+STE9EvmnQR1rsfnfQpGx/LZxSjirAiOHILDcFxerQlQDtaXBVy6gQ/ljfFd3XI6w/OG
 PrP9rlvhUzuJqlk4W26orr+o8zbQekMyi57iBcunef03bmBtBJTtfxwUliRNOKTTkjQbx6Lwi2r
 tpl8xnWhVJVJWBg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030549_542795_C8DF8992 
X-CRM114-Status: GOOD (  18.61  )
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
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
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
