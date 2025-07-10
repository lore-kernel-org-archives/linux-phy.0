Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79D65C83F1B
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xfmjtko4XpPGzeUp2zOMkAQ19ZkmpkBESC5+UllqESU=; b=RXk/nMkntQ7din
	KvRDkCKlwQKoJ7xwQz94xz7HRYw+HIqMO0Fe6O9CJPHTRl1ilxkIt2FJb8yV7Q5XYsm9sLc29jw/T
	0J63JFGx606130lHL0/Dxha7grgB3f0IVv86sKOEyyZeYsW8aL8YhRLp7i7RCrPHDJZ88IsV7CEEN
	v/o7d8/aniqmjrQO37aka6JsYqCDif7yafUyBHQYtjKtyen1TI3atpROQZCCdmOiEr7YvwlNgF12z
	59e8u/EbjJ+o56WGWeZZYeGAQRKbFvey4r6tovBtU/Z/0rkVXXNiZfH93FaNBjoqt/USTsaTsgtsT
	0WMhLt+O2zQielH+tMeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw12-0000000Chze-188u;
	Thu, 10 Jul 2025 18:29:04 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtqH-0000000CMdV-1uIy
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:09:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163788;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/4ASla69sSqfjU35JM1zsmkkZLK8k4ITigVacA38LgM=;
	b=P/1l0pYHHSmaVDbueDWOUNlEWimszBC1o4VPHzIAHP+TtJmFZwElYeOs8znfYVHOGyFi/M
	QQOaJUFd38tdEA5XzrB2vl9a5c+L02tJI9au8FbI4GGZSeTqGz1rzlVnDV8LFhsS9MKX1f
	5Js9eQObGNWMvbm8gZgRUHVrLEMkZKo=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-422-PKvlQF5qPfWXJPCOOwm-eQ-1; Thu, 10 Jul 2025 12:08:26 -0400
X-MC-Unique: PKvlQF5qPfWXJPCOOwm-eQ-1
X-Mimecast-MFC-AGG-ID: PKvlQF5qPfWXJPCOOwm-eQ_1752163706
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fe182a48acso42945046d6.1
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:08:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163705; x=1752768505;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/4ASla69sSqfjU35JM1zsmkkZLK8k4ITigVacA38LgM=;
        b=MTnd1U9CwbSrRFY/o1uxp28z4l0ccn8oHfEl5U2u6Id15D/0b6jNCneb5N3+KA/mgd
         BTmbZ1m/cm8f+tQ7gudVRU5PFCTfg4VTNHiQ2keELaqTO1i0r6bt7IXm3qlLSXFlNcx4
         fuTDKda/478Vc4L7WVPSsnCUeUGp6HFaOajuPdiEDo7Re4LjweBgK3IlCmeWWOQpWNDZ
         WqY4wpxIlRH2moIUofypcMxeP7oGbV66O3eYFt6wOzMF6dyNMUkiahst4vMsn4UJXcRV
         GMsHrQZRh3JX8M0GybjKqL8hFCbI7ddXfMfCgjO1mpiZM+pd4gBawxlSLdBYlnuJBKDP
         UuwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcNK2CTE0yikhn+va+4y05Bvehbx9vEOGtiMhYeFa66DqOZHj+a1M+VjzUVXB6HIxMfiJLBIwOxO8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCB2/9imvfML8kH2Bm5dIS6W9U7D9Bb06SGhp/f4pRaG9Rzb2k
	jaKE7LxLb7vxIPTMENusXzpmUcfyV81YmlCB5rXkEm0Q3Qv+bhifcBINZn1NLhsIWGSnn5WLCer
	bMS1e0hgXgqyHoU2EHgpNIqgkOohT6Ie5lCy7GK/O2X2F5JTAmQh+zx1GtgEq0UJVnZcwvHXHuE
	wXy76mtdB5B2Fsjjv5sO/29+kIk5reYBVmxwbT5IJ5Vsjr+3jqjw==
X-Gm-Gg: ASbGncs45L3LiACEsTryJLH21JJGLDs6xvIjW4QgrQJ5y2V1qyHW/ryYJjqpHZGpjLS
	eVmQNzdOlNMVahKKhzQYdW0/P5AEadsA6rVck+ns+QpVxaw8vNysb2INlFTFrUxQOZhh2nXc7Jg
	4Uk3JMjqKRl/S2Y97tp5ReEm89VR1UdskaaEJubAiEi6oBUKnFo7JNkpfYLY1K7eyzM47U8G5n1
	mm/ZjVy8r7cN5rdroStvZPsFplojLSwK6vFeJfZeuDkntuK8BdcdHHL0KPp5Fzt7jVzfx58EBEr
	6pf9uWX+lRjhTNcj1ksowt0msxKv/j5qJB2ovORR/3PebmLmuiryd3MjW6PF
X-Received: by 2002:a05:6214:54c2:b0:704:9584:c370 with SMTP id 6a1803df08f44-70495a595bamr70247916d6.7.1752163701239;
        Thu, 10 Jul 2025 09:08:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDRrDKWwpckJ37fdbyhC+PMLfUgyhQZCTV67/zNoDsc5Ut1ZyXEkNXO6Agbo3M33HxjAj7/A==
X-Received: by 2002:a05:6214:54c2:b0:704:9584:c370 with SMTP id 6a1803df08f44-70495a595bamr70246876d6.7.1752163700571;
        Thu, 10 Jul 2025 09:08:20 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:19 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:15 -0400
Subject: [PATCH 5/9] phy: mediatek: phy-mtk-mipi-dsi-mt8173: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-5-0ff274055e42@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1519;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=Sp7TBqvADBjUTdYv865HJDuwxPugQD7l6ebJ7mJAKsk=;
 b=QdRXZy3WXcCDAKY+nITPfzBZtQ8RpvdKNlvOltT6ZNVcwHEAkVhWAcnk2UBWK7KubiIjAaW2b
 RaP8yKzs4UnCzedb/XCmTGOR6M6qboXHNuqR38QkPjLse9NBJ4Rx33V
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0XC_aqdGbd-5gyS8vIHRJ5mogtiC3InM6oCZr2hvBRE_1752163706
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090949_555715_2311EC23 
X-CRM114-Status: GOOD (  11.91  )
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
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
