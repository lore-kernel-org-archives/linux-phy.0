Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94AB2D4335F
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zomAm4Z2w92Rj8qxs28LC7il4p2m126w5Q5QVj6A8Ks=; b=YXO4funaJRB/g3
	HE4pT/BzxFnJntSyA23X7Q0+/3V00RelanxVmTXP/PRZ4BQOJ6uqbKbG4s6Eqb2RFUEMMbz2sO6Ly
	9ZO9h+yIu7qgcbVFLOr07GBrR2jF3uNenrGfWF4SjVFq9PWkzmRWWROqLW0+d5lh3+8rCTgYAtU35
	a/OuMBKKSLtBAAejyhXfBbs6vM9OSv2psHs3KC3HAH28uulDOlkQDgXX3XSjAnIMEO/HZ2Hr0Kz4M
	W6jfdqhC/wVcHMONDLywTf6auiFvoqOcsHt+HMRysgmVMVwsxDozvClIyxLtdkeM8iokFnbWCMO0P
	4N7P33MZwozCt+Hti5Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuV-0000000HOuI-16Xg;
	Thu, 11 Dec 2025 23:17:23 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuR-0000000HOov-3ND3
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495039;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rPuKV99ifsoh5aqHZAAkYRvR+Rf4lIg7BWEssu/CiJ8=;
	b=VfNs9zDLoTNN+l9Lm1vXDIOWK/6zetbIt9JD41KXyMljyy0BTdSD7OcTALSvhzAkz22VSa
	momZixsHNkJ1WF/XfZ533cnRwDMeIZWEOqm+Tq6clfFcAmivqB/rsnItZ0Ps3MnLsm4dSW
	F9sDc8v1q/ZmXbl5Lv6Rz8bXLZsWW0Y=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-190-_OmOPa0OOl2bq8Xj4WN87w-1; Thu, 11 Dec 2025 18:17:17 -0500
X-MC-Unique: _OmOPa0OOl2bq8Xj4WN87w-1
X-Mimecast-MFC-AGG-ID: _OmOPa0OOl2bq8Xj4WN87w_1765495037
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b22d590227so105131985a.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 15:17:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495037; x=1766099837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rPuKV99ifsoh5aqHZAAkYRvR+Rf4lIg7BWEssu/CiJ8=;
        b=YMoqhzWnuZUPiXpeT/b0y8E3JuQWz+DZ5YoTBEsPeNad5SmroNEeTQWRKTPO8PabqJ
         N6U3SMfhckWeqTKg3GyxTMwItBssI/0/NlXxD2Ma3gBKLXiVpV486th8KnWvNJ+NiSOu
         +hBBwAbJBZrmFCh/B/CT6MfdlV8+3yaTsYY/7dMOPbSUIV8orBKPyyMENnXs5KpfJ4cH
         udAh9/9/yWr1v97mnwkCvV+LR4GXcCCklMMMDVWhn+/utTVJYL6vktUYPgFsJwUuKIR4
         P7dA537mVA5pt+AT6zbot1Zyg47PbQCxDxadlxo6w+QkTUbGz4EVOC/T1Aoa44LCOHzc
         fKJA==
X-Forwarded-Encrypted: i=1; AJvYcCUG+s+VSz3aZmrhruPTIIhYToVbOd5R0jCQQ+19EbyuDPKJkFQHLyrpMIdihE3ZICJNYs0kHAUM4uw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6iW5Qzp1EZl5p3BtlqpZOMOSvv7oO9tl7aBhLHoTHGm7hhVaw
	eQkd5NdmtnJ9EObYUlhjLb/ndU+Eqsan98As5CdkubWKGJT/tLmppujeE/wqeCQbS82+YQZuZCc
	04Z2IRzKcoBaRygdZ9jtmc+O2ndjJY24bqco0puxmiq5PSlkFmEtqNF1QUN/NYmViJTE=
