Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A05A1C36001
	for <linux-phy@archiver.kernel.org>; Thu, 20 Mar 2025 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdPb/R2h2DUYpD1TKPfe9K2J2BA+uWjEChfeOF2UPNc=; b=OG8TutfFjM0qHL
	Ndddf2b5hBsCLKBAp7O4p8CLUB2mGzD0k8+ykuHcIIAncc/qJ/pT99kBihEUTMQ41NmalMva85FDX
	XzLRaDtiI3WOUk4jbLHke8NPtVlPAMy9WJ0xkSIsqdZsz8QgYQ8YLZ9lhiDqES3tkvM/AAQQpKVZN
	JH5dKCJnj4a6KDrNZNV6eAb+sTGTi4jq5tNzXrd3h72q/Fp1qaS9Gd3qyTpyT+5KjJrl4G+ZP98t/
	ogEYoEIn4kWig8c8x+fJrhugcKutUqZFp9bnOkAbi3eCWVD7NagwiK1bvtpCR9alSDAOUJQHBspml
	cGC3L5IvpFIjkdS4Vx5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvIMQ-0000000CcHH-0IS9;
	Thu, 20 Mar 2025 16:03:10 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvIK0-0000000CbFV-3Pi3
	for linux-phy@lists.infradead.org;
	Thu, 20 Mar 2025 16:00:42 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 462FD187A;
	Thu, 20 Mar 2025 16:58:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1742486336;
	bh=vjRuuRXkQ3UFqYx/0yC4s/4b1wMI2nCnKESmkXL4LGc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=enlhF/NqhGMzrcEUR9NQg0WbYcjq4T6iDpB+oY9lYDVosjtTolygnrY6GrRixGtPR
	 WXSmO1vtV90G/lwZGlNZeaFzVODPOdcnCPQcEk9EoUWQNoL6QIlxN5ba7sZ8zN+a3H
	 RlqyyNb4jC095p1S+0eUW0o4AM3PFFKjSSBLwR6Y=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Thu, 20 Mar 2025 18:00:03 +0200
Subject: [PATCH 08/18] drm/bridge: cdns-dsi: Clean up cdns_dsi_mode2cfg()
MIME-Version: 1.0
Message-Id: <20250320-cdns-dsi-impro-v1-8-725277c5f43b@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2823;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=vjRuuRXkQ3UFqYx/0yC4s/4b1wMI2nCnKESmkXL4LGc=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn3DuZPGQq04sTkb7ZrhEAn+AT67MgErOWSxydE
 Z5r3wz3whWJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ9w7mQAKCRD6PaqMvJYe
 9Zv+D/42n5tRdaljlgcPGPlDh2WjWOdGbp4GIUPHbwbed4loym7HZBm8pqdW2HupQ8OXkJVtmHI
 e0eIVDnIcA8cmAtt9Ft4ktxLHoqOcGdDQr/9j9X8irg/iumvbwDHyMQFmewpqxRylu/3PG1+r8H
 z5GbnfvDvEdfdeLpCsnr4znikkoHdaLUbHZj06VZrgUwOjs5xsjYaIrgf9eb55PxA7QdfkkKxzg
 A565Hy1eaYYGxEtbieHRLAN2PuBty8gVy23t/sUJmFmMctOXU/9NCGMNeQByL7idQ154HUbetFP
 dP/a+6j05sm3UefsqcDbmKDu6gS0TBXq974S44UQuwDwkYqo5Jscz7Dl+AmhsYci1feba18Bk+5
 PiiSOV4KRqZLNoCVzzSenznm4q4lV7C/qh6BZfkOoYxCGq25xF24Bv2ksfvgtIk8g7q6zal7UGU
 3ISLjjLfCROvRxjylwtav5T262nh9J1BU90ddUeN8/jUokzI0H77qYXLC6V9sX9Ap/GWOfHBd4E
 K+J8vURA7bLSbE5ymeA1eLNnQcxF1LYkn7Xz2n+QODAJRLwvs/k7nr4sTHH88fOrMPIdvvTsOwL
 4bD39UflbjNoX4DyH3g7GJoAtxEqMmX2nyIZKovHDOKgbgKox/4TBYd7ABQcCvMUZ8PuElbJo6y
 ta7NzdkPP7S+dtw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_090041_006101_9AFEE317 
