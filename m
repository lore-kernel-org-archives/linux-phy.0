Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45E36C87FD1
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 10:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pghZl2X9WsUUmMGaY0BpRoMxxiisJRvEmqGYb+J+aR4=; b=KnJfEYGrXv1qJ9
	v/XE7bLCXZbaKjSuoWuSnjPGyq8exxQqOWRt9Nt0FUptJ98aJNUfXxQ5LoN/ui4JXvp7rtTjccj5M
	rBrjOw2Fv69kyxfzf3XSH8TGg1zBHo8gDAZvQrLtmnbovi0yjGsY6DQWCc5p9M8rmZ79WU6Y6UtAa
	rYFgjxb/W1NZTYbOS6mw/VlVNuAJEwt2X8ct6bg1vG+DCnuWlHNz4gih/4Y/dj2+H57sB6IYU7baY
	ffjxz5DYyLoY0tH+HsIj+9OV2Vcl3zYovFcom8Z4crlaXK5Yu/03RERmQdrZQMt0BZXo+ZlNp7TOt
	mai/qD9QN9Wo+9xEJbdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWcT-00000004fbs-4BvV;
	Wed, 23 Jul 2025 10:22:42 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueWMB-00000004cOK-3qzo
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 10:05:53 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A78C5F06;
	Wed, 23 Jul 2025 12:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753265112;
	bh=Xc+qT2XQjEkYeWWEXGGWk/XOfjaEnBSg823/HrVp0v4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=aF8oG2GF200u4HlLCmle9UZm93z+3lNEG/3gOBDfpS+leSKjEwnMdEyGr/Grqe2RS
	 WtJp4F7QAxiDTBoMAhwaypxAeLEmg3mspLt73tsSwaIgDqMjOJcD4j3gLaWuWljAqe
	 TJRBHGNSVQbJ4ofECPReQAdrCwEHbRIjMyKOtqcM=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 23 Jul 2025 13:05:17 +0300
Subject: [PATCH v5 11/15] drm/bridge: cdns-dsi: Fix REG_WAKEUP_TIME value
MIME-Version: 1.0
Message-Id: <20250723-cdns-dsi-impro-v5-11-e61cc06074c2@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2068;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=Xc+qT2XQjEkYeWWEXGGWk/XOfjaEnBSg823/HrVp0v4=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBogLPtNazPSbQ5KpE3M+6zEt/M6XZbg5m3Yefhq
 qf4Qd41bDCJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaICz7QAKCRD6PaqMvJYe
 9U35EACXI0Z3p/DF0JFrEZbdyogW0eK8s1n4cQdf4cM9+c3Es3LV+L0muS/5NKMC5O3eLh2xxjk
 vameoiILDZGFDMRD5QILgdQs1dUzl6jIYptjTe22j9sDPXmz33WEBYi0n0z/2lHMnkJwPTe+Tpi
 tn34Rf4xcFGahLdpjwWQ5AxSHHkhnkMenuQY2VVSOts0Uhm5MZoQtupQXdPQxlBxjyqMzsc2sTR
 PYI6QmB0ba8BPa4Mv5otq0NG9CrpiWKU4CUvdE9HAQMDsPsQlL7u2upPhdmU7gU51w+vK36yBLe
 mQPrTxvormuvNeJl/uxubHLJ0l27DXTFWq/WySFIuKxE7WUBKe6xcUGeiLcxSZZd1Joj4IpPkOo
 6/lphWtI1xrkKFnNouFOSsce7OuDyd2Bq4O8zpixDfd8jowVG/lTXiFq0l8v3EswXBFuIlPGYV2
 dg+BY4yIAREtJT1JsRHo+soUey4i/038geEOgCEUH54PuISCfV09dCBYkGvrhItky9gTTWM9pgO
 clhPqLLINeXXBKFmHkDhXwrYQHHp3Dk7Fhto7AKtRsMJW2Mvd19H2AjTPs38NTm+5cyFlFSOMsp
 8lJC+XDg49oizu6q5ym+AkFzbqRzIznt8FJ8T2YDDP1Va+lwFywL4qIGASQ5h0oDLXxIRrZdJdG
 Rhy5bOCQUUW6x3Q==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_030552_116597_700DAD52 
X-CRM114-Status: GOOD (  14.77  )
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

The driver tries to calculate the value for REG_WAKEUP_TIME. However,
the calculation itself is not correct, and to add on it, the resulting
value is almost always larger than the field's size, so the actual
result is more or less random.

According to the docs, figuring out the value for REG_WAKEUP_TIME
requires HW characterization and there's no way to have a generic
algorithm to come up with the value. That doesn't help at all...

However, we know that the value must be smaller than the line time, and,
at least in my understanding, the proper value for it is quite small.
Testing shows that setting it to 1/10 of the line time seems to work
well. All video modes from my HDMI monitor work with this algorithm.

Hopefully we'll get more information on how to calculate the value, and
we can then update this.

Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Tested-by: Jayesh Choudhary <j-choudhary@ti.com>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
index d49b4789a074..6bc0a0d00d69 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-dsi-core.c
@@ -793,7 +793,13 @@ static void cdns_dsi_bridge_atomic_pre_enable(struct drm_bridge *bridge,
 
 	tx_byte_period = DIV_ROUND_DOWN_ULL((u64)NSEC_PER_SEC * 8,
 					    phy_cfg->hs_clk_rate);
-	reg_wakeup = (phy_cfg->hs_prepare + phy_cfg->hs_zero) / tx_byte_period;
+
+	/*
+	 * Estimated time [in clock cycles] to perform LP->HS on D-PHY.
+	 * It is not clear how to calculate this, so for now,
+	 * set it to 1/10 of the total number of clocks in a line.
+	 */
+	reg_wakeup = dsi_cfg.htotal / nlanes / 10;
 	writel(REG_WAKEUP_TIME(reg_wakeup) | REG_LINE_DURATION(tmp),
 	       dsi->regs + VID_DPHY_TIME);
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
