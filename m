Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51808C369A4
	for <linux-phy@archiver.kernel.org>; Wed,  2 Apr 2025 13:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mv35+eMi01I12UdkG1Nvx8xObd44Pu9Ut19A72FjCCs=; b=JPAftRyqT6/PqU
	Je7dcatA+lWtfDUjr0sOmZa3GdkwcGqgSUfwsBcvlPHmXyE4CTvc/wzjIRSkERHx+2d3Zg3WDm71Z
	F5WMRQZ9v7JiizGZZhaJppch979iadDBlevVXT4C1QVYqbrjt21aLHmVGTzwAxRSZE+rMjSzcabST
	OkgoAW2MOQF5+ZV27guoSdTidU/CFn7oEjt3dGZ+aUCHN9Jr8a9nrKujzfDmnYm8j9lFuod0V7iPX
	B3yBufAfe08EYIGGk7n4qH3+rdQc0x12kaoOZ0vqHyRogb7j0JRd8HXMM2yWflxc3z4C3IOkIi6GY
	NzreTjxlJitV7v+U1HMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyHz-00000006GoF-0CW4;
	Wed, 02 Apr 2025 13:37:55 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyBl-00000006FCU-1AU1
	for linux-phy@lists.infradead.org;
	Wed, 02 Apr 2025 13:31:30 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7A82A245E;
	Wed,  2 Apr 2025 15:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1743600575;
	bh=2qJfC7oDxsjuiQHnkQy9vy3BrMM57VcAHQdpuKoTbDE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MBGQt6G1K+JaPOeF4nizPZ8kWrecJo1iwuq/b5SUlW+V6bxcccpy7J0NJz2kXqAgx
	 fbdvvtMyzn85QXtwtFLbFBpszDjFVYE4zTg5FgcktugZitCiElEFoKHiqcPX0pYT/8
	 KKHj3vDTBEtAtHMuGwzVywRSbk20VBxF/Hz9Va0Q=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 02 Apr 2025 16:30:53 +0300
Subject: [PATCH v2 11/18] drm/bridge: cdns-dsi: Remove broken fifo emptying
 check
MIME-Version: 1.0
Message-Id: <20250402-cdns-dsi-impro-v2-11-4a093eaa5e27@ideasonboard.com>
References: <20250402-cdns-dsi-impro-v2-0-4a093eaa5e27@ideasonboard.com>
In-Reply-To: <20250402-cdns-dsi-impro-v2-0-4a093eaa5e27@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2637;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=2qJfC7oDxsjuiQHnkQy9vy3BrMM57VcAHQdpuKoTbDE=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn7TwfNSdCSAxRQ7FWWHrv+ucmbrxQItEOhvwxd
 8wtdX1XYAaJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ+08HwAKCRD6PaqMvJYe
 9c39D/wPtEvIKBRT0+zWyqwf1N+KagKV5o3nGkcvDwRIswnJJEK4SSUUGwmtshFXIttWQ3gFjFj
 kYsY0xqd1Kis9EhELKPE4/v4foX/AiP4os8/cci6iekicrTq9+51XGozSx8dHGS5xDcjVmuH/xt
 WXqO6A6ofc+63+BOx5u56ocun59IJyxLu2aU1LfOX0b6vtbdgnfnH7ah9x1/PWTqA+ZEFsoimb0
 i1IGBJOpdItLZ8aGqz/PaMQoHMK8YW+80oSIqp7U3JlLpsrQ5902mgebD0lcb3k8xNIrJtQJEnw
 mY8vrT/ypwkxxZtmQVZwcAOum9gB0i8eQ46SSxJYKtr68Pra+d/iBXnuPhz+5YkNmbODhnOAa40
 ettMRlNFDNh0uGG8XrW3LOkoRsRjls+R5UgbKXs3pOOa14gTc/SilBSHYdBfc0jIP8fd4Ge61PI
 tyS4+MgoHlC6AQi4RJ4VbheqyCLHrFO/G9cIlDLTAs1DwmFgFiMYKohRZRb0S6uIo5CT4y8spRt
 39d0T2mcveoGUAL3tJAS0nXYNbb0clid/9gJWZVSz4+Jdv8UcRWJRhuyYE1+r2w/c8l9dei0gzy
 WE8yHsTrstJ2oehxi0DZTX31fk5Q9YfHEeD7MvLjJtHgixKEhQ6RgIcfKLq8BEVej/DHKVocni/
 CQAGqQXza3Rnzdw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_063129_482205_EE6E2E5D 
X-CRM114-Status: GOOD (  14.18  )
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

The driver check if "DPI(HFP) > DSI(HSS+HSA+HSE+HBP)", and rejects the
mode if not.

However, testing shows that this doesn't hold at all. I can set the hfp
to very small values, with no errors. The feedback from the HW team also
was that the check is not right, although it's not clear if there's a
way to validate the FIFO emptying.

The check rejects quite a lot of modes, apparently for no good reason,
so drop the check.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 28 --------------------------
 1 file changed, 28 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 9797e6faa29d..e85c8652c96e 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -453,15 +453,6 @@ bridge_to_cdns_dsi_input(struct drm_bridge *bridge)
 	return container_of(bridge, struct cdns_dsi_input, bridge);
 }
 
-static unsigned int mode_to_dpi_hfp(const struct drm_display_mode *mode,
-				    bool mode_valid_check)
-{
-	if (mode_valid_check)
-		return mode->hsync_start - mode->hdisplay;
-
-	return mode->crtc_hsync_start - mode->crtc_hdisplay;
-}
-
 static unsigned int dpi_to_dsi_timing(unsigned int dpi_timing,
 				      unsigned int dpi_bpp,
 				      unsigned int dsi_pkt_overhead)
@@ -583,7 +574,6 @@ static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
 {
 	struct cdns_dsi_output *output = &dsi->output;
 	struct phy_configure_opts_mipi_dphy *phy_cfg = &output->phy_opts.mipi_dphy;
-	unsigned long dsi_hss_hsa_hse_hbp;
 	unsigned int nlanes = output->dev->lanes;
 	int mode_clock = (mode_valid_check ? mode->clock : mode->crtc_clock);
 	unsigned long req_hs_clk_rate;
@@ -617,24 +607,6 @@ static int cdns_dsi_check_conf(struct cdns_dsi *dsi,
 		return -EINVAL;
 	}
 
-	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {
-		dsi_hss_hsa_hse_hbp = dsi_cfg->hbp + DSI_HBP_FRAME_PULSE_OVERHEAD;
-		dsi_hss_hsa_hse_hbp += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
-	} else {
-		dsi_hss_hsa_hse_hbp = dsi_cfg->hbp + DSI_HBP_FRAME_EVENT_OVERHEAD;
-	}
-
-	/*
-	 * Make sure DPI(HFP) > DSI(HSS+HSA+HSE+HBP) to guarantee that the FIFO
-	 * is empty before we start a receiving a new line on the DPI
-	 * interface.
-	 */
-	if ((u64)phy_cfg->hs_clk_rate *
-	    mode_to_dpi_hfp(mode, mode_valid_check) * nlanes <
-	    (u64)dsi_hss_hsa_hse_hbp *
-	    (mode_valid_check ? mode->clock : mode->crtc_clock) * 1000)
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
