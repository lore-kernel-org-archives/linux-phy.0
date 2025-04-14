Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D98F4C369B2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCjoTUGAVE6SuBHAwJFMjuX/hDwFA9TGrSCQuAdUNc0=; b=HDF5nydoHFBPlo
	6aZL8X4gLYWqAfUJwkN3oay8NMnQCwVujZqM4ZT/AHn8qMxgyM45MDH8+8ME4tpW0y/HOT/Cz60oo
	YSDN+PzyQ538x4nv6WDhBWhH1MijgTbPH4o8dv2s8z3Jf8z5Q6ngOsvRPySiY/XbXW8Hs9zfpfLID
	EaHX8vYXrR18+E7qLbc6OcuKC+Ghg1ZEXafuQz+ZORzt/fl2vFgo4N1yDiPR32H7asWMIsb7BGZjd
	EFogh228o9bAT9uWn8V50HvnVjy+fbn9LHCId6Nodi2nfnSGa/OkhNnA+Jhp9P9QqunYF+fIrGh03
	LXwKCVmqiQMiTttWn+tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HnJ-00000001ikj-2Usf;
	Mon, 14 Apr 2025 11:16:05 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HjZ-00000001hAe-27wL
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:12:15 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BDCB0502;
	Mon, 14 Apr 2025 13:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1744629008;
	bh=Vp6riUjIzDMXhg8AyDl9dAqQ+4STX4wOuNTSlWToDlg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=u8R5oUxAOj1jslmwrAWd9tLiJVUxVef6gai2AV83h0MUZLnziOMjk4o333o+yboi2
	 sjqv8S4ol/Vxn3bcGTREVGsScCLrNwsQC+FIgGlXBWVOWalBSwtGL2iZh30Na8vO9k
	 XosVRuMdSds3iVB6QZlLkEjezrsvEQttY014WIgQ=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Mon, 14 Apr 2025 14:11:14 +0300
Subject: [PATCH v3 05/17] phy: cdns-dphy: Remove leftover code
MIME-Version: 1.0
Message-Id: <20250414-cdns-dsi-impro-v3-5-4e52551d4f07@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2229;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=Vp6riUjIzDMXhg8AyDl9dAqQ+4STX4wOuNTSlWToDlg=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn/O193Zf7j/VU5OcrE6QZ6/+BsWaBEoUMSmr4o
 IxRY3HuK++JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ/ztfQAKCRD6PaqMvJYe
 9caeD/0bi72o7Jy2amqYxym6vqN/ptvBV/YvewmbV1spqmP85BG570h75atCXVqjqZqngHpPAV4
 a6pRaFHCUrkvjbNqF/KbifzaIB3neOWYQE7hUMX3JwycsWWDCJh+DnATzBha4K8zFljWTye81AK
 tD8hWjsptLvLkPpBkLphZvTjZ99Rf9B73pi36uLf+ZBR2ah3xvFRfnyCWwFq7zV6rx0aV3TL2yE
 72EzNrOGxUiFwsfv7iATciEvhmYgztLJ4FoRcYib4etfRxbhw41uKABEr1Du2npss4jbiDQ2fx6
 rBWdo43iqcWWfH2g3I8w/pceF38GzytZJoDbKSbOT9NJCchvtsnRDV/jjH31jAKgqfBrwz68DHL
 OV5fbGZNAAyfx2cMw1wXASrLVdaWWGuObSEAW81CwxQehScFVisdTxdOKqWzqKlsnhRbZ8OYfwC
 XJCP9y9+BAlofwM0nMuNknquQfFCNIhQznmPAQCXZpPGRAeQbqiezdxjZJJKWctDjjIuoNAF+3V
 iC6Oe/dYy2Xr1+XPklqzsfu4BAW4EPkUn79lk4bqZlbZDEdhBi0y7QBvUmRBzZCUvhlre4PbVVZ
 eyE3LoPfby7uIdFAT6lXETb8Cz1Ib63hyLMXj7cTrX5fbztzkl3uQ+LTe/USbBuUXfM0HtCK7dN
 Hxk5KWZVK/RqMXA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_041213_743756_135218F8 
X-CRM114-Status: UNSURE (   9.85  )
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

The code in cdns-dphy has probably been part of a DSI driver in the
past. Remove DSI defines and variables which are not used or do not
actually do anything. Also rename cdns_dsi_get_dphy_pll_cfg() to
cdns_dphy_get_pll_cfg(), i.e. drop the "dsi", as it's not relevant here.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Reviewed-by: Aradhya Bhatia <aradhya.bhatia@linux.dev>
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
