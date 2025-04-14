Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A19FC369BC
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJvI34xiFjRXVlrRx0CfhPncbxfVw9QzOIS8v8AAplw=; b=aTNz7B6KEoQoHC
	yDbsu0sR3cxIqZOSjlcjn2QSaQCvKD3KiZXaYo71D8UFGLnTc1HWzlg98wptQOCDekB98cZCBvMuH
	ZF/3fuVPpU64uqPEp3egb+TLq4Wnhqb8G0gtC4BlMWlvplhngORAYdu8pkZEfoZwSjWcRj9s60gpG
	HhuUsq4cgtZ+EKq4PI6yjuS4T2HXgOCB0jxqqEkGISAaQrKsa8y4BR4ngXY5Ck/o45FLDVUuKoTLT
	sGAXXWqas15+JIvApV6DI+aCFCPxH7AG4LfTRo86fLTHX81xlbu+AwIm3J6i4vl26dFi9Cz25qMt4
	/Fc08xG42nYvGB9YSmiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnJ-00000001ikC-18Un;
	Mon, 14 Apr 2025 11:16:05 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HjW-00000001h7Q-2zHr
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:14 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 251D799F;
	Mon, 14 Apr 2025 13:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629005;
	bh=lEa3BxN/6LhqthWXir58vTyZRT4d8BUmsi3iv05b4SI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=YXODpftwi3BM7VaheebN3guCOGsi+4bU+ojza8T7/Ro0Whez6IaRkUVHMYZA3EOxz
	 8P+adz/oBT6VdbYR89I3+vyFR9xzdI08DQOiQzyrAO3r2aUmfEuc7CczvDWbEa0hCu
	 ZGvdyVv0jVY2Xxa1yBQsp1Z7bru1mGQNfFeuSgis=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:11 +0300
Subject: [PATCH v3 02/17] drm/tidss: Use the crtc_* timings when
 programming the HW
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-2-4e52551d4f07@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2447;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=lEa3BxN/6LhqthWXir58vTyZRT4d8BUmsi3iv05b4SI=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O18ncL1CiafBlZG0MdVYTCpi14Z+sY+pMcV+
 N2TzX0IjNOJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztfAAKCRD6PaqMvJYe
 9UDGD/9zR9ZDJsIojm4mZ7+2bW6e+6cv4XGLsdp3L8ADCwFgZAhxlpmVFk/Vu2fcbep/nC2iooT
 VI/+m1K7ffOfeEwqgGnTAjF3O4ziyuPuRioEOsAXiZ3E6Vbx+ic5nZqFyTnfQRsWq/PBqNHg+9j
 zQqBplSUfO/o/irY78+EKXcoTKpdJ1KZC9Styh9B8tXixEFdFZ3ZXWMBm0Ws2yDdBs/mrpoTpBI
 U0sBX963jPAyvfNqYfVZKeT8X3O3ewY1gn6nqSUAn+HNu4DjLMMsH7UicNBW5dfh94CQ75GBNI+
 D6nMJxQibK+5OYOkMhfXpg+ZoD+ymbbOtk8JzciwjwKrDvJt4fZ0nBOSBgDmEt/sTIqT2BDRT5J
 PDVRhMF5xG06SWTvN/4Diu1igLXpO6ahM1jKZP8eW3FniD5b/ytv7pnDj9mxi3zdZHVpDj2Skn7
 wDGwhR2HqcfRaQREYyxvmWHiCW2TA3zIGsZGqH9CGFgFNKkO98tEz06gJJ2r+R6ofqSNTKf2eE0
 rRG36ttzNcR2voVbcQvg9n6n+7Ju9z6OoHzHhgNzOWgn3dbVbAWQ1xSpzwmfTOr826EGJ614iUU
 C58xLYD9LPvsunxpM1nkEEU5XWjJJSj4qu5vW02HC4+Nwn6QARfoLxqZ0exDFKkdQbkyJNwjc+R
 8xZbtWBYftQbJHg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041210_952403_958C6D2D 
X-CRM114-Status: UNSURE (   8.63  )
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

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/tidss/tidss_crtc.c  |  2 +-
 drivers/gpu/drm/tidss/tidss_dispc.c | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_crtc.c b/drivers/gpu/drm/tidss/tidss_crtc.c
index 94f8e3178df5..1604eca265ef 100644
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
index cacb5f3d8085..a5107f2732b1 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.c
+++ b/drivers/gpu/drm/tidss/tidss_dispc.c
@@ -1084,13 +1084,13 @@ void dispc_vp_enable(struct dispc_device *dispc, u32 hw_videoport,
 
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
@@ -1132,8 +1132,8 @@ void dispc_vp_enable(struct dispc_device *dispc, u32 hw_videoport,
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
