Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E32BC83F17
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ms4p5cy7nhf1QTidZKidhycs6k54OUjwlrHxtELehy0=; b=MRayNezMgjYhXc
	nRG0wxYMhhEoaQGVA85rIVdrIMNjBIOb2BJIV2LfgI5OHu6vxexeqZ62EI1DlGJx5mIgYTYEZbSZ1
	lUAdT91nuyz1AzBuzS7IlBXveWEXhlnZovaEeyH+tBDCCuEHuTmhIAnothtkvFDTzgopOr8P+TlKj
	TlMjNUjIphrNIxcm/HxoLdx7KTUg5/rtVTx8hJuP2+3Z1R/1/1kZRG1U4mAji+QF8BZ2+N1h6mEUs
	nw6WLZOCOqUafPfxGU5vCunHvD1dZrZb381jMx97AujAM08gdlRRskJPBycUUtaXQIQpvGNzDh8xn
	lS/iphT9oKjq4vbrBWKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWcT-00000004faZ-04sG;
	Wed, 23 Jul 2025 10:22:41 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWM8-00000004cLY-0Jnw
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:05:49 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C035613DE;
	Wed, 23 Jul 2025 12:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753265108;
	bh=QyaPaFJI2DYR4QuA0uaZuxOPaRXXWCd5AxT5A2x7Q5Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MOG+AzPleuh5lSupxh62rGvfes5Bh6imqb7eelTThU4TW64th+P7c+9WgHBFoS5CP
	 H5m6Ky29GyrT1H3hctKNoeYp+Qa2Ucinpqs3hRup3/wOIvWwoqYSiTpAU8f9v8Ap8m
	 sxkUfwHDNtZZKGKww3aW5oRkMZCVyTZ35fWTt9eM=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 23 Jul 2025 13:05:14 +0300
Subject: [PATCH v5 08/15] drm/bridge: cdns-dsi: Update htotal in
 cdns_dsi_mode2cfg()
MIME-Version: 1.0
Message-Id: <20250723-cdns-dsi-impro-v5-8-e61cc06074c2@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2052;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=QyaPaFJI2DYR4QuA0uaZuxOPaRXXWCd5AxT5A2x7Q5Y=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBogLPrCZQ6oe7tq8A5aa498P11jZiSpfN+6u8DC
 mzv4PXR5z2JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaICz6wAKCRD6PaqMvJYe
 9bhoD/4wPoQFICkJrFipn04ZO0H6i46CbPboDYduDCUTbLV/9kqK8qlwiWJEprNfozqTQC9hPQ3
 itzBDNKrLvMRlthSdXFqlkAHzo63ylNcRXSNCw3d+Fhevt1OB7CGz07TLU26NANuRphDTt65qSM
 97p6d3oqBIkvCzjFTQoSUXbH2IbDZGhEvZpSVnxrbju7iupYFFZdmPVGaqVH2SU2YpBZ7eTXTyc
 ZsDKYdI2zBky/kXW4XjWfYN8ueHGR1Zxui1htqBd0Lya9bdGNr25Ow/cgnQ/sd3gFAQSgnrBHBu
 0ZdWAYt5+ygSKpJ45b1YJvcBILwjQhBbgjFWhuz5Z/fkiARfU9L6X9VLYEmpCGe0H2AZgUYYnDN
 KqXZPo0w4kwFs75cGSv0dEEdeUG8g9gkZtjEg+GGOYxxlbQRx1tGZ2vfFiLNzeajJ18vpeTNbda
 xT2P8nwV6OIYh7hMrXSScpJXmwIglPfwH3QE0tUGuvfhE8k1t98z5rIid5iD/yJ0IzM9N4qaXSl
 kCAwc0vUrkQLidU8HCaN0dThDd9gSnfZ4goRxbjMVWQl8XkAjakCSnct6hj9MAUhEX39S6tjqBe
 hEodCCitmUYopTKr7cCCimliqaVJzwaI7WGgK3D9OIXbsMdlkZ1QPaQPs8luJdT3tgypDcFqDWh
 skMNu1Y4f3pm7nQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030548_262455_E3F98707 
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
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
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
