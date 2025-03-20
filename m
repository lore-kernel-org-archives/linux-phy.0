Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E433BC3600A
	for <linux-phy@archiver.kernel.org>; Thu, 20 Mar 2025 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53wmY16O2zOTwJ+RlBZMZTe9SR7sXPtu426oNQO8IoE=; b=MJGugncKDe5I1j
	CTfclN4e4jWZLIuPD/uycPDCbBBR2XFcSfop4FuTGPnL3gigfPjDFs5L6DqVX+JYzVNAxbEk0asH/
	nFzQ7lIOlhw0dZTBjgjqwwGeaeQFM8ExLtH3ceKHsx4TInDqvj4hMgOdB1VYo4LjF1n8VDNGBBWbY
	bSV39gzwlyrAvH4ViX4FOXHoEgs0VQELsN0pqARIxq5JcZlLU+0P2fv5sWtyozfSKkmndkRYM7wQP
	TG9tKyBAKUuN5evZZIOK11xmHF73c6xUxGhdK2ZV4OcBXEian3Cw5ZDPVkjhoqVDMGKZbsbSK/MlV
	DBlh94i2m/ViILAhkHoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvIMO-0000000CcDE-0kAt;
	Thu, 20 Mar 2025 16:03:08 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvIJx-0000000CbBt-0Gtc
	for linux-phy@lists.infradead.org;
	Thu, 20 Mar 2025 16:00:39 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7B20BE79;
	Thu, 20 Mar 2025 16:58:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1742486330;
	bh=gtqh/kQ+FSvOAIyc0nyrUTvwCry4fqrHaREohqBK1ho=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=C1LbG1x+kks7/QaEImuHKmR+gD+7H5t45ByYL1ZCbVcGcW6sM3jM6WMvsITP0Rgzh
	 NaBTHEALohMFDUl+SKphnitRAs+ddUyTrp0BEihjww5Q+JE6aqDwgq5PD6cme+vJQG
	 X7wx9yBngH7dAhWdi24eaLDEQ+JfQSIAXcgsOMRw=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Thu, 20 Mar 2025 17:59:58 +0200
Subject: [PATCH 03/18] drm/tidss: Add mode_fixup to adjust the clock based
 on HW
MIME-Version: 1.0
Message-Id: <20250320-cdns-dsi-impro-v1-3-725277c5f43b@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3379;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=gtqh/kQ+FSvOAIyc0nyrUTvwCry4fqrHaREohqBK1ho=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn3DuXZx0mMf8Cp7DeWkdwpcH4hdkzaIGIKRTDw
 0S/v1ftQBGJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ9w7lwAKCRD6PaqMvJYe
 9WWHD/4t6z5B8DYLhbI2QE1Ia/cgOOXPkuTRSVibN/keUjPxdj0Hr9V0fG0wK5Vuw3JTZL1+ByI
 MpqSopoTnJ65Hbwwka633RRmED6m9tbEOeFUC5EZBFL15VwIocxTFlTcRsJFoidbeV4qM/9G3S7
 se7PQEa25FmWP9Ch9uTbIU7wigIcj+gq+NvS/UEYDWrFONxs5qJBm5KwvVRG9qCQp5s8/EVCxtd
 JVakTOelh3MrbmvjfhO1gPhEpRnaLgCpwtsrS5MikdPdK3Xn6rfpMKZgYx7lylvZs6a8tbA+c8O
 9+jlPDEEIeeFAxYBx1GUH4YFR1jD4I1gd2z4cAAi/gmXfScA/AqZlMc5jDa46olPsyopJVkkCyA
 ZR7fhOzXQZfv6a0XcYnH7nR6Fh+GJRHbA6trRqSv2azsaL3ClVMqvtB6Xfyz60zG3Qf+6UwsEto
 M3vwptC7uc+Yd+fh8ig1TB84CRivb938fbe+P4HxoPNbKInhIOyJV1dufhYMoN8svHWn0tMUFGJ
 HDPD9KAY1mRmlBDkZ/Qj+G4FUJBwMNgmoy5CP+Az7dbl8KSoRrf7DDjtD8FugDqArkKrVyWag7d
 LJe6lfMfHpJiVZFNzzRBVVEefm0B+yZGPiZwzVMPh1UwXRnA++wkudygRb2rHIAdWREd1QPCazc
 ECKY3ubFOGDeAWA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_090037_268102_842CCBA0 
X-CRM114-Status: GOOD (  14.62  )
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

Add mode_fixup(), in which the clk_round_rate() is used to get the
"rounded" rate, and set that to the adjusted_mode.

In practice, with the current K3 SoCs, the display PLL is capable of
producing very exact clocks, so most likely the rounded rate is the same
as the original one.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/tidss/tidss_crtc.c  | 22 ++++++++++++++++++++++
 drivers/gpu/drm/tidss/tidss_dispc.c |  6 ++++++
 drivers/gpu/drm/tidss/tidss_dispc.h |  2 ++
 3 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/tidss/tidss_crtc.c b/drivers/gpu/drm/tidss/tidss_crtc.c
index 1604eca265ef..b3338dac25bc 100644
--- a/drivers/gpu/drm/tidss/tidss_crtc.c
+++ b/drivers/gpu/drm/tidss/tidss_crtc.c
@@ -309,7 +309,29 @@ enum drm_mode_status tidss_crtc_mode_valid(struct drm_crtc *crtc,
 	return dispc_vp_mode_valid(tidss->dispc, tcrtc->hw_videoport, mode);
 }
 
+static bool tidss_crtc_mode_fixup(struct drm_crtc *crtc,
+				  const struct drm_display_mode *mode,
+				  struct drm_display_mode *adjusted_mode)
+{
+	struct tidss_crtc *tcrtc = to_tidss_crtc(crtc);
+	struct drm_device *ddev = crtc->dev;
+	struct tidss_device *tidss = to_tidss(ddev);
+	long rate;
+
+	rate = dispc_vp_round_clk_rate(tidss->dispc, tcrtc->hw_videoport,
+				       adjusted_mode->clock * 1000);
+	if (rate < 0)
+		return false;
+
+	adjusted_mode->clock = rate / 1000;
+
+	drm_mode_set_crtcinfo(adjusted_mode, 0);
+
+	return true;
+}
+
 static const struct drm_crtc_helper_funcs tidss_crtc_helper_funcs = {
+	.mode_fixup = tidss_crtc_mode_fixup,
 	.atomic_check = tidss_crtc_atomic_check,
 	.atomic_flush = tidss_crtc_atomic_flush,
 	.atomic_enable = tidss_crtc_atomic_enable,
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
