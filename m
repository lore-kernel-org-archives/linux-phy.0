Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F89C369A2
	for <linux-phy@archiver.kernel.org>; Wed,  2 Apr 2025 13:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdPb/R2h2DUYpD1TKPfe9K2J2BA+uWjEChfeOF2UPNc=; b=Yk2bGCv1vekj3B
	vvVkqH125korXlwX3qSrkTz7+GNcYVW6rBtv9Ts+n4XhuLOL3j4ClxHS1ahhp8ESn9bDHPMt11Id2
	TWzkRm//43dHYYtgnCkyeyi0L3QbwahF2FeoihhywkQPs0nj3QZUE0wEWOQqqGxwIB8A9mcp1EggH
	sBRj8892aawLLRe8qcccqMhm3UPEGgpdopPXf/4yQr6Q8Fi6sJ2TwG9CPJykGSKRwJ7WYR3vZ7qRO
	XFhfOfqNTE8SF6g/ohyz16ubqvZhV6fSWh902HVPHt9wzaUBAST7fplA0O8cU8v5LfsvWd47qkWK6
	RtgQl5+e2C8jOWZWcy+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyHx-00000006Gml-33ok;
	Wed, 02 Apr 2025 13:37:53 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyBh-00000006FAK-3JXM
	for linux-phy@lists.infradead.org;
	Wed, 02 Apr 2025 13:31:27 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 04FC21FD6;
	Wed,  2 Apr 2025 15:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1743600572;
	bh=vjRuuRXkQ3UFqYx/0yC4s/4b1wMI2nCnKESmkXL4LGc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=bePSgVek6aFL2lIogvgla6Mc4vD1ekSrYF6lPAnZu3rboQXtuLIpHx4aj5I61/Sqg
	 +6jWuKieT/305mi9XK6UAJIfMg/Knu3foDyCfyldVvJWiXTXnsG72ibaUjisn+bwJh
	 nnG5NeAQacxM3Ha6vaZATZSaWcQaGBfp0TrmZk/I=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 02 Apr 2025 16:30:50 +0300
Subject: [PATCH v2 08/18] drm/bridge: cdns-dsi: Clean up
 cdns_dsi_mode2cfg()
MIME-Version: 1.0
Message-Id: <20250402-cdns-dsi-impro-v2-8-4a093eaa5e27@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2823;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=vjRuuRXkQ3UFqYx/0yC4s/4b1wMI2nCnKESmkXL4LGc=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn7Twe4ruVwjDyoZFcIcdKbfQD5zYgBMS52y27F
 sAMybOt7t+JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ+08HgAKCRD6PaqMvJYe
 9feeEACuB7Lm9N6fMlgyo92alSQDJNrXcax5yxnsjAfUFi/MHJqlyXp5se2qMeu6PfMicvbDpKU
 hUvOc7vYBwAyq7Xte8qBrDKm3chOM8zxZ2862G8k13xTMI2Fm/OBIUtJhQpdm6WaRs1KuzLwZwh
 7WPyCe3BIeaLgtJ4tKWeTW7x7rOqpBbBHG9hB41tUibQFdYlIg6lKeGOgzcGU4uHVtbY0gwjg/r
 BRHwCtI5xEQSv01UgIQ7Api4Nb+js+jJuBAjzjJkaBP3VUkVp/RSBRMpBgYGnZVVJSXCB4juIDP
 oKwnDAIpb3M7Tb3XCe6eebc20WgqlwwA4SZToB08xsNYJmjVcHZkpcYLYlSdLK+XPa+quTFWDeX
 E7V2hSkJU/gnMXCW6/+ZmFFToCT/qyYJl7Oe15A4FuJV1wNxMrTYVAwBIp96R/gmX3sqUPOoVf1
 AYLBB1xsqllBmLioXpuFPip7Pbk1XGWEfK/GEah14PIt696Y3OMGBAbpr7QvGWZa7UdcN2Cnril
 +cxqBHxXmVqx1l9FAOpzWe9h29h1SvJk4hsXSJaFRiz1er3Xb7556cYqcwFShAmF0/K6+ywCwvo
 qbGm0bIttUKVGz+Oxx/rWWUWxdxTLV5EXa3NQULWvfF84+CM4VCDGpqN0CdgHGNSqZT5zRKix88
 5BRpV64LLORGLrw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_063125_977123_96139471 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
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
