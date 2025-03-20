Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5590FC36008
	for <linux-phy@archiver.kernel.org>; Thu, 20 Mar 2025 16:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7X140zR44S5iQBdQasa8ZxtTsz4qHLJrirlb/WntwA4=; b=tbHvnxZM+ycJ06
	W5SLChxwqwT6E25pxu1MoZq0szMJGcHHqnxUipDTEeoFAyyyCzikHSQbAMDxeqLpVxNOnHmqtTz0W
	E51cVA555lXozXmej99yy61PGQaSIijBDG8U6ZnFhW6NxAx+I56jLVKXEJHBOcVeFgPkymquQR7I2
	lFj6PBj0Z+f3Q8J0biwNt4Akv2PYPfEaJ2BJWSg0Eg5MBtuVwodyxwbeUuZLZWn0tXCFfTNlZ9nzw
	XBfsAmd6r2Mfi+XEEySZxV6UiLjaWUsCKazi6FE55MCRyPEv1d7p2ozTHHWiqMYu20pZGXyDDAkTB
	polh06vcGeQzhHSQr8Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvINr-0000000CdU9-06Tm;
	Thu, 20 Mar 2025 16:04:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvIKC-0000000CbOt-1qg4
	for linux-phy@lists.infradead.org;
	Thu, 20 Mar 2025 16:00:53 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id DE811250A;
	Thu, 20 Mar 2025 16:59:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1742486347;
	bh=QpPNCE/E/KWQolKtCOFkofej8djB0ueW3MJ0KSDshcA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=YRc/72ggG0toHOpFZ/BCgslWMD3HdlJpcT6czhZK7/OSHGeAkp3gUIr2FzCpHHZhn
	 1umV9fgcd18nGHvHL1gB8OVkSy9NJ6o3fBjknF9s1Fed8uw4WTSQQPC8rcCBROf8lu
	 /hkjdKkQoVzEjIdq+OsAX7LBmHK7IGlybG0xt46c=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Thu, 20 Mar 2025 18:00:13 +0200
Subject: [PATCH 18/18] drm/bridge: cdns-dsi: Don't fail on
 MIPI_DSI_MODE_VIDEO_BURST
MIME-Version: 1.0
Message-Id: <20250320-cdns-dsi-impro-v1-18-725277c5f43b@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1141;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=QpPNCE/E/KWQolKtCOFkofej8djB0ueW3MJ0KSDshcA=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn3DucYZK5+NXYKzJdd92G5rg9oQKnoa7JAD37U
 yJIIGrHFUiJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ9w7nAAKCRD6PaqMvJYe
 9Y06D/4rAhssTack4HqjC5UtxrcEAjrkFWN5o67P5tlC9R8Vn4uRFWQcmlqGdpL6k/A71CGm0Oi
 +mnV5lqIDCqIP6lizBE0zTXJWB0E0BLjv+nJaxXqf8Pk0BT38AU6NZH2s5ZSOLiBjRTHn0s6Eo3
 hFAY2gCT4xZfqZKT4iFLMGAmFHfIrmgs1uB3DAxbHAxv++Ms8CTg9JrdHvF+fTpl9tYX2bNUFux
 XueuOxfPRd62CS1T+mJrcql5kSUNGrkq8BMvc1goHn9AecIw+d3n/MpvnvRMWBBzCIXSqTutEnv
 PV7dnA/e0fGKKA7pxcXEi1C9egEitsAsRV3W2h9A6Vplf0vCm69NmczyMMh5Z4eP1vABp/S8DrC
 0wnIgEJb3pIDca2PxG5gILF+ZCjdPMRGHKlfAfElU22XanbR8B+PLT+3sRhm2Z/JROu9NCuKpSB
 dZjRTrsqF4MDSKDpw6MENP2uy0wU9btREJ7EG9FkAZxvd4whD1fJeiYzEkZyTtxcy87l4OElfSF
 ecZU2RhxfedKZt/gGamZFYa9qT+eoimTBB0Zry9MKYyVHKltUz5QRV0+Fn9d2wFWI4bkABK08nf
 2HUyQbCRWwJGfNSJDMv8pg0rQiaCPvbjVSZ6di21hyj471vp9w21oxRzhcHIVChijk88xJleK1d
 m9JZZ2aJEbI+ibg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_090052_633878_E878C0DB 
X-CRM114-Status: GOOD (  10.48  )
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

While the cdns-dsi does not support DSI burst mode, the burst mode is
essentially DSI event mode with more versatile clocking and timings.
Thus cdns-dsi doesn't need to fail if the DSI peripheral driver requests
MIPI_DSI_MODE_VIDEO_BURST.

In my particular use case, this allows the use of ti-sn65dsi83 driver.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 0bb55584cb44..4b77a203b608 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -1057,10 +1057,6 @@ static int cdns_dsi_attach(struct mipi_dsi_host *host,
 	if (output->dev)
 		return -EBUSY;
 
-	/* We do not support burst mode yet. */
-	if (dev->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
-		return -ENOTSUPP;
-
 	/*
 	 * The host <-> device link might be described using an OF-graph
 	 * representation, in this case we extract the device of_node from

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
