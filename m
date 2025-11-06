Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E58DCCFA1A
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 23:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QL+Ah+ODXS5Apo5YmVayU4gM8Uo4VRoKOQag86e/7sc=; b=Ft5f0eRk9nbKOd
	UiSHhr0yUB3HPwhwcY9oHnQ5JI+qjcbPutmyyvh+4rIoyxpc6SZsjiCGmpLiKI2uhJYtxkYBJX1gb
	Iun8GxmGeXjUygryLO5V/UIS8x6ag+V8Awz7o4gxzSRKmh1QzlcCGcOUkR1W2HbhEZSGQradpG6d+
	F9wep87AMevkrl+1AovL4T2XrSLJxzHBspVwcYRMMtQBKCt9tn5GyEB3SV4F3TvNJak+zV43CRThn
	Nf9ou4IClPAb0u2ERKV17ByzRo3fLkDFWxhGIIDw0b1ocy5fDQhO/AGOgzFO3S1NYrmM3poZdXrU2
	eFYfI6dh8cfNsYZ+iqMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NO-0000000GMwg-0rhb;
	Thu, 06 Nov 2025 23:26:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9NM-0000000GMsx-0B4J
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 23:26:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471603;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fzzoA0sgvtO6Huy28YTNePP1cZ5wFE7gDr3kf/Jxy+g=;
	b=Q81S2Sq+6doqdnQoTQSrRVKHJiM+lxuqHp5ADmOijVwkW6oqFtBWFrWvY++v/SmpRZqkpC
	OnCb/huEzwbfPjZKm/nvrF8nVuWvm/oX8s2hcUjr3Muuz0ag/6J54fKuWsmSPaq6x49HAl
	YMaCL+ch+Zhg9cUvUr3ZoIJETgPTc4U=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-458-iUWFF-e_ObyR-R8PscuIDA-1; Thu, 06 Nov 2025 18:26:41 -0500
X-MC-Unique: iUWFF-e_ObyR-R8PscuIDA-1
X-Mimecast-MFC-AGG-ID: iUWFF-e_ObyR-R8PscuIDA_1762471601
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8a4c63182so5704851cf.3
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 15:26:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471601; x=1763076401;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fzzoA0sgvtO6Huy28YTNePP1cZ5wFE7gDr3kf/Jxy+g=;
        b=DW3Pknc7nLc0ZdPNrF1CqzySYAJ5BMmqd74KtwDDGlBdn9ukGS6IvVciVopw5yhhFk
         ggv1eVC3jiWSuHEBaWQLFQh3mzd4F4eIk0/rz22EsZGTF7qB8ANu4yuiahepxcEgQf7a
         ssFzXrKy7cDi+fbOo2YtAajC9EFfxdNyjMVqsgQsxYv0R8MIvl72sjgbESk+tfXjE/Pk
         FiboBcYYJ1tiX3NyhU8LvccDUHyprAr225pCZbhF2QR7WLwmQJGPnGvSKTbjICKkeh0T
         9YYm7/UkEWIDZ2QYgGxUBP3S6PLpeU6Lg5/mHpUClhDCwiNebx5K8xUCiR+kzJYK/iF0
         1mAw==
X-Forwarded-Encrypted: i=1; AJvYcCUPm58sogbnAoqE1v7w9AbXk59iArIclTD0wGyzAgijGhJGuzZPMQyCXwuDgIbjcPvGN7BQ9DuMvRM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLbsNqfv2oSIWOgZccFMWd43I6be4QDadU9HlGj7R/di3CRc2+
	0v+eThPwThOh3Lk0rnhTv3zm7wTBUjfnIBQ+zMbn2sg0WSZLVLp7JBBFvH8MmXde6PDyydBt1yQ
	OsmKP0YLH0M4nRif6WMsyptTVUSEAowGrvVcpwFJxDfqbSF/53gQ7mSubk5Hmpj735Io=
X-Gm-Gg: ASbGncuZLty5gsfbDaSu2opEpzJIpr/1bYNTWVoDP8XhzMzqHyDoBOK7wUTIfJBc1ES
	xqYlkuDK+4HB5TNnV5q7DZ47BJqg4KUMyjpvsbRhv6kuYOuaJbx1GSOiH6gkx/VLRQbpxnh6wQW
	8JIlzDbTZiVs4uJVPGWKmdvdNBl0PWYa+rmFm0GuoFSH3+jEgLAJtumGcHWmXWh0Oyio+N9fSB4
	dDdmFGRB7QcLkPeOcOxJi9mZ898twddKShbE566FYmvYgZsBVKeK+42Y0WF1Qgkvc1w0QS3Jhkl
	lKWGq3faEDhYzYWBk+eCQvueoSTh+GhN7e3MR38MSTlbiCMyogcbE96cXYhIZpfskVUkesAutoB
	vJCRP9ZE/8LR1ZbO6hLvhW+wi4steN5koyTW7zRFQ3w==
X-Received: by 2002:ac8:5e0b:0:b0:4ec:f8c7:228e with SMTP id d75a77b69052e-4ed94965d2cmr14670401cf.20.1762471600798;
        Thu, 06 Nov 2025 15:26:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBSY6ZC3uinTD+3Ty3ImTkmn67RZYU0qwyag+7rpP+kdNpFJpdcKxM23Wr/jw9wVVKFtdCLA==
X-Received: by 2002:ac8:5e0b:0:b0:4ec:f8c7:228e with SMTP id d75a77b69052e-4ed94965d2cmr14670131cf.20.1762471600494;
        Thu, 06 Nov 2025 15:26:40 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:26:39 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:48 -0500
Subject: [PATCH v2 RESEND 2/9] phy: mediatek: phy-mtk-hdmi-mt2701: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-2-e2058963bfb1@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1429; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=kakNurIzgUJYDq3FSiWnwOldSD2Dsz8eAB7sKp0pFFg=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RakLvNXLXp4dKGpoLGdvd/lA+kBXBxPQrUnzGDJn
 31ZbNPtjlIWBjEuBlkxRZYluUYFEamrbO/d0WSBmcPKBDKEgYtTACYysYrhr9DBktS9ynMn++tf
 k5w20/RkIMMWe4YlR42kDylzcPtNSWX4n7cyZM6jjhVMr1oMFc86Lt7ee3N2m+epE1GRUfUfZDP
 2swIA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: MbALz54kLg2n7F6K1jl6BWheZhOwSjQsJh-w6cpgGsM_1762471601
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152644_150893_363355DD 
X-CRM114-Status: GOOD (  12.75  )
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
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
