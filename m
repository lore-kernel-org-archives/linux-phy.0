Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1C4CC87FC5
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/Loo4NLbWiyI6ivd85zOXtTEuRgZTwzHdMzVKbcxME=; b=jHny9FVtTtcDkX
	7GWF/ZS/1bWKq0qNszYGfz17MLRd9r5uDuUYTKOhuOtkwrIh9UCEz6GFsFMZA465WR5FA7G4CeyM1
	Vj2YKsXhaZj7aWmbGWcQCijT7We0c26k0gBL/TEBCM477En9j24CaLnRK0X+bFZ9b+EnpjpAyHvmy
	DwrQnxCzpecyp3CalnD9AJ98vC+OteijJFup/Ktv69UWZrNwXEgHyOv3iymsSjG8JZQk7e5PrNWAJ
	8XKnZBmFCowDVwRHhBdWtXA91Znj4VZowDiAw/WaQL48EaIgjaws70wD+GMyGu55boLGiLvvtHIOw
	ndSXxhyYGXGOqzX73c0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWcR-00000004fYC-2Fw0;
	Wed, 23 Jul 2025 10:22:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWM1-00000004cGO-10b8
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:05:42 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0251FFDB;
	Wed, 23 Jul 2025 12:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753265102;
	bh=pz8KMcVokg1V/yZunn70svTAycPp1MDVpEfNBHPXfM0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JWM0eh3Nuh6JnA+wFpzCf47akbIroygQVzkodZYpv5tObbJ7/iFndFPovXN6biu0b
	 deLnSqVOmoEfV2fjP0K6C7YbP0B9bRaCRWkaMk9JiIV5bIEqfXo0GkQrdBCRDLrthn
	 DRPTqzGWEo0pisGC3gBDdBSh+IbTzKT5HfYsnCNA=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 23 Jul 2025 13:05:09 +0300
Subject: [PATCH v5 03/15] drm/tidss: Use the crtc_* timings when
 programming the HW
MIME-Version: 1.0
Message-Id: <20250723-cdns-dsi-impro-v5-3-e61cc06074c2@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2657;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=pz8KMcVokg1V/yZunn70svTAycPp1MDVpEfNBHPXfM0=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBogLPqBoO3LIHdqMhItrSVBIh76mCEib7Abm794
 Q7bl8D/2i2JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaICz6gAKCRD6PaqMvJYe
 9eTgEACK3SB0N7uNV6zPqbTfZNpJ4srFLkSMq/S8qN9V7bj3lacUueHUcKKH1sU/8DJdKqTaS2l
 AOmQ4W9QN4q45F3Dnzy1PC6Umjmln3hI228EZpEKa8NPT4FOyQ1n1+FnEIGBFxpU1VruQvVKhRX
 YV8ue1oBdk6XYYkYb2i/meNC3bSNyX8j2XIq/mYRvpyBUUGcrhVIF7YcjyLEle2djVQ+oPsdsTg
 5GG4cIci2CyH21JBuBaa12p+zn+1jw9RAlORWRdVHBc2fy5VehpA/GMBYvRfW32x8R05iGqrYoX
 5GIKXOKeHeARSE30Cfs+kgCuyM/+LS2P3cGAMERIKMqxEGHbbzu/9mDzVvSw+TUxElLmDeSd6gV
 LRMDP9e8+kj3i0lWs7/bHA2fqRQZBz3iuWQL2967eV4P+qBDBSi9zirjiqViBkL+uBD1YLe77mb
 BJEM4+irKg7OI4reuoXQs2NWM4WneHdzfJJCSeWnniekLqUGLbuFEBDVJmTG2/YH2IBIXK/frzs
 ZitCnnPFZ1Yeaz5U0RMu6BfA4hKNnjibe85Wn8G4Mo52OQM96If/0bVKHORcYLvlF+Db2iLMXXD
 l/tfLxCZo3EdMZ1w+mdmX4qGG4sQYMS2oCNFESttz7e9alz5dasjkJhfbe9ElzCsTAWuIr6g8vo
 xKY71SsMQVoqtJw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030541_434207_8E505245 
X-CRM114-Status: UNSURE (   8.85  )
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

Use the crtc_* fields from drm_display_mode, instead of the "logical"
fields. This shouldn't change anything in practice, but afaiu the crtc_*
fields are the correct ones to use here.

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/tidss/tidss_crtc.c  |  2 +-
 drivers/gpu/drm/tidss/tidss_dispc.c | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_crtc.c b/drivers/gpu/drm/tidss/tidss_crtc.c
index a2f40a5c7703..17efd77ce7f2 100644
--- a/drivers/gpu/drm/tidss/tidss_crtc.c
+++ b/drivers/gpu/drm/tidss/tidss_crtc.c
@@ -225,7 +225,7 @@ static void tidss_crtc_atomic_enable(struct drm_crtc *crtc,
 	tidss_runtime_get(tidss);
 
 	r = dispc_vp_set_clk_rate(tidss->dispc, tcrtc->hw_videoport,
-				  mode->clock * 1000);
+				  mode->crtc_clock * 1000);
 	if (r != 0)
 		return;
 
diff --git a/drivers/gpu/drm/tidss/tidss_dispc.c b/drivers/gpu/drm/tidss/tidss_dispc.c
index c0277fa36425..3f6cff2ab1b2 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.c
+++ b/drivers/gpu/drm/tidss/tidss_dispc.c
@@ -1215,13 +1215,13 @@ void dispc_vp_enable(struct dispc_device *dispc, u32 hw_videoport,
 
 	dispc_set_num_datalines(dispc, hw_videoport, fmt->data_width);
 
-	hfp = mode->hsync_start - mode->hdisplay;
-	hsw = mode->hsync_end - mode->hsync_start;
-	hbp = mode->htotal - mode->hsync_end;
+	hfp = mode->crtc_hsync_start - mode->crtc_hdisplay;
+	hsw = mode->crtc_hsync_end - mode->crtc_hsync_start;
+	hbp = mode->crtc_htotal - mode->crtc_hsync_end;
 
-	vfp = mode->vsync_start - mode->vdisplay;
-	vsw = mode->vsync_end - mode->vsync_start;
-	vbp = mode->vtotal - mode->vsync_end;
+	vfp = mode->crtc_vsync_start - mode->crtc_vdisplay;
+	vsw = mode->crtc_vsync_end - mode->crtc_vsync_start;
+	vbp = mode->crtc_vtotal - mode->crtc_vsync_end;
 
 	dispc_vp_write(dispc, hw_videoport, DISPC_VP_TIMING_H,
 		       FLD_VAL(hsw - 1, 7, 0) |
@@ -1263,8 +1263,8 @@ void dispc_vp_enable(struct dispc_device *dispc, u32 hw_videoport,
 		       FLD_VAL(ivs, 12, 12));
 
 	dispc_vp_write(dispc, hw_videoport, DISPC_VP_SIZE_SCREEN,
-		       FLD_VAL(mode->hdisplay - 1, 11, 0) |
-		       FLD_VAL(mode->vdisplay - 1, 27, 16));
+		       FLD_VAL(mode->crtc_hdisplay - 1, 11, 0) |
+		       FLD_VAL(mode->crtc_vdisplay - 1, 27, 16));
 
 	VP_REG_FLD_MOD(dispc, hw_videoport, DISPC_VP_CONTROL, 1, 0, 0);
 }

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
