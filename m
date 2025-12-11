Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC80CD4335F
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Cpwjr5Kpn3mfRvyGkisIzD53u1pOWIeprKeKw+25yw=; b=QxXjFfcgCO2mnc
	rOpsQ1hY4Ea49yeja82FY6uNKHJpzNToC7Dc++d31xF0yp/825ihQDgHU2sw/qCpU8zuttx8fOR0q
	TnziduOHgn9hN1/ckk679FHrhSlhPc0efw8HmzNJhujoOhcqFJCF/Yf2WroezfsETZTbjVtTPns9f
	6YHsdnTVfyuA38BshwTtbywlNExUyEqixk790r93+2VKZKTBs6KrZvqdCIeLVZ9bwAvKc01hZ2tt0
	5tw/+zKQXk7CNrlR7XOE9KF7XUxxBr0VW7gn9AOHO3+fxpE5KWYZUWsTiyGFVI71NOvJKxCqR81p1
	QPxIrDhwgGz+81lKWK8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpus-0000000HPQ2-44lq;
	Thu, 11 Dec 2025 23:17:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpum-0000000HPGv-2yY7
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yGIhcNn4hSdtEtR/SXkjUWQp83NGU7A3xjzPvcHPB5M=;
	b=BYDHNO6cji9UF5K06vYu2iGM2W7Dwi7WJhKHV0EVlDpoOJ7NwLv9UhrP1QfaZRPllj8HhE
	msJWDH8KhSNUi5JMsJMd6uGv592I/sGCqpz447XtKbEXkx4P3iaOOpM3yDtYf+IUX71L+d
	CBke5HmQDH9dyXfKDAGVVtfmdojUD+U=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-106-4FXCRi1AN1uYFHN8NAIPfQ-1; Thu, 11 Dec 2025 18:17:38 -0500
X-MC-Unique: 4FXCRi1AN1uYFHN8NAIPfQ-1
X-Mimecast-MFC-AGG-ID: 4FXCRi1AN1uYFHN8NAIPfQ_1765495058
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b286006ffaso152877985a.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 15:17:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495058; x=1766099858;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yGIhcNn4hSdtEtR/SXkjUWQp83NGU7A3xjzPvcHPB5M=;
        b=mGeQN3UIVNYKbGWJgdmWUrttuZNx8zGajPis+Ef/PmaF8u8SJUht+N9nZ97+0geKZo
         Uwx3DeiOAonyTbgZgHZRp7h0cFXEoaA3RJm7IO6mF81ET9LZYXYGOQkbTT5Cr+WVNHgX
         T5W7kD0eLR+X59Sbqd6lynON/oxq4r89LHtQjwTLI9172cY4HkpKhGrzCtK0eXMLt8Az
         dU/ycx6jWoeSw1dw8DpiYPLnclcOzweBbGQcleyujojcjq/S9es7Jl48JPB3ofsLO6cj
         Su7qoBgivhZjY3I+biiYb14rzVxeozsdfHanrLM0Sdgl90d0IrXnBOTmDpNvBg1DWJL7
         zosA==
X-Forwarded-Encrypted: i=1; AJvYcCUPSXF10fQ1WtkZklBppmY+rTU5kWP7b9xD8/75Y7qwaea4XCRuNbEuIpDPVVGRagfXu/UlRsLdW6c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4EQKFYGsKUy5+2A1UbSmoqxtBK39r6eksvVP9t2jV0liH5OA9
	awcIE8Cd7ncayTGIIDZe/LemS6Q91zXHB4lAHHUKLta2Qzzo8pDhyDA0EXam4OIoU6liJZppsA9
	k4BUHYTk0SLYA14ZICt0g3Ji7t1/t6h6bh1QbRqwnMQlKH3AymHupkuA7xkDgnDu5cWo=
