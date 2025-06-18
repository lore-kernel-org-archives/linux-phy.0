Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D44EC71157
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 10:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r90bXvez/7BHnKvw7+9xRvztijYmRWsfpZqai4hAL2M=; b=MxRHmNDIICnjXm
	YMfCAba9fdBI0b5Zg9l2V5I499z7XeM1s0+AP4wukOrGRJ+S0auLId29/hjTeXLKt4oXD9MDwa7K4
	e+Mnw5ux61MUc7y6fpOdCgenleTVwEoQDITBF/2/F+iCpYc1+d8U+aYk7kIzNCMrVmmR5ir2D8wJT
	v+8jlDM670B+HMtccwc5kuELtMv6oLmD0VR+RVBo8CDt7bIeuxFYtKfE5eME7H3yQ0SRp6Ymx1Whs
	+PDlvY05SfEitviTq07+v38nC9JnXAsDijG/npniuQJvQ79vxyTKYQtRhZTVTZURHY0IO+CI8BNcl
	cQ5WGur+Lp4OZv0zoOEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpy3-00000009lz1-1ItA;
	Wed, 18 Jun 2025 10:24:31 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpa3-00000009gRt-2RXh
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 09:59:45 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 998761C0A;
	Wed, 18 Jun 2025 11:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1750240769;
	bh=J+6mryuTRX2gB2Rgwr5vt3wvRXw/gjqeHL//L5Wxqhg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=T3iYIrar75xKvopy8iyPp682uIw3x4Y9FogbGQ7mismuvIRBMulfwMqJVHPZey7wE
	 HHB93oOnGr6PgCJO3BzEKv+hbejUqy9sBhW/llHyDHBuVfdani2k7VEO8BVLD6nwlh
	 U5pWGxOFQoZfc5sGY4s90fApu92lDoThyFgMVhUI=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 18 Jun 2025 12:59:11 +0300
Subject: [PATCH v4 08/17] drm/bridge: cdns-dsi: Remove broken fifo emptying
 check
MIME-Version: 1.0
Message-Id: <20250618-cdns-dsi-impro-v4-8-862c841dbe02@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1912;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=J+6mryuTRX2gB2Rgwr5vt3wvRXw/gjqeHL//L5Wxqhg=;
 b=kA0DAAgB+j2qjLyWHvUByyZiAGhSjf+jRxOSwxnZRMFSceTkzN1h9dgwbT4lCoGBjujnNms6U
 4kCMwQAAQgAHRYhBMQ4DD6WXv2BB5/zp/o9qoy8lh71BQJoUo3/AAoJEPo9qoy8lh71lpwQAIfJ
 VrMy5bauKUmd9xIUo0jiekemLRGhuaztMb+is2MO0QH8ErEsgc0IMiM8XMVtkq5Ca1FqOlwT8KB
 zkzM/10coueclGz+Z0zx/GW8Y18RBO7gtoysWorMmMt+ifiBAl0juBpPExXr9/UOp6ENDK0pe/Q
 2Xp1yoTtxe9p+2KgVO3EC+RFU31r/62bX3YqOL8D+w3BgJ/vv4ajN8jJqBwcXG0JsLfG+nG06zM
 6m12aWPYwhdLcN3xEboR6Y+eitY4Us7sBnpjbeJj1+DhgWZsFe37m2kYGKeP65M0a0MuKMZqdYv
 dPRWbg20uLx1dafO2ovAWvzsDvHijyqlHfX1DxMFKbMqJj4QOgqrXQAHlYsBA4xWFVAxyAFjcVy
 qzvYtrjs4Dk7xGtLkWTtYBjL7oK67BlLdpiP3UF3fvxIQNLj9i/uy2LHFFfRtDfbVT9CggJSdyR
 hNbURV9cqIix4TYLxRMhD/AbHpiqUHzKkfg/P5m7ZzwRmmDnohil5BXBi2pWEQfxh6uYKtATlO9
 lui7zCmOPxb3nEuAu4jGtcdYrjAicjEDzOU0gyVMRmG2UYzSHe5o+NONbVNwTIBHAjT5MnvlpfF
 XBSXj0/Jw656GXz3n3llzxTKb9UVJihrZD5vP6vmbOGttmQtN3jGboqSlXzFNM1IEoXTqK/b4IU
 AH279
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_025943_772413_FE50B842 
X-CRM114-Status: GOOD (  12.92  )
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
