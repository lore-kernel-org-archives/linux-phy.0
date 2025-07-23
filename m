Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE777C87FCE
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ac3oTt2egjYnntWEqaMUdglqHXI6ZRkVks2i8sOEDn0=; b=zVBiTj81gt1cPm
	DhYt0z1UaRaFVaxqS4r52vh8R3RANp3PnLoxQWYm9VC0Z5c2xo1WXZiTSZdFxCC5CkIJ0eVPNYIRH
	8AirDnRrLExtWggjTLtjGzq22ZvdBRd1X6BxsGbSWS84LaDJEelYi0lHBrqP21i7h6fF6BaQKy55U
	gmWDws1+AofI3Ppbv5rgOGj6HEv55niyiEkd0xcTVWJBIardbVFvv3haktox0xD+rR8RksYJt1g0t
	ikxql5eCY/irekgBtvk0PrhGzB+7PPXGfrniON6bMipe8Kv9pSFOrVXEp6Rot9d8MqaDaD7VXtZLc
	0VCs2JiGDFDpQyVvU39g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWcS-00000004fZb-1uCW;
	Wed, 23 Jul 2025 10:22:40 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWM5-00000004cJj-1I9K
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:05:46 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0B9DC1129;
	Wed, 23 Jul 2025 12:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753265106;
	bh=+PxAbR0AgAh+6ttH91klZ+Aji+1hZOcFtaS/g/i1Q0s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RX1xMwKKPpK5WRz44L6QlrkdK2tshCe6rta1BfyesxjjiAK0rd9qw1n2zx9AchHFD
	 LHhbk6hlcYg7cvduzEblm0OUQbdlCr0AihRY2/Ht95rNkjLRONyW8AU0hkuLE8KWj8
	 0D5Wk6GAGxQ4QZQ2cDeGVfnEfdAIRN8jIMLqsmPo=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 23 Jul 2025 13:05:12 +0300
Subject: [PATCH v5 06/15] drm/bridge: cdns-dsi: Remove broken fifo emptying
 check
MIME-Version: 1.0
Message-Id: <20250723-cdns-dsi-impro-v5-6-e61cc06074c2@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2010;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=+PxAbR0AgAh+6ttH91klZ+Aji+1hZOcFtaS/g/i1Q0s=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBogLPrTWKpTI7qlDcFlmzpTrNDGKKo18w9aaIO6
 KxFKD5lOS2JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaICz6wAKCRD6PaqMvJYe
 9RRAEACdS40ggRn6TNhjMQt8B5FDvfYJ1X91p5qVBMm853Zy5ZJ1LS1L1M5deJpBeBU2XjGHmvg
 LGNeNqz/gVeVlGh9Ab8GClyFgcziAl3nWfBRdGXG70Um/OWZjdn8bJRFodJJIGxkjmmWWwwKbtL
 tTFlVefMDKvHDwCvgVAHG1Rxdtp8bn1L1irWH2x9SmQbmHbLnLkEyL638VGcT+1Aj2jjboVDqE9
 ETLyfK5Pe6gRACRz0y7HWsCPIsMDSRxRCZmkDgiBjmCXktMVxul1Dad+V5CmPKZZ4tP4HowXBRV
 DbZmE1/OrGc4TagxxfrSEPoGh2EFdOMZTaut7xebklIf77rDmJoVSd6l14vLPimsrCy/4QuntH+
 iurDqd5h4jAYLJxaW45Bfj2OZvgXGz3vZkbTRxKA+5j0nPnTLGL6XkTnWD/JraXau+K2hcTpkie
 qoohrmuXfF81+pPSnekpHeL5AmwGIntKlZaqdiphdTFwC26MAxG+NJm94vNOjEbNhJ4rwXUDZqU
 p2DOiocvo2yADK8cHXVYm0g5zIX5PdnkK3lSbcgr2Lvz5JgQ3xsZZxmlclCg5RRaWpxTVQA/Pwm
 LF5pYJ7NUvy/ZhLLKhqp/d5M9fXRonuX84oBWrZ77TD6b5rGa9Icr57aKutAqZwsFbwTvZQ47D7
 eA5Izv94iKfXodw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030545_488776_033A5DE3 
X-CRM114-Status: GOOD (  13.12  )
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

The driver checks if "DPI(HFP) > DSI(HSS+HSA+HSE+HBP)", and rejects the
mode if not.

However, testing shows that this doesn't hold at all. I can set the hfp
to very small values, with no errors. The feedback from the HW team also
was that the check is not right, although it's not clear if there's a
way to validate the FIFO emptying.

The check rejects quite a lot of modes, apparently for no good reason,
so drop the check.

Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index eae9469ef431..000c5a2367fe 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -553,7 +553,6 @@ static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
 {
 	struct cdns_dsi_output *output = &dsi->output;
 	struct phy_configure_opts_mipi_dphy *phy_cfg = &output->phy_opts.mipi_dphy;
-	unsigned long dsi_hss_hsa_hse_hbp;
 	unsigned int nlanes = output->dev->lanes;
 	int ret;
 
@@ -575,20 +574,6 @@ static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
 	if (ret)
 		return ret;
 
-	dsi_hss_hsa_hse_hbp = dsi_cfg->hbp + DSI_HBP_FRAME_OVERHEAD;
-	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
-		dsi_hss_hsa_hse_hbp += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
-
-	/*
-	 * Make sure DPI(HFP) > DSI(HSS+HSA+HSE+HBP) to guarantee that the FIFO
-	 * is empty before we start a receiving a new line on the DPI
-	 * interface.
-	 */
-	if ((u64)phy_cfg->hs_clk_rate *
-	    (mode->hsync_start - mode->hdisplay) * nlanes <
-	    (u64)dsi_hss_hsa_hse_hbp * mode->clock  * 1000)
-		return -EINVAL;
-
 	return 0;
 }
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
