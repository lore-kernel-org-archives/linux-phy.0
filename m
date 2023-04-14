Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB024C77B6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 07:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=105lHOgFG7Of5byzze9suM/drhgOWo+adkn3ZbacFsw=; b=Qsu722t94ajfQM
	ySc1rAgT/y0omAq3RCgXfQnPfirXaRM1v4GUfhYXRc/rrVdCRF1vSlGMQdzSndIU8YMP3HIXqFbOd
	puIrQzzAzgMXz9CpQiv/mrEuLYX7SVLpWnfGCIFTX7uXm6hpGdANaJeOxUQWKr8/Hu9bXQ8C+gwif
	Tx7j7s5FurlELAf3SsUX31JfimiD6gXabSXLpepUGiokIVVzxbNpxNB4/53grfPowLh35hKkehz+f
	PEmD5tX1ivpVAULJ6k5nCjhfkeQYfNI+hYpLtRBlLmzQ4a95LwPPYNyj3gGUP84PyYGKkrcxGlnA0
	b/K3Jgzh/PJjablht9Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEKg-008cYq-0c;
	Fri, 14 Apr 2023 07:58:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEKa-008cWc-0r;
	Fri, 14 Apr 2023 07:58:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 50B3B61DD8;
	Fri, 14 Apr 2023 07:58:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92945C433EF;
	Fri, 14 Apr 2023 07:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681459130;
	bh=5IXMcCGZ5JMUwrrA2+vd6giEvp0O8L09VYAkdAhZsTw=;
	h=From:To:Cc:Subject:Date:From;
	b=Mntiwu7gm5T9qziVw/XFrrGwzP83mt84k1p0nFbBAVFh4ROMAY/VmWpKGdWRtiDky
	 b8Xdu79gmgHLr3U6Yix2WfUZnSY1wDUQPCLumHiT5Y5DUs8dPO7bdWRsmuDmU1k9DQ
	 vVAx9ctcLeKXVdcXCdBAcZg/w9XOFFYYksIYLwVJOwn+MxQwTJCKp/4jHeROaVLHsx
	 aXnkhPjETRgl/agW0B4VKJui0zID/yfc7ruOsmRpTcMVQ4cKXBqfqbapZGgUs7rThW
	 drTwjCJfkrqWgyq1zIvIUA9bb1T3sJ8T+w2G4d+8rAcIroTNDQPD6rZTvpnWhUeGe1
	 nrC6ivOmY2E5w==
From: Arnd Bergmann <arnd@kernel.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Guillaume Ranquet <granquet@baylibre.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: mediatek/mt8195: fx mtk_hdmi_pll_calc() return code
Date: Fri, 14 Apr 2023 09:58:26 +0200
Message-Id: <20230414075842.4006164-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_005852_341362_01BD4742 
X-CRM114-Status: GOOD (  12.76  )
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

From: Arnd Bergmann <arnd@arndb.de>

The newly added function returns an uninitialized variable:

drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c:298:6: error: variable 'ret' is uninitialized when used here [-Werror,-Wuninitialized]

Wire it up to the return code of the function called just before,
assuming that this was the intention originally.

Fixes: 45810d486bb4 ("phy: mediatek: add support for phy-mtk-hdmi-mt8195")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index abfc077fb0a8..c8e540665fcb 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
@@ -292,7 +292,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
 	if (!(digital_div <= 32 && digital_div >= 1))
 		return -EINVAL;
 
-	mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
+	ret = mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
 			    PLL_FBKDIV_HS3, posdiv1, posdiv2, txprediv,
 			    txposdiv, digital_div);
 	if (ret)
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
