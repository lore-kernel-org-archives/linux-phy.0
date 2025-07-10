Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 371DBC83F17
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0nIwK7UDudqe22mafqg5K3yGajZpxzuONzJCjHk5h2s=; b=lbamRCbEJ+meiC
	o/05AA/3lLNLlc5smYA5N/NuL3AV6mtD68eqoVbihscZBxCGW5U30HDGO8pzUa4uLY5qugjBql46Z
	Zw97fkHtbewMDUT/wUOu6r+9DeeMN3Ns1zjgpxDdr2eMu3Sunm7BnzjenJJwd7ywcVsTtOA89lsgN
	2w0HTvZT1hyanVOCHgDlJ9OsEoDDjmnDOY9hyF8rjZKvASQG1u3FDbG3AV7CEWV7jsFfgwdfkqix+
	PAccq1oIAkPC5HoXzFwxRCNvRUoRRW23gB+ovBfYQiGmjLSMl/f8nN0nWl7/N2McH+AwHeXZdwVj2
	v2oHZjzoGsT/mOylMeSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw0K-0000000Che5-49Qv;
	Thu, 10 Jul 2025 18:28:20 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtoq-0000000CMHh-00pL
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Em92yw37YUfd/ntHD3Imspo2RSo4KaG6Dl0swLQCNKk=;
	b=HEIAfX84M5YAi4Ns0L12CNhZ4z2PgGjTuV1MlSkH4j7iURC4Ybmawh7LvelflgpLJYjal3
	Iik8gthP5xguJ24LvNMOuI9u5NIGksa70we3OZZinPWRl8tJYL19YDq/uoJR935hJ3c3Nb
	AG5WVLVFmoXiexhyjaIH6J8UKcaTk0E=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-617-qixoC-QNP0K5XUkKsXNAnw-1; Thu, 10 Jul 2025 12:08:18 -0400
X-MC-Unique: qixoC-QNP0K5XUkKsXNAnw-1
X-Mimecast-MFC-AGG-ID: qixoC-QNP0K5XUkKsXNAnw_1752163697
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fe182a48acso42940926d6.1
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:08:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163697; x=1752768497;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Em92yw37YUfd/ntHD3Imspo2RSo4KaG6Dl0swLQCNKk=;
        b=XYPTBoS6r4WYPQ706/4hMLf6oleaifaios1S+fSLZ/5cj9cu22I2M1DgVM6vdPl3Xd
         jwwDzETx6Ojl+r3Yt6ZzIeXe7Bp/FwkoM6c1vwXgTlEnOIXFW2yk+eZ6L3TnzH3TDpRJ
         GMQY/YNWUr/JVybDswRnedHpw3FM0OVUI0lfbZyzWCZ1SbvQSejRGBniBRGzcChiK6gd
         Io21UDHfh1kgKfoR6vaxBG9FMMUVaVat5ziCFZpJ6KsB4ouXgTxouQ+TYfWUCKq7tAwn
         v3FQJExgY8K5uDK+/gl4cLuvaTx5utZi7LLTtVCxtFDu/ZUkzUDujR9T5BEg9FrJfUcK
         hhbA==
X-Forwarded-Encrypted: i=1; AJvYcCWsqpXa4MtqfBnH2D3J/O8F3S7voacRDeW+uvQLUm024N5nendEVUMzu1QCJ/BO06tGThyMfXQoaNQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8+TXLhRAfWpl0jhCUR/L12bbfd73yYJG9aOLNSDFpO+Ztrd+V
	sI4axwtRiBpNGL/Khx/E+LgmARJp+NpO1kgwhM9WcG1dLWhHNkIn7LbqvaXmFGvyP+tVorHBfK5
	A4cNm9AJgTe9+F4/QkMCKPJAISDZwB6lEVCUJLG91ll2+EqRErZlX2/9up5zLS2NHR2PYJQiclE
	T/Ezz6zdMU7r8ngRkEfkqL9kdQQPAZefvjWUZDUz6vWY6kNYji2Q==
X-Gm-Gg: ASbGncvYGFmzESjCTsdnVns2jAyAddH0HD4nQj/4u0peqUk3b1UTpQVdilqdVJGcB2i
	HsNROHKGNv4M5eOj3bgQi29vYgSaoyPA1OwP3c3vbmuCnsbYea9ZwpWlYFU7q/6Jc0wC6gnh6Dk
	kY2JjOuAeVOC8hbi3PvUW5Q4/e20wWCugEKAqN24q0E3JWyZVlFKBeN9dCx5tp9FnXtTkDaLy9n
	IEIFPfNEB+hJfB0lMsbcSeH8itMI3BWgQ4MO5WZcrh7OyTgFl7DCmigyw0ijZncBWE+U3HwFqJ9
	PCUAnlmjGxgx+kK9oBUnARoCxHF+r/MC+L+4xbB/JlffR+nas1e5KaIgB/HE
X-Received: by 2002:a05:6214:21c4:b0:6fb:6913:868d with SMTP id 6a1803df08f44-70495b03340mr56700956d6.22.1752163696593;
        Thu, 10 Jul 2025 09:08:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLcSXwBvzMgHcxvaGx+jxenoScUgyuQu1/XLMH/JsUnJsRg9oDtwMu2U2WZdTeBYZEBbFhcQ==
X-Received: by 2002:a05:6214:21c4:b0:6fb:6913:868d with SMTP id 6a1803df08f44-70495b03340mr56699946d6.22.1752163695850;
        Thu, 10 Jul 2025 09:08:15 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:15 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:13 -0400
Subject: [PATCH 3/9] phy: mediatek: phy-mtk-hdmi-mt8173: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-3-0ff274055e42@redhat.com>
References: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
In-Reply-To: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1767;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=4qM0ky7zv1CT6MbG0sETVffzH28Znb5sgT9aMpTi5PM=;
 b=OlOFj1qtOHlC4RTSWWBUoK0UK6p8kJw7bEiAXyh697CDgkPWtlCgHYWxO4MvlcT4VtmGy896s
 MhkQvLZz992BJ4ENElsvaaczY9Qr1s/zBYA7f5mWOE8/m/uo3t62K5q
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: J_dGJyVQ5b1JLYBkcMFYGUMYMABRc8Mvq0B_tJHjVpI_1752163697
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090820_107479_DD0AD680 
X-CRM114-Status: GOOD (  12.14  )
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
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
