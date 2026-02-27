Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA944FEFB51
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 20:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGabFqTX78zAc2DS2QguAlUsx2bFsy679E97RZVM7yg=; b=10BaRNTV+AzWGV
	anYa11apChz21pJJz696eC7RszvslocYtzzPS5AOSYO4tLqQW0Sv8SxyddXYEr38QRyc5UT8seTgp
	yncOEfUlqbmBy8xOFqAqlVPQLTkc3M7eFyK1QVgKQKXoEewMNmL3VBaMQzbdmQQ1i3A+zFmrqAha4
	zLuU1+x6H9CXLUTuCZ4kSUcEfsi51O2A1Uu/TQ5bvBK1NTlqH765vbIP8v7nuxarKRkMmS7i33Dot
	BB4xM/EGogJ1KJsZUAdhAw80t89D1lL3UP/N4GMkDd6mNPvBGc6TtRqxTSVgM8coJv5FJVrT9gR3k
	+0abGBgHCi9UAFmDps6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw4ls-000000098iu-1pjo;
	Fri, 27 Feb 2026 20:49:12 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw4le-000000098Za-0uYu;
	Fri, 27 Feb 2026 20:48:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772225335;
	bh=jAV1rL/dLM95YP1sZnfa/b90+uXslqsIMfLbW9A3ld4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=g0nLWeX5eCO2JrJCAx/PrNGwvGj0sU0A38oCfihWu6JalsrLXTjp+v1bZ2HjoxM1u
	 Y4fvkcr1riHVLCaTNv8dc1HAOOUSZ1T7RmNiUvMNcg36PVfBXImZr4V+c7jAGai/tB
	 jd6Ry/jCWIZ7qDHD9FruxapFXPnr5ztb8F0lsdCyPRj8ZxXDboErkgKYKpI3AY6r60
	 rK/8n0XS0b4ecj1nYrVbaaLxaLpe03Cq+DzZpm5QVJu3P8kHK1n3V8PQlbiKpFK19r
	 WzaMyityV8CKPvjCzAmql/ufYAxWRTbC5I4FiDDgnCuyxU7Pbk36y0PYK3B7sjR4da
	 LnygPPAeg5UbA==
Received: from localhost (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1397E17E1004;
	Fri, 27 Feb 2026 21:48:55 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 27 Feb 2026 22:48:48 +0200
Subject: [PATCH 4/6] phy: rockchip: samsung-hdptx: Drop
 restrict_rate_change handling
MIME-Version: 1.0
Message-Id: <20260227-hdptx-clk-fixes-v1-4-f998f2762d0f@collabora.com>
References: <20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com>
In-Reply-To: <20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_124858_433273_99460ADF 
X-CRM114-Status: GOOD (  14.96  )
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

Since commit 6efbd0f46dd8 ("phy: rockchip: samsung-hdptx: Restrict
altering TMDS char rate via CCF"), adjusting the rate via the Common
Clock Framework API has been disallowed.

To avoid breaking existing users until switching to the PHY config API,
it introduced a temporary exception to the rule, controlled via the
'restrict_rate_change' flag.

As the API transition completed, remove the now deprecated exception
logic.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 42 +++++------------------
 1 file changed, 8 insertions(+), 34 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index b56360b5df78..e5c8bc95a416 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -414,7 +414,6 @@ struct rk_hdptx_phy {
 	/* clk provider */
 	struct clk_hw hw;
 	bool pll_config_dirty;
-	bool restrict_rate_change;
 
 	atomic_t usage_count;
 
@@ -2069,7 +2068,6 @@ static int rk_hdptx_phy_configure(struct phy *phy, union phy_configure_opts *opt
 		if (ret) {
 			dev_err(hdptx->dev, "invalid hdmi params for phy configure\n");
 		} else {
-			hdptx->restrict_rate_change = true;
 			hdptx->pll_config_dirty = true;
 
 			dev_dbg(hdptx->dev, "%s %s rate=%llu bpc=%u\n", __func__,
@@ -2296,41 +2294,17 @@ static int rk_hdptx_phy_clk_determine_rate(struct clk_hw *hw,
 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
 
 	/*
-	 * Invalidate current clock rate to ensure rk_hdptx_phy_clk_set_rate()
-	 * will be invoked to commit PLL configuration.
+	 * For uncommitted PLL configuration, invalidate the current clock rate
+	 * to ensure rk_hdptx_phy_clk_set_rate() will be always invoked.
+	 * Otherwise, restrict the rate according to the PHY link setup.
 	 */
-	if (hdptx->pll_config_dirty) {
+	if (hdptx->pll_config_dirty)
 		req->rate = 0;
-		return 0;
-	}
-
-	if (hdptx->hdmi_cfg.mode == PHY_HDMI_MODE_FRL) {
+	else if (hdptx->hdmi_cfg.mode == PHY_HDMI_MODE_FRL)
 		req->rate = hdptx->hdmi_cfg.rate;
-		return 0;
-	}
-
-	/*
-	 * FIXME: Temporarily allow altering TMDS char rate via CCF.
-	 * To be dropped as soon as the RK DW HDMI QP bridge driver
-	 * switches to make use of phy_configure().
-	 */
-	if (!hdptx->restrict_rate_change && req->rate != hdptx->hdmi_cfg.rate) {
-		struct phy_configure_opts_hdmi hdmi = {
-			.tmds_char_rate = req->rate,
-		};
-
-		int ret = rk_hdptx_phy_verify_hdmi_config(hdptx, &hdmi, &hdptx->hdmi_cfg);
-
-		if (ret)
-			return ret;
-	}
-
-	/*
-	 * The TMDS char rate shall be adjusted via phy_configure() only,
-	 * hence ensure rk_hdptx_phy_clk_set_rate() won't be invoked with
-	 * a different rate argument.
-	 */
-	req->rate = DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.rate * 8, hdptx->hdmi_cfg.bpc);
+	else
+		req->rate = DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.rate * 8,
+						  hdptx->hdmi_cfg.bpc);
 
 	return 0;
 }

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
