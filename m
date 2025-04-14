Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A0B8C369C1
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGlSf8aUNqw04iWE+/US4h5Vfrg3jSjHFvwI8jD3WI0=; b=1oiWYVuP1EPDhs
	h9RAg4zkkYpBxvK4QtHekw/ffxQ0o7n+90z2oyWkoSOwxDu9hnev3dKzLF+k0YWvAM0yCtF89AVeS
	2i+un45mtF0f2nbB5Pqvpb49VvhVLHcKBGqGE3aaXYdS1NEMJP37awE1HfN73Q9TunXj/obPo2Cwr
	Tfa60KyOV4Igoh/9pmd2W5VWSajm9emlnsyV/tafcflIz6ad/CYx7ywxqOFXeqCT5IPP81eKz9xxL
	Mm0SDmeOr0uJD6DEzTvSYj7BYo20HNzKTaFmjOeeLHykUk/O2jA2UCFSntlq9//mgIP0mYDu0zW1l
	TQ5qCHMsbbOrc/mDbcYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnL-00000001imw-0EEk;
	Mon, 14 Apr 2025 11:16:07 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hjd-00000001hEP-0rvy
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:18 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C88242447;
	Mon, 14 Apr 2025 13:10:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629014;
	bh=R1XPiSomlIO4vu4bVz8DbFGpvqP9IARB4z1KL47RG+c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XyS7poA63d4rQUlWmGTqL8dfgs0jdH/C2kKq9dD/nNJExE1Fgias+JvxLRy0WHyeC
	 3nhSWiiQvJ+GlKgG4p5u0rbk4HHTLWSvj8RP3v/s9yjumdMfbjsEmClz/R5UbaU1xN
	 R6tgY23MibySGXiK1AvV+JHsddw7K9PvUzvUjQ3w=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:19 +0300
Subject: [PATCH v3 10/17] drm/bridge: cdns-dsi: Update htotal in
 cdns_dsi_mode2cfg()
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-10-4e52551d4f07@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1842;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=R1XPiSomlIO4vu4bVz8DbFGpvqP9IARB4z1KL47RG+c=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O1/9KEsI6Wtv/Qh6GwsKFCqn6PTH1ExO4ABg
 nSayMKzmVCJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztfwAKCRD6PaqMvJYe
 9QDnD/9GwQyrYZSRahjQ3ujF5k18LxofK9zxibQB5qX90ar7xkrh5xHrFVIyV4/UK3Kmsyj9gMK
 9cfCmgG6JUoGS9qCWEbhWJSWhk5nDZBrvBsX2MFFFYNhOw3r/M54WQZFlgA+a3qAK5TylwRmiO6
 40Xt7uXqdOjfoUQdwHx8ozFRw2rY1sY/xh0KjGANMEoRREuWinm127dMIlS/dj1mfykjKRJZtEr
 9jN1RyBfLLoCXMq1RVjmPB0CXexHVejUavYQDl2m9Yx8AGsOeINReyxtgEBK1OsxJK/oUqrH+ep
 1lRfUSt0clBcfqKEjtAyqt3W4ItpQz5qZsGNe9FChBB2frFPhadWEP8DvI6OaS0ohCLSMYxpqo/
 k6nRBcdq7S3rswoVCJ14PrSucTgyGPsVfmV//Kb8OpZd4VyvciBVvJKotFs/Cn47raBAnTkTx/i
 dbzQ+TVOsG6pybWFSDwxo5OT1NF3Ab6UlWv2vg6aa962wyMkw/M4hb/GLYeI0u573FspG9BQnUN
 Qm+GXMCUhCPV0P9tanqrWY3BlAYa6Cq58XHeYcMc7KIFxzpnjvzCzMkrchV5xaG1+cjTNGnHpqU
 7VkfB4ZvD10BkPNu15+Hb+ZJGhSY8ksm1XCzFImnV1NTzyzQPkfYMTQnK1S8BvPFbPIP1rXUsc+
 6GAIqtSstnz1iyQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041217_393318_7E7EA108 
X-CRM114-Status: GOOD (  10.88  )
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

cdns_dsi_mode2cfg() calculates the dsi timings, but for some reason
doesn't set the htotal based on those timings. It is set only later, in
cdns_dsi_adjust_phy_config().

As cdns_dsi_mode2cfg() is the logical place to calculate it, let's move
it there. Especially as the following patch will remove
cdns_dsi_adjust_phy_config().

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 4759fd6f79b0..fc034a9624a5 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -498,6 +498,13 @@ static int cdns_dsi_mode2cfg(struct cdns_dsi *dsi,
 	dsi_cfg->hfp = dpi_to_dsi_timing(mode->hsync_start - mode->hdisplay,
 					 bpp, DSI_HFP_FRAME_OVERHEAD);
 
+	dsi_cfg->htotal = dsi_cfg->hbp + DSI_HBP_FRAME_OVERHEAD;
+	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
+		dsi_cfg->htotal += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
+
+	dsi_cfg->htotal += dsi_cfg->hact;
+	dsi_cfg->htotal += dsi_cfg->hfp + DSI_HFP_FRAME_OVERHEAD;
+
 	return 0;
 }
 
@@ -514,12 +521,7 @@ static int cdns_dsi_adjust_phy_config(struct cdns_dsi *dsi,
 	unsigned int dsi_hfp_ext;
 	unsigned int lanes = output->dev->lanes;
 
-	dsi_htotal = dsi_cfg->hbp + DSI_HBP_FRAME_OVERHEAD;
-	if (output->dev->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
-		dsi_htotal += dsi_cfg->hsa + DSI_HSA_FRAME_OVERHEAD;
-
-	dsi_htotal += dsi_cfg->hact;
-	dsi_htotal += dsi_cfg->hfp + DSI_HFP_FRAME_OVERHEAD;
+	dsi_htotal = dsi_cfg->htotal;
 
 	/*
 	 * Make sure DSI htotal is aligned on a lane boundary when calculating

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
