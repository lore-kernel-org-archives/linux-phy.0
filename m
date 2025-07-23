Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E362C87FD6
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqkOoBY0o33POJcjFU9Ih8I7pnpqogxWhigOl0IBGNs=; b=yDjQgV/WajHEk5
	pKjQiXT7Zc0/rYmnqk81D0br9IYPZogCxmku4Dnkis64ilY2zhySmWN0zIBEUI1KAQ+2n16xeeRHn
	fszrL+K/ogCsGsiRS+HlmKrUXYoKZMIVIsg4XfMoXDhCJalSP6vrTN+xKZS7V/w7BGlQ8OLTpp0AX
	d1Kwu/+B3/AA5KrYjw4O3Oezl8Pm0A2ofldyZfVdIjeorzrrmwWiNFy6ZRUhiqrPaCVjTAV6ObFg5
	FVBTpnYXjSSJv9kjQt+xG7aogG/fiYf6fZdZErHwpEWHFrXljBWKQk4Qnz01LqF3XobTAUOHdynsf
	rrCmVWSWZv/o4YEh2ufQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWcV-00000004feF-12ir;
	Wed, 23 Jul 2025 10:22:43 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWMH-00000004cQo-0d4n
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:05:58 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D6C0510D8;
	Wed, 23 Jul 2025 12:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753265118;
	bh=usdH24NFgjCtHwDY/tSf4Hpg487eePqFpjGZq9SVFBc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=BBgY89DnZUDJVl8h4UBK7Q25PEM/ZRy9OccWzEdHCJUyHbDg2L5XCplfrmYK1yYf6
	 0TUISaqZEJxrgRihqpICYZa+UIVRlkSW6xn13UJlkpaYOZ+8mZfyOVLB3YDFCkJfDK
	 Obd/saerjjyjgzPwT9CZoFSHJuuWAdytCG9jldsI=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 23 Jul 2025 13:05:21 +0300
Subject: [PATCH v5 15/15] drm/bridge: cdns-dsi: Don't fail on
 MIPI_DSI_MODE_VIDEO_BURST
MIME-Version: 1.0
Message-Id: <20250723-cdns-dsi-impro-v5-15-e61cc06074c2@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1295;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=usdH24NFgjCtHwDY/tSf4Hpg487eePqFpjGZq9SVFBc=;
 b=kA0DAAgB+j2qjLyWHvUByyZiAGiAs+6gb7tGkSYWDCfmRK9uQeLWaEaI2gv+uhaNpuFlMIrzX
 4kCMwQAAQgAHRYhBMQ4DD6WXv2BB5/zp/o9qoy8lh71BQJogLPuAAoJEPo9qoy8lh71yM4P/1vv
 FGeCXKo0Oa6m0RMXINa+6+MJy10b9pxBf6pdQTlRh6vx4OlKsz1Yu3nIGz95G4MD7kAVrkQhjNe
 1QSyCZyMvQ5dxWumi98V1Hp9C2EpIV759FSUJ6Y9/F0BfB4GYfIjqDdzY6buGvC0+CdTh6SplKD
 AE+jPot8YV8AYIKFy3HEjXbrUvy+7S1lnutgbZPDgHhXNcHoP6GISNBCxa2jeCAXvKnAw+u7doc
 gfSwPhyJB85h5YF6VAkBabFD6k/HLWgQuBCs3YC0yGhXRyenD0E95cleemdoYZLFu2DKa1fpryk
 AapUvbzEgtV+fGzZtanzHPvPgaihSGs0LEerm3kcdt5FFGi7ybENv30q3PfNurdUqZ+s9bCTS7e
 E+IFZ3ifRpuBQcirmQWm0DiCPp08czCHU6VArhbw4Hlp/GH9KPT3zSOIF/YI560rOv9N310uY2L
 HDdpuPFhqX5RvmTQZlR2Z8v0B/vg7M5WD6p6kqIT56+5HaWxXcMw9MxzI5KAZtVLLHaHCDVyzo0
 sQOrxoUGxn+ldXRZMw4ovPo+GlcLDY0lLTKvFgUNR+7gjND+2pEvVVbeyrQi1YlQHMhnjc28SCn
 AoNo8fNclWeHZS6fzFxApgdXL59aNOhxd/f7W6bRBr3MHFmP9OZyR01s6mfvcb4ipoHjYrw9h2O
 t2P8V
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030557_376729_56B2BBDA 
X-CRM114-Status: UNSURE (   9.54  )
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

While the cdns-dsi does not support DSI burst mode, the burst mode is
essentially DSI event mode with more versatile clocking and timings.
Thus cdns-dsi doesn't need to fail if the DSI peripheral driver requests
MIPI_DSI_MODE_VIDEO_BURST.

In my particular use case, this allows the use of ti-sn65dsi83 driver.

Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index 114d883c65dc..09b289f0fcbf 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -1052,10 +1052,6 @@ static int cdns_dsi_attach(struct mipi_dsi_host *host,
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
