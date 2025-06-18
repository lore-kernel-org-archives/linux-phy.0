Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B550FC7115A
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jun 2025 10:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MM5PJ4Hsci0klCJYvXgTidrCY40mYoqQnVs3bdDAFc=; b=xYL06r3l5SZft3
	+7nicm2Im4WV2muRq5HjK5mOpEWAAw1B/SC22t3L1zFKYoNp0jW5qcQgHhc6j7dnb64vdYgzm7d8N
	OA6IxK1dINbjMjPnsQr5auDI2FKsb9cepqPpBSO/MYQnSLIYTTOUJYE39c47eq7q7mU0Z96EtwCJf
	0LisIopxLuziu+mFQRdwDeZ/2CYhaC0YRWYOwBpqBG7xoUy+m4jGLVAC1j/OzDBO3pM5o6WboZaaG
	OK2ggzvmQxn8ss1sK2jtEN1MbFecc4eBTdaZT7hIsejB8LKX59hAOo6XwebT313hJ6NGEMBpCQIvm
	rwCVUHZHt12W//Ty6ZHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpvr-00000009lEV-21wP;
	Wed, 18 Jun 2025 10:22:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpa1-00000009gOd-2MNx
	for linux-phy@lists.infradead.org;
	Wed, 18 Jun 2025 09:59:42 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BAB1D17EB;
	Wed, 18 Jun 2025 11:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1750240765;
	bh=SYQpfUDGcUI4Fjl3I7lrF+Wp1Q4tFzZwD9sXJK2XFV8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=CvMv2RWDkGmJADN6SKWWihtOVW54n4or+EIOa53d8gkRgIhDxsqERaNrPzvcmllh7
	 6dgRbF6HjpzdXZEiDq7FNCj9JZf2iYYCwuPfCo2MzQH3eUNDc89/Gpl9h6qB8E7LX8
	 IC4BbdLC8uADXycBr9Sps2gHXSJzdH+08DE6HYgI=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 18 Jun 2025 12:59:08 +0300
Subject: [PATCH v4 05/17] phy: cdns-dphy: Remove leftover code
MIME-Version: 1.0
Message-Id: <20250618-cdns-dsi-impro-v4-5-862c841dbe02@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2285;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=SYQpfUDGcUI4Fjl3I7lrF+Wp1Q4tFzZwD9sXJK2XFV8=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBoUo3+e0RBS4Kze29yVEHMxrbIx+D1OSdIr+dA5
 cMRf0EHcnyJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCaFKN/gAKCRD6PaqMvJYe
 9UUND/9NRombRCIFomalMb4a0VX77dNdBckwFwdSbXbnt+iJgItXp11qEFzDji7Hgoa5Ch3lSYX
 ybMc1A5RE85MSv9QdU9SrId4ck1cqBPXBBYCYmVx3OROoEsX2jtZ122gkLe7uD4snwteKsNjVLR
 JfzBZJw4OynVvZfternW65/9UYTjRRZenNEgo192pvrZ3HszgSgDYJY0ihrLgVnTM1SjFYuWlsC
 RDYfwYPNpRsm3plEjRhVrIRF6epSy0Kz0+EeTgXwPuWurvI9IZnYtYbShiwfTx/GNeG+/6wzyY2
 JSkljoaSkQZZwKcFGY+WArNHVdHBYYcLIbGfV5dfOyOuNuhw+0wAwPZ2wXeTwKOx+jK/3vMWQII
 F8fzx8GzpLKz+1FLVvZg/L1Z0l1gHV9yGbhodztTg8lIM/ph5kGIWdPlrYc3kE6lBeDYwMXUB4V
 hpDzBW6r+bS9UW9GulM88EJtm2OolyABVtE++pVRLQbjfzxlrqVycJFcnNGiPqMMi0+Ln37ehAw
 EJGg6z1agOB6c9/bFDBQ8qm4K51W16GGZYZy3I3qy65dAtoTkCMFjXOkS/eaEwYsts+IgiMr772
 hitnLWK9h923lbPomP6P/S+FN+qIiOeiphNvW3PwcjMBoTwcynKY2yhqHt1K/KIjqJmO9GQ35G0
 zp0Hqr9eEwuRoaQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_025941_768216_F009F832 
X-CRM114-Status: GOOD (  10.07  )
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

The code in cdns-dphy has probably been part of a DSI driver in the
past. Remove DSI defines and variables which are not used or do not
actually do anything. Also rename cdns_dsi_get_dphy_pll_cfg() to
cdns_dphy_get_pll_cfg(), i.e. drop the "dsi", as it's not relevant here.

Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
Tested-by: Parth Pancholi <parth.pancholi@toradex.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/phy/cadence/cdns-dphy.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index f79ec4fab409..33a42e72362e 100644
--- a/drivers/phy/cadence/cdns-dphy.c
+++ b/drivers/phy/cadence/cdns-dphy.c
@@ -55,14 +55,6 @@
 #define DPHY_PSM_CFG_FROM_REG		BIT(0)
 #define DPHY_PSM_CLK_DIV(x)		((x) << 1)
 
-#define DSI_HBP_FRAME_OVERHEAD		12
-#define DSI_HSA_FRAME_OVERHEAD		14
-#define DSI_HFP_FRAME_OVERHEAD		6
-#define DSI_HSS_VSS_VSE_FRAME_OVERHEAD	4
-#define DSI_BLANKING_FRAME_OVERHEAD	6
-#define DSI_NULL_FRAME_OVERHEAD		6
-#define DSI_EOT_PKT_SIZE		4
-
 #define DPHY_TX_J721E_WIZ_PLL_CTRL	0xF04
 #define DPHY_TX_J721E_WIZ_STATUS	0xF08
 #define DPHY_TX_J721E_WIZ_RST_CTRL	0xF0C
@@ -117,10 +109,9 @@ static const unsigned int tx_bands[] = {
 	870, 950, 1000, 1200, 1400, 1600, 1800, 2000, 2200, 2500
 };
 
-static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
-				     struct cdns_dphy_cfg *cfg,
-				     struct phy_configure_opts_mipi_dphy *opts,
-				     unsigned int *dsi_hfp_ext)
+static int cdns_dphy_get_pll_cfg(struct cdns_dphy *dphy,
+				 struct cdns_dphy_cfg *cfg,
+				 struct phy_configure_opts_mipi_dphy *opts)
 {
 	unsigned long pll_ref_hz = clk_get_rate(dphy->pll_ref_clk);
 	u64 dlane_bps;
@@ -289,15 +280,13 @@ static int cdns_dphy_config_from_opts(struct phy *phy,
 				      struct cdns_dphy_cfg *cfg)
 {
 	struct cdns_dphy *dphy = phy_get_drvdata(phy);
-	unsigned int dsi_hfp_ext = 0;
 	int ret;
 
 	ret = phy_mipi_dphy_config_validate(opts);
 	if (ret)
 		return ret;
 
-	ret = cdns_dsi_get_dphy_pll_cfg(dphy, cfg,
-					opts, &dsi_hfp_ext);
+	ret = cdns_dphy_get_pll_cfg(dphy, cfg, opts);
 	if (ret)
 		return ret;
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
