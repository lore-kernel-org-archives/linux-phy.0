Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A80BCCFA19
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 23:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjo83y80rxL2wXSnslofIMw4hebn/eN09HWPTahL8qE=; b=NE4ym4lzJ+CQ7b
	gpj0J4kGGC0SXPwEI+GNwpRBPVOcmWPH4LbJ01CR4uGAxOc8rIsmr4MEO6005JiEkjGlu4f7KDcgG
	89xdhFvRc01OD2iDXqVaU99Ti+69rhGhaf9jJxru9pGBySYL1nnH54UnsmsDCT1P3fAUr855IzIl2
	kZNKqec/1+A67X9//vWjM9bEU4ZUYnM5s3F5E1rSOBv/OUfUTLngGYWuVSKJPGXEpp7fLGMkYsgOI
	/2Z6+qwvLL1jf5WqUM73kyCSWgqz1a5c9kIVmqfAUE+C37j48s3ill6dKFRMyrWZDIJvQYHXXHY+V
	l1I/39BrJEfArNyvvvcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NT-0000000GN2b-0pMg;
	Thu, 06 Nov 2025 23:26:51 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NQ-0000000GMyc-1x7t
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 23:26:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471607;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=akq4xHfr7o1c6LF1BQGU3I527bH0Z+3rmigIHrwqrio=;
	b=H9IXuxLW2qWZOzujRWilzz7kcv8xReRtaKgJJlDtkuD0hD8nGy6qN3190DjYWFRV8/6coh
	mb494Q7xPxSM3xSJHSuvRu62AMM0f++cIWSFBu1YkBYGBbEGB69gkpW+5OMJGdDlVl2JIX
	a1hklEnJGM9TlmNZxlVJ5Bi7ej3vRNg=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-t3ouCTlyM6eEO3M2aEtlow-1; Thu, 06 Nov 2025 18:26:46 -0500
X-MC-Unique: t3ouCTlyM6eEO3M2aEtlow-1
X-Mimecast-MFC-AGG-ID: t3ouCTlyM6eEO3M2aEtlow_1762471606
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87fb496e4d1so9026886d6.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 15:26:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471606; x=1763076406;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=akq4xHfr7o1c6LF1BQGU3I527bH0Z+3rmigIHrwqrio=;
        b=s9Y1F3Qb4FoMx7wc/YH6ufyXVGknRGU53CpALpgojbbBzdz4PO+q8QJihIufp45nZs
         1/AClbmCoFalNmh2IxVlk8d4EPIxtzH3UceJGDV9L9Klwo93q7ixnwXVaZlGhyO5SVqv
         eB6invHwM7zyZIZBMr1lhkzrtqeg1UlAVyBJJRb9MFhgr2ZK4IxOgeAAPL1YO701Bzgs
         o4X4ouQZqqBnA+BiwhHfz3eBcN25wTV9fQ2yAiLbDzKTXUYh+6bXsryTL8yoliWMjhov
         TllNJYKhHt8VPF70HTmPz6CaYkJMLJogHS/RhXMvoRhUlKEId1DkrptWJOuDrMBPWs3z
         blnw==
X-Forwarded-Encrypted: i=1; AJvYcCWmR5uo+STNSCZIxM/km/XLO4ug0aOQRBoKGMNX/KnrYycNl61NrfOXQqqiTDH7xyuoHxPuHIbpFsk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyz6IY5pE/FiaAmyPN+LFAlfFrka9OqM78lt2GplVsWHDa5mJ4V
	U15eQiMO3sHIDluL82tetCuZGnQ14wqHM4cOCPvUhWDr2RNXzPGb0pkB/16xKAvTaCYYjGKczFL
	V3ozSMbdy1BUcyMKtriUJMNOBkaZlc2H04md0uir7P6cI1HXLQghIZVObdQyzSEKlEcU=
X-Gm-Gg: ASbGncttkV4v0KRwZ6YvKb2VuUhQarnI1+Mg91WQ4F2um0Y9a7qOwb1DDY/7/NYwCQG
	lv7a0SJ/O/tO9ssEe9r6LxNwaOToXTCdeeLDGvvyiD9v1sqZhd5jcv4GhJIr+Cnx4vvHBYQFv7W
	qxnVVoJqp5iz1FrO9FFZpkh+r9hYrqZ6h/dVxICpOLPqJWyKm161LnLx/AntqI8hAMuyD+DXgXo
	61SPNoUFmfSSau3Lxou6tf5oEopj5Bv48psFE7TcXe/NDLclBEeAj5ShBwwsebfCMtXbpSHgsjN
	0OWYYV4ND3texsLOAnpQUt4UEULCltFHASeZTFmoNN0qlGHRUYF3yb4OfkqIf37bTRo50rLCRoR
	hqkj0Kc4J6bgo/yM+EU5GIeTRgPomcVbyB7NDpkekhg==
X-Received: by 2002:ad4:5ced:0:b0:796:5c30:b079 with SMTP id 6a1803df08f44-8817678d8e7mr19316156d6.43.1762471606073;
        Thu, 06 Nov 2025 15:26:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFHwlRC8CZ2UFXaZBcGupUhAP3gsyq39my6h5pJeWpOeH+fDN/RFDAKGIUl3UBkcMQENq+LCg==
X-Received: by 2002:ad4:5ced:0:b0:796:5c30:b079 with SMTP id 6a1803df08f44-8817678d8e7mr19315736d6.43.1762471605711;
        Thu, 06 Nov 2025 15:26:45 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:26:45 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:49 -0500
Subject: [PATCH v2 RESEND 3/9] phy: mediatek: phy-mtk-hdmi-mt8173: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-3-e2058963bfb1@redhat.com>
References: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
In-Reply-To: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1767; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=N8o/S8JYpE+P94OMt6ofvyUqz51LnCLNCgONjtOPtQk=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RY8/PBwxpQIzmk34ntPmseIsDDNz1O4qinfnm5ye
 e/uLa+0OkpZGMS4GGTFFFmW5BoVRKSusr13R5MFZg4rE8gQBi5OAZgI/3lGhl3u+fZzhdU+/Dze
 fFh16+5wt2rZRwu4T3yXfO8lq/V7uinD//wHB3T5l/r0mnFP1Vf89iOU+XbonQtZOUZNP5rz76e
 cZgAA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: nPGKVdwxRj6zn5VJPZf2LBiQi3_Rc87mXFrZBkbX1no_1762471606
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152649_087289_30A87C57 
X-CRM114-Status: GOOD (  12.86  )
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
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
