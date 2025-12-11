Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D75CFD43360
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMLS4eSsrOWa5ffu5IU8gFaWPo/kRX9B3DyQ9rBgCYg=; b=TXyt/fERyL9OMX
	tmGFxKulPC3d+8c4KvJj0fwdIXNv6CTJVFsCTIssq1Js+6tNk5kmTGuTyBExQPTLqL3otuWqH8Lb+
	d1HTFZottJHomEHTL/DT2EGizticRDbxq7gpAKyfzFWjRfO0taws49TEzSFr/lNVMwlQaL81ZViX4
	BNWjvhdRJuxUrdcDKcGnV4NgVqOmPWY0RflJOi9FjMTASpIh/fUyAkFTX/+8jFCH56adVV+a/TVc9
	I6APUdAsP9YXpnuR6TJgfQQ0fXJqmu32IorGKm7ZS0XLfLyvZgqaU91b7WzeOx9WaZ92brOlY/L0e
	hSma3Q4Dxxc9MLClkaPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpub-0000000HP29-1jQC;
	Thu, 11 Dec 2025 23:17:29 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuY-0000000HOxA-0Prb
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495045;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UOBVKGehGZ1UeiGLBGWzyHphkl52SdXlMLeqrDHm0DQ=;
	b=d3LBO20b+JzSZ9I236koWicDRr/uF7s7qh7gI6p6wgkDZH3SXtj/ndOvZQkOMV/ogqjM7a
	OVghBadRV0w7PfuxGpGvEatrbYoX0RxphfPpKOSZtkh9mtiiWsf80d8TNwMXc2FKjNofKe
	X3zhnz3wO4A/aFOBDObiZxJosfl7cTY=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-558-u4w2aB45MrOjvlW9MGH1tQ-1; Thu, 11 Dec 2025 18:17:24 -0500
X-MC-Unique: u4w2aB45MrOjvlW9MGH1tQ-1
X-Mimecast-MFC-AGG-ID: u4w2aB45MrOjvlW9MGH1tQ_1765495043
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b9ff555d2dso162811285a.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 15:17:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495043; x=1766099843;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UOBVKGehGZ1UeiGLBGWzyHphkl52SdXlMLeqrDHm0DQ=;
        b=MEYiYd9yUdBkLDPHg/z+xJRRxr0qqRYmvLi39xBrfFGYHDl3pb7/l+felY5b2QKuut
         MZ/JB7Bwo4Gs/VaobrouVnGUq15Xm4q9EEfJQRPh6SDYxre6BJvF8GVP4Wj5LBFAU/rA
         JakPz7A1FRLfgQWii0AVHaPM7+vv8E3yzQhUt0K0G0CtgZJGLucSnPcDMxnUXxwzUevZ
         xh+4k4G3jD/gD+aGZ0jmQ8iXoOIhAb/Mr3t0j1I60505ZxBF0tBzMvoRL6MRB00aeCS9
         rBbqTDxjEXvDUsVaVwiIsAdshX9xFLjOn1z6Ebb9TQSbcwrW59bHQ53SYm/VjpA7yh8I
         LhRg==
X-Forwarded-Encrypted: i=1; AJvYcCWehuAYezEuYdtdflI1PLCY70Hd0u4ozFcyFJmsp1zGKawHJOLQ2EprbjPx2ZCOPq3HvOSN8JvCGxs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzH62dBVpPbtadX/vc6aU76ipyAsSxXwYAQNJLc3dWozmYZRKGV
	t9AHEfEYFwYOhaL9y7HD5t0Y3yA/eDW4pkZL5pByXfM3nzp2y5CFRuiSKxcrRME1Rc1UrCXPzSp
	Vywn1cNh9yhDjksnICKtZUol/QxRJbP+ezGrNDIDXyOfIUQ28erW7zuaP3veqGeBgwg4=
X-Gm-Gg: AY/fxX6X0txB9vnTC354cGc9jptB0s7zzlRo3rD9n3A86BxIIqsqTBp7aY2uAjaDw+V
	I9qsNH+QdZDG+a2c9kY+qmYBVxSdcHAlBmpo7QbM+w9/ECn6czX7yK1Ba73s65o5jKNPunZGnA0
	RzG3jLi6rGn2mwglDnIp4lHvgOcTyCfKDtlY9CO4nWRrjPlqYJFr8xU0JjRXig8rjRKkLYIjZ6z
	nhwAyK2//Ta+1sDdK09Ye4KmBraoFIDDHybQyQobzYVZYeBnSV/YkrYNevswYdBFdF7f5VIsVgB
	vQwPuJE3aUs/c0Few86JHyrWcu9MyWmkO46rCEM0yxisMbYkbJSWTSZ39r6+BmqkdkoJgDhxlMa
	2eyvJSjASNkgr4/7+ZkeFlNGhz9HoNZ9TNLEYLJsH/q8UgL4rb+Bx1g==
X-Received: by 2002:a05:620a:4402:b0:8b2:d56a:f2f3 with SMTP id af79cd13be357-8bb3a39ef0amr29576285a.87.1765495043611;
        Thu, 11 Dec 2025 15:17:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFEKudoWCpFXTWryHiRn7BIWdpxq1jIr+pxWiYKNOGd1R/M6vLU3ldrF09g/tRZdBf2bnSeqw==
X-Received: by 2002:a05:620a:4402:b0:8b2:d56a:f2f3 with SMTP id af79cd13be357-8bb3a39ef0amr29572785a.87.1765495043242;
        Thu, 11 Dec 2025 15:17:23 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:17:22 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:24 +0900
Subject: [PATCH v3 6/9] phy: mediatek: phy-mtk-mipi-dsi-mt8183: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-6-beae3962f767@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1507; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=nor1PtsS8pW+dX0xsLXLZpeucCjaBZDzA44P1ujZuN4=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy5JPn9olfEuTvvj3tw1GWwBGU+VG8TbX8XtsrQ1s
 d435bd/RykLgxgXg6yYIsuSXKOCiNRVtvfuaLLAzGFlAhnCwMUpABNxyWdkaGhpmnjR5MTRYrET
 y9b6nJrZlTA1uHYXU6Dd9BPilnsqrjAyzK5fnHRCReH6NOn5sVMKMza551xlcVQ5G3RQ+MnShfx
 2DAA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: UfqtT48cBsWMQ7XVAKv2xRKvrQcyGiBIck4rUvGjlAA_1765495043
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151726_245999_3A1E68D0 
X-CRM114-Status: GOOD (  11.67  )
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
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
