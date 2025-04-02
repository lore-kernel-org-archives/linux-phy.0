Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B0CCC3601A
	for <linux-phy@archiver.kernel.org>; Wed,  2 Apr 2025 13:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7X140zR44S5iQBdQasa8ZxtTsz4qHLJrirlb/WntwA4=; b=mK6W5yKABp80rd
	c/jQSBTVHDKWH2xFc1ndzB/Egl1AqbpzB0wShKdG3BEfmTrgTMY39vZPLXbKkgOrZd9hdU3N3xifd
	9S0sr+QOHYVAyqt+FBehdaZBT8ncFehLUS0SvomJ6iKXbvwvgD2s2Vtbzg6mnWb/O29t4hHV0RZ6D
	LUYxaZQPBiRWp/j0YqGWyZIUi8F2z5O+HDNv8aABcJr/6KKIquPl/cjDZoOuCGc9qFZKXSV8H4Mft
	XrpaZp2zBNOaLYJ43gVPChH8xt0Ya/eYUMuK8+qpgmz87d/NmZx0LyY8qNqDBnPIBm7x9TMMnWHyj
	+vqiIfFpHrMMCKwaAx9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyI1-00000006Gr4-0S9j;
	Wed, 02 Apr 2025 13:37:57 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzyBt-00000006FLR-2EWY
	for linux-phy@lists.infradead.org;
	Wed, 02 Apr 2025 13:31:38 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B86A51990;
	Wed,  2 Apr 2025 15:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1743600583;
	bh=QpPNCE/E/KWQolKtCOFkofej8djB0ueW3MJ0KSDshcA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=fc/RSj74kn2Z3On0haOJO3gvM7cC5TQZ0nxONkvQACRv5I4s04Pa4FdtVks8ZZShg
	 w1KfwoWjAjSWz1WOkE1wzHfhSbuvtrmNrdICdrHW4sg6Mp7kK1JSR9Fm9OWCEZrxJF
	 ezYHtgZ4QK7wLpjxjoP932DiMQ7Ks4yhkbfkzwLg=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 02 Apr 2025 16:31:00 +0300
Subject: [PATCH v2 18/18] drm/bridge: cdns-dsi: Don't fail on
 MIPI_DSI_MODE_VIDEO_BURST
MIME-Version: 1.0
Message-Id: <20250402-cdns-dsi-impro-v2-18-4a093eaa5e27@ideasonboard.com>
References: <20250402-cdns-dsi-impro-v2-0-4a093eaa5e27@ideasonboard.com>
In-Reply-To: <20250402-cdns-dsi-impro-v2-0-4a093eaa5e27@ideasonboard.com>
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
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn7Twh5vAfBQ7KP6xDJ0AYdDCj4qpAPSm4xNsLM
 sdkiIAenmuJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ+08IQAKCRD6PaqMvJYe
 9e0wD/4hTNNGZmT2+7Ef56h6RsvSyeVqQ+ZHg1Afvpmc5Agd9Ul2FJExtTibZ7yjgpO0xllrw2s
 xmTLn7BTXFcXGpmFBM9LIyDBLIz72HGGy1emB5sufTZUtHeqhivMgNMGpESREKbfQ+CBmUyOWkZ
 LaGocgPaO+VQAMW3LCbUEJFVOXt977Xv49fwvVHwmD4Rnx2TzOXAjgPtDbfBtZnDSHgqAsQ5E4s
 zdiwL+NmawGYTkIBUWnOgobGyDZbpJ2IHhZx4pPc5a/udzbpOIPvjFk9lRvpgBs3FOLo4yJcEkm
 14QE+44dS9dwQbZgYnAqgvK/cCyRb3YnhusF9e4YZ5Etds0IgbPutzVyIWZwdxtqHPfCFXUOCgp
 MbxbJpgRF24qM3P08HviR680vB6bezdW05fMdESs8IKqXOziq7tcOzu6WMawyZx3tkQzGjz43q+
 BXWQ6oZdc+Y244AphNtyB4HJSkHSnXd9L9it7o+an+Xnsfw/ZfXC2zycU6UjqDBYPEcBnlbngLM
 VBlhoNhtCijeUibdL2g1Fx+6W21YO5ZsdjTqjz6gRwxY6MLG3aWsvvS1jfDo75CYMQ1YKLZLltS
 ZLjBLR8SJvrZA4m0bakJz3UQ4P71JElxhrJSadd5tL3XEs/FWKcYVRNFZesYjhIbEVS+Snr0Oxd
 04a9Tf/+FQoLsfw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_063137_716999_3BEE82A1 
X-CRM114-Status: UNSURE (   9.79  )
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
