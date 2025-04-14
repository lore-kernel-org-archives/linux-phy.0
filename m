Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6862CC369BA
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5L3ogwf7/D7rDZbbLC08dNRlQJBcm/uZrbBWKL91BA=; b=SlknPqRF0/Lair
	NzWvVpXS4WdYzZCUBnuiXhS+sQJL1gkOQPLPRhgOE8XYQoSIQbcXuMTf6hdF6tz1Qmj+8n6FaBg/2
	cdLWTCp9SYkzsiEp2PF0vXWkAxUBcuYsl7GRhef3bDTjc394igZBr41/ZxEHkKoLozmyBEHmeaOiJ
	/gnmc6s66+dZE/eVr2RWv3wADlIf6FH82oHAEz2mQYKjStyE/yC5LvWae69cGUhTNYKVZfBOMn2Zb
	Puq9PXQ2NX+5A99JIqq1Q7dT3kYwo1LZ93Cszmbt7OGWCfku542O8NYz0nYeLhnoQq1VG9EI9YaXk
	rL3GSdr1HKfzI7s8o+eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnM-00000001ioM-0Lyb;
	Mon, 14 Apr 2025 11:16:08 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hjf-00000001hGn-2Qd8
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:20 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 404A2258B;
	Mon, 14 Apr 2025 13:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629017;
	bh=NZZeJOMjKVGFEcJiQwe/gJ7CW1xo76X+fNMsV0WBGOg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=lOD+Hk20vTwUYDbO2fZrHWT1sPNGc5N42ucHrXqLYWxvw+iBTbkmxLXRGs3Q2wQhA
	 jCifOw83Pvy38sVqYWsQdWX3ShuhdlaSeHQ/rl/wxDv3uHM90jfs7urk65GewRGyR4
	 j/vxRc7U9qAXP4v1k6N2WH9t40BCQY8pk+JD5RW8=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:21 +0300
Subject: [PATCH v3 12/17] drm/bridge: cdns-dsi: Adjust mode to negative
 syncs
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-12-4e52551d4f07@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1496;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=NZZeJOMjKVGFEcJiQwe/gJ7CW1xo76X+fNMsV0WBGOg=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O2AxOohbr3DOefetNLts/9RI9p1z2XxeZjvd
 ejRMIXmeu2JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztgAAKCRD6PaqMvJYe
 9bIpD/96fTlXqRQiUlePQGXlZe5+xKYcdh6gZTzZMSLps/sxNyzQ0fjjMq0UUMN4LMtB6e+z2WU
 FU/HiLIVkTVRGPVEOA32y+ZsKH9Auxd4F8MeSsHwY+iwLtjW6pd5jV1RvNmacoCLevmoiJOkAwL
 xykG8Fs8gWiTZJwY1M7lJ9MNo1XpsjyacHYFJ6ya3MCwtDekV2foWArWfTwJEpUxDg82V/lhFnB
 FEhrtq6Ztwps462aItI3bEcObjI+vVICpt54I7gfuGlN+akg2KsX8gMevH22lzI9Wf25h5mh+0x
 SyP85XVGJ00OJl5xhJaCporNwfHD2Lv/WkkpgDzaGJ3gAsflkzHtogydtnSzvBe3iyzQQ/RabFO
 ko12GAX/aLoOAAwO977d122M7iPtbOasLr3vnIofjJfHcSOOMTsRLbaiddPZuVncs7hwEMF73qt
 ax/1VcWp1aixM7d0VYoLwrOg2oRUDEgcOTg5LtPx4oVgoeSCF1WzYdRBrWn/0Je8FLqEF2jR0nm
 lXRO9Tbj0R923e0i/skwdrzcWafFYud10Wcz9UHxwlEnw9OVxAZTqtKA3dLy/PXtAP1KlKZz528
 urCC8JIBO9BZ290r9Yg5RaWWm+h4JMc5QgKIDD1/9AuQddga3nakoLINdgQh9Jn3VOmgNx6UDTM
 i4NG6hAHkYUGpvA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041219_765008_7E89A0CB 
X-CRM114-Status: UNSURE (   8.93  )
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

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 319a6a9a6fe7..182845c54c3d 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -901,9 +901,13 @@ static int cdns_dsi_bridge_atomic_check(struct drm_bridge *bridge,
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
