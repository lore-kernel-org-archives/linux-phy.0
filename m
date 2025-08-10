Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 665D6C87FCF
	for <linux-phy@archiver.kernel.org>; Sun, 10 Aug 2025 23:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STIPv8vDjhRmm5kKwNr8ngKKLL9Vxb/CVzFJpaN9/dU=; b=yQphx5NI/xcxsS
	our2Y5/Tg+p6K20nHFAd82ZdZPGKobywMhDd7pSKe/RiNyDHHb5ezuL41EuwHQ5IPb+0n9gkyWaK/
	oSiMTqnx7txG8AtRSS+7CUA7kWCzW7Y8N5z6Cg+XjprJEAMb6QlU0rg6sEG5U1gIlMJrDBAev1EqE
	K10DjdrjVYwBgyACX2YGH0ouzXdlCN1sZ+sunwPf2d8wfv57en97qAtVJHiWJNqlj3hS042sBYHo9
	pgsBCm6xwK91WPZvj60UA++5jNNGpGHzkemKqsmqurX4sPEKqiseYXeawSe/xPEf6rGKokpzsxPEp
	tjy5ZzewWEPlE+46Tq7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulF5X-00000006A8j-0TRq;
	Sun, 10 Aug 2025 23:04:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoT-000000068E4-3v4G
	for linux-phy@bombadil.infradead.org;
	Sun, 10 Aug 2025 22:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=hq8kcIcUVamqXRpaO0muDR92j7XbTu3OW8hMLpghTgI=; b=oY0jWovlmW263DqfArHYDEL1PF
	tqQ4BYaArihRAspGOdkqT25TltPazSzzNaYb4iltSIyDcO1kKtgbA8YGS5hHdG5ST4HFbQ8kJcRSX
	Z2Dc6MiZKKrtYoSfRtJUZmDtLKgXkS57CSAy1mu9Xtrv+0ERdMrDKIm1Co5wrsm/nMA15DV2hJUEy
	LWL4bmQv8DYxGk8Ikg6V85aEFsAEMGLkTksma/jxduh3SrI6wQpwe6+0utdCYIk4OtgvLl09iyK7q
	a6DrdQPI8xW5RgS0mAsS6+r4gbJ1ZSwrDiH3MhR4EWt9uP0gfcFaPoGZ9Ozy3sYOZlE2N4z5TL+6Q
	K9gY2wUA==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoP-0000000FJiS-41JI
	for linux-phy@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hq8kcIcUVamqXRpaO0muDR92j7XbTu3OW8hMLpghTgI=;
	b=GCNb9DtDQZEZiZxY11qWu8YIJIJVxhzI8urWBMzeoHU3oxDp0c7PR/qIPodhu/KFSPg3hy
	Xo8Rgq5NyKjnfMTfP2yLe8FRK7tN8ySZElun6Zq1jIr9fu5HT9y+2bRSN1eczOZLm/8ZZC
	80uK1UwIyEMJuFX19J8eYiYW+yBjFqY=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hq8kcIcUVamqXRpaO0muDR92j7XbTu3OW8hMLpghTgI=;
	b=GCNb9DtDQZEZiZxY11qWu8YIJIJVxhzI8urWBMzeoHU3oxDp0c7PR/qIPodhu/KFSPg3hy
	Xo8Rgq5NyKjnfMTfP2yLe8FRK7tN8ySZElun6Zq1jIr9fu5HT9y+2bRSN1eczOZLm/8ZZC
	80uK1UwIyEMJuFX19J8eYiYW+yBjFqY=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-562-55mPGQTtMqqZrzVKXpudvg-1; Sun, 10 Aug 2025 18:46:43 -0400
X-MC-Unique: 55mPGQTtMqqZrzVKXpudvg-1
X-Mimecast-MFC-AGG-ID: 55mPGQTtMqqZrzVKXpudvg_1754866002
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e6a5428a76so1248713985a.1
        for <linux-phy@lists.infradead.org>; Sun, 10 Aug 2025 15:46:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754866002; x=1755470802;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hq8kcIcUVamqXRpaO0muDR92j7XbTu3OW8hMLpghTgI=;
        b=VLGt9IJ49/pB33UnTBfluOUBnw4EtTJ38zdGoOZxn5fx8RUkQSCF01dNCLzZVaChiD
         C8uNLXBMi2QLRS39oW4aPW0hesmM312Fi2NA6QH8JYiBUFCQXhyq/+5f4LmKYGksvInV
         lY3Xb78ZIiXw3yCCDQz3s2RyldbmT91Nj4UcDj14N+8Kc4DgVBcxjjSNilXTAY4i0v4W
         7xUK0ddLk/OScRXnIifr7fK2ZITf5T3ZchBFUSmWtIbD/ol6q0k3YnTWLADj9VwfCFCy
         /wSTNmc4tqoTZTJ34pa/qbuf+YxFCzTZsN1YShmQXNGRLNtw16mIOSTlE1CLtUd89coh
         Egrw==
