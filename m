Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08F5CCD343B
	for <linux-phy@archiver.kernel.org>; Wed,  6 May 2026 00:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNpsDJE8Zgg8fsBOTxwu5VtpRAUZcv5u680iQmxQHi8=; b=CMGdYkJ8qk46R2
	PHWCnrBOXJ0VIvssFrRfbOZhVjiOZGxxQDxpjnbeJm9viceBDabyTRSRmE6WJbXf+wDqBH1aaUXoq
	5aPJEhTlhpaK+E4uXQIA66snD7GWo1C6IrI22rVs64TW9m9XdJxCguYUKBSooxPjN+ba8L27ErQg9
	rXVlJVS4uix9RpDn/CNZci7L45JNidOKal2Mk08lZaAZ+vboZGvkltMT7gko5EDnYmHntJLuiBH0w
	o6RyoB9+pluvGmHptQHyZ3DeD2l9ZJbLW1crjCMdWcCJghkhIUFxujbsBJgsfGuoYm6fwHEV2BJTs
	esC8uijIefHSK9xQH8Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKQTe-00000000LOv-1Cwj;
	Wed, 06 May 2026 00:51:02 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKQTb-00000000LKr-0Nbp
	for linux-phy@lists.infradead.org;
	Wed, 06 May 2026 00:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1778028658;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vdyTB1Bnm4PocyZ2yzoZbA1lY3Pfiu6QGknE0aPv4gU=;
	b=byFPnbQJYHIXjdVk1Xx6UsflWGHYrycvFN90R5H/Ns1IvjgzEEirLRf+NKozi4FDTBjJLN
	CVY/RPpZ5Qn8HlIrE+uZVvEEVW4eC3Q/PF47bF92zUT07yeareG7muHIrIQbZ59LPeKjKX
	T4fIVp9fU+okbwFXBUNC/AeHddTI+Yk=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-494-NVqYYKx8MNqzO2Xlt7zeIg-1; Tue, 05 May 2026 20:50:57 -0400
X-MC-Unique: NVqYYKx8MNqzO2Xlt7zeIg-1
X-Mimecast-MFC-AGG-ID: NVqYYKx8MNqzO2Xlt7zeIg_1778028656
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8e8950b3ee1so1769505785a.3
        for <linux-phy@lists.infradead.org>; Tue, 05 May 2026 17:50:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778028656; x=1778633456;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vdyTB1Bnm4PocyZ2yzoZbA1lY3Pfiu6QGknE0aPv4gU=;
        b=MHo5ZI+/LG0MxGqKH92jLOIT+sC3GoPoQSwReiVyvlCEyiYqwH2T8REYf9BQ3lcvVO
         z9NaHHUsNabVX/wzh5YGcpXIVFpeBSgbXsJw7Whnv+BkyQU2elig2BcP/cQL1y7XJ1Pw
         40ccTIQfKR0Vpv9C8mzP2mZcis9hRqBHoqWGit9PZq/xzGyAqfPFBtiwKuBoMCtc1m4x
         RqIl6qaGsqftxaHKULVfE+T3+tNYLIyvjk5+PbCaiWDdpuVIPzsCdRBJYcK+yLHIkKc3
         OFbZtoT6tDG/2LU3PggIVu6IJnE4ECiJmPzHUap/4IZF2G4V+Xq80EdIoFTmdwATTn8R
         NXFA==
X-Forwarded-Encrypted: i=1; AFNElJ9Sp0OpPmNYRpMlZ+jF8GvagkqpYIbFa1dOn9us6RunjE1ened/DQsunkf/X9AcptmukN5K/w2kmgM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZdX5ZCwzkWxWb4KkKC4PMajKvf3Y6mpdQnx/FudKXlF2xLi4i
	MCO7XZbgDRpWujNw4Fe4VwS1x81gWuJD+n6ypM24+pYZ1PlsxzuUfDbCZ+VERNBA4X9F4LNPChs
	SF6ctFglZ8W3gsheaU3/sSzr2T2tA8ewjxSzWrGEv/d6aDlENDJxdE4T0EbwW+WSP2/w=
