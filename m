Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51C41C7115B
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 10:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHD/6o3pyFvmL3UmXN8Ll4JemuX8cB+0VvX/zSkpDh0=; b=g/aiRGNj8i+Xwg
	atdLh2/V0Z2YGl4c8YRSxHCEYQDwql35ARGCq9V1ChJdHRZ3Mc1ouIWxuc1xM+I50WJYQSoOeE6pW
	vNQwWWKF2TTpbahXNN3toQpJISlrGTullTHYhXgtpWHwDXzElai6K+I/5AW81S/D+nvS5/tckAdUC
	q0rxLGDHbSBeBOz7FhZCAqv5ZbcDL1kMkhWAlPUZai13FNklLa4aJoFxidSsvmxf2JvHxeKnnIIuJ
	1C+J73na5Hx4+zp2hi6MWofSWj3AYVZyVY1JQct42bpCkEcKqsvaYY0HGXyXct7nYxg9KV97EnHr6
	h5DYNDLsxWYt4FKwx7aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRqBC-00000009oTu-0O3G;
	Wed, 18 Jun 2025 10:38:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpaF-00000009gh5-1Ako
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 09:59:57 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4AF955288;
	Wed, 18 Jun 2025 11:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1750240781;
	bh=B3dq0sEpe5AT9qctfQAR4vjZEu+9Or2HA//TK9hQ9OY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=mSWalhnhoqpNSAlK1Vq7C9//mECRuAb86zLq4yBYFkLdZXvhpxf2qhqSY7sbF535e
	 rbkDDyp3KgCAhUQdyc410v62EUpsy6gX2bIJO48w4361yvdIdQ9U1FgDiRLru7UFSX
	 xdSv/qsNfXypLd2d1RCUJ/BJtZWDXgickQuaeZ9g=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 18 Jun 2025 12:59:20 +0300
Subject: [PATCH v4 17/17] drm/bridge: cdns-dsi: Don't fail on
 MIPI_DSI_MODE_VIDEO_BURST
MIME-Version: 1.0
Message-Id: <20250618-cdns-dsi-impro-v4-17-862c841dbe02@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1247;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=B3dq0sEpe5AT9qctfQAR4vjZEu+9Or2HA//TK9hQ9OY=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBoUo4Cm9WSHu5ul0FLGjPBlHGU7cspWgy2eAURb
 KxUES9AIJGJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaFKOAgAKCRD6PaqMvJYe
 9ewUD/9FAokWtzhtDn9Z+8u+/+5MlZcIEC2OOKxjX5GL2PbefUPOjrk+HNISEOopeVSR73XaN1W
 Fme0uL0cQEuJHwK6nmfXOkYMwuwgaYHUNHB9ar4382ofLFHGdA/o9kSQb3dSYbuVrTYIQKUIPGV
 DN//ujwi0V+Ef5eD/sBoXZySIiGSr5kOrVDr6/72SLfTcJ2hS+7eYTY0QsmS+QVQqaWUbNrghju
 XBLNM5OD8Dw/qpAVJ4tdjHQezx02TXw3shJfujRhJ1cz2oOHCg5A1u7rKCSvX6r4Lq25MMXifCp
 d+iC3/mXxHByOcmCxgxCvkOeZlUnHsvN3mQTICXdZHJuuAOPHZwL/7jFC9RalZ7PJOocA+9A7ty
 Err+ffK5hUcX2qMoMtl7XXJCMkIYHpPSE9OYwJ0ay5b7yoQ8fvX6Tfm5mMpYCeexJuF390o18QM
 Vx+U6odM5pEND4s9n03L6Qppsf6gc+sqU8HJk4PX31jHgfbpFku+rKMlEyyYDxiqSAO1DNi/ecH
 p2iZVT0lyB17P3JKwV3upODe7k2Gp6b42bPSduX1hoL+5N9CPjTiLBKImJkjzGax9atv8T0AAh3
 RLJZIdEaPr5yTDDTu5G4pEG/5ORbeCe+NLK0M39YfmUznAuPwSgt5ensRmI8UkacIPh+FTOy41u
 LqWSuGztD8G3+Zw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_025955_506590_BB619C30 
X-CRM114-Status: UNSURE (   9.33  )
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
