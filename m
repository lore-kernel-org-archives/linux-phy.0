Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08373C44507
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 12:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4Z4KPAicQsGGfUYPq3KhH6kfnSUl469CpT1VIvktqk=; b=OqHX8tCb3dKwmL
	aFngezDPNEU9x7WcPW/tmxKyk6KLwlINmyzOiZrN56t6KMzfiM0kJO7x+9dJQ2Y00IJv1WZYPM8Tz
	fBL7/OcJAnknW7ENf832UtuoT770H2h1cBzNw/pPI9OblLHga2HaQhy3sVDARIGp2Qe11h9geEQxm
	Xnks/q59DKUDw2BahzjkEelNDf0ut40kHEV2n9+aBy4auf+WIBs68kh7HhocDqI+UI+GelfoIRjAx
	JCfANtWrqPpd/P1j3Q9R5gkdcEnfXv8dguMlfqEYvnSzroI8/CNr3RuJokXZiDkyheMbRxI8kb/bq
	AdMj3NJ0WFFt0RZNlQcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wetur-00000001peF-2Qm6;
	Wed, 01 Jul 2026 12:19:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wetun-00000001pNa-2oPv;
	Wed, 01 Jul 2026 12:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908379;
	bh=6U8qyAtoRk6zfebFsCreBngXodNPxMwN+SziVE1Uwbs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=dIFIZq4lbugLOkcJxlmXQ3IhxmmKoF0dhswwwCRmWrj+PxQN4ZtPH/WSHwcjsnz0s
	 N1kJ3QNKJAPB4hgxALKKBd/bk4bbXpk94EYSq7+AjO7uIflKUnomf/pQ16Rygpq61N
	 ALT9JdVs0Oy6R4WB1v1BaMnzCwXCTRKhLNIM4O5UstRojg5sfcnSFdtoa5+nSPaQlw
	 Hmn6hmgYln5R0vKwjuLDxJaAHWsL6LJDFTxuiwL8vXEmbii3yWb6+EqxWKzzpzpVB0
	 Ou0rNGB41Fx0wWSqatWiBA0Klp7dympLbSOY89vQ+h3MG6YwJVSEs63muhE8+bhGbT
	 56oeEqU9rQp0A==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 22D1D17E0CA2;
	Wed,  1 Jul 2026 14:19:39 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunfeng.yun@mediatek.com
Cc: p.zabel@pengutronix.de,
	chunkuang.hu@kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	granquet@baylibre.com,
	justin.yeh@mediatek.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 1/2] phy: mediatek: phy-mtk-hdmi-mt8195: Fix PLL calc divisor overflow
Date: Wed,  1 Jul 2026 14:19:35 +0200
Message-ID: <20260701121936.19407-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701121936.19407-1-angelogioacchino.delregno@collabora.com>
References: <20260701121936.19407-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_051941_857671_CDB03FA7 
X-CRM114-Status: GOOD (  10.37  )
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

When trying to calculate a PLL rate for target display resolutions
above 2560x1440, 24bpp, 30Hz, the pixel clock value will be more
than 32-bits long but the division to finally calculate the digital
clock divider is being done with div_u64(), which expects a 32bit
unsigned divisor.

Fix the overflow by using div64_u64() instead.

Fixes: 9d9ff3d2a4a5 ("phy: mediatek: hdmi: mt8195: fix wrong pll calculus")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index 1426a2db984d..e6ee8e080022 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
@@ -290,7 +290,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
 	posdiv2 = 1;
 
 	/* Digital clk divider, max /32 */
-	digital_div = div_u64(ns_hdmipll_ck, posdiv1 * posdiv2 * pixel_clk);
+	digital_div = div64_u64(ns_hdmipll_ck, posdiv1 * posdiv2 * pixel_clk);
 	if (!(digital_div <= 32 && digital_div >= 1))
 		return -EINVAL;
 
-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
