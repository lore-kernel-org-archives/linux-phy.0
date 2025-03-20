Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D36F5C3600C
	for <linux-phy@archiver.kernel.org>; Thu, 20 Mar 2025 16:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IR2X/81c+obyg3GFd4T/Nlclm2SW9hbrvlzlqtKUEUA=; b=BtVK1sLCYEOV8k
	bEIoEmoVNbZVLwZoyXa3JnZuFbL0aAr99ziN95dRuanTy9fFNF+CT9M/kW9bgOyYab6Qi1lT5dCtd
	DJ67RleBcAWm5oWx4C02Y1e50VBGZueGssvV0PScawcnSLl3rw0WouvU8fAZujuA0XhUOICaqM6If
	B5+xV8VVg1jXscuyWkkjGmMJIPRoKGA3iiQZSAdlo+nkmY+JaA9cWlXoQkT5Bjf3Y/bumKQuUrnld
	1zx18mwHJtmbyFUecT+k/o96T4baPyp7Wo5NQpF41sbSeIsRHTn86U+LDqehyv54RZubjljKi4I52
	w/lGvymkzvmI3DYWGseQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvIMP-0000000CcFT-0kwq;
	Thu, 20 Mar 2025 16:03:09 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvIJy-0000000CbDe-2637
	for linux-phy@lists.infradead.org;
	Thu, 20 Mar 2025 16:00:40 +0000
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id C4DC211D9;
	Thu, 20 Mar 2025 16:58:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1742486332;
	bh=c1oUALt2KZgajaeiEy/9OAK/9/j14NZ5nS73HsxdZOA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=CzsG3UQ3P+BFjeqjvNttXI1wQZV9UVcYua46Bv9y5moC+fnyiWZ2m+E0BM8LyWkNL
	 0nVmHfF3YZ9jLMVFVNv/2ah4mRPmajdqUA1ycz+yoXL6Sop+eMvPqZopiG/2aQfztF
	 mayEFlT4oW4VvMl3wWcO8Ls3xikcnGupsww8ools=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Thu, 20 Mar 2025 18:00:00 +0200
Subject: [PATCH 05/18] phy: cdns-dphy: Remove leftover code
MIME-Version: 1.0
Message-Id: <20250320-cdns-dsi-impro-v1-5-725277c5f43b@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2173;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=c1oUALt2KZgajaeiEy/9OAK/9/j14NZ5nS73HsxdZOA=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBn3DuXfrbZgb5HrB7SFJHZvRCd5XaWzMnIWXgYf
 iBzaJo2AZaJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ9w7lwAKCRD6PaqMvJYe
 9QYnD/9SaANQrGkZJO7Zmwlo0W7xTjRHCWOhTeqcEynVVwMAO+RVr0kriNrx5BwgX6n+YAtJv6o
 RT70WTwbL4JWMjhRLvsPkyXU6qrURFb/B3NEzVPkQRBfn8CTY5ZQ+YOHlQj2pig5U7gOVhrvWHU
 frqxUuO7DcNFF9C4LeMH6jn49tAYjU3qpkOxuRFcUt3oAZRAIDbMUhM0VTIpFQiMF9RncNysBNC
 JAYul/Uk7YN83kA8ghEWZBJqYanUlpALW2slT7VH6T7gEMQhxhs44NjVO3SAccOS9nHdGgMQt2Q
 IHsksmPUGQvhTNJxZGMogeBLnJKJztkhRstSn0AYqcyGjOkVM2vkSVXfGyN1V8KJC/XKd6hrNuR
 EM8jujdmT9FW2eDPWRagHRQEQiPX+1wZhCJHKeHv2+l80JNiWBRwnNGJ8MNp10DNgI3B94fy+0Y
 Fd51034Ze7gBiej00SmxqhX6CMW37U/a+ORgFUGKW+bO3GjMTnP/hkYqsI6MRaNWxG3B/Yt+F/D
 FErSRtSNFvEbqOYIW/8Vfqvu7MxJGlUq50uYo24RnQ+l91eykgZ3eleigcx3M0e16Yl+BHDlQAT
 E6jkzLLd66EKOGbSOeu2vgqYBez8E+GbmuG2PN/YPzWje7F26fsIimCTLUE8CkudCzFeJLIJGa/
 jEuKCgGoINUTRtQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_090038_707435_21498FF8 
X-CRM114-Status: GOOD (  11.30  )
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
cdns_get_dphy_pll_cfg(), i.e. drop the "dsi", as it's not relevant here.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/phy/cadence/cdns-dphy.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index f79ec4fab409..7f8b70ec10c5 100644
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
+static int cdns_get_dphy_pll_cfg(struct cdns_dphy *dphy,
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
+	ret = cdns_get_dphy_pll_cfg(dphy, cfg, opts);
 	if (ret)
 		return ret;
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
