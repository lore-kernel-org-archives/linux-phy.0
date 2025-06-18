Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BAC0C7115A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 10:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pu4oWc7VQmVWjnfIwyImtp2hAVN1+JvMRxYtIz6ypGg=; b=lNN/T+PEAt8wB7
	jLr4xIafH5oNvRRr/5MIlVr/IEVBf43iefJd6hlEXfVHP6ZHJoq3yd2HmWQdHqGZob07TobKx3lmx
	Pj+egXTsLAGiicNg0kEwQcuFbDKiWgUb6UrAs/c6lhqavOu+U5p3wl2DnDgJG8uzZd+AncK+g27dg
	nz6pw15pTkAO8Y7IR+LrhHjGzZ2UGnTTLG6xbh7BXnl8POKJolhVW8NvYyGUfxg9IznhXBPhtU0n+
	FxM8uAfrSb2uKSK+SHnbo9duBv/s/yxf4Ttq3g/FcuyxBBsK7b7pXZB7dYF8JdsrL0BPePWh2fo5g
	1z44bwJLsgGGqpg132gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRq4c-00000009nQZ-3dD9;
	Wed, 18 Jun 2025 10:31:18 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpa8-00000009gYl-3Id1
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 09:59:50 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C34A3527C;
	Wed, 18 Jun 2025 11:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1750240774;
	bh=BfOuS4S0Uv2jTTiGjUIA+jDJR/WYF9LdxpY+1sPAlnM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nwkmFmBkOu267VY14AaxenosDVugbL+oSCyNLVTjcqA0pABqjVLAp5eRMZRT+1oZx
	 cIwx69nUTv+/iEZXILYQyhI4Rs3h50vBXu4O/aQPqzbjw+i3Mdgez2iFFkppTHwUGb
	 vsDfDnSAjks7e8g1WG7WqU7Fh2w02xhCUrCbWLVU=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 18 Jun 2025 12:59:15 +0300
Subject: [PATCH v4 12/17] drm/bridge: cdns-dsi: Adjust mode to negative
 syncs
MIME-Version: 1.0
Message-Id: <20250618-cdns-dsi-impro-v4-12-862c841dbe02@ideasonboard.com>
References: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
In-Reply-To: <20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1608;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=BfOuS4S0Uv2jTTiGjUIA+jDJR/WYF9LdxpY+1sPAlnM=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBoUo4AQf/UerQXlT4K+PKstjvu6hzvb29c4HX6t
 bWWG9uEo8mJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaFKOAAAKCRD6PaqMvJYe
 9UieD/sHr4pjZ79k5hvLqhBY2NWkzYiJGcE2M90SswRbagQHDWoV+cCVPTyD9WVAy9rsSv3poWz
 7/70zSE6qDVj4tevy0WuLDSOUpBb/UXyTA0Ihowsb2lQknYZpwAu0u9b1c7R0g5I+iMkVP2Lw+O
 3MbAlC2x6KfKEppkAiHO9y2fiYVZvSKGeWX19yOm/21Jyja+0vA8oGo7HjUsgbW68Lx740+R+oB
 DoA2gdHSL/p0um/6hYIH5OrcdbVrjr5LSYyl9kG9bAB2T5sWQqv9/lLL0BrFOF7qbiwcPxW6SAr
 gMPFokgoiBtTSl9mWa94N2cRRlI2qMnHwU20o0onoSNIk3XeIh/JbwhSB+wrTWkdJPhy/k9r72L
 WySwYt+Ph19iBLjvjWHifjtv3R8oHjOLZeU+hqbLqE6JYMyPCdftmrZOsse0lSdMEEaZ09agKu4
 2khuMqP3cUzMUKKhQKJw0zZX3HZefoYp1nEWMUKLL8XNTto/EGBw1r+JKtMLZkujQjnXhcxVU1T
 0SRcF3aJ86ud6eHbBjZp0hwDXuv71cMOGa9jy8M/rzlSDKG+Beemk3wd4O8eqjPTjcrdwJN8WI6
 +PeWc3rKzNxWijgWdNbcH89nswIPE9xFw/R61KtKV/agZwR8VTLt/kNj1YQYywsDahMdrxuBVHI
 rxJ7fpaJk54+5nQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_025948_984327_C4B38F5C 
X-CRM114-Status: UNSURE (   8.95  )
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

The Cadence DSI requires negative syncs from the incoming video signal,
but at the moment that requirement is not expressed in any way. If the
crtc decides to use positive syncs, things break down.

Use the adjusted_mode in atomic_check to set the sync flags to negative
ones.

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index f7d7d277367e..d49b4789a074 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -908,9 +908,13 @@ static int cdns_dsi_bridge_atomic_check(struct drm_bridge *bridge,
 	struct cdns_dsi_input *input = bridge_to_cdns_dsi_input(bridge);
 	struct cdns_dsi *dsi = input_to_dsi(input);
 	struct cdns_dsi_bridge_state *dsi_state = to_cdns_dsi_bridge_state(bridge_state);
-	const struct drm_display_mode *adjusted_mode = &crtc_state->adjusted_mode;
+	struct drm_display_mode *adjusted_mode = &crtc_state->adjusted_mode;
 	struct cdns_dsi_cfg *dsi_cfg = &dsi_state->dsi_cfg;
 
+	/* cdns-dsi requires negative syncs */
+	adjusted_mode->flags &= ~(DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC);
+	adjusted_mode->flags |= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC;
+
 	return cdns_dsi_check_conf(dsi, adjusted_mode, dsi_cfg);
 }
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
