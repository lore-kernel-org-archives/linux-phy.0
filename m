Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2DFECA0EC0
	for <linux-phy@archiver.kernel.org>; Sun, 10 Aug 2025 23:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXCoFTf+8RbPGrfHgsdBjdaqrwhOVE1TY0lbiocG+ZM=; b=24sYhuPoA3O6oy
	1JzBMgr3SRDFBv87Rgsw0t1yAjNouKwRPRrlC5dvST1L8jV32SQTF3uJXLacdoMz1FiWfhRJpXhhv
	Htodsakf7qFjMXKEXwmWrrHhI1lK48AtiJvaSNqUe8hqOTXAWy8qiMdDWfw6Ft5H9+W/76771sAVT
	D09QZqKqCie/DsbVV0XNOEVM3miGgBDHQ9kmyGxSwTVy/pAPSceMec6PtndBcOdbUeJ4WT0g8NUlJ
	J0AAim/F7bPDMvzR30OlzMQiTUk7reI5LjYGOutMuW6ss6EyYXRi0QaztYBxeEwfIF6NYmNSaM+pt
	/leSPnu5cWGxkGFSJLGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulF84-00000006ANU-2Hhh;
	Sun, 10 Aug 2025 23:07:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoe-000000068Fw-4Bs0
	for linux-phy@bombadil.infradead.org;
	Sun, 10 Aug 2025 22:47:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=cNnDUdz3gK4q6slcX3XODNycmDK0nBwCY+DO25+Es8I=; b=KLjLxRrdbIeCwmnDQhKGtfXT7G
	6SZxSZpsyIsEa27MX9WkD1pRLQPzPOwvzUW0ml7nUZ6Qf3VbynV0GA5WLXvIdVUTmgLXr1+YvSTnZ
	86iO3pzc4+H9SW83vjy5boCad+iNUfmZtPfw9jEYff7CA0MGQpPtvTB4Q2uJUrj7fvj1ZnRrZSF2I
	eCaOeVsTQeI/w6pT3Z3dn+xbwor96HPuFvahs4w30c61n68Op5KVxlbcCbWkT4x1JpLaw+O3Rce4B
	U/CHZZk5BGBDNxrH1D8DCDhvnloTCohSdkrMWFEaY3QTd/xVJFVwAEyu9m17/aoH03Pd6+N54EM+u
	F5nJUoLA==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoc-0000000FJkC-0gYn
	for linux-phy@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cNnDUdz3gK4q6slcX3XODNycmDK0nBwCY+DO25+Es8I=;
	b=Yp8ZYcFDI85N/TeY38Gy1cvG9KYEQ/EohcnDAZqxIHCHk1CEtPiTdcU1PvQ2EURVvnqM9L
	+79Q97LB1y7ACEx/BbJFObgprqpTUgi0muP02iGYxoed2bzXZ4lerbFKczso0Fu+eae8J6
	RAljLFuC6iM4LPOuhdY/VqFxu7GrK7A=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cNnDUdz3gK4q6slcX3XODNycmDK0nBwCY+DO25+Es8I=;
	b=Yp8ZYcFDI85N/TeY38Gy1cvG9KYEQ/EohcnDAZqxIHCHk1CEtPiTdcU1PvQ2EURVvnqM9L
	+79Q97LB1y7ACEx/BbJFObgprqpTUgi0muP02iGYxoed2bzXZ4lerbFKczso0Fu+eae8J6
	RAljLFuC6iM4LPOuhdY/VqFxu7GrK7A=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-133-E2PUX6_mNHeFEPrZkqwfBw-1; Sun, 10 Aug 2025 18:46:54 -0400
X-MC-Unique: E2PUX6_mNHeFEPrZkqwfBw-1
X-Mimecast-MFC-AGG-ID: E2PUX6_mNHeFEPrZkqwfBw_1754866013
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b065932d0bso119193571cf.3
        for <linux-phy@lists.infradead.org>; Sun, 10 Aug 2025 15:46:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754866013; x=1755470813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cNnDUdz3gK4q6slcX3XODNycmDK0nBwCY+DO25+Es8I=;
        b=H9eJl7nzJdiw4Mxl6AifnA7x3/i6V5xbGkewwLlf6RRlZJd6mvUSLfncgRItrSO3eS
         NjvUTNxyyY2lXRBF1u8gYQUwZiaEEUHkgUk2KUST44z18fO5CIDPFy0mE1Z4bLka8B45
         5wFdUObUTscCjyn2h34plxv6kzkDKL3PjM8tzpAT/3FfLREbLK1fRidI7P/bJb+JNu72
         d7TQdfjR/PfFF7WBgG5XuyGDz5EtT3iF/kOFMVZwDfmOnDFjVLovUpfkEp6BIf+rLjot
         gDJpIek2XYk8b52N342TeR12LHgnPhs8m9M2dUxXL/02tlx348f6YeuTsMTpjfekvSCg
         zaxw==
X-Gm-Message-State: AOJu0YyO3W+v9spz2KaHDVLRLsJ9uSTtqm4rIUJhYfen+jo56mj9VC1I
	z7HxoSEj+42OL/wXS25TswailaDYnXlEwKq5z9U7pspj5fWOl9P0kFBQiN5nQUR2GiBeh5yratA
	LZNo6SzPcbVrA7iaQFm0LjosSK4c3yfmcdUy/rgpH88VtvsLI998m7ZyKtop3hwk2nKY=
