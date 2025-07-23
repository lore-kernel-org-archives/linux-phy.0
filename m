Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42B75C83F1A
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+Xv73hOA15go49vRKZEmRpupvhYqtMDCNCAMv0FjE4=; b=ZwW1XkbM0AJkFp
	AQB/lYzGoNW0AgNSZ1Vbgv+4Adl7gtdSf5A4QqizpqBcmSJi/uNG8Ep6liSUTfHDokxrqh0ohfJ08
	KW/N9nU0Y21tBE0j6VEyPaP0YgxwYwmHN6ug3BQq8gCHlrZhEuToWcOvqXKRtFXMHRAxnrUXxH0/Y
	jTK2vARFoJHMHMZIlIKFYrZgiEZ7VuSorGgyEApqmphSS82oz/zXtFrYRgrvnOgcxMAYqXjmiIFTx
	akuvDtBIYcTsyKuNy/rGWaH1rvUmFhdriZFvfweOD5Q9FminUywH3w2es1IRieBBuEDC6HIqqCaf2
	C1IsZd7DNVMmtT6BChFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWcQ-00000004fXM-3red;
	Wed, 23 Jul 2025 10:22:38 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWLy-00000004cFV-40Rz
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:05:40 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6D036F06;
	Wed, 23 Jul 2025 12:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753265099;
	bh=j87NeKlc9anpUXCbEig4homQtezEMDttOfQxDN4FPIA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KaihtoYFNTD1kuuRosBUc6R31TXd0ojQKLc23zUJzBBFE3rMqDTc4vS4h3B1z96Fu
	 URszaM91zy4ahEf3hhckXKAzhqosAFyYcPQVUcBddylJzzLrmhKH5IGgqrbDxbpNEl
	 FEijYHr/+lsNFvxPkn0C2IpLVGXo7fIP5PcJ12oQ=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 23 Jul 2025 13:05:07 +0300
Subject: [PATCH v5 01/15] drm/bridge: cdns-dsi: Fix the _atomic_check()
MIME-Version: 1.0
Message-Id: <20250723-cdns-dsi-impro-v5-1-e61cc06074c2@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1760;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=+iBIKU6n3zpwp3bvYiJEm9dNQvFt67iy0FOXdcvLF+o=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBogLPpMF38GOVq5ARd08pP2pPYl/yZs2MBNHs30
 3/cs9dFEwyJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaICz6QAKCRD6PaqMvJYe
 9aD2D/9jHisLIjf1YghAMVIHwfNJJ2tixN1LL+yqR9U8Zdyjo0e3oiuvEUqKyQGWC9TJVVVhlSg
 2kQI7vQuqXy9njrFtMc6SD2Hq6fiiVFUW7pRxri5Nr135JAdtZul6BzqpHZQ247A4aaD+4WfG9v
 /Gq/oqFsc5ShTbpt/wG/MGYFt/Fy/Dwn/poBPxGBHUdT/VvPpdxj4GBB3Sj/ogeSWt9TlYHfhh+
 rRSDDddjwcu2zxOsUb58hPMnWnOMTVwHuwjsR3u8ub0/WEWKNEGjo19sROeIZAyGBs6GgxvQ0S1
 zM0D89/+HGabWBjKHp2rAopCpLEBLZDn+s3urx6xTOKrFNiwvnqkZSa5NxYLleh+nk2se4A4CVi
 Sa8MrIqlJFxc2dNSIzfMqRJzdUAYMUkFGLNMCtPKq8w8Wgm4FUOtUMbiW9IBbUQW8j6Tw5Q39XO
 S2lytxA4kfcfj1dlYxi1MPqkpFMso72F7J7opL0cOwA0ax351J3JO1hoNnxjFO0kzZuOgUN2l9h
 8Fn0mU5fWy0PoR1Ix+CYXd6nvqqAhqKF9cEILAbwVZrtqVlw0POzsXN5pqLjqS/I+ck3IuHCOkt
 YYXgFtjLPBmqQUepH8/6znWgHRPYBspwnxgyd4XXiSYMEmqqATRyNUvuQu9y3rSzQVvShrhJ0rM
 u2FqDSGFtd7KIXw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030539_138274_7D1354FC 
X-CRM114-Status: GOOD (  10.05  )
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

From: Aradhya Bhatia <aradhya.bhatia@linux.dev>

Use the "adjusted_mode" for the dsi configuration check, as that is the
more appropriate display_mode for validation, and later bridge enable.

Also, fix the mode_valid_check parameter from false to true, as the dsi
configuration check is taking place during the check-phase, and the
crtc_* mode values are not expected to be populated yet.

Fixes: a53d987756ea ("drm/bridge: cdns-dsi: Move DSI mode check to _atomic_check()")
Signed-off-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index a57ca8c3bdae..695b6246b280 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -997,10 +997,10 @@ static int cdns_dsi_bridge_atomic_check(struct drm_bridge *bridge,
 	struct cdns_dsi_input *input = bridge_to_cdns_dsi_input(bridge);
 	struct cdns_dsi *dsi = input_to_dsi(input);
 	struct cdns_dsi_bridge_state *dsi_state = to_cdns_dsi_bridge_state(bridge_state);
-	const struct drm_display_mode *mode = &crtc_state->mode;
+	const struct drm_display_mode *adjusted_mode = &crtc_state->adjusted_mode;
 	struct cdns_dsi_cfg *dsi_cfg = &dsi_state->dsi_cfg;
 
-	return cdns_dsi_check_conf(dsi, mode, dsi_cfg, false);
+	return cdns_dsi_check_conf(dsi, adjusted_mode, dsi_cfg, true);
 }
 
 static struct drm_bridge_state *

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
