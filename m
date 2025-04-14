Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F1ACC369B8
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pz3/I9S+dnPbZGv+65Nvp/3QYBYW2l9u3Lbv4R83lwk=; b=LIxNOW8BEygOIB
	sAFDenk5p2UnKujh2GIRPfmRruSWZps8gik7/RthRcVlSxy3xiMEpPydAeq8bPO/1mxWuuDzLfYm+
	+ZANaKJE8tEB7ZopqjNzeWpLLXbXWpLeBlhRa46+Z6b8n9Av5LH+CCC8uwC+xLksEmoB0yAQapaeg
	ewnnK9U5MoOcdQ7f8IoIhcyDHrH/rm4GpLzbAPZhVkXn+wgzG4pgIuJVKRi+zHzjVUGs5arATduKH
	/ZQq5dQfQvmnvYwLVpby29F17DbbZgOP35KbPlWmrnOi+NWuapwUpfomec6jjDrmJg2XEBRwAR4A+
	ERLX1ndah3GI7b3tDWYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnI-00000001iiX-1TdE;
	Mon, 14 Apr 2025 11:16:04 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HjW-00000001h7Z-39ZG
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:13 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5A48313D7;
	Mon, 14 Apr 2025 13:10:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629006;
	bh=G+qNFKvRQA6UIRWDHc0oLkdtE/hQiPBzkhVP6XpdPZ8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=eOEjbSuU/QYw71ZlgAI019/xWa3ly8n+A5r/NQz3DpXi3rOYAfN5jxt8FG+2ITI1u
	 8A0B37x5fAB2NEuE2NjWLkEH5ZBW7La5kGVojs0IuWKpxkV1sEyNeRPxn0X2qRigtr
	 j/0yUFeKV14Wyfy5uMM6hdWUqwLS9Jg/i+p06igI=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:12 +0300
Subject: [PATCH v3 03/17] drm/tidss: Adjust the pclk based on the HW
 capabilities
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-3-4e52551d4f07@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3791;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=G+qNFKvRQA6UIRWDHc0oLkdtE/hQiPBzkhVP6XpdPZ8=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O19VN5zgt8TbTJnGRZrWkT/4F+Gnn/RJSs2f
 5Taed9kmpmJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztfQAKCRD6PaqMvJYe
 9dqAD/9wWA2Bc4bvstLEt2pn4wU2tuyQ1RBXP7gDPBS5dZv01z9aMqKPntK631G0h8A0+AXmRA2
 om7GtakvctartQeTc8eQUX8dHEfUHC8uwSdBforv7ycuKDrqLDM9FVkiXkxymQ8bQQV902GJH98
 vY6dJ+EJMT/USOYNpktNipz7Ex0GB6V1ZTv9dcdsanoWDRr4UQJmiwZlw4+Blutkb9NEFtIlJI5
 JuQwc3FO8k39CL9nWlk51CFREO9eYmojhLAjD8Fcyxoki2Xq7LjAE7HA7KmFSM5M1lmkVRYfMxS
 XRhbHYYRX9LOd1JEon9XVu+nwLFnUl6U7iRD8AYQmaCjNXKTSCBnjeud9TWpkZmURLWpTSXuavc
 S1fBMICX96UG5NfO3cTIo/81M66xvkTnIsTLcTSEOSZ5Dm+pMMnVcZ2CPTnaEYnpTBTDN6kzVcX
 ZJvHz8p0uOBbwCeWn6/gaKyeYPHgV2gGGd/sesuQ8nYUeAoID0B63nDbQiyLB3l8WO7s/eHz9oK
 dPABOXcsB+iezKGI24t3e9u6oAKyBWg3TBAK+LKkvTu9M98jGgSuQnudUBdPdj8X/cPGcyF1Su9
 xq1I8CqvBgUC8GGfjO3sKyjMTMtAayCBBJsQ605sELTooBP3lskefDSTyYiN2t9okCV71SQ4eN8
 SmUo0JrvHd9EY2A==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041210_957298_1FF875D7 
X-CRM114-Status: GOOD (  14.81  )
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

At the moment the driver just sets the clock rate with clk_set_rate(),
and if the resulting rate is not the same as requested, prints a debug
print, but nothing else.

Add functionality to atomic_check(), in which the clk_round_rate() is
used to get the "rounded" rate, and set that to the adjusted_mode.

