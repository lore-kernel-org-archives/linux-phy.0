Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2D61CCFA1A
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 23:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23nMcFWj65URhc36VIBCDv1EUgw0lrvzb/j/Xy6bDjY=; b=lP2NjJGQODEvnf
	+m1Y1/N4D7WEEgvbvFFoTz9qYDOz1b0mXDSSAY7vqM8X1R3e273BEp590Vj9GL4lHm25stpts4wv3
	X6ey/DeN3OjX/MGoKNU+yH/xBSSzhkhk+7GeHs+oIhb33vd+c1x1BUSFO2Lxm+qA0LB/Htf/tQlyU
	n2ZoGSRfLtanbbx66+Yunm3DTcamDhGRW1fTj4nOCGF2Y6f743WERUcGmMi7UJ7V44BqBnnKBlD3b
	NPx7SO5aboT6V3HScLjzgkA6EnOxYyK5w8E2u8cNbhGJcJyIkA6+u5Yz7/mmVp9iSNh8tEnDohpPw
	rowFiUGLPQIKsWR8m/Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Ne-0000000GNI9-0DuY;
	Thu, 06 Nov 2025 23:27:02 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Na-0000000GNAv-1vvE
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 23:27:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471617;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SQCfd8zWOp32cxaZRehJq3msamMDwqa56w9I/w/HjpQ=;
	b=U3XXE7MDZx9CDExms5RAyWGklKo8mxtTrXfDxvaafsFxeYV6PrIBBrcmyry0lKukphXGpZ
	NPLJZgP4AW3mtkCmPJZ6HXk7kdd4mOaRmCa7hwSi80OUn4D8pMunw1ja2Pth1dAQubTdD4
	YnXgqWR6UcPJtBKhZmXLirkePVRC8ok=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-360-1GjapFLuM1mRa4Qburg8Lw-1; Thu, 06 Nov 2025 18:26:56 -0500
X-MC-Unique: 1GjapFLuM1mRa4Qburg8Lw-1
X-Mimecast-MFC-AGG-ID: 1GjapFLuM1mRa4Qburg8Lw_1762471616
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8804b991a54so6419046d6.2
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 15:26:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471616; x=1763076416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SQCfd8zWOp32cxaZRehJq3msamMDwqa56w9I/w/HjpQ=;
        b=Ic5xo/u82yzAjz8+rxZYlPt+3gTAecOlIejvLbYRBJtGWaZylkkWNtKx24h6KOmZq7
         c3JeSR6I9FnoR5ns32SAMAPvYS2nvjz+MarWc2iBWdkJ+LS9NaPRtG2/UO9epkd4203f
         G2dEpwQarIAwNfLwDAM3rZQA742t/lbtlPtgZlgdqZHJG1MLnVD0nnzedCMBWR75eGuW
         hgqFyU0+iL3iOI2ouHpVG+YH50IFXKvdms8K+crvEcPsyAFHtVkDkjIlMGLR3I24vuXJ
         ULOeBStJKgnIthI1/gEHCNhjY9Yn9gc2HiUkgjFc8p5y24k4qMmGPXxQPTMJYuE/Nt6L
         UgQA==
X-Forwarded-Encrypted: i=1; AJvYcCXyhhEfi0iVdtmJmzw1ovwKNjjx05KLewL1YlBGIfSS/xSm0J/p13VTbHgW5QRGzO+M0heJrz3WRas=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZfkFIjGbCvX6F3EwSuEVHGrwc3N/YoT6QxS4g+2k2h3FrK2AH
	4aFj24XlHf2U48fGrW8sZBNEZmLT4CtyJO9QmDK3nQk4WMqaOI2iBqC+aSDCzUaAJnk7YuezM/f
	beq4qMjcp088QiT9tYyDixKhJzy9ILPSOY7iboa18I8GQGbSQuplLQJeeeLlWv/8OomY=
X-Gm-Gg: ASbGncvc7gS7RE+FmT/+e2WZA8+OpfUTUPTJ5bTLj6r7ODtM5C/rnG52+0dSNaST26+
	dpiZ50i12406mEWwp2pk55Wfd/Is2ATr7D9ArghqswA9j/3i2JATul9Z7smtnskc7yKs/aqWnnq
	o92SQNmXrgVORd+4/mlvhBmzixICh2WN/q1+umibojaA7g3m9wo0+fZnU4r4BSOvT3lvrxU3bW4
	XkZanvEYWdgNN1cPWJjhyWVSaUjz6RUCIlrsYZ61AZFVzF5uVAfHf541fwA2f5cIatl6OlqD8Wn
	p2zM9+cDSfIPbfusq9fpb6qfFikKnQ3E/eAXiLwru04gCFcUvlBnjOo+HXgWzxvGxo61h4pfvj3
	hhtdrLwt/Y5yfVq38MjJkoF7PXFOAarBh0BgPBrGe/Q==
X-Received: by 2002:ad4:5e87:0:b0:880:5a05:925f with SMTP id 6a1803df08f44-88167afd114mr17958086d6.13.1762471616002;
        Thu, 06 Nov 2025 15:26:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5Z5NCJiDJsbMHVlrtUlpGjakDqi2/fs01RriUHfEFSw/5HUZvbsIZYCzQ2U5thVfZ2fi0FQ==
X-Received: by 2002:ad4:5e87:0:b0:880:5a05:925f with SMTP id 6a1803df08f44-88167afd114mr17957826d6.13.1762471615658;
        Thu, 06 Nov 2025 15:26:55 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:26:55 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:51 -0500
Subject: [PATCH v2 RESEND 5/9] phy: mediatek: phy-mtk-mipi-dsi-mt8173:
 convert from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-5-e2058963bfb1@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1519; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=0ONTyRyj5ognfzdcLi6VRYwQ6d+KVHGkkiYfjM3qIvg=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59Rbkf3oWx/vTtHDr4ZNVHnvrgjPm/1vnKvxMrOSmb
 750m5RhRykLgxgXg6yYIsuSXKOCiNRVtvfuaLLAzGFlAhnCwMUpABNZ+pWRYV4nm13uT+GVUvvf
 X+i7YP3Pldvp2mr/m16xsrMLpB9/nsjIMFm0TLfkQZN196ctK6/pBDG+ze6XNL4ZuiJg7iIPl1U
 XuAA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bgKvxgk06d89v719jIYKOLaJOzWWhkQpeee4-LIlSmI_1762471616
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152658_616050_56DA0E4C 
X-CRM114-Status: GOOD (  12.42  )
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
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