X-Gm-Gg: AY/fxX6kEvAZ3VYNFJW0d3zibB8gLpODWTyfSLO6hmrPx2kZXxoOg809YVvMtH516Q+
	iOR6/GLWlKfLgJTXYFOKOTN/z3VZ6ONmqSfi9hBXvxITqrZyP+KrBAvwAx2HmQs5D9/k2PA1Sg9
	4HZwdfKwOXJXIaFXOzkuNslXcRS9FJcDLEiPXDMrYGG4CLGpUwnx3v1fxu0+x9WCCHwy+SKhaKB
	MfnUDUNOG9vTlzosPJ06d9msungBFuT81Ha8nZFZuy6UZqVuFADHfwbKyl3AEA8gGHu6E1WyYf0
	ISdn6KeX8jPlHbSZ0JR0ZsUVLYda9gK3IL0AmR133Sm658RmD/WVrwRP5HUvvqHnuYBajv3YjzX
	mYJAGDpjDQsehU2ml4cvgfTjzSH4YxAiMv5pnUFN0QlQJBV+LGnt5+w==
X-Received: by 2002:a05:620a:4143:b0:828:aff4:3c03 with SMTP id af79cd13be357-8bb3b358530mr24779685a.61.1765495057887;
        Thu, 11 Dec 2025 15:17:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJ6MyvatEvjXLdrucEm3djvv+DCSWYW1g1m07kDWXIN1ABKw8EYPVfgJJ5sUpqpKlTIcYAIw==
X-Received: by 2002:a05:620a:4143:b0:828:aff4:3c03 with SMTP id af79cd13be357-8bb3b358530mr24775285a.61.1765495057473;
        Thu, 11 Dec 2025 15:17:37 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:17:36 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:26 +0900
Subject: [PATCH v3 8/9] phy: rockchip: phy-rockchip-samsung-hdptx: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-8-beae3962f767@redhat.com>
References: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
In-Reply-To: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2646; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=1Db9NFuUnQhQu9U41X5Z8TkxHRghSnvnQHsnP4RTW7s=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy6tv/mBQ3J1ntD97t0PtZ/sXbDtX8XDgquXTd8ZR
 upqaUakdJSyMIhxMciKKbIsyTUqiEhdZXvvjiYLzBxWJpAhDFycAjCRI7UMfyW7Kk4WyCmZJybt
 XVSS8SzsoeutV4+lLCYXcK7IPTTpxzxGho2HvrnXvlrEFdS08UIvr5StzpeJsWwOEuUlB2Zv/XN
 BlQ8A
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Mq9Mw59iX-5HFKbZiV9zahPBo00H5XWUlOI1hJoRkgI_1765495058
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151741_548088_CD23B399 
X-CRM114-Status: GOOD (  13.41  )
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 29de2f7bdae8a31958e31b0a64281532fd76e64d..315ac97f52d8af6d3010dc87788575039c7a6b40 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1870,8 +1870,8 @@ static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
 	return hdptx->hw_rate;
 }
 
-static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
-					unsigned long *parent_rate)
+static int rk_hdptx_phy_clk_determine_rate(struct clk_hw *hw,
+					   struct clk_rate_request *req)
 {
 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
 
@@ -1880,9 +1880,9 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * To be dropped as soon as the RK DW HDMI QP bridge driver
 	 * switches to make use of phy_configure().
 	 */
-	if (!hdptx->restrict_rate_change && rate != hdptx->hdmi_cfg.tmds_char_rate) {
+	if (!hdptx->restrict_rate_change && req->rate != hdptx->hdmi_cfg.tmds_char_rate) {
 		struct phy_configure_opts_hdmi hdmi = {
-			.tmds_char_rate = rate,
+			.tmds_char_rate = req->rate,
 		};
 		int ret = rk_hdptx_phy_verify_hdmi_config(hdptx, &hdmi);
 
@@ -1897,7 +1897,10 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * hence ensure rk_hdptx_phy_clk_set_rate() won't be invoked with
 	 * a different rate argument.
 	 */
-	return DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.tmds_char_rate * 8, hdptx->hdmi_cfg.bpc);
+	req->rate = DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.tmds_char_rate * 8,
+					  hdptx->hdmi_cfg.bpc);
+
+	return 0;
 }
 
 static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -1927,7 +1930,7 @@ static const struct clk_ops hdptx_phy_clk_ops = {
 	.prepare = rk_hdptx_phy_clk_prepare,
 	.unprepare = rk_hdptx_phy_clk_unprepare,
 	.recalc_rate = rk_hdptx_phy_clk_recalc_rate,
-	.round_rate = rk_hdptx_phy_clk_round_rate,
+	.determine_rate = rk_hdptx_phy_clk_determine_rate,
 	.set_rate = rk_hdptx_phy_clk_set_rate,
 };
 

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