In practice, with the current K3 SoCs, the display PLL is capable of
producing very exact clocks, so most likely the rounded rate is the same
as the original one.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
---
 drivers/gpu/drm/tidss/tidss_crtc.c  | 23 +++++++++++++++++++----
 drivers/gpu/drm/tidss/tidss_dispc.c |  6 ++++++
 drivers/gpu/drm/tidss/tidss_dispc.h |  2 ++
 3 files changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_crtc.c b/drivers/gpu/drm/tidss/tidss_crtc.c
index 1604eca265ef..6c3967f70510 100644
--- a/drivers/gpu/drm/tidss/tidss_crtc.c
+++ b/drivers/gpu/drm/tidss/tidss_crtc.c
@@ -91,7 +91,7 @@ static int tidss_crtc_atomic_check(struct drm_crtc *crtc,
 	struct dispc_device *dispc = tidss->dispc;
 	struct tidss_crtc *tcrtc = to_tidss_crtc(crtc);
 	u32 hw_videoport = tcrtc->hw_videoport;
-	const struct drm_display_mode *mode;
+	struct drm_display_mode *adjusted_mode;
 	enum drm_mode_status ok;
 
 	dev_dbg(ddev->dev, "%s\n", __func__);
@@ -99,12 +99,27 @@ static int tidss_crtc_atomic_check(struct drm_crtc *crtc,
 	if (!crtc_state->enable)
 		return 0;
 
-	mode = &crtc_state->adjusted_mode;
+	adjusted_mode = &crtc_state->adjusted_mode;
 
-	ok = dispc_vp_mode_valid(dispc, hw_videoport, mode);
+	if (drm_atomic_crtc_needs_modeset(crtc_state)) {
+		long rate;
+
+		rate = dispc_vp_round_clk_rate(tidss->dispc,
+					       tcrtc->hw_videoport,
+					       adjusted_mode->clock * 1000);
+		if (rate < 0)
+			return -EINVAL;
+
+		adjusted_mode->clock = rate / 1000;
+
+		drm_mode_set_crtcinfo(adjusted_mode, 0);
+	}
+
+	ok = dispc_vp_mode_valid(dispc, hw_videoport, adjusted_mode);
 	if (ok != MODE_OK) {
 		dev_dbg(ddev->dev, "%s: bad mode: %ux%u pclk %u kHz\n",
-			__func__, mode->hdisplay, mode->vdisplay, mode->clock);
+			__func__, adjusted_mode->hdisplay,
+			adjusted_mode->vdisplay, adjusted_mode->clock);
 		return -EINVAL;
 	}
 
diff --git a/drivers/gpu/drm/tidss/tidss_dispc.c b/drivers/gpu/drm/tidss/tidss_dispc.c
index a5107f2732b1..3930fb7f03c2 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.c
+++ b/drivers/gpu/drm/tidss/tidss_dispc.c
@@ -1318,6 +1318,12 @@ unsigned int dispc_pclk_diff(unsigned long rate, unsigned long real_rate)
 	return (unsigned int)(abs(((rr - r) * 100) / r));
 }
 
+long dispc_vp_round_clk_rate(struct dispc_device *dispc, u32 hw_videoport,
+			     unsigned long rate)
+{
+	return clk_round_rate(dispc->vp_clk[hw_videoport], rate);
+}
+
 int dispc_vp_set_clk_rate(struct dispc_device *dispc, u32 hw_videoport,
 			  unsigned long rate)
 {
diff --git a/drivers/gpu/drm/tidss/tidss_dispc.h b/drivers/gpu/drm/tidss/tidss_dispc.h
index c31b477a18b0..d4c335e918fb 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.h
+++ b/drivers/gpu/drm/tidss/tidss_dispc.h
@@ -120,6 +120,8 @@ enum drm_mode_status dispc_vp_mode_valid(struct dispc_device *dispc,
 					 const struct drm_display_mode *mode);
 int dispc_vp_enable_clk(struct dispc_device *dispc, u32 hw_videoport);
 void dispc_vp_disable_clk(struct dispc_device *dispc, u32 hw_videoport);
+long dispc_vp_round_clk_rate(struct dispc_device *dispc, u32 hw_videoport,
+			     unsigned long rate);
 int dispc_vp_set_clk_rate(struct dispc_device *dispc, u32 hw_videoport,
 			  unsigned long rate);
 void dispc_vp_setup(struct dispc_device *dispc, u32 hw_videoport,

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