X-CRM114-Status: GOOD (  10.35  )
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

Clean up the function a bit, mainly by doing the mode_valid_check dance
once in the beginning of the function, and grouping the calculations
wrt. sync/event mode a bit better.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 48 ++++++++++++--------------
 1 file changed, 22 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 9238acf69823..0aaa1d06b21c 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -481,42 +481,38 @@ static int cdns_dsi_mode2cfg(struct cdns_dsi *dsi,
 			     bool mode_valid_check)
 {
 	struct cdns_dsi_output *output = &dsi->output;
-	unsigned int tmp;
-	bool sync_pulse = false;
+	u32 dpi_hsa, dpi_hbp, dpi_hfp, dpi_hact;
+	bool sync_pulse;
 	int bpp;
 
+	if (mode_valid_check) {
+		dpi_hsa = mode->hsync_end - mode->hsync_start;
+		dpi_hbp = mode->htotal - mode->hsync_end;
+		dpi_hfp = mode->hsync_start - mode->hdisplay;
+		dpi_hact = mode->hdisplay;
+	} else {
+		dpi_hsa = mode->crtc_hsync_end - mode->crtc_hsync_start;
+		dpi_hbp = mode->crtc_htotal - mode->crtc_hsync_end;
+		dpi_hfp =  mode->crtc_hsync_start - mode->crtc_hdisplay;
+		dpi_hact = mode->crtc_hdisplay;
+	}
+
 	memset(dsi_cfg, 0, sizeof(*dsi_cfg));
 
-	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
-		sync_pulse = true;
+	sync_pulse = output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
 
 	bpp = mipi_dsi_pixel_format_to_bpp(output->dev->format);
 
-	if (mode_valid_check)
-		tmp = mode->htotal -
-		      (sync_pulse ? mode->hsync_end : mode->hsync_start);
-	else
-		tmp = mode->crtc_htotal -
-		      (sync_pulse ?
-		       mode->crtc_hsync_end : mode->crtc_hsync_start);
-
-	dsi_cfg->hbp = dpi_to_dsi_timing(tmp, bpp, DSI_HBP_FRAME_OVERHEAD);
+	dsi_cfg->hbp = dpi_to_dsi_timing(dpi_hbp + (sync_pulse ? 0 : dpi_hsa),
+					 bpp, DSI_HBP_FRAME_OVERHEAD);
 
-	if (sync_pulse) {
-		if (mode_valid_check)
-			tmp = mode->hsync_end - mode->hsync_start;
-		else
-			tmp = mode->crtc_hsync_end - mode->crtc_hsync_start;
+	if (sync_pulse)
+		dsi_cfg->hsa =
+			dpi_to_dsi_timing(dpi_hsa, bpp, DSI_HSA_FRAME_OVERHEAD);
 
-		dsi_cfg->hsa = dpi_to_dsi_timing(tmp, bpp,
-						 DSI_HSA_FRAME_OVERHEAD);
-	}
+	dsi_cfg->hact = dpi_to_dsi_timing(dpi_hact, bpp, 0);
 
-	dsi_cfg->hact = dpi_to_dsi_timing(mode_valid_check ?
-					  mode->hdisplay : mode->crtc_hdisplay,
-					  bpp, 0);
-	dsi_cfg->hfp = dpi_to_dsi_timing(mode_to_dpi_hfp(mode, mode_valid_check),
-					 bpp, DSI_HFP_FRAME_OVERHEAD);
+	dsi_cfg->hfp = dpi_to_dsi_timing(dpi_hfp, bpp, DSI_HFP_FRAME_OVERHEAD);
 
 	return 0;
 }

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
