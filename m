Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51E92C83F1B
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgJc2v00h7u46qsjZie6zyNOYOF4A85ZfcgxR0f/GQI=; b=luJFuxS2rBjjhD
	SMFCmaxWskz/02lg3c/wrB9yMnoG8kOsGILLtFOcF1bNMquk7gh7f8r5VVDY8+68/TDnTtWX0IP26
	/sgUJRwT3o9G/RCRRay55HF+d5yKoIiw/C81TK4KIePhoE1/MyiaD1dNfk6SkEQzb9bP/2cHwNieP
	X6bP4jLAbeAJLGjOpDw+Df3gzimzyOeJqcRop8pY9fea4NJ7RTPV4LVMW4xgtiTwEzwAuQkerCdZg
	WpN4jQkNw4jDm7cOv6HQB1AiHJHlvGgJ507RdjBVoEw2uH+v/w91M8DJHqnR2ZEToiOpCiXnqqfch
	TRa5P9pg2fJtMA/EwT8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw0O-0000000ChiS-0ATP;
	Thu, 10 Jul 2025 18:28:24 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtox-0000000CMMI-0d4t
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163706;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g80E3oSz/omJ6RwmtY0/wAHZ8ite3UzHVCEfpHhebcI=;
	b=I87lmJu/AZsytY/eXYttIRU0PlA4rnM+dviEDMuTuOdXYiBwXT5DbOXEnVvgHlwIeIK0vl
	T91Nm1aQG7TE9a0ndVpVDV+m3zmltYprD8cpUA7niwz55pNCfumvNmEWCQoBHx2bDKPd1P
	MQ6ts90YBlzuTAqEUmXub4jmKmVHa5A=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-255-TrGd1gNXOVy541MPPUpKQg-1; Thu, 10 Jul 2025 12:08:25 -0400
X-MC-Unique: TrGd1gNXOVy541MPPUpKQg-1
X-Mimecast-MFC-AGG-ID: TrGd1gNXOVy541MPPUpKQg_1752163705
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4a9764b4dc9so20730651cf.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:08:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163704; x=1752768504;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g80E3oSz/omJ6RwmtY0/wAHZ8ite3UzHVCEfpHhebcI=;
        b=uGTi2fB7pYuqY5moE8bYKlUSemj3T/YEOq7y7MEzhRSYx7JEktotDeokD+Q72PqKL0
         2YAZcDuaIOLWzlNW9DXZN36tm31fDfXeDC60RgmRLpAoqfjJsUiqAsyO4wKEam8MYHf0
         OCvlCTd32/9p9UiKvpSF7x6N4M+U5c0PeK00Qf1QhHRTtrcHZbHif/1wT1AgCJV4i8Tk
         gvkU33IiXjkAgkLudYHuql2AQH2q79k7VzN8U20byZdCff8BbioQEHW83/+hwMJPFPYt
         HDSPw7ggP+cvIcvTxRZwmTZSiKUkK1FiDqe+Ku9jRNUPaDg79P57BWEcMiSVhzN0A30S
         9XPg==
X-Forwarded-Encrypted: i=1; AJvYcCUcP6xYqplK6g+1dSesx1jtS6oSJj3WMFAE6YAoOyvzUrHxJ3TWJ1zdGvNoFcRBiZWPPvmabgqqgps=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzc9t7SB+6OZI3MggTl0fnh5I+38zFfXzqY32orbqgnn5pOLQ+V
	uEAU+NhTyETEr2S87ImM15LGFltVzwY8Xk+H/nDxLuOiy9YUruNKL9RhO/x7AVhMUqtsTCK//Y8
	3icy8ZQ2d0h3hRvrCpoVkHSch1/dNkGJa/N1i0ca5p4OU1mqVdA+DNi01E5LocCc54DFgKT6qyO
	2kFkyW7WTbaRXTkTD2jJUTZK9E1C66TkJjJjJ+I6xQCoX/12eHcQ==
X-Gm-Gg: ASbGncuYWwZBEGeOWZFOcvT9Dkxw27b7GlZWHMBHd0x8Cf6V18nWFLzVk/2HM+izA0Y
	csDT8p9L3thmt5q/3v36KuRDcZe5V6YrUewSewshIwTIOCLgrE50JXV+KucyuI7UeJfKtapkX6x
	Dd1s/im/B162ZYy1hNGd4qYmaDDj3KyyRzC6UYResrtNGja5wDGZHOfi9+scOF8Gt1C+e+QD/+g
	NmdHhw9KFt/1KWPgNXwKc61O3Ql//AOuZGesSHWH6Vjr2m9th8fDV4JKeBdCEf2Kungq6GhU3Ag
	JcJMpVzmD3U1eWtNIIEGrE1WroSH4rnPnYiKASMWAH9V5+KMruTmPbFSJPqq
X-Received: by 2002:ad4:596a:0:b0:704:761c:d021 with SMTP id 6a1803df08f44-704980653a9mr39030536d6.12.1752163703290;
        Thu, 10 Jul 2025 09:08:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdCZQ7W3y8kThWl4w+CnUCECNX6Cyj79KFh3PeC/HpUcHl6P8QBnf3iscE4pNrdpapav2INA==
X-Received: by 2002:ad4:596a:0:b0:704:761c:d021 with SMTP id 6a1803df08f44-704980653a9mr39029866d6.12.1752163702588;
        Thu, 10 Jul 2025 09:08:22 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:22 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:16 -0400
Subject: [PATCH 6/9] phy: mediatek: phy-mtk-mipi-dsi-mt8183: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-6-0ff274055e42@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1507;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=ZKlsIvlM5HHyda796a+VTO47/qeucu/BCMXwHXG/S40=;
 b=+r3EuMe/pzh9qF2oPdX67HS2VmnZ350abewNM1edJtWvBPtHINXt26quhidSdRFg7SeVLEzsu
 YVJmnDogbgKAaAbXcN1nbXJrSBi27Fk+BJ7qXWfiPpZHj+x2CtpRepu
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 72JhehYvhkj_D0ZVOQREhl0NmiU_wG6CURJ95G_kpqo_1752163705
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090827_255517_2CC6B4BC 
X-CRM114-Status: GOOD (  11.70  )
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
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
