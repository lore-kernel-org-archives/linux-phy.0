Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 051D9D4335E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lC/gQRphK0GDYTghRC2yaZKKTUKA90B6BqWkIYmVJak=; b=YCIwftPG/7sGtO
	3UYlwf5e+SJS3V1Yo8GEah99dSdx4uIofPGxWZwTMHZAxdDV1v3gzGBL2862TuCeSBhVvHJhpCiSP
	wduIYQ5W8xbQ10gQgNPjNh3S0/3jrRj9TDfogMS3L1UXx8lVlDGv98GZ8+Eti+hjrQlMVg/rdqJth
	McyOEsKFooJhpSA57RU8xb4RVobJlYECY2IGOgQPTe+rHZAjRWIPeOa3mMEVByuJKrWKRLDxFpk7X
	DOInUOEG2cxJ0iFYIudBztXwfk92a5RtnKUtJdHYXzXalC9DHKIWRSh8sJzRRo0PW14ZedF43ZCWU
	0vqIt+o8LjeZiETjGixQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuG-0000000HOcc-3Bww;
	Thu, 11 Dec 2025 23:17:08 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuD-0000000HOZ4-3CvJ
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495024;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nS5xyU79VC7pO9m99ZFsFBSh8nnXakLQbi3bsJkRuyw=;
	b=OqgKHijKUWbjSA2kJ/9NTsnaGuHNrNVvvJBuv9LIG9zuHUP1zBmLmf0wySuGjA8dQSsHSL
	qu0ZLT66W0xIjALVREiwfggdkHc4uE8w6f/1D0JiVslXwQMXzagahS7tYF4sWRLLsdzRgu
	1jBIqPP/psjFn6wN5FDNP1kydSIDCu8=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-681-TAXvkH7NOx2GnGbNNfKS1w-1; Thu, 11 Dec 2025 18:17:03 -0500
X-MC-Unique: TAXvkH7NOx2GnGbNNfKS1w-1
X-Mimecast-MFC-AGG-ID: TAXvkH7NOx2GnGbNNfKS1w_1765495023
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8824d5b11easo12038586d6.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 15:17:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495023; x=1766099823;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nS5xyU79VC7pO9m99ZFsFBSh8nnXakLQbi3bsJkRuyw=;
        b=rbjWHW1SedO4v9gpXOVDb2UsgpNItwCSbb/lXByKTL4i10rf9iZnTPNd53zIP5pNOC
         QOhV4wTv1CfnE/HvvGNhw4DiQco+8wfAMAPoH6Vk3CB20TBcJoHNpZAQupIccr9rW3+D
         6zAa7l0YhLQQAVQyqnrk0T4ajPIdVo5+SvAy6qQMiBxhnXO1AbkCyw5bFzjSUrYSUP6Y
         wi46Sm9w3EyDNPTHyuaRY0LR/1J8F33FJqgNDdBc3Uiz+Zz4mzLw5u4kV2/WTxvnHHkV
         O1kpN6EO562UD+uJ9tkzY72ykpt6Mp6WFIn2lQBSCGC64o0otOKztDcD1kMHSt/MbYy+
         Qp1w==
X-Forwarded-Encrypted: i=1; AJvYcCWwGNuDDckA2A4QTHDXVxvl5nC7qg/Ylwz9zuskB0YHOHqegjkLPIsNI+Kun0aBLBOYoa9ej9SNHAM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxMEoVGVGXHR3B2pI6Fdw+C/OCezQDWgrIkrtOJqc95lhSXRNh7
	F0R3jvX6jOQKVxh3jM46Fej1hm4I//VtxA045TbVpYIqu0eve92ClG72+V//2LXC4wnMD227+Tz
	J6AkSzPKIrNWmJJWL1TSINoQwSjGnJn9I4AhpQYdWc3TyfxAyQ7jbp5UIifb9WY4Wioc=
