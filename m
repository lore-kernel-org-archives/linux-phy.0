Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ABE1CA0EC0
	for <linux-phy@archiver.kernel.org>; Sun, 10 Aug 2025 22:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLQqpgwjMNKPfhD6FyoyXVbji1HJPwOwIjC+uIPN4Tw=; b=ifSnjGSceeDkvh
	U44vVFzG781fn0tcLsgMsQVwsgCjxcWFjgbXES945nF2CrMA09VWZxnF7Q4vTWZ6rGB1Mu3smXZ3v
	sNkcz+4GikviA0PL7amkdT5TGY4si6ZRbZiFfsi4EjrApUtd0NUY3bYApAtY5ZxInlN7UVNa+ZiRG
	LVRHxp/v8pDg9yR1g0dFpEIzScqbG8FgdfB8IligxMeKw2R39a5aYFulx0e6K0FtmMFiBmD/3eGHu
	fQLzEjNTwP0QlZiDzDX+M5uQrmmFYB0OzI0MLgYvplf7P6PAPaIZDk5y9bftLWjRI4lvrZi9Ihs38
	7b218k8gjMsVGq/r3g1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulF0R-000000069Tm-0fby;
	Sun, 10 Aug 2025 22:59:11 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoF-0000000689g-36WN
	for linux-phy@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865994;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sw1cLvgEhua8i3WpG4C9LAPsxagtK2jeoB8fPKEx0SE=;
	b=iFp6fqVyLh3jXZVxthCwW3aHywYWAyBEAgMSRUjXLVaL9l8S2a8v8cfrVngK+TAqWHvp9a
	noabNTutbDJxP/5XBmd9e4HHM6thN2XezgdDLNf3L51S02pTkavq1a+h2t68OGnrC2q/j4
	NPIdp6l+CJWJ6Qm8lavEdp8N6WNbu8Y=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-617-wBtw3d6dODq1BQI8xMNhuw-1; Sun, 10 Aug 2025 18:46:33 -0400
X-MC-Unique: wBtw3d6dODq1BQI8xMNhuw-1
X-Mimecast-MFC-AGG-ID: wBtw3d6dODq1BQI8xMNhuw_1754865993
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b085852fb8so157983281cf.3
        for <linux-phy@lists.infradead.org>; Sun, 10 Aug 2025 15:46:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754865993; x=1755470793;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sw1cLvgEhua8i3WpG4C9LAPsxagtK2jeoB8fPKEx0SE=;
        b=atwoQtTTlKdtgAuU/hjmbDDns+X53Lx/ZC8Q/+nWDAOnT8Pj9ZWJmBhwWqUl7apz17
         IZjgOSRDp52Zq1MBR93cpFp/BUrBDRZZleh4x53+MDReN5wclik9JVdxJgKA4tnLpLmv
         S45dJOo67u+46xCtIgeW3KthoX4WWA4qHyKbhGmFfvV5E5tjTmIjOGjXO+4vVIIl7QyK
         v39gXg2ol1zXJn3QaArOpVxQkRpN0D2fEn3wCMpxCGggRee1Wkfsd1wZxXQ4oeyF2MkV
         FuhQjBfp0iZ8Ds6rRt1Ls62e54fTSn6+0lPFQyL34jb6Jnnx+hBiAUvAoo0pKmodHpgV
         Cchw==
X-Gm-Message-State: AOJu0YwvXxiNbPveTIOydNTP4kwtZOjieoblwSbPimDEfBiI9Po7Qv68
	kQr5443exulzVuqpEgwZ+7FIFiZaJnjSjtQ1g8y5jes6rbOGs5H/9mZ3j3qzSeefad73d6iFs1T
	3vD5Z9EiQCZrgl2en0/X+EyINPxPgzh6wzc1zPxn/oT8fz0cCEWGfDAp9RsjO4OxJCXA=
X-Gm-Gg: ASbGncvKwWTl3+od5IkolnHiR8VpGL09CBSEb5vTY3TOHFPTLxxViTiIZ1IGMEUM3Q/
	fqmHxiIyLnA1ze1Iq6ZJluXPMWJH+kHPd/S9ShsJsvHlBvlesduANsQoorIdhBKDrDSrtKXqV2f
	Gl34IZEc+xE0mvItKiYhwk0r8H/SSderc2PkltaJ8d6e+TNViLbW/WbjeAWF27EA297W0thSa8L
	pk+KFCq1yYwx/FqUYd5C77aQPQXyZUAXFzn8Bo6D1Rn6AzK3SokUIM6E7tbPt6JR176sWkFjKUP
	NQ4dU/traBuWHKuiTVPXz9OdEUWGR/yvokXxgYAh5/iCouBO4UMKyOQ1ZlCMNYPTBsuQVHO7Hj+
	JYob9PA==
X-Received: by 2002:a05:622a:2b08:b0:4af:1fb2:339b with SMTP id d75a77b69052e-4b0aee5ae32mr145137541cf.59.1754865992935;
        Sun, 10 Aug 2025 15:46:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3TxaNlOm6CWR20thRFc4k1fydx3ZMYAWuNcAfSFTfYY5caqw80RA7wi77MbUh3gKnqnfd0A==
X-Received: by 2002:a05:622a:2b08:b0:4af:1fb2:339b with SMTP id d75a77b69052e-4b0aee5ae32mr145137151cf.59.1754865992498;
        Sun, 10 Aug 2025 15:46:32 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:31 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:33 -0400
Subject: [PATCH v2 5/9] phy: mediatek: phy-mtk-mipi-dsi-mt8173: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-5-9162470bb9f2@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=1519;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=x3H+bi72Ud0O2ADBCQwtbhpk+18O8IQnZUeD4zYXytc=;
 b=Ko6nm+pXyNo8X1nQDJr+lVHcu4cXjZr/njvgKDiWI9hUw5g4z0iGWyficBfc/rHylfr1bFBC5
 OcjcwnYNCZzC9mq0m1MLk4fjF5rjaP4zt/gCvk1nnxylsB0GMKTpJxJ
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: IEu7B75EHMcE2O4iqj2lLRcgQqSlNMJPphiwt7waoLk_1754865993
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_154635_859445_9B06F822 
X-CRM114-Status: GOOD (  11.19  )
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
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