X-Gm-Gg: AY/fxX47C8TucFReixlFW8VsRME8n6XMw/5rbMxqm7UrPK9QY5lHCq1gpmYfLg6XYOY
	ouEZ7HzQj5qJ0HhyiFkjhY/yrvGf+Opnjs0N4xZdcE4EZSGcjLV/EmHxDtPDWJQep6kr7dtcPFi
	D4vovnsADTJ5Szh2eoPEaPD/RvsODaoTnoVN8KVskPAmC9zIWVr0UptQ13wH0gpTNEVsDzEM8Ge
	gQJ+fDb1hkz2tTkDJmKZLL1ud0SSgMhUBpFI41lu4oOYKYb4HG9TyV+NYGMknWqYchgd36fsPMp
	C/yvJWMAO1pSgV81dwzNpM/5mxhx4t02VhioaK5L/xxVAYZ62sOqFvVSd1yOZ2SMJpRIXPqL4tq
	XvmjnFoUxTiTufDmCb9aJ2XsX66AWC2y+KhDsZxCYkXch1TwIptZfaQ==
X-Received: by 2002:a05:620a:711b:b0:8b2:6ac5:bce1 with SMTP id af79cd13be357-8bb3a248c9cmr37438185a.52.1765495037273;
        Thu, 11 Dec 2025 15:17:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGb7AhIjE8zPjDhJfU8aDdJaYDnutBjCMxlmV9mYKDpi24B9muU+pgkYMBUg4HwaDmRYFGfZQ==
X-Received: by 2002:a05:620a:711b:b0:8b2:6ac5:bce1 with SMTP id af79cd13be357-8bb3a248c9cmr37431985a.52.1765495036753;
        Thu, 11 Dec 2025 15:17:16 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:17:16 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:23 +0900
Subject: [PATCH v3 5/9] phy: mediatek: phy-mtk-mipi-dsi-mt8173: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-5-beae3962f767@redhat.com>
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
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1519; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=vrNhEauHRQ5KoNoMMi9AesnXBPWl/Gp5yOh2A0W6gms=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy4JBrssMboevWX54tAvj//eOnz+u+ekf63rRB59E
 46P+ym1raOUhUGMi0FWTJFlSa5RQUTqKtt7dzRZYOawMoEMYeDiFICJ7JRhZHhdsj5E7aTq9jcO
 T97sYPf+/rX4c86W8toYzZ7TW7mNTd4zMqwJ9ZdIXKvRpntlr1TQhxi7aRs/WWw1fXTt7j6W+l6
 mubwA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qRaGJT9_ivcWbx15r-YAWP8345UAtAaq-sCdDTUBNbI_1765495037
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151719_922952_F6307833 
X-CRM114-Status: GOOD (  11.57  )
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
 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c
index 673cb0f08959e0e4f2b1ade2ebaf796e8b76f8bc..438ff3605d90121b7bfe02b3ddca8194437ed9ba 100644
--- a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c
+++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c
@@ -237,16 +237,18 @@ static void mtk_mipi_tx_pll_unprepare(struct clk_hw *hw)
 	mtk_phy_clear_bits(base + MIPITX_DSI_PLL_CON0, RG_DSI_MPPLL_DIV_MSK);
 }
 
-static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				       unsigned long *prate)
+static int mtk_mipi_tx_pll_determine_rate(struct clk_hw *hw,
+					  struct clk_rate_request *req)
 {
-	return clamp_val(rate, 50000000, 1250000000);
+	req->rate = clamp_val(req->rate, 50000000, 1250000000);
+
+	return 0;
 }
 
 static const struct clk_ops mtk_mipi_tx_pll_ops = {
 	.prepare = mtk_mipi_tx_pll_prepare,
 	.unprepare = mtk_mipi_tx_pll_unprepare,
-	.round_rate = mtk_mipi_tx_pll_round_rate,
+	.determine_rate = mtk_mipi_tx_pll_determine_rate,
 	.set_rate = mtk_mipi_tx_pll_set_rate,
 	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
 };

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
