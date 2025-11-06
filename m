Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 745B5CCFA19
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 23:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvBrz+GdWl134E9DLHx3GyBwvd3v1Uh0tk+V37LlooE=; b=BsjegXR9LShvSO
	s3hhM7ZitjPYqAlvTUXHgU2hPpVWL1hnW7JWJsRqqpLKcm0gYROGUN/ycqbHY9hGnCoJsBoAD/5ph
	Oidmn/NlP2V5x7CWNBCV7bcUKhkObiqZ/Caewj1xAYeeUJvYDc2eosHE5lp1pj3q1+i3mSq5jlH7d
	BGSEfMGpZyC8+KA8GRLKbnudFWKOOXw8JXXwE2/p/KgHFyuzl+jQTcsASyyidnL9PMlBoNPzBaIyX
	30bdUVkhnnc5w3N7h9k0HUSINZf91EE42iF6DFwWXDhkwey0ADUkvXwC1ZKSwVOEwomxjJVt+Bfxu
	lEtaPnMhTZqgQ7te5wdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Nz-0000000GNqE-07Xl;
	Thu, 06 Nov 2025 23:27:23 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Nv-0000000GNiz-2ZST
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 23:27:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471638;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9L/sBg5p+zCSkuU8Rgk43t0p2SpxKRb70QYldBV7fzA=;
	b=M0/4RRD73TOjOC/srL/Zti/d6viNCFQvtfaa9Xoq7aGJau98zKpF8t6uqpZMsdzPrL4fGF
	HsGKd0baB9Gi2GuPLRf3mLgnNEUHQYnmhEUUgAwjGsOFY81lI8RvEnxKBKpDwO0kXh6gUX
	5/PKn77fFbON30fUt9NrWZQaUhZGec8=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-575-Nq1YK6s4NkWNOY9ZaJ6ymw-1; Thu, 06 Nov 2025 18:27:17 -0500
X-MC-Unique: Nq1YK6s4NkWNOY9ZaJ6ymw-1
X-Mimecast-MFC-AGG-ID: Nq1YK6s4NkWNOY9ZaJ6ymw_1762471637
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8804b991a54so6426116d6.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 15:27:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471637; x=1763076437;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9L/sBg5p+zCSkuU8Rgk43t0p2SpxKRb70QYldBV7fzA=;
        b=QBVzyc5osTNCZfrhTOJnwJdt0sfJ2DHBM/lYrfj33CWWKCxDDkk+Rj2rokhmS0eIyd
         oODChgkWGlPAQJ+c0GGw4SYMqgqKeP8A+6lKwPw+7W4vLrAdD/mufl+q58rk6UarZAFf
         LUCeeWzTBZQP4cZQb80KMQ9iD7NOFrYUQA3dvEu9DzwsgDIH2OzWJHzsexd2VvwGWV1l
         n5FzmL24nWNeK7bvZUxXCD68MHExCu8TepKqm2b4lhLCmgSqGGtmOu+IQWC0/skLks4u
         k+Q2RmaMZKmtuNaUmdQIyZBf4RyYvXAccvIvz/6PaHjUcfyLULGNpOjn7QiTaAMZ+bZ0
         83Zg==
X-Forwarded-Encrypted: i=1; AJvYcCV3u66Dl2cF6bJiT1kv+VY9Fs0QVKNo/dNmd2Pna1rES8N9JdIh/DRWGREyztngDFPAdxqPLueeTT4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcRKXmJ+Pej0T/7mt4CWBS1xnOeDgnS29oQT7UcTqAcLcYbK4J
	JLb2yvk1xONeKj7du1rOlCtVfRcTXzKsS8g1FecpABKK5YV3gIkR6aV5KK2UeV/cm1Az+Wgzj4P
	XPJJ939btJddgOoYygBjQ+bhLc8yBq53l9KAFXTZuVZyFNVfbNJkwYhcifxcgcyNQevA=
