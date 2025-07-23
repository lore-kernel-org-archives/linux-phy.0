Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E20EEC87FD3
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9+AfYcvSeNUo1xr9bm5OeXReN+REAeFu2VOGBF7Y6Y=; b=Snk6KcmIrm3/te
	I3MKPAFTvnWWjFl+mOrHEVqBvoN8UtgcGBco6l9rqZFIMay3KMs+A9JyvTmGIMh2/71pUSHWGTKd4
	ILEZsgSgRkFRzUT56UN4EyomtE5Qe5yvyWAly2vXb9CqyQudwM5Y4ys8vjf9fO3HINNN6IEO49ZrV
	qY9ymSv1lyxzSsu32BMyoGWruszSzzvRNPx7vQicFLvkRSQ/XlwPL9ISZwpstHZrnQKPth7zuZaDW
	GLvOARjjc+8kQO2HiPT7HG/kNXI2XUfrjv6Ga2DTh0m1U2TmNE4ZtX9Ex6F1S+FaLDmm1GxPPtXsA
	UJvm+KQI7tfh4xvwKX5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWcU-00000004fd3-2fRA;
	Wed, 23 Jul 2025 10:22:42 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWMF-00000004cPg-0ZE6
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:05:56 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 44FC8EA0;
	Wed, 23 Jul 2025 12:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753265115;
	bh=9SEP66xKJtYZ4lrSkSnJcm6o+D4BIS6IrZycgviNrRk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AhxQlCOjRQQiDghKW+9f5IYaehuste021g+An4VmQTudFrV988e0OD4tbqnMYjBrO
	 /oSOdkJ90K1yvDqvK4omrb1nRVVg1H4GmVMZoB1lpUPYdKAhEOvcYGtVWLC4Dctbua
	 nQOaDfENOdYROtnNNDu/C9dHN19ssDfG90cMq/GY=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 23 Jul 2025 13:05:19 +0300
Subject: [PATCH v5 13/15] drm/bridge: cdns-dsi: Fix event mode
MIME-Version: 1.0
Message-Id: <20250723-cdns-dsi-impro-v5-13-e61cc06074c2@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2649;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=9SEP66xKJtYZ4lrSkSnJcm6o+D4BIS6IrZycgviNrRk=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBogLPtQUzrx3WCHRo08WnHQzSbfk5vHrDUrGA6s
 omXLJ5IV3mJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaICz7QAKCRD6PaqMvJYe
 9S+mD/0S3FiRhVXpqDwoW1UospCfxZ7BreeI2nc4uouN0V7RJqApmidCsuY3dTEHVC+ZGKwGzqM
 5NP302WVg9NSASh0oV86IVnR/+Dr/4YrODtjhdiuS+mT3Lmm0aDLuXV/tU9qYrLpm5EvTRqDPc8
 KA/TaarI9AzYGUDwyFsYl6ZVBrnhJPnL08oD+S/sTNeYD8J9hgN7N9Fn4Hh8ACT5HOIRE00a88g
 HCB5vMQJJp+nxNfZMTuwhgFR7N4uRdoGwcbfxxk5wjGp9zviOtY9H6RbwmvTQzLEnC1oGBSpwKj
 4FiLKY6yQcEetPmNyLlu+DEagrVLhT/K2ALtZF7STJsiCfj05vkY+KEix305AgRA7Joh3uYO1qS
 T/p/pWOJWf6Cz7k6y46itGMNB+rkzjIKyNtDD/q+WpROCLixbmUvJBtbfrxzVxQPKwySwIUSBtz
 sWTm8MVc7HZMeUj2VI7QnAE0gMDU/xPKrfLGRSqp/FQl9QGRMDA2wh5duMXPsy43oorJTH2Joem
 cRwDqiCVENSypWGm/Zk1betpjjYa49malO0NF0nvviEyDTUkmxQnu2j7l9+CgagbWvh9+v8WxUK
 yoY0R5e+4DPXV/eVrAhUUeQebCw21ezHBBK9ylUrKKFo3DiYFyVS48Rj3yHS9uzn3wWHjLD5d05
 UOxH8XDdyhjXjIw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030555_319189_E339472D 
X-CRM114-Status: GOOD (  10.50  )
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

The timings calculation gets it wrong for DSI event mode, resulting in
too large hbp value. Fix the issue by taking into account the
pulse/event mode difference.

Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Reviewed-by: Jayesh Choudhary <j-choudhary@ti.com>
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 31 +++++++++++++++++---------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 07f8d5f5c2aa..3bc4d011b4c6 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -418,7 +418,8 @@
 #define DSI_OUTPUT_PORT			0
 #define DSI_INPUT_PORT(inputid)		(1 + (inputid))
 
-#define DSI_HBP_FRAME_OVERHEAD		12
+#define DSI_HBP_FRAME_PULSE_OVERHEAD	12
+#define DSI_HBP_FRAME_EVENT_OVERHEAD	16
 #define DSI_HSA_FRAME_OVERHEAD		14
 #define DSI_HFP_FRAME_OVERHEAD		6
 #define DSI_HSS_VSS_VSE_FRAME_OVERHEAD	4
@@ -487,23 +488,31 @@ static int cdns_dsi_mode2cfg(struct cdns_dsi *dsi,
 
 	bpp = mipi_dsi_pixel_format_to_bpp(output->dev->format);
 
-	dsi_cfg->hbp = dpi_to_dsi_timing(dpi_hbp + (sync_pulse ? 0 : dpi_hsa),
-					 bpp, DSI_HBP_FRAME_OVERHEAD);
+	if (sync_pulse) {
+		dsi_cfg->hbp = dpi_to_dsi_timing(dpi_hbp, bpp,
+						 DSI_HBP_FRAME_PULSE_OVERHEAD);
 
-	if (sync_pulse)
-		dsi_cfg->hsa =
-			dpi_to_dsi_timing(dpi_hsa, bpp, DSI_HSA_FRAME_OVERHEAD);
+		dsi_cfg->hsa = dpi_to_dsi_timing(dpi_hsa, bpp,
+						 DSI_HSA_FRAME_OVERHEAD);
+	} else {
+		dsi_cfg->hbp = dpi_to_dsi_timing(dpi_hbp + dpi_hsa, bpp,
+						 DSI_HBP_FRAME_EVENT_OVERHEAD);
+
+		dsi_cfg->hsa = 0;
+	}
 
 	dsi_cfg->hact = dpi_to_dsi_timing(dpi_hact, bpp, 0);
 
 	dsi_cfg->hfp = dpi_to_dsi_timing(dpi_hfp, bpp, DSI_HFP_FRAME_OVERHEAD);
 
-	dsi_cfg->htotal = dsi_cfg->hbp + DSI_HBP_FRAME_OVERHEAD;
-	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
-		dsi_cfg->htotal += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
+	dsi_cfg->htotal = dsi_cfg->hact + dsi_cfg->hfp + DSI_HFP_FRAME_OVERHEAD;
 
-	dsi_cfg->htotal += dsi_cfg->hact;
-	dsi_cfg->htotal += dsi_cfg->hfp + DSI_HFP_FRAME_OVERHEAD;
+	if (sync_pulse) {
+		dsi_cfg->htotal += dsi_cfg->hbp + DSI_HBP_FRAME_PULSE_OVERHEAD;
+		dsi_cfg->htotal += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
+	} else {
+		dsi_cfg->htotal += dsi_cfg->hbp + DSI_HBP_FRAME_EVENT_OVERHEAD;
+	}
 
 	return 0;
 }

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