X-Gm-Message-State: AOJu0YyeAX/fPcFyIhT/bVjrVPUWI9JPTiTdhIuIlwrICFwEwYFUmXRY
	b3Xv3Nz+dPRcmXRHtkYR9g6XFyO8qZFVvGqeJvM5whX0onXcVtU43Tx4qULmGvpVO/hSNGqiuik
	or1i7HBIpgJy1Lkypgs+xc3FL+2iXeGtn237TVM6/Q1WNuJiFJBwXlifS6196DOhf6uw=
X-Gm-Gg: ASbGncusEludxD+rHKgBZnJcBY4ghMqy8Q7FTcCp06TrX4M+Gi/LhPDKHl1228Ksibx
	E2L56cTy7RkCYYUKaGZntK35II7JJbXYeI+mQm7vmJWhzND0XTba8KRi8LBjquAPLXZpdgX8N9Q
	oobFCHmFf32zKrqd9zP9+LVZXB/Kq8qBq8FGvefOG1LY9h8zRf54KusXD9PcAFef7iOPVeNxdPx
	YW8UPx9+3HHPKspwvjOJYbVdVeYoNYZkQADIsBvk4hxUKyHzzEmCQ6T5RPPiPE0GAFoW8o5a1+Y
	I3tgoiNrl9Yg7Kmzb1khaxlvSbnc6nyAqKoamZSlu/congxpWOzx96j7wPkyvLrZg9Ky19RxUYV
	oyU5mgA==
X-Received: by 2002:a05:622a:1487:b0:4ab:622b:fffb with SMTP id d75a77b69052e-4b0a06eec4emr195091161cf.5.1754866002606;
        Sun, 10 Aug 2025 15:46:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFh5lS/n97PBNJSxOrFycNhagzbIhlgW9qQ3w8XV40W5m4XhN8ds0cjQ0NNa80CSmcd6Go3LA==
X-Received: by 2002:a05:622a:1487:b0:4ab:622b:fffb with SMTP id d75a77b69052e-4b0a06eec4emr195090871cf.5.1754866002209;
        Sun, 10 Aug 2025 15:46:42 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:41 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:34 -0400
Subject: [PATCH v2 6/9] phy: mediatek: phy-mtk-mipi-dsi-mt8183: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-6-9162470bb9f2@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=1507;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=tcM4xXKkkn7MFiutyaRVfeJ/7drFohogN+jyo8wqt4g=;
 b=q0MF517SEn6EZmLxnbXxB6XM3YYpy8tWmSgApsuH3irA3Q16tHw+AsuYoggeySatst9jw32Il
 A73zaG5FOWFDy/zGALRujdwgvPQdV6YkqHRZBcR/ePkMLWkrWepZFcj
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 2oaeXoC29eZwlRJjiaX-nW5dg4yQ31JuwVHfLVJwpl4_1754866002
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234646_223010_1D778566 
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
index 553725e1269c9d7ad88f89367dfa1cf367aaf1ce..a54d44ef70ab49937d210f04fdf42300e8e5f2de 100644
--- a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
+++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
@@ -97,16 +97,18 @@ static void mtk_mipi_tx_pll_disable(struct clk_hw *hw)
 	mtk_phy_clear_bits(base + MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
 }
 
-static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				       unsigned long *prate)
+static int mtk_mipi_tx_pll_determine_rate(struct clk_hw *hw,
+					  struct clk_rate_request *req)
 {
-	return clamp_val(rate, 125000000, 1600000000);
+	req->rate = clamp_val(req->rate, 125000000, 1600000000);
+
+	return 0;
 }
 
 static const struct clk_ops mtk_mipi_tx_pll_ops = {
 	.enable = mtk_mipi_tx_pll_enable,
 	.disable = mtk_mipi_tx_pll_disable,
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
