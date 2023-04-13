Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF327C77B6F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Apr 2023 12:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eht4FbG3Gry8IyFodOEsRtyabL+kiJTSZSj2q50pmg4=; b=4ywMjIdn5qOJak
	JxKGFj3XKMoDXVreACvIiLeIg3BGv9qVq1huezxAfFRRUyz33ayU3SmtvCLdzccXhlvbgEO4e+2yz
	d0lqz54e1NZPogfsZCMvA6CleOsl8DP37lvL5Qkl9WdaslAnnm7rdZ1QGXIVrqIg/pTEAtGdUWQyk
	g+9UhhVgRNgfJg4Dq8QDiuWdC3JfaL2MqH+jSxgK3eRCnmlmnZvBTeDv0LZ+jPs8C7DSlM1rlW5Sd
	1XGUBPMlRgUdooNPyF9+2ckKGysXrHkY0Iz2lirFE3KIy71SBHY2Qw0cl+PXhZwVsmBFiaFdHwbBX
	nVETkU0/VgscF74FvoPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmwQc-006AiG-11;
	Thu, 13 Apr 2023 12:51:54 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmwQS-006AbB-0A
	for linux-phy@lists.infradead.org;
	Thu, 13 Apr 2023 12:51:47 +0000
Received: by mail-wm1-x32b.google.com with SMTP id he11-20020a05600c540b00b003ef6d684102so6270189wmb.3
        for <linux-phy@lists.infradead.org>; Thu, 13 Apr 2023 05:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681390301; x=1683982301;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2NCSyvdX0SmPc9ExxsTpFJ2greUOcRi/vLBExtrGuM4=;
        b=VRVY6mW4C2eeH9XEL2rXf4kib+8LepoYm141EhEj4bMvddMWMZfWEbDgkVd2Fj86U+
         8XY43D+8ZnAkl+qpBUZPKykNENQ5Z2zTtvwwxjqsxoLGyN15QkzR6S/slTv51nhS+vNl
         5N3LR05EDvlN7cCZXDgERRZt6CthgOTM29OhPCTT9PWnp1NrXTcfWWrHxW1KAqIMjTR4
         QTTV9BH7BbOjgf1NeAgQSVmxdmGAnc8+GnrYry1RvKBlEC4Y5TjIV8VspCoEIef/ZZQk
         1JjNRHshJN85qXDV3vS/7/8E/HuDtNGgLzT1FUNEo0/qZmBLSorW4icPeTmIb4cHsuYq
         tUcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681390301; x=1683982301;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2NCSyvdX0SmPc9ExxsTpFJ2greUOcRi/vLBExtrGuM4=;
        b=TN5vODYz3YmGkfymitOBoOmffbyLu9SWG+V79+yNjFX9WlLb+mFlmP/42SfUaUaGlB
         DrQ7oUUDGzS5IcWUy3ELhIHsY+Ae/ORK+pnCC3sf17tpBFqdZsQp+y1sIE4a8QF05wyT
         dxdmVupafgU2mlLZmLKGdnmpv3N8z58FEqQm/F9xcn06wCiLiNWUx3W5lh4w+R5cbldc
         zyHvzxH+/ymwG6IDFl+3iBzrV3w/xGhJSTE2vugO1hrbnmvtfZEyTNMEaijTViKcQDiO
         BKJp3Ul0sf61CXfLhfAlHYxLtx+lH60kej/ALQjnGPAQYTd4UDf62drq8+k4I0ZeZrqR
         k7bA==
X-Gm-Message-State: AAQBX9dnz0/f+PvuFSz+4jMRSeTi4VshyqyREM/XACedcUfjs7YPgtrg
	Ergz0HhNHM8w1lGw8wmdrhFc2Q==
X-Google-Smtp-Source: AKy350aa1i5mgrVePFwrBlQob6A/5LRh1D6/2011CW+4P/unl+t6yKRaDKzFUe2AB+mGY/qtrWZ6aA==
X-Received: by 2002:a1c:4b0b:0:b0:3ef:4138:9eef with SMTP id y11-20020a1c4b0b000000b003ef41389eefmr1450843wma.36.1681390301230;
        Thu, 13 Apr 2023 05:51:41 -0700 (PDT)
Received: from [127.0.0.1] ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d66d1000000b002f67e4d1c63sm156356wrw.12.2023.04.13.05.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Apr 2023 05:51:40 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Thu, 13 Apr 2023 14:46:26 +0200
Subject: [PATCH 2/2] phy: mediatek: hdmi: mt8195: fix wrong pll calculus
MIME-Version: 1.0
Message-Id: <20230413-fixes-for-mt8195-hdmi-phy-v1-2-b8482458df0d@baylibre.com>
References: <20230413-fixes-for-mt8195-hdmi-phy-v1-0-b8482458df0d@baylibre.com>
In-Reply-To: <20230413-fixes-for-mt8195-hdmi-phy-v1-0-b8482458df0d@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Guillaume Ranquet <granquet@baylibre.com>
X-Mailer: b4 0.13-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_055144_400786_6E1F3BC2 
X-CRM114-Status: GOOD (  11.09  )
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

The clock rate calculus in mtk_hdmi_pll_calc() was wrong when it has
been replaced by 'div_u64'.

Fix the issue by multiplying the values in the denominator instead of
dividing them.

Fixes: 45810d486bb44 ("phy: mediatek: add support for phy-mtk-hdmi-mt8195")
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index e10da6c4147e..5e84b294a43e 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
@@ -271,7 +271,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
 	 * [32,24] 9bit integer, [23,0]:24bit fraction
 	 */
 	pcw = div_u64(((u64)ns_hdmipll_ck) << PCW_DECIMAL_WIDTH,
-		      da_hdmitx21_ref_ck / PLL_FBKDIV_HS3);
+		      da_hdmitx21_ref_ck * PLL_FBKDIV_HS3);
 
 	if (pcw > GENMASK_ULL(32, 0))
 		return -EINVAL;
@@ -288,7 +288,7 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
 	posdiv2 = 1;
 
 	/* Digital clk divider, max /32 */
-	digital_div = div_u64((u64)ns_hdmipll_ck, posdiv1 / posdiv2 / pixel_clk);
+	digital_div = div_u64(ns_hdmipll_ck, posdiv1 * posdiv2 * pixel_clk);
 	if (!(digital_div <= 32 && digital_div >= 1))
 		return -EINVAL;
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