X-Gm-Gg: ASbGncuOSwqvYql1mdZt9ersgf2tXuYRJ57m0G+fY4ylZ5iN3kAgfLeyimHonVdueP3
	5ZH1REW3jkAPnvfmilltpMhgJZ9XrA5xRsk99xLFxE5ejdI2aEuz94Vf0b2OEiT1jBBPjQPb+e7
	wVwwEEaF4u8w+lTnDRxtobQuKyCQkj/HdbBb6CdXiTupmEqYlX5ftD++vfhXLVZBnHXzTD/kzSJ
	vYlhWGp1h0bM5CdpFcEiuMQCJnZ8f2WCBJk/D7Cxv+3PlHCJA9O4kQ0FQUCzQVET++ZFeiADY+i
	97WlnoY1qXpKqgNSKIxcS/Nfc9onrePPKJXiAji6pekYcJ2ngzeRKU6D1GNCpHMMgj+jyOOllvQ
	Fb07027tSI2uAZnOmNeJkP/WEwxNiEgVJeP/GKg9qKQ==
X-Received: by 2002:a05:6214:810f:b0:882:2b58:af05 with SMTP id 6a1803df08f44-8822b58af3fmr5877196d6.48.1762471637089;
        Thu, 06 Nov 2025 15:27:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1XCrROxUSSUDeHa7EYXOjY7BlUSEU+1KN5k26BLJ97420LzOY9XBUmBbdolqjriVUn6gaKw==
X-Received: by 2002:a05:6214:810f:b0:882:2b58:af05 with SMTP id 6a1803df08f44-8822b58af3fmr5876876d6.48.1762471636685;
        Thu, 06 Nov 2025 15:27:16 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:27:15 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:55 -0500
Subject: [PATCH v2 RESEND 9/9] phy: ti: phy-j721e-wiz: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-9-e2058963bfb1@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1629; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=9iXptdlJzmQYbdsB4jJh8DRjbxMfRMBdZBM5EQuFpPo=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RbO/3Cz6ImvwxqVjjs9Zh9cXkt4xi/3tFVrrZvCq
 FzoYa7RUcrCIMbFICumyLIk16ggInWV7b07miwwc1iZQIYwcHEKwETctzMyrN97Xj/FqOTyx8Oe
 BVe/fe0KOWr9ZnGj8AlvNc/C2uUJqxn+p125kiPwTLJszq/Ph01tT7ZsTxc15DEN4BHV5fj7Yrc
 TLwA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: TbO96FcYxkPAgACqMAURfRI_pb2yWzw44V434zY3d98_1762471637
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152719_810223_9A709F37 
X-CRM114-Status: GOOD (  12.15  )
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
 drivers/phy/ti/phy-j721e-wiz.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index a8b440c6c46bb0c754845655f9c2c0ba6b435b8d..cbc98d4dec74560e6403fb899ebe2bb916440f45 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -934,12 +934,15 @@ static unsigned long wiz_clk_div_recalc_rate(struct clk_hw *hw,
 	return divider_recalc_rate(hw, parent_rate, val, div->table, 0x0, 2);
 }
 
-static long wiz_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
-				   unsigned long *prate)
+static int wiz_clk_div_determine_rate(struct clk_hw *hw,
+				      struct clk_rate_request *req)
 {
 	struct wiz_clk_divider *div = to_wiz_clk_div(hw);
 
-	return divider_round_rate(hw, rate, prate, div->table, 2, 0x0);
+	req->rate = divider_round_rate(hw, req->rate, &req->best_parent_rate,
+				       div->table, 2, 0x0);
+
+	return 0;
 }
 
 static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -958,7 +961,7 @@ static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
 
 static const struct clk_ops wiz_clk_div_ops = {
 	.recalc_rate = wiz_clk_div_recalc_rate,
-	.round_rate = wiz_clk_div_round_rate,
+	.determine_rate = wiz_clk_div_determine_rate,
 	.set_rate = wiz_clk_div_set_rate,
 };
 

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
