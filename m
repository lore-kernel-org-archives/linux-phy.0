Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C4EC7115A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 10:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goLTl+ISB7iKbskl4BcDVuz0dgCkhPw19oyHU8nePt8=; b=VCOBF0IvuKa/t7
	zRh7BFRqY3flT3XKa/T5UqH22n6pWzpUQxSB7HxcxYxr9CziXum9Lph643lP4eSShKVja7679LX+O
	+oOW3OLo48lL+1Flw3ncysrV5EEBGXE2PdaCR0/WryvVRVpo8Fi24UpJMi7dPDQ7WWEHuwylsZ/iC
	s56k3cjCgXdnq2wyOPNKW/6c12IncpVeGZrwQcOBl+bLoffm5qmjPcrVvyJvoFWC3wjopmTV3qokI
	Ye+m6PoPbCj39XVpdwY3uJZ9a9GUgwZnk5xpLXsD4i2wiYqJ1PMFlNbV6bO3HxEkUO57q0YvHQzLu
	gBVbfjfUWuRre0R3jbaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRqBB-00000009oTU-2Jht;
	Wed, 18 Jun 2025 10:38:05 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpaC-00000009gcs-2u5r
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 09:59:54 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id AEA76111D;
	Wed, 18 Jun 2025 11:59:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1750240778;
	bh=se1rnJ6wKLrMNnGX3FfmjWuml4KOIsD0TGEpWMd2Syo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=UJUKQoow3Qtdo69ENk4VDS2DKcCxv6hKD3kZE5HrqtQdatCeHycv0CJDujK9BgyoE
	 bE1yL2o8/q6GNyj/WaKublKxtuz51Z7x7XxxjLpYXVvBrwT5u4+N179/pah1ZynM/K
	 3kBtzHlsJ4Hsj3/FSy0XKiRNtxPTST0LYY1u7XkY=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 18 Jun 2025 12:59:18 +0300
Subject: [PATCH v4 15/17] drm/bridge: cdns-dsi: Fix event mode
MIME-Version: 1.0
Message-Id: <20250618-cdns-dsi-impro-v4-15-862c841dbe02@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2499;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=se1rnJ6wKLrMNnGX3FfmjWuml4KOIsD0TGEpWMd2Syo=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBoUo4BRnsm59Jy5RXhPykB+BrDRRsio6Wcv/7Tx
 CrE1P0hyxmJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaFKOAQAKCRD6PaqMvJYe
 9QVED/9R75oSWccmLzd4WbvCQABL0qKinSwZz4SpCZcIXtTkCpULfEV3q9Rgiffh/QksM7hUrVJ
 gFE3kGAyrojmnjfQWL0BKAd60PyZlZFVXn1EH0B1iUYXHQHjqp50BQEdH+5MyC6xNeEkcG4+PS5
 bALoaGmDMesJc/ej/8dYZOMsBuMte9A+96OsnKAYcefVkF+z/pZ2K74A765AHjH75W50q714j3q
 wCg86MrQ04we+eBrxyjxOwle5cjiSApo33KtaKbvXwhf7G5beXUxXk27exI5AlqYCySMvOtzPwl
 VUpyz7ItWfLvHHtrF+0ZAVd7ia972j0SQZkW62pm9aRZ8x1NBe+Lco78Hxk4uKaezqdHkKQ5fsq
 7/3HMi4V/Ochtid/ONzpoBo9Y4q3oheb1MtRaQdn4v/N7v1lv/Tl5KGv9Lofb/MP55NRCrHgvWQ
 G72tWrA0591tFQvLMi1hKZFsAiUb5cxGP1wp5kpxof4VReTV6j6ZJ3ITRJpcLF7Qm1IqkxnUmS1
 1DI0+eC209unJ6FV/b21oorBE87cgzdXE9lvYFwwhMA94z6JTwBPomuzj9vjBvlE4lVyKyfHdrc
 KNCOFftSzrt2jrQNqVd1xjMszfXsXHdeQeL/+FR8Qsp40NYL3rlSLoaln9Z6izR5+VXCyL26DhZ
 C3/dwOWyK3T0Lrg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_025952_897254_ED5C71B9 
X-CRM114-Status: GOOD (  10.19  )
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
