Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22405C87FDA
	for <linux-phy@archiver.kernel.org>; Sun, 10 Aug 2025 22:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MBVjA40ALAFIl2DkUZVU83IhuKwmGiBjsD9O3oZABY=; b=pT1fBsjbhvFuQz
	7vAIZzj7YDnoJYph/5MLN9p49Ewje0WYGQHThYU3t2eBcHpTzr7Wu8DNc+9mLQlt3DlODOJFO/aRG
	Y84+RtR8yy91qij/KztMsIeoY6RhWROzirunlTvWM4nMqRvFFPECrnMwKYbYaEElLT+JWW3VP0o6D
	Aa1Q+jfL8LdIUizvlPADCg4UEbDH6MJmVX27XrVc4i9LB/5Sc2ra2MXtRp545qWuf+xbJUzj8PIe+
	6qRRyL/obouxc/hjAFk4HGdcgOakR/Ily2O/Uh5NbzWyJd+bPDW8vi02ayekA4g42Jnw1ZgE8hLE2
	pgdq8VaWu8bEJshnEcUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulF0Q-000000069TG-3iWy;
	Sun, 10 Aug 2025 22:59:10 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoA-00000006874-0QqD
	for linux-phy@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865989;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9Xg8hqI9hY3cckPk/9kc3e4L3WNhIKfJgnhJhXBVxrY=;
	b=bDPC/T33l81EAhJz3oaMurylTMHtOXsVX59K1xsOXHt2nnZ7gi+tBASJZUQ+vuySUQol1q
	tnmEDvZHffh1womkqZJeyOtYsqganUPL2TJJYDRD04em8P1MeuTlQaoEJLXjUDEXVsR6z1
	UsPKrKBJoLQ5fK3Lgt7Gzo0ZxxdUYDI=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-593-TGx_nbkwM5G5e81a_-UT9g-1; Sun, 10 Aug 2025 18:46:26 -0400
X-MC-Unique: TGx_nbkwM5G5e81a_-UT9g-1
X-Mimecast-MFC-AGG-ID: TGx_nbkwM5G5e81a_-UT9g_1754865985
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e665a0cddcso911332385a.0
        for <linux-phy@lists.infradead.org>; Sun, 10 Aug 2025 15:46:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754865985; x=1755470785;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Xg8hqI9hY3cckPk/9kc3e4L3WNhIKfJgnhJhXBVxrY=;
        b=NVortErVp1z1fKI5e5o91w6E+uMlxrJcQD9Q3os1Czdwyvd60YvJ1g2rZUJRtC31AL
         ZUslBudWV4z0QXmQsh7sHKKxQNdFGMz3xJc7MSBpmycEZtmuNldz5/ZvNc3LOx1QbPUK
         OytqWO2PGGoowG0teJ+GuzDbUb1IeKBhPBnfmP/LDKxbxfH1o6Lsd2D958cjjYQSTZ4S
         LEuG/dZRUXf8JTqmm/bs2vnpHkC248u6MFf3EXzfVXLCkq8vWWRfpOl4CpbzN10WxjBK
         Qaw0nRElt/8H+4J5g60l/yK8UGaDRNfFdSMncE7oA0m51gLatk/F/DBjy3UVjunsknRs
         sENw==
X-Gm-Message-State: AOJu0Yy2q5Zp/3HQCklyl9Z7RIjKFbg7jh2jIIg8krCQ7Aq03XF8aEAx
	cX8mssvnoIU/WZzAyY8Fv7g2ypMlmL7NOQ99v/34fJtgNRir+fq3hXQRCM2PXZtDD0sVRnd0OrE
	YrwYKDRKOP95xFGM/yslIoPwkdhVGx17iuIYGM12ybG7D2Rnuhm6BCIfCf8CnSaPfR7c=
X-Gm-Gg: ASbGncs7ddfO6ftqpUK2wP2tmbDJebYEaZUb2sAk/zoikvGQ3NE0WHOa67QKLW81ENo
	2fE8Ipaj7aZHwNtHrDiUbvxPQpyzS4w0HXyT5s8n6GFLr6cNswQHgYFRfqYz5TgYnLCTzaEkf60
	FIGUCQboSsbynPw+CTVprcD2aPfLbw9X+t+Ka4Sc/rk4A2VgUyuwbBSwEM07UAkD1uZJoa7NLAc
	TRwkS800n+0tVXlO2u0aAUoFzmOxfpbDBf3XTZZOiObaqlGMLdfrMAqMl86+OvYr+dnHURkrkQp
	kwT1eOAy2U7HD+RQ1JSSMkazq4eP1TCS8Jl45sYrGKgOK2FicsSPsmius1yZYLtH7lWAE3veqgV
	Je+YA5w==
X-Received: by 2002:ac8:570f:0:b0:4b0:85de:483b with SMTP id d75a77b69052e-4b0aed794b6mr191405071cf.50.1754865985406;
        Sun, 10 Aug 2025 15:46:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlcV+VlJl2BMsCB1be7RUmGpPT7LkQkTuorr8gQ4HxbmtzB9yCp//naKxGcJVwwxqJ9LpWMw==
X-Received: by 2002:ac8:570f:0:b0:4b0:85de:483b with SMTP id d75a77b69052e-4b0aed794b6mr191404891cf.50.1754865985003;
        Sun, 10 Aug 2025 15:46:25 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:23 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:32 -0400
Subject: [PATCH v2 4/9] phy: mediatek: phy-mtk-hdmi-mt8195: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-4-9162470bb9f2@redhat.com>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
In-Reply-To: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=1601;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=zpxjkKUS3Ja5Hl82pWOZy7M8iozPUZUnjje7JplMAuQ=;
 b=TfkcMxwokTO3SFrhfFtRnY/2TB3MjvqVvGnOziGO+YGy6Hi3nXcV6PqOeuN7niocq8BeQPo/w
 8VIsZH9GTQrClIuzbrC8guMQvM6lpDsYvdZ4R19kOLm1cKrdM3gU0VK
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OdQ3gc1_sMUsFtNnobzVUQwf9odG_IEoaODNYTZBo0Y_1754865985
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_154630_212077_05F7A466 
X-CRM114-Status: GOOD (  12.40  )
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
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
