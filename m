Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12399C369C0
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jDC8tFd51pc7Hrxtf3ncOLGKwpfWpwlePCYJ2wOwHE=; b=juoM2SAWXrvrI2
	RzSP8r4+oHv2PEwVr9luA7gXYuUZ0/ZuZVXTTXqkV3Il0NtYySo1QzgWBTQU8QsFYfDK9n3bGXSVr
	NpVci++Swk78kJMnCMRMpDncl8BkNDNMsvHijc5qHOqEiaPoZQhzwIQl+FErNA4ueLGaPXcem7HI0
	EnfD5+Qo2SSQJ9QF93cun/gdSVVLnGmQND/k1A+gD+Ns4ZlnGJS6X1mQvcSm3QMB8ofOgZ6OFYsnD
	8h9TEpWcusZA/KS4YBz93arzF3tk9kzdAGszoZV7CNhqj03z3Yf1LiG1uwfom6minJ5xeupfWsFt7
	lHI+FV6XmhP6x7p1rV2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnK-00000001imX-3KZZ;
	Mon, 14 Apr 2025 11:16:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Hjb-00000001hCw-43QX
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:17 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8F7612194;
	Mon, 14 Apr 2025 13:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629013;
	bh=Pnx7suxbYin9pheGwTqEDVuMtWI0UCAstJMoqNVTugc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Segwhtz3WFAJRU0HHZBjoFCnzkKTnrPVNIHS8q1K4et1PM2V7o+nA1lYINd9HyLXN
	 hL6rPrNqisQryCHGLUwcSNsiY8YuGQeFZF0lEBdC68rFRx3S+fIfXuL40WBhitmuzs
	 8+bhVGueylckxd2HZUtF97+k2wXLovTq379Oaoa4=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:18 +0300
Subject: [PATCH v3 09/17] drm/bridge: cdns-dsi: Drop checks that shouldn't
 be in .mode_valid()
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-9-4e52551d4f07@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1524;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=Pnx7suxbYin9pheGwTqEDVuMtWI0UCAstJMoqNVTugc=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O1/NI5zR4Bh4wsNG8XTmFGv8lXZJ18oVWybO
 ju5ZATbU0iJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztfwAKCRD6PaqMvJYe
 9Yz7D/9cvEI3imLmKbEfVAl1FKGhg9b2PNfDmVqTtFlN2G22vnApzejVU80DyNm2px1zm/ZJBF4
 00D0yfkku6uAS75wOGAfgcYPoomKH6dPf/WN+jcXW3UkiBNTw/FA+doY01ZqqmQtiwaUuU7pV1R
 klqpzs4vTyjLv+m5/Af1SfiHfU12E91tWE9KA9/HxcYqMpdRETYCXYuqjEQkTyCjcKEQwfgtlFY
 J0bZ6OIR54Yw/5LFphV0yUvZG+EJ8Rd5z68OqnZn/QzjdWrYl4ZWTVflBoVy8xNkMmmc8BovYst
 uvxAf5m76p7krLxI4IHkKMDUeyk1gGDG7Kf/UAJFDXKW8HZzTQ6ADo3eeOfV2PFR3fB/Zwodc8q
 2PEXvJMh0QBGxbb7XWBNLjPa13Kz+0Duta1nd9Zk2MhU3Kwp5MHmV8dSRbBmCXAzmsmM3CUWPXi
 NVu+dw0mpt1nSYFfmni4awaFabz2da6N3yIO7IwZoYvFsewjyUjtwMLmvxvkwJht1yBbsgOqm03
 kFhJ+8ehNlLB/DuZE4jzwoGUomB7vEo0aPZaluh/jxetF4J1f3GfzFLJUbulmlQrNMVherf8eL5
 wdenyFRBir1aqHDycX8l1fgM20RT9OIJoAyJVRDea+GHH7pCsOkfuVP9B6A7VOQoS9CPSRupoaq
 4Db4sDFY0HqL5kg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041216_158782_B772A761 
X-CRM114-Status: GOOD (  10.06  )
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

The docs say about mode_valid():

"it is not allowed to look at anything else but the passed-in mode, and
validate it against configuration-invariant hardware constraints"

We're doing a lot more than just looking at the mode. The main issue
here is that we're doing checks based on the pixel clock, before we know
what the pixel clock from the crtc actually is.

So, drop the cdns_dsi_check_conf() call from .mode_valid().

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index bb8ac7161abf..4759fd6f79b0 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -602,8 +602,7 @@ cdns_dsi_bridge_mode_valid(struct drm_bridge *bridge,
 	struct cdns_dsi_input *input = bridge_to_cdns_dsi_input(bridge);
 	struct cdns_dsi *dsi = input_to_dsi(input);
 	struct cdns_dsi_output *output = &dsi->output;
-	struct cdns_dsi_cfg dsi_cfg;
-	int bpp, ret;
+	int bpp;
 
 	/*
 	 * VFP_DSI should be less than VFP_DPI and VFP_DSI should be at
@@ -621,10 +620,6 @@ cdns_dsi_bridge_mode_valid(struct drm_bridge *bridge,
 	if ((mode->hdisplay * bpp) % 32)
 		return MODE_H_ILLEGAL;
 
-	ret = cdns_dsi_check_conf(dsi, mode, &dsi_cfg);
-	if (ret)
-		return MODE_BAD;
-
 	return MODE_OK;
 }
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
