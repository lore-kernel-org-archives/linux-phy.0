Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC1A9C71157
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 10:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OWxvuf5gai7NLDaDkrGrB9ssjSVwZ1p+QM7wJe2To/c=; b=wW/Zv5VJN9bbep
	HGh2TnhbMQ9zrQuQeglWowu1lkwxEWB6CXEDs2NVdgbWhyF7w9sKj8wZtjRd7sRpMNmfd07yC+YWk
	edksWRgTOUqFKlKaxllt03cdUKvygF3eG9GKYwdTCh1g/I4toJcwcAKthR5IfM0VDxVsy7jCegJ7y
	Z5hZHuhEATokiSq0WQB+hOC/t1VPlMSy3Mv+Qlw0wNV1pY8tDAFevcyU1900d50Y16C//Zs2oNlRh
	V5MF2L8c5gtMFKTcKdwmdoQVYdJfXEHPdKYK8zPidVtAbueBK8bsTPStqWfasiWMhTSCbfL2RcyrD
	b0MYhsiFtNZEN9KEKDjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRq2R-00000009mwp-1a4P;
	Wed, 18 Jun 2025 10:29:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpa6-00000009gV0-0n9v
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 09:59:47 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 318F01FB2;
	Wed, 18 Jun 2025 11:59:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1750240772;
	bh=oj6zxN/DaiB+xfnV2bQHrSQ1cRZOpHdgAlqJjJnAEgw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=d56yAncQg2yYWIbrypCDWSYz1kGVEEdvCLPYUCzhgFICB80ET4q5O5o5F/cLT1B2A
	 NMyN9FOi6s8RGojFND3/sZrMwOChZ4Cs71dWA2krLet9mpHqFVTADKcGvRjMSUBjjp
	 /7iRZ5PEUb9WS8KW95bph5bPst6JQiTTz8Z5t6Zc=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 18 Jun 2025 12:59:13 +0300
Subject: [PATCH v4 10/17] drm/bridge: cdns-dsi: Update htotal in
 cdns_dsi_mode2cfg()
MIME-Version: 1.0
Message-Id: <20250618-cdns-dsi-impro-v4-10-862c841dbe02@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1954;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=oj6zxN/DaiB+xfnV2bQHrSQ1cRZOpHdgAlqJjJnAEgw=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBoUo3/suGvBk17slNEtWBJ5PFTQAkWbkFlJqZtQ
 lSMaRhcEKSJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaFKN/wAKCRD6PaqMvJYe
 9WoDD/wI2gJv6JHMXyz2Q6LXHWvu4iUUDU9F6tliNxCyPfiFf1iUMXVjTsdMbR3GFyuayjOlXUM
 mnSMs2ZQww7gCj2w97NFsZ15FliiAo3ZmA4eUP3UnaE8aB9J5//vPYel1KlOEtW4oKmshZnkUX7
 oG2SCg9JkzIrs1mSOm0f7bNp9dqIL/30KhWTIbxhr9iltjz32wOelYErASUTgTrTY0U40ZHP9EM
 oOtnNehGXP+ssOSEBzv2uAiVFhsKPHsvlKk4NUCq3L4l5rDjzMRdw4zWgo5wUNs5XZNs4Er1+wh
 JWfOQmnwrizO1B4OWhCcf5gmVqu7J8zb9N1w+8N42tnT3EKOYWW9ENd6mzzflbCBOIiGx5fJ1Ea
 y/jhVywC+N2sW/nnau3i/rpx8FFKcUiP5tHF9Yy0P4vX0/xf5uSWWB2i7LfN8Q/EEciZ+N3MjjV
 nr1itM5wWrh5nhwKJUsb8zBJC+jHs3sFxAqnjtr9dqAITN9XDQFAZ8XB8+Hl0JTJ0w12XQmwKqe
 Gyf8pgLZANW14fODE20DBdhDdeDFBgGVpCYgo8R0kuj3vYfM8lktJSVPkl4tvngfdNfOI1fLfeQ
 wiVGLYPlsII4MwIPK1OK9zUHHqrJwIIGKl2LnvlohX/AsPXC/3rWJZTWdNTnkNw6mEhfW9V7Gr2
 qHi47bNK/gONoAA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_025946_403380_F5D7C402 
X-CRM114-Status: GOOD (  10.90  )
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

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index b2b6529b1c70..7103878df1e7 100644
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
