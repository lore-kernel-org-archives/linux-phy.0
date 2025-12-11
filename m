Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BA8DD4335F
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzGEAOzorF35/CqfXnUxW36vur15E5Insg1wzIjMIsY=; b=FOVp7Cq1hxhHn8
	eCT/myPFoq6Ht6zFfxqchqAvA4rKejhEYb+R/w+YlgFLyu5WiHDqBO6t8S+HW3f9b9+AU23RZHnEb
	RrEzsyRF+qo3qFrfaE/rpJ7oye6XbYW5FvzMyfA+b6cllMumkJmzVFZpFbxq6y4Pm4kGXTGY77cL5
	ZnBa5zB8UvO/QVkf87uipRKKB+6c6L9EDKFJLF+LeP1XTrh1rRZXJy8deq1BggxfIPtUkysoNZtvg
	f8QWivJTxO9ZvA8VS2BLhxMKSoWoJCbDD65IgCPWdGelizUnd+MQKgtIwsgjw8vXC7iIW4z0r0uHA
	9hpXI9RGgzc/JR4w/NHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuC-0000000HOXq-1qlm;
	Thu, 11 Dec 2025 23:17:04 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpu6-0000000HOT2-20Ma
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CWALxHwSjMipreZEX2Qfe1SphmPwPCWuPZgQtUxY9NY=;
	b=hx3VIWw1g/dpeYylkTZtdcxpBB0T9t2KJkyKB3m7w4UFYFIno0bS9r+LoicOIpA1FVnPtT
	XsLPCEX5WmxnijRdh1LHTLdnODoXnGKRFz1TMmUQSS+movyuQRiU6TZ1uqF/cC/P/idIvz
	bWjojXkEhYgKGEl+mRAfGvo+N/6paPI=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-518-sQ1-kvxiMF26U9s5zI0NNg-1; Thu, 11 Dec 2025 18:16:56 -0500
X-MC-Unique: sQ1-kvxiMF26U9s5zI0NNg-1
X-Mimecast-MFC-AGG-ID: sQ1-kvxiMF26U9s5zI0NNg_1765495016
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b1d8f56e24so147580885a.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 15:16:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495016; x=1766099816;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CWALxHwSjMipreZEX2Qfe1SphmPwPCWuPZgQtUxY9NY=;
        b=wHQsuSAgrkfmZoQ9EhaXn85IJ39kfjToD5s92VFYp597zO0hsHjDFYne3y0nQUccLG
         hJiY2dmOw0LqRDZ8u6uB73I4X1yGUxkXGaRJLb5s8zO5LGc9LaeJnt4eLHFG9G7T442x
         Ksprieu1hMKfBQFqsV5rIjgXUXdnHwZ7vqs2u7TTpmGNFJ/2IboydxaKiN3nsr5Iis5J
         l7kkRDHXfujVU3R/mGLgPfSqohSMl0IeWK5ma0dvat9J0Q8dmgVlx8CSHmqgkfniGIE+
         5Am0LQCIXeTOkAROdtN5FAr0AcL1TpQWjMiWI7DLkdz9soSn8oFIKtpZynoghSvQWC7h
         O4RQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzM9oI1S2oIY3bv2rnJrryr3z8a8nhpP5F5kh0v0FIzpgLATNTi4rsGr+BDtnS1xCdeXLqpM99AAM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwLGnLgp+QGwRANKd+jXgmvATv+E1Lq/lzNIF0to3vNNISame+g
	YZnTEy/bENiQsLhbhebcTyaSQHbTlIPSQc5imWXyJ3QfHNtP+zt5R+69OGQJZZvhObZ8mpoq/kK
	jnPDgfA9iJu+jXHkyxe34iCvpx8vEfxdsl1yqnBv9uwBk2WsUj4m1n0NTlo6xrQ8kiR8=
X-Gm-Gg: AY/fxX5sMU/fB5o8JAz/fZRbnzA/u9UiTX4Wy26e5E/tabH9HqWWT1TaRRxkSQ43e6a
	Ju9mscrZUFwZhYclFvO3n2gJjmnK8NsjqgX9lOTzKRODJ/JIvKgfdRrGGFkvDsy3CVbIiBi21qW
	TlqpyLy9lDEQj2CbacRny50qNY4U3tYizID+09PrkYMWctOiGbQcicmXjQkrGZGNm/4KHsZAAz8
	wmpumXq5reKd2hdGYyqJnf0bB+vPHVZDz0tR64U6PqNuH4u/pR9vWUBXITONya+ARzFr5CmeiVs
	EbnuR2Kq7YMP8tcEoRGvRbzaj9adbTkiWdkxsFLcK4N/qbHoKl5hGx/pu33RX56xDZWUAXG/0+K
	bC6buk5J+QqbzO0uBETxpg78g826NJIkdaaqP/o46IAd7jZ9QnJuwdg==
X-Received: by 2002:a05:620a:29d2:b0:8b1:8858:6ead with SMTP id af79cd13be357-8bb399d90bamr39282285a.11.1765495015859;
        Thu, 11 Dec 2025 15:16:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH2s8wwcOmxwXaF7bKZgVpwocL48364JqbwVZMFBYNgdRIsZcitJ0mH0HHmDGJg8J0urTG96Q==
X-Received: by 2002:a05:620a:29d2:b0:8b1:8858:6ead with SMTP id af79cd13be357-8bb399d90bamr39277685a.11.1765495015467;
        Thu, 11 Dec 2025 15:16:55 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:16:54 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:20 +0900
Subject: [PATCH v3 2/9] phy: mediatek: phy-mtk-hdmi-mt2701: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-2-beae3962f767@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1429; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=b7GdsrXKjZPd7UPmB5Kvn1MxBtjV4+5gYAk+zH2wXY4=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy4eruXZckDLUdGk4NCf1DMH3S23NTlWqza05L27d
 j9Mk3l3RykLgxgXg6yYIsuSXKOCiNRVtvfuaLLAzGFlAhnCwMUpABN5vo3hv/s5eRZ5xg+sCw0l
 u954X731i2Wfsyj7rWvTHExexWhducDwP2M694nJjgtaZ3hrX35Y2b7FPuB4oXXsynttk8VNEja
 v4wYA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: B3ZFo2kserVmDV-IAoiie80VWBM1cVLJyahdsHitgdQ_1765495016
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151658_586950_7BB8187E 
X-CRM114-Status: GOOD (  11.99  )
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
 drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
index e51b2d13eab473dddace48c75c2a8d73c8c65635..b0b6497e7eedcb6867541b573d22156ded29a4d5 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c
@@ -90,10 +90,10 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
 	usleep_range(80, 100);
 }
 
-static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long *parent_rate)
+static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
-	return rate;
+	return 0;
 }
 
 static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -170,7 +170,7 @@ static const struct clk_ops mtk_hdmi_phy_pll_ops = {
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
