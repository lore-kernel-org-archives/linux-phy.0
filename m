Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 371CDC369C2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Q89l4njoo41T0d2hbg54GDO36TSVw50e/JYz1JEAHg=; b=tFX7eKl6sUa2Hs
	aOUlnbU/UWiggAWAimHggNVXCJT7ymfHhuvB0C+88rzxi5ihxDqMEY9RwxdNPfGjLaPc8lWzHPgcR
	AzvkeUW/PIH/+3IaYE9aGIJ9DTOxBsadt6KfBxwguymR00rQoMwDRiOOLpyN+VyeZ+vR5xTJJ1Yn1
	ybXYoUOwHEyiFepxH9Zt5y5OsJd8QB5yvzR8lFN5s9MZLEGtDHoE3w8TiqHj+SD+se33wNXlYqN3O
	fxYDBf6Ldke6+9iMe+pKWP06j7k6RSpAW1OqUP9bJCEBaBQ2Gb9T6aTNV2l9PF7bbpBz6xlPnM4nN
	PZ0ESR7GJ1iiFR5fmVWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnM-00000001ipm-3xZd;
	Mon, 14 Apr 2025 11:16:08 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hjj-00000001hKY-0qfU
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:24 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D30036A6;
	Mon, 14 Apr 2025 13:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629020;
	bh=cQPsEPlrV/DcQb0G0dYa6phn1kP+NmfciO7HCLdvP04=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=cj1v8R438FuchoFfzWUN1cypZonMHcLsZpkCyXMZnH9dBY3G7QB40zJeYH3YaWYjj
	 ls9ADZyZywh6QQHwrLtN73tQnsUKn5W2esD0XVwfHnwvs79FtmUh6lpzXGkFrIaRdO
	 onHDG8DCTtXGm2emRyTO025dTGXaoVMms0mddVYU=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:24 +0300
Subject: [PATCH v3 15/17] drm/bridge: cdns-dsi: Fix event mode
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-15-4e52551d4f07@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2443;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=cQPsEPlrV/DcQb0G0dYa6phn1kP+NmfciO7HCLdvP04=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O2B8KCrMjaRSBROpZL9tp+KeCFA4ZWGK7q75
 zOW0gHu3ViJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztgQAKCRD6PaqMvJYe
 9RkWEACNWHGst2xAo8gttjaAGMttFqSBQTn0allnNLo9NxRrYWuctuVBJbRMZ0SGlo+AEgS4+Xm
 /jaPTPMJgoTU8duH2Vmmfqz2qpxrHnmDrnsLOnDAVML0OJG4+GR8in2tN7OISlaOa9kh+Qy7MH0
 R2u5nTgnF4YBpl2ymGK8gq+QC1m+iXYRu4uld+0cpTbuJCKfHDQhg/EudiUjaxOrCRsjzfpNp+K
 5Fucygvx3ybl1ME8XmHeSSOpLbNnne/01J+ZBA8L3wpCusMMt0ynQHq9XWN8GiW1fEg3qXh4aqW
 QVw9b8ZVyMluQ7XdFhvydt59mCiN61wjQafnKHc8zoWcDZSHDoNDnOTIld8rCTX1T5p+WnHkhVT
 DRmKKHs4AdT6mgeHillxieOvDk9PSVxvpBmuaFDacd6efUQAgeInz12JoSYozC1f8qCRGzzwjDm
 idDlYdMY7zGTihHqIdgIxleEPXmk7vCE8W+LuAug6mnmLTBLpw3jB/yJqBCA0ZeD2Ji6h+2yN9z
 ghV5cNygdNsK41TEyvZ7Au/qCs7LTkZ6fcNkgCjUI4/V3ceeKEWRLEHKDF3J7iAwb/tH6C57Wtq
 b4KboZyjkSPo3dznMgwkHBlBVWA+Pr64pcfAI4Orv75nT1LuEpkcNYF4k0ihJleEz1YALFhFeGo
 iweQ3q+FS9mfp7Q==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041223_393355_AF475649 
X-CRM114-Status: GOOD (  10.29  )
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

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 31 +++++++++++++++++---------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index a55f851711f0..63031379459e 100644
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
