Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D2D7CCFA13
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 23:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y8C0DM6iXsHoZeRg7DqQoaugILJ2RucrqO2F/38zYsA=; b=DIZC2S7N1Y5o8r
	vfUlZTwczjrvrZ6abJKMxxvsM0EsHNmGF5oKG/OGp55WI8vnGyeWFMcDVlbJCwVaOF4+KpIvIk3ur
	Sg40hbhYr4NWQYv7GkhpxraCjMFTLr8toX0tm6ka0OrxqADiPW28zwohHgXLhklAzlgrLMzlt+RJ1
	dsrMpqWzumOg/Z1f3Rli5h9+UXWeRl3o7hTaB70UK5ofisocllbhh1VH/XQQD/1fN3wGWTb/yahbW
	WtAPQ+VbO1hzWMWIw56nXxkknLqxaLtEAKi4C+5UqJtLjNMyEVu0rzz46MiIToblQTy+r0DzcEV+J
	L4O8eLxWJhSQamjBi7WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NZ-0000000GNAw-3NkU;
	Thu, 06 Nov 2025 23:26:57 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NV-0000000GN5M-3wjp
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 23:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471613;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r9SkuM/Zk54theYuUVPDuK/7cbD+hyZrLpLiRrTyy7g=;
	b=Iee1nDl3YvDzn3k1NbkeaV8bei06jIM0sQLQBT08pxcMW7jeXuGWd9hKzdm1J424TNdpCc
	zWBrUm6PKshOvTV3Vz9Uj1ORNyDsdtxiri5iZBFP/q2gcafwavOrQ+YuC1L+YL4LE+aqCI
	Pbftxkd1OLmigUbtJcBkwkSFBxP6/Ws=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-158-40kYrPLpOWuQHkvyXNCdpw-1; Thu, 06 Nov 2025 18:26:51 -0500
X-MC-Unique: 40kYrPLpOWuQHkvyXNCdpw-1
X-Mimecast-MFC-AGG-ID: 40kYrPLpOWuQHkvyXNCdpw_1762471611
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88022ad6eb3so6543276d6.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 15:26:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471611; x=1763076411;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r9SkuM/Zk54theYuUVPDuK/7cbD+hyZrLpLiRrTyy7g=;
        b=Fd32PHV5DBCOyvo0wIqFDvuyJcqd5QidHo4886tE3j4e2xMWVgMHlC2I3vn6fLLFYt
         TTN3s8cYBfs7nnu3vVOHH8NuWaFxPUUtkS2Vix5N9TGGMH6lGawC7TT+BVy9kBXWbiDU
         cSIOAIeWgHvb91jQWPrswbyKWtddWuW8uhACbiBY4f2q+o1Zb8FrcoN8weazawqPLe/H
         Ix1jN77uqZH5vBYsKpz2Z6u/T63UP6ceiGWUKkI6zV8l1z/jymOtruIwc4WbUBaG7Eh/
         MK6gzkNOBNQ1IF65uFiiXSZJmv+TOlICesbtjlcU06/YUJVcTDuDucIk6IYqNwsulN3k
         MvuA==
X-Forwarded-Encrypted: i=1; AJvYcCWaOVvV10wwkQvudaqneaGhi/102PybqinNYIjfm4m1ETXhvfXwlUqje2DssuZaXiQ5G+OG6bcnFjE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/z9LaMo4nR3BDP/GE7b6gU3coUNlkWIGvZ1AsktetTZ9bvRs5
	cIlyVPtKOHV74OK54xr6pRwfdf3flNWTzPQ/CvSclzQpKHXWbdCwiJ70cigbqzbGX0/DcyJYY+N
	ewAfcIzOccii2xlVcCVw3zVfRUylS+xtFZBDjPr0Oe+Lgqa9HHtYMi3xsaB7iS1YkDPk=
X-Gm-Gg: ASbGncses05k1oQ9Ddvrl9aD6votIb/AWgj2ENZAy69UQbBJ1xjI+09ILpOZI9nAD7K
	xCYEYEP13KIkRHGhtJVd4e3rXxiJ7tLg4uaT9H02YigRt3irji+ffxRCWWO1jFjkN/VLtze9RxP
	mRax9jSGybn4eDiorx/2bayDI2kzr94NwBvszUkEz3yuYwyg0YQ/tSaCd9ADJ0svJGg/B9XKZGc
	zUz4U7+foc/y6NOXuugRxGnuj7Rkelh6OJDQ5bLjPrpkhi/B9CihNWKx2ZQp4VH/7srd6dkf+/P
	5ycS9HnKaKkzMXHXhPKgBIb+AjorXNzm3VaP9+evwQP9x/kOneouQxXuBHVnlGgb3GhwnSVfOgw
	0eDveG2G3i/DZeZnm5fHpMubGIXoazubAxmGDjcrGUQ==
X-Received: by 2002:ad4:5ced:0:b0:796:5c30:b079 with SMTP id 6a1803df08f44-8817678d8e7mr19319176d6.43.1762471611228;
        Thu, 06 Nov 2025 15:26:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHSlSEV9dAuqFzCy0/F84dwpJ0FkW0yEvyVdQS2BVlZV8mmVJOC9OLuQQBUQWU2sDVef6rnHw==
X-Received: by 2002:ad4:5ced:0:b0:796:5c30:b079 with SMTP id 6a1803df08f44-8817678d8e7mr19318886d6.43.1762471610821;
        Thu, 06 Nov 2025 15:26:50 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:26:50 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:50 -0500
Subject: [PATCH v2 RESEND 4/9] phy: mediatek: phy-mtk-hdmi-mt8195: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-4-e2058963bfb1@redhat.com>
References: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
In-Reply-To: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1601; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=9vVtfY2SWJyaK316COu6cQ1f5v68xmVdCSUMuW44eRI=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RYoBp++/m+KnEwCw2Xzg4JMM1sv5LqlTfM8z3Ft1
 oPpKx5c7ihlYRDjYpAVU2RZkmtUEJG6yvbeHU0WmDmsTCBDGLg4BWAiTXqMDOsmKjWITF6W1vcw
 Rsfl37GwV6cmCusab9l/nnfG61Oh2ksY/pdXORfMfrL0V9JrDfar8z4f2SCwtyM0bMnTN+tL1n5
 89IIZAA==
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: SltZR2HuhMlJiGAmDw1NVSDd4qxvgqasq_PdB5cGr30_1762471611
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152654_062846_1C79BC81 
X-CRM114-Status: GOOD (  13.51  )
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

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index b38f3ae26b3f3d8c9e73b43d86510acf6cedb471..1426a2db984d53b91125b18f7725738c44f19555 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
@@ -418,13 +418,13 @@ static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 	return mtk_hdmi_pll_calc(hdmi_phy, hw, rate, parent_rate);
 }
 
-static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long *parent_rate)
+static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
 	struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);
 
-	hdmi_phy->pll_rate = rate;
-	return rate;
+	hdmi_phy->pll_rate = req->rate;
+	return 0;
 }
 
 static unsigned long mtk_hdmi_pll_recalc_rate(struct clk_hw *hw,
@@ -439,7 +439,7 @@ static const struct clk_ops mtk_hdmi_pll_ops = {
 	.prepare = mtk_hdmi_pll_prepare,
 	.unprepare = mtk_hdmi_pll_unprepare,
 	.set_rate = mtk_hdmi_pll_set_rate,
-	.round_rate = mtk_hdmi_pll_round_rate,
+	.determine_rate = mtk_hdmi_pll_determine_rate,
 	.recalc_rate = mtk_hdmi_pll_recalc_rate,
 };
 

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
