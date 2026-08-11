Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26302C5CFE7
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 15:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeMUa7E5jrnsNyG+xE3uGUJIPvFWrVcmpCDvZa0IsqQ=; b=FbwSE/w4ZiH50P
	0AXBYPT7izlHjqRZ/ruO3RiEEAm4ObtTerU31Gri1/3Tq+ejaZDEWoGbR0Wm4Z2rsX67od2Kw+0js
	itvWneAk2vqsno3CLo7zsR+fHgVXtQ+UTHh745+N7yC/bibu0vq6LkUbJGCw+FTwDOqGEgA3Blq0Z
	k8Ey68IcPRjD/aSBdztakvqQTd5pPCGRpo28O8Y5sg7KhFiPTH/TRUQ5Q/TJ7lHTfsn8F296TwngR
	u1k7R0fovqCEVaSiHpP2FmOcXDdaUcdco5mZLBVvuJ4MI+6lvdHVLNd0tS4QxfygolyBxlq84uK/2
	RltzEtyjClWX0g4sag7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtofQ-0000000EN53-3MEC;
	Tue, 11 Aug 2026 15:45:28 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtofG-0000000EMu9-0rcL;
	Tue, 11 Aug 2026 15:45:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786463115;
	bh=JrjgPlFwi26yKa9Z2MTM44ZmRoRQNcIGk1d1iLJWgQc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=psuX1ImC2BZQXuaPCDNjziMqtK7cN+4Ehv2OgPeDH0FvhYIQBhDZKzLG0+N1QdoI+
	 7jF3veEighPseK81l+MEynHElxAX4oB0aUMCzw6E6egMTVEFXAG+RdJnrVk+6LZqi2
	 dke/ZuxYTnDr7d6Ok9kLVaVYckpCrPEDQH2wsrA8v+FgWRSCzqFVkvmBxETqJ8Cjpz
	 QAb390q7ZjkgjSkomVpA6z0XRO8vrq6OFKKAmxT/9Tcrt28+SQWAJ0QR0cXCQhXVyV
	 WtUVRQNjkqT/u/IOZBz4QLPTRzOdcdk9wv3pjxIviec09l2G5KoB31WSLGAaijqOU3
	 +Btl7J+dZjQMQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7E30A17E0E01;
	Tue, 11 Aug 2026 17:45:15 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 11 Aug 2026 18:44:44 +0300
Subject: [PATCH v6 03/10] phy: rockchip: samsung-hdptx: Guard against clk
 rate integer underflow
MIME-Version: 1.0
Message-Id: <20260811-hdptx-clk-fixes-v6-3-75bca0ee5753@collabora.com>
References: <20260811-hdptx-clk-fixes-v6-0-75bca0ee5753@collabora.com>
In-Reply-To: <20260811-hdptx-clk-fixes-v6-0-75bca0ee5753@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_084519_347562_2F1D8020 
X-CRM114-Status: GOOD (  12.73  )
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

The 'fout' subtraction in rk_hdptx_phy_clk_calc_rate_from_pll_cfg()
could result in an integer underflow, if the hardware registers are
misconfigured or contain uninitialized values, such that the computed
sigma-delta modulator offset sdm exceeds the base frequency fout.

This might lead to an absurdly high clock rate being returned to the
Common Clock Framework, with unpredictable effects on downstream clk
consumers.

Provide the necessary sanitization to avoid trusting the hardware state.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/all/20260611235702.0E9691F000E9@smtp.kernel.org/
Fixes: 3481fc04d969 ("phy: rockchip: samsung-hdptx: Compute clk rate from PLL config")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index d67ced2bf7b2..3a65c26f3efa 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -2285,10 +2285,20 @@ static u64 rk_hdptx_phy_clk_calc_rate_from_pll_cfg(struct rk_hdptx_phy *hdptx)
 		sdm = div_u64(PLL_REF_CLK * ropll_hw.sdc_deno *
 			      ropll_hw.pms_mdiv * ropll_hw.sdm_num, val);
 
-		if (ropll_hw.sdm_num_sign)
+		if (ropll_hw.sdm_num_sign) {
+			if (sdm > fout) {
+				/*
+				 * Similarly to the case above, it is expected
+				 * the next .set_rate() will help with recovery.
+				 */
+				dev_dbg(hdptx->dev, "Invalid ROPLL hw state: sdm > fout\n");
+				return 0;
+			}
+
 			fout = fout - sdm;
-		else
+		} else {
 			fout = fout + sdm;
+		}
 	}
 
 	return DIV_ROUND_CLOSEST_ULL(fout * 2 * 8, ropll_hw.pms_sdiv * 10 * bpc);

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
