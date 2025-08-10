Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 357D1CA0EC1
	for <linux-phy@archiver.kernel.org>; Sun, 10 Aug 2025 22:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwm5tBbCT/+6BIpAD/kKnRDnG4FmYl42vMQPz1jUyzE=; b=VICfOYwr349NP3
	h8YP+hcvfAqzhXSFR1A+7rzoxxiCZW/FTh7gTMfoV9XaGRXXCDl1LczK50/ednRiCU56r38AjlDPb
	CxaZzUxKPVdVxFkWG0q6spKua4a/n/KPa+iJZO5bkSgc2V1gPtLUqu+wY63I9OgLQ1FkPlFwwbiOc
	yQj+Au2UkfjqaDSnvsGlAwlA+QfCHXWNInomafT8QjoS627wKztKRnc3Uqx7y9+aBecUfw4ueSIEp
	zFIOqNAoWIQgupqgnDJqKxtgbzyUq/z4/f0ayzSkzem//9XIQzkL4gW+CpG2RS/rag/+Y8Gzef9xk
	Pd9n9oZ1M9enDL0BSLtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEvK-000000068qy-3rAr;
	Sun, 10 Aug 2025 22:53:54 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEo0-00000006844-0Z8v
	for linux-phy@lists.infradead.org;
	Sun, 10 Aug 2025 22:46:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754865979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CYtRvLWH1nEitW0lp1POxLyrQ3/VdPLRfNjB0vWutHg=;
	b=Iy58V6RBGZiiCVIntGmv0oNMbs9BskuJb37wGIhNqB9MYZoT5IkIzVHKq8eq+DFW4WIdnQ
	s+5//FDhOm7JyGtL+t5SvMYoYn4Xini3DtNkPDl/YRFHdxoHY2971/bkoOZBoqskYQiMxI
	mnx/UGBw9hzgSEFBsRB9Vdv6wF8Snsw=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-34-9v-VKstROzCecOVMJiJ9eg-1; Sun, 10 Aug 2025 18:46:18 -0400
X-MC-Unique: 9v-VKstROzCecOVMJiJ9eg-1
X-Mimecast-MFC-AGG-ID: 9v-VKstROzCecOVMJiJ9eg_1754865977
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b092c12825so110891091cf.1
        for <linux-phy@lists.infradead.org>; Sun, 10 Aug 2025 15:46:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754865977; x=1755470777;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CYtRvLWH1nEitW0lp1POxLyrQ3/VdPLRfNjB0vWutHg=;
        b=Cn6HM1UJa9QZGvrQGz2jGek4nrVOw8TTFSajnxggY0CojVtYwl4HpiV912i/EYU/ja
         hG3zur7yuN8hxsKSy0jUACmRzCrbT+KuIff9zz9JBKN0C4riiEOJoJeBEnf1MPMj246O
         JiNwgpaPAdd8ubnOxPi9euiCuUwrepA0fNsSNNVXP8iGjnDMRmxp6TioqQg4iDVbLPZ7
         dOjDuwhs6tLbIxvFP+Kvd/fyNowuDEMeo+0jRujX4rbpFk9Hk7sBB7Y+3r9eKawwEGw3
         LGx4iATb5opJo79tZv4RhnMmUd9Dr56FMTF0W9potk7jqydRtE1LghNN670i3WA6OmFw
         bKgQ==
X-Gm-Message-State: AOJu0YyP2El+2UEiTvn0rncvKVzpUQG2LYcvfaZ/pbUFIqjk/TKQsdQj
	pSwMialu6Xxtbtqk+alvIFa7xUqCFXQkuGq4IWFVXXxKRzcdOapMsC4KUtB63lstNMaZVLxi4+R
	kiimQTK0E5diPduBjtYngghTdft38W+uve3ZeS6nbQbewvYxRlQNIGUNAELbQFFH6Xbs=
X-Gm-Gg: ASbGncvUvXirSafDBPqV2iE5L9TMeRKMgeB+ZTwKOwOLy+hUKCQuMqym3Y5Vg7gnbGW
	PU1sgiHkpSMNQI5471MUhV9C2WN8nBajR2d+TmFLhWlFUw6OP57/q3tP3DPsskVGbzwPJ62fEV6
	7dQaZWQKoiGxxcT1c1WY45TDvRp+GpcvHo5DGTZCApiNwYioQ03b0Hj2L3ivU3yNgnoo1O2IMK9
	xJPAgAmGpSv+hVio4b5HRJEZE85qx9sssM7+Kvmr5UfGUj/WV2OfrtyHhAzm8cxYwWf2Qc5xNLG
	0/c74If0iYFXLhqxFZWTC5U5rvhRP7jY4fDh5N8gRYuzP76UuOHeG+5ZtavNvOHQHji1J4IBhkg
	xDZ7TEg==
X-Received: by 2002:a05:622a:1a93:b0:4b0:8037:c0fa with SMTP id d75a77b69052e-4b0aed93038mr151727531cf.58.1754865977535;
        Sun, 10 Aug 2025 15:46:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExCDCgOrUi7VTan6/AGqAAE3FbTWvD0DlZHmaitVHPb5PTrx90u14A2hmRLrvSxJ8XKrUUiA==
X-Received: by 2002:a05:622a:1a93:b0:4b0:8037:c0fa with SMTP id d75a77b69052e-4b0aed93038mr151727231cf.58.1754865977145;
        Sun, 10 Aug 2025 15:46:17 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:46:16 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:31 -0400
Subject: [PATCH v2 3/9] phy: mediatek: phy-mtk-hdmi-mt8173: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-3-9162470bb9f2@redhat.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=1767;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=+ttqLK3CCvX22rG8r1u2aky/pyqBIfYJ3wcP4wTqxkI=;
 b=3obEgP8yrDCMdOaBGI+w4Tat/8TZLPDL5bV/fvqowKe5RG+J17OP5TtRquid0xdyZAAnUyd/x
 LCD0oPAU7awC9owBT91elCcJ0kc+tWZOGloj7ttnD+fpn6ULYnrgJiH
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gouaRHwLEvNzoj6eVy6bxiulRJ43KxMJQ0Z87XEgDTU_1754865977
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_154620_240785_58C86A75 
X-CRM114-Status: GOOD (  11.63  )
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
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
