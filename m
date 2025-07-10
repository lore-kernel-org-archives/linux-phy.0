Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23AD4C83F17
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 18:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SaCmW4uTZd0O179+5jLdmOkUfeyKxwrfEUd4cYGWXg=; b=w+n7IBLfJj0aku
	aAbHP5RZyQbqwI79wfw8B+DEuiHfSnOV2xTnfa+c4XviHN58tRaqKxr+jscThMh6D8POUxcbheQR5
	fc/Zbk4APT0G4LBKqbVzlNsHBePxItxbY2OoQ0/n7Za9l+6Dh7CXiboZYI0RAYxaxaPr9+zFcUCfT
	Oh03U6DHAqCPKTXzRkEQqWBKWSKhAuQl8IzWej487cFX2gOVkA9S9b08VaQ2S1GDFtu7EFNZX0JP+
	LrWOBU0MFm3OAKIi5gBvD1GingmUtxno7YSy5ET/JdiirKIwksBW4USB+nXYckICDUZHd5Hqmd7+z
	6T2t4swi1RUme4trMMgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw12-0000000Ci0B-3lag;
	Thu, 10 Jul 2025 18:29:04 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtqH-0000000CMdX-3lcx
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 16:09:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163789;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4I0PFIaMBaCPYEhsVGTxsNMaZSF2zv8K67vNW2wzfuw=;
	b=HTngQiw0wRi5Zja/L5aVDy+5yeYkjbej2AIqhDVhLbh7eZRk0MudZNNfg8Cx70zifcK1pb
	6H0MjWtt6c7nUaUfEuia+kpb0pIrEHSVh0wgNnk09d3SzeD9hT0G6Fnoyl6wJL+SfRhO16
	Bb/RezjxuCc/bIwst0QLZFq4gTparFg=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-680-igLjsfS2MmuQADvt5D4ibw-1; Thu, 10 Jul 2025 12:08:20 -0400
X-MC-Unique: igLjsfS2MmuQADvt5D4ibw-1
X-Mimecast-MFC-AGG-ID: igLjsfS2MmuQADvt5D4ibw_1752163700
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-700c2d3f3d6so13262056d6.2
        for <linux-phy@lists.infradead.org>; Thu, 10 Jul 2025 09:08:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163699; x=1752768499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4I0PFIaMBaCPYEhsVGTxsNMaZSF2zv8K67vNW2wzfuw=;
        b=j+dkWGz7NdJoNLY7i6nMSle/fzxK3PkJZtB/vYYf6m6MXBYKbymECH1gZ/2bD1B1Z4
         VKIjBTRRS0cWLkdw1jCmtFWrCK4sDgjaP+n9HhtB81gDB4kOPnUsYIBJvhPnPBYCXDuO
         QL1fu+ZXHlRMTUPn2XZJIXYhdXUxztacuZWMTkXOuirZ+aKX9Aa8j8ErYH0Gt9iP5So+
         ByFRQ+j1LJALiaQxaqNnSLEd5RaR9pJx+wKCPhUPi46FdSLzBNVFl1CxzGDPjvjUqyf+
         8mU5PgqxJ7mf4WFf7SAO8fOizFN8Ht2Bj8Fwxh12QBLxNELgrp86WG9YsPtPw2RozmYZ
         kVBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmAK9ZsXWqVZWkiG5N3j8x0oM7QihZyo9B1sPaqBqmvbjeXYMyNGg4DQBULOqXGjIO6pESIWPrE80=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVCao3Hqw3K3YhZsPH3qFKhJWnf4mGS50QeR1NiFzUUMQqDQVT
	eQrzBGXQG3gjxIJA7fTsYjgYoFBPZhGh6va1rePpPNasO+dnSvItfZZYdxgPKlJtdNqcFlRMxDW
	xz1F8Ky9G/G5HwJKbh4LfMm/It38cIFwNpCQZZxO8j1MuZ7HwEzxnFFvDony4AEey79E/tI2WtI
	FAoM8hv0JjJ5AevFP4XV0koLPp1J0XxQsdKvbvPbOWoiMtQdshGw==
X-Gm-Gg: ASbGncvBe+eV81rhKNZMEOw+GSj1giOR1NGtw2eQJ9RIt1nXy2vVxe4HtQH336e/EF5
	jcMRV7H1prgyBvsTLFHiitBfvnzzExgSnFNna9lVGLlx5sh124cnan1AKe2cTFoLMxyTeL6oAdH
	IRV7CP4MQow5uFnfrDiMpsSNGKgaF0/oz3Aj4qD5zndBI0kGjxqGq3LioOs5aDRRAR+k+0WGdsP
	yhn5sLK1b4NqVsEyhXdrN7kIl6MVYKj1ZC3aZ/yAWtXslMEUbMqQy/gB+wlTNAZQ+Z/Fae8i+eU
	VV9FzTtHhNV2/rfacTTV1kGEyh+PzRFeW74PA/DpEgjCtk5Dzsz3D7Dme1eG
X-Received: by 2002:a05:6214:4a84:b0:704:8aaa:319b with SMTP id 6a1803df08f44-70497fab6f5mr54886876d6.7.1752163698948;
        Thu, 10 Jul 2025 09:08:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPjEiUWwXCCHctPequGjvxsmcP2oTYR8PP+05MEZihcEYQLxAz0y6yXBwiYJgaIGBkfIQAEQ==
X-Received: by 2002:a05:6214:4a84:b0:704:8aaa:319b with SMTP id 6a1803df08f44-70497fab6f5mr54885916d6.7.1752163698330;
        Thu, 10 Jul 2025 09:08:18 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:17 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:14 -0400
Subject: [PATCH 4/9] phy: mediatek: phy-mtk-hdmi-mt8195: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-4-0ff274055e42@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1601;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=DwS1eyPB/neaQufQvNJoTsoU5XhXKJIB7F14A2pZwIo=;
 b=4cPcXNvbK3LJUngty9/hS4Cci5iNskdrVCzBboRgMF/vVZq4JO3qCRcMs3ZcshnLpFzqFvn2A
 ZJ4lm2QjCh4CBdhbHz6OimHjO2IugpTJTJVBSFGBISv7EeMJ0RGydsb
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: C3PCzhvMLi4-SnZ8LVEaFv0LND1A7yeLmpeGxPP4cmw_1752163700
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090950_006146_BEAFF734 
X-CRM114-Status: GOOD (  12.91  )
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
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
index b38f3ae26b3f3d8c9e73b43d86510acf6cedb471..1426a2db984d53b91125b18f7725738c44f19555 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
@@ -418,13 +418,13 @@ static int mtk_hdmi_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 	return mtk_hdmi_pll_calc(hdmi_phy, hw, rate, parent_rate);
 }
 
-static long mtk_hdmi_pll_round_rate(struct clk_hw *hw, unsigned long rate,
-				    unsigned long *parent_rate)
+static int mtk_hdmi_pll_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
 {
 	struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);
 
-	hdmi_phy->pll_rate = rate;
-	return rate;
+	hdmi_phy->pll_rate = req->rate;
+	return 0;
 }
 
 static unsigned long mtk_hdmi_pll_recalc_rate(struct clk_hw *hw,
@@ -439,7 +439,7 @@ static const struct clk_ops mtk_hdmi_pll_ops = {
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
