Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8501D4335F
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Kuf77438y07g3NfewjNyKgbIJmvpetOxiWaixd48VQ=; b=etRqab/0eGP1Od
	dR7pObnNtEDdOE4aue3ZW0E7yYRRQatl/Lj3hYlgDMjBGrW3TC0EALcuEfZ4awXcFcOJthKDrNAOy
	3hKmvpC2eiZehksX5ch/8rLg3POm+gQ81lQ6laaS/+OMmpF78fReUeDSPJxfPeWnvaelEWRFV57Gr
	a9nRuYr5JzqmUp0xA7GWZUK0Z7tzwvUawllZLPRyrggRV4zogDDgr7LGU1Gy99szsD9fseBrgIyx6
	QhAohehnIaQdwwNecQUWLYlqwX95jZHCilhMVmK06Gxd5PNBY/e7H1T0JmsNYrBVhgZaU9n6ezQSE
	S4N8mJctKYMntjOw8q1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpul-0000000HPGI-0rQD;
	Thu, 11 Dec 2025 23:17:39 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuh-0000000HPA3-1hWg
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495054;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sgu2onmClVBrEtqR34A/IFhyYtiocvS0uvbDkWrkkaM=;
	b=JiaSPXfXVYP3in9S71cYBhJMBwuKy22be0PwedW+btQKb9kiUd1GyzvjhlevoBdT8BtXRS
	2KZs+zsCW2vpSM2dvkgj6UDGW4aO5bBTS9SdLuUajSJ2bgbxhAj+nad6+C19BMndy4oup0
	GtEpreh4vOh2Hvyrbv81P5vwnAfemG8=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-53-nqcaYm2iOLeNx9jn2N2aHg-1; Thu, 11 Dec 2025 18:17:31 -0500
X-MC-Unique: nqcaYm2iOLeNx9jn2N2aHg-1
X-Mimecast-MFC-AGG-ID: nqcaYm2iOLeNx9jn2N2aHg_1765495051
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee25cd2da3so11042411cf.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 15:17:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495051; x=1766099851;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sgu2onmClVBrEtqR34A/IFhyYtiocvS0uvbDkWrkkaM=;
        b=ZWslh67DE3UG15ZnG+CvtqXuXGwTVDzNgqrN3mDH9dTQJ7cY2xK0oLtnlk0yaZWPJK
         /eDScNQePeRBHq+7nCAesErJrcTo5eIB3GHOfE0xL3ekJGtw6gMt4LGUvwD1vkGFaE1X
         goD25KYpvQeJYLmVvau54G6af8Ynbc7l3NMCdUiW6eSJQ+8nuJMakyDtFrjo9p9NRWO0
         bbfwRc+ZNqe4ryC8KY9T+btdnFKMQ9I5SqI97lhag1ZLWwUBf7drcOrcqPvZJxJq9/Ll
         c7ku1YWNojjgExZhQmK8kOuzs3l4Vpggk00OWOusVCRB4L2Wz4ZZAm4JeWTzFyNXt4Gc
         i6Kg==
X-Forwarded-Encrypted: i=1; AJvYcCXeguw1g/TihrCtd6jesRpEGB9fhhrRyrRksuBO8GY0ZpGP5WSrv/JPRhj0vyf9+2dV/nslh/YHkXM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRCwHrMOX6YOHmcdEIBjJJzy0rK34WSlgNJVGXaRaCCUguO8a7
	9cJEB2dZazv7HEbDV4YUAmCRkOo72H7CdNSMugwsrWOJC8AI5nJBp1NYViG81OTHkbSuup+5x9S
	AhfXtdUk6qM2vnd8GjwvFiLmrclxegn66KjBWzI+99RgL7XLf19zDfhFFX05bQLcwntk=
X-Gm-Gg: AY/fxX4CjWBjyutDai45wOaqsaEkzkyKBa++72M7maJGZPOlxRHajOqCnDcwR7yONLU
	LzkzTbyMD4XRz0gryOm2HdC5N2AbyJVbPil7jUbw5eTpeD+Ci3Dvwj3pSRzvoIp4Ui+xwXSTpNE
	RgWNUPC4ep6A6umwIW8NZx2JIeMfpQZvCub7PsXuLQDBaebkY1qdSgMES/6hR8RCD/n/+kvKKeZ
	a3OFXimOexd/oyjRwfy4Hi56DlxrMEut1y3/hWtfu0OtuA87IMfn3obGR0swAt4jom/okA6062c
	oLm0OR4sI0wLE9IbOShX2BdE1H71UZHq31OIx5E92l624+2XkFz02T6o3aX9LJryJIzcz1e5CPd
	WMIz3phAeMK3LmpxSEzcGmgswhXxNoMT5Z3RyCD41yRbN5zX7reb94A==
X-Received: by 2002:ac8:6f1a:0:b0:4ed:b0f9:767f with SMTP id d75a77b69052e-4f1d06121ccmr776231cf.70.1765495050792;
        Thu, 11 Dec 2025 15:17:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJ2mASGrb1uGzvUHEFvIvmoh74d2qrejs22ELk7Vj6VjgPY8UzKXQvMrAzIodArePD3T0o0g==
X-Received: by 2002:ac8:6f1a:0:b0:4ed:b0f9:767f with SMTP id d75a77b69052e-4f1d06121ccmr775831cf.70.1765495050403;
        Thu, 11 Dec 2025 15:17:30 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:17:29 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:25 +0900
Subject: [PATCH v3 7/9] phy: rockchip: phy-rockchip-inno-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-7-beae3962f767@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3256; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=An56TAX1cqo7N9lFvO25vdxikpcfbBNUoQ6JxN8UiKo=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy5922P1Zs7hiGnB+9TFs04zdHhsnafw74/pp2aRZ
 xsa/1Ud6ihlYRDjYpAVU2RZkmtUEJG6yvbeHU0WmDmsTCBDGLg4BWAiL8IZ/tcuZ/74xmunwK8+
 K0b12kU3f76araLG+bUwwmBtXFmp8SOGn4xTJlnuvLvryMOzu/sCg/+572ItvCozoev822K9vIh
 jf3kB
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: PryW3xe6UVwbi5H2iHczU252KYMQPboVsJZCrtjneUc_1765495051
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151735_538273_A8FEE514 
X-CRM114-Status: GOOD (  12.50  )
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

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
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
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