X-Gm-Gg: AeBDieuZnUTMJcw/R4maXQORzsbzfJ8VoZsZyqBifJdDxSNMPhTDqOJh3PZApSTkv8c
	zPG4lLEvZ7XzgRWArWt77cw3x7OQh3HgrA5Ju9TkVsXxxrhbpxipBvmzU0brmhF4fRiHzh6AF/u
	JGgqaVleD4SohfcimWJNdZEwkcNDRFBnOb01OlLqy5JsHma3qQn1aicWM1A1r9QqpFKlRoGn6jm
	zh/P2So0fY69UTULfuVwMvgCxoXvgNiO12OmBfGpLINeQ5QbBRr3onu4et1l//kVEt5qIxt7b+7
	w/qIB+G0G9b9E9lU8I1TTRhPTFVy+gwdEf1s+GLpJkcnZCP2wNzl7BBeJw16lUROdJ+RIdBDD+f
	jxjHv4KHweoWd6b3uhGkjUGifhLAiB/598EToC9hsoZnUnHpurABxCT+sRquAG+ckLgfkqEE8
X-Received: by 2002:a05:620a:25c6:b0:8fb:1acb:ccdc with SMTP id af79cd13be357-904d63e78b9mr222383185a.34.1778028656512;
        Tue, 05 May 2026 17:50:56 -0700 (PDT)
X-Received: by 2002:a05:620a:25c6:b0:8fb:1acb:ccdc with SMTP id af79cd13be357-904d63e78b9mr222380485a.34.1778028656127;
        Tue, 05 May 2026 17:50:56 -0700 (PDT)
Received: from [192.168.1.15] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8fc2c91fb3bsm1464933385a.41.2026.05.05.17.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2026 17:50:54 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Tue, 05 May 2026 20:49:09 -0400
Subject: [PATCH v3 13/15] phy: mediatek: phy-mtk-hdmi-mt2701: use
 clk_determine_rate_noop()
MIME-Version: 1.0
Message-Id: <20260505-clk-determine-rate-noop-v3-13-f3f829fbacdf@redhat.com>
References: <20260505-clk-determine-rate-noop-v3-0-f3f829fbacdf@redhat.com>
In-Reply-To: <20260505-clk-determine-rate-noop-v3-0-f3f829fbacdf@redhat.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1910; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=5KLGvHQlEx3HE68FkoUz+5ZZ08i2Z1EHZbkA0AZsL14=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ/TfB1aTIvCTNPe8TLm3/hGP9D9n6D3amfYvtPcJjkr
 riR/PZdRykLgxgXg6yYIsuSXKOCiNRVtvfuaLLAzGFlAhnCwMUpABP59p6R4aV4g7mhfH3Mhwzb
 Hf2bsn+/DQ761rkr/csdu8XbuHvjpzP8z9H3ZLl1srR7ccoTl3XGsUUZl/W3CIisyCwKOXhSlJe
 VHQA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jwle_bAdV34EOb9UWhl5cwHe3mVtcZj0FGcikuY3cn8_1778028656
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_175059_199254_E1E2148E 
X-CRM114-Status: GOOD (  10.66  )
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

Drop the driver-specific empty determine_rate() function and use the new
shared clk_determine_rate_noop() helper.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>
To: Brian Masney <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-phy@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
index b0b6497e7eed..c9a1f20e939b 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
@@ -90,12 +90,6 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
 	usleep_range(80, 100);
 }
 
-static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
-				       struct clk_rate_request *req)
-{
-	return 0;
-}
-
 static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 				 unsigned long parent_rate)
 {
@@ -170,7 +164,7 @@ static const struct clk_ops mtk_hdmi_phy_pll_ops = {
 	.prepare = mtk_hdmi_pll_prepare,
 	.unprepare = mtk_hdmi_pll_unprepare,
 	.set_rate = mtk_hdmi_pll_set_rate,
-	.determine_rate = mtk_hdmi_pll_determine_rate,
+	.determine_rate = clk_determine_rate_noop,
 	.recalc_rate = mtk_hdmi_pll_recalc_rate,
 };
 

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