X-Gm-Gg: AY/fxX4xj4WWBmhyvwg6P6ebgYKfnOKJIQaXrNwsCbiruY7EXKvpERO32ordUklIPYc
	7OJWACF6+pHZ6ToA5d+lPshmxXWNFHEQRFpnCjc4cgreAROxlO0RXNKuPZsSSSzpAt21oRRWVHD
	FxxczieHZfZjdqPJSW/nDfYkrvvjqBHUG2AjEhKOytidLOVWC5McNujlYjJ9S6oj0NzCwDPy4nW
	3ac6d2O2qHvdC4MVV+rQt9EF1i1A0p9vxYETgLJDwJyk/QSsnAsjQhiZTBJQk04kTa/dt10itWW
	1/nUSQmEDM11n4PE5RqM8XIt6sp3YzaepndWjpPvyINqX2kSHv4VhhSp2V9H2P31bGZl5Avasmr
	nsXCXhPK6uSwnFSJHqwHcblgOsfQjz4f++4/NAvkqan+mRGf+dY0bpw==
X-Received: by 2002:a05:6214:da3:b0:87c:2bb6:741 with SMTP id 6a1803df08f44-8887e1b44f3mr5869456d6.29.1765495023036;
        Thu, 11 Dec 2025 15:17:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHmZS1L2hV5aQ7zoKqGzhOlVyBusG0wgauo3NmQeNT0uE4Z7Yi8ZXh/Hs5OUyLkYfq61AO84Q==
X-Received: by 2002:a05:6214:da3:b0:87c:2bb6:741 with SMTP id 6a1803df08f44-8887e1b44f3mr5869096d6.29.1765495022716;
        Thu, 11 Dec 2025 15:17:02 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:17:02 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:21 +0900
Subject: [PATCH v3 3/9] phy: mediatek: phy-mtk-hdmi-mt8173: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-3-beae3962f767@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1767; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=dOjKoMKrjNLxDaFcShGY+TJnvlU5rN6Rp3COkTM41N0=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy6tW+pYkrBzwUUlxS0J0x7VsluaTZ6+7OiGG/29C
 o0TxA+mdpSyMIhxMciKKbIsyTUqiEhdZXvvjiYLzBxWJpAhDFycAjCR1qmMDNvD7Qu+nZTe//Nz
 zwtxS0fpvY6eBWGv0n+W8BRfjc2fqcTwv2ByUtGe3QVXa0ztl0SYGceaG7w8xMv6I5Zpvld6Td8
 bDgA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: U8KwAKqi2NE9j7smf7H8sahkPMNyMiGC7SErbroST44_1765495023
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151705_905234_654ACA92 
X-CRM114-Status: GOOD (  12.01  )
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
 drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c
index d04758396046363ab9edc584ae10bf31e9c5fb0f..58c6596c8c20bdacf96a97709b8f5709f447e85b 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c
@@ -118,18 +118,18 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
 	usleep_range(100, 150);
 }
 
-static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long *parent_rate)
+static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
 	struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);
 
-	hdmi_phy->pll_rate = rate;
-	if (rate <= 74250000)
-		*parent_rate = rate;
+	hdmi_phy->pll_rate = req->rate;
+	if (req->rate <= 74250000)
+		req->best_parent_rate = req->rate;
 	else
-		*parent_rate = rate / 2;
+		req->best_parent_rate = req->rate / 2;
 
-	return rate;
+	return 0;
 }
 
 static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -223,7 +223,7 @@ static const struct clk_ops mtk_hdmi_phy_pll_ops = {
 	.prepare = mtk_hdmi_pll_prepare,
 	.unprepare = mtk_hdmi_pll_unprepare,
 	.set_rate = mtk_hdmi_pll_set_rate,
-	.round_rate = mtk_hdmi_pll_round_rate,
+	.determine_rate = mtk_hdmi_pll_determine_rate,
 	.recalc_rate = mtk_hdmi_pll_recalc_rate,
 };
 

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