X-Gm-Gg: ASbGnctuJimLVs6VLrsKIKkTTUdae8V+jj7cV1p7Nsa4/ApT8ZlMKcerQYCE7qmzq2J
	PmgHkLpVHmg1u/FRl6hKH189OJsGRNHsUIg2UqdFOcsWFaLFQ69F1F0cLC2syLlM8eFHv1sjbUY
	WGx/UoevfRaOArmpEw8yG4piwCrTJMCa6QPygPNotNeO2vEFhM8a0eMApCddLp/GbY6LWYUZTQC
	+2QDE4ddNOPAzOu4uH6ah6BVP+OQonpAieCLn0Y37ixaviB1/vB2k/jCE3qT1nEliQJ8WmobG7Y
	biD2g+3+PwdOQKfOm2sPRHotc7TG4p9W4EW6Gfvi6uGqQHbHE2EkshLfOOkzzLECnS1Y62z+I4L
	EQwN+0w==
X-Received: by 2002:a05:622a:4c06:b0:4b0:9c0c:f62c with SMTP id d75a77b69052e-4b0aedd616emr157202851cf.31.1754866013417;
        Sun, 10 Aug 2025 15:46:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzBkZptPsYAU3FTRK+ndIewqVNVtwKayuUxmee7QLaZcahzXf2pV/ZFq3ye47SvzpbuHnnjg==
X-Received: by 2002:a05:622a:4c06:b0:4b0:9c0c:f62c with SMTP id d75a77b69052e-4b0aedd616emr157202631cf.31.1754866013021;
        Sun, 10 Aug 2025 15:46:53 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:51 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:35 -0400
Subject: [PATCH v2 7/9] phy: rockchip: phy-rockchip-inno-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-7-9162470bb9f2@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=3209;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=cKQDgyjW9ziRVEOEeZhANbLz60Yx7I/xu3+zURpXhB8=;
 b=ubxW3dDssQ9yAkb8tdXuvrTvn/pHg2yvGTU+fNLDZ2kHxtV9S6BpsFJwTSIz6e+KtTNUexPkp
 SQMN9QW7undDFAjxcu/0ARBSNmYy90wYl7KSLg0AAAuddMqm2btJcAi
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0VNIDY2-aYY3c4yVIZLNEkTGO7yLxN3mKq5xsVZn534_1754866013
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234658_459320_2ADF2809 
X-CRM114-Status: GOOD (  12.07  )
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
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 30 ++++++++++++++-------------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 8dcc2bb777b5455d21a10f06c5ad842b2ddbc834..1483907413faa5ce1dc8614db05e6e929410404d 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -749,22 +749,23 @@ unsigned long inno_hdmi_phy_rk3228_clk_recalc_rate(struct clk_hw *hw,
 	return vco;
 }
 
-static long inno_hdmi_phy_rk3228_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate,
-						unsigned long *parent_rate)
+static int inno_hdmi_phy_rk3228_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	const struct pre_pll_config *cfg = pre_pll_cfg_table;
 
-	rate = (rate / 1000) * 1000;
+	req->rate = (req->rate / 1000) * 1000;
 
 	for (; cfg->pixclock != 0; cfg++)
-		if (cfg->pixclock == rate && !cfg->fracdiv)
+		if (cfg->pixclock == req->rate && !cfg->fracdiv)
 			break;
 
 	if (cfg->pixclock == 0)
 		return -EINVAL;
 
-	return cfg->pixclock;
+	req->rate = cfg->pixclock;
+
+	return 0;
 }
 
 static int inno_hdmi_phy_rk3228_clk_set_rate(struct clk_hw *hw,
@@ -835,7 +836,7 @@ static const struct clk_ops inno_hdmi_phy_rk3228_clk_ops = {
 	.unprepare = inno_hdmi_phy_rk3228_clk_unprepare,
 	.is_prepared = inno_hdmi_phy_rk3228_clk_is_prepared,
 	.recalc_rate = inno_hdmi_phy_rk3228_clk_recalc_rate,
-	.round_rate = inno_hdmi_phy_rk3228_clk_round_rate,
+	.determine_rate = inno_hdmi_phy_rk3228_clk_determine_rate,
 	.set_rate = inno_hdmi_phy_rk3228_clk_set_rate,
 };
 
@@ -906,22 +907,23 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 	return inno->pixclock;
 }
 
-static long inno_hdmi_phy_rk3328_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate,
-						unsigned long *parent_rate)
+static int inno_hdmi_phy_rk3328_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	const struct pre_pll_config *cfg = pre_pll_cfg_table;
 
-	rate = (rate / 1000) * 1000;
+	req->rate = (req->rate / 1000) * 1000;
 
 	for (; cfg->pixclock != 0; cfg++)
-		if (cfg->pixclock == rate)
+		if (cfg->pixclock == req->rate)
 			break;
 
 	if (cfg->pixclock == 0)
 		return -EINVAL;
 
-	return cfg->pixclock;
+	req->rate = cfg->pixclock;
+
+	return 0;
 }
 
 static int inno_hdmi_phy_rk3328_clk_set_rate(struct clk_hw *hw,
@@ -989,7 +991,7 @@ static const struct clk_ops inno_hdmi_phy_rk3328_clk_ops = {
 	.unprepare = inno_hdmi_phy_rk3328_clk_unprepare,
 	.is_prepared = inno_hdmi_phy_rk3328_clk_is_prepared,
 	.recalc_rate = inno_hdmi_phy_rk3328_clk_recalc_rate,
-	.round_rate = inno_hdmi_phy_rk3328_clk_round_rate,
+	.determine_rate = inno_hdmi_phy_rk3328_clk_determine_rate,
 	.set_rate = inno_hdmi_phy_rk3328_clk_set_rate,
 };
 

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
