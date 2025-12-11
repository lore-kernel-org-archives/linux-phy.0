Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75C4ED4335E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4C1/vRO513UtQw1P7bheDw2k56Ws21QflK/n7SzFTdY=; b=t5A8Bh7/cUvBGQ
	BhNw6KmTo6jZwzhfRZpdc4BfInzw/6Ai9zdh0Vzu0Nhir6zJEIBvNENxWobwc+cpkm0m75M+C0HyX
	lb/nJo6GtItVrJ0rP/xZcF7PCrp54puLJwX7ZH4vz0iLJx7ueil9zpVrdRScf8dIvwyaKMUjh2hP1
	C3u6LcMn5OXxJRRUPSBKlqlAq+DR+YOZnIw5bolMpX016KGJmpsaLzReeFkm1wEpDF5uLa2lnJlUA
	u53WK0SphEQO2jAan8rfs+kq2vZWIKIzMdc+axG88dCCHNETXMwhXP3j2U2/QhyUw8wCCjarGRezD
	r2nlBGCITvrUtzda3cFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpuy-0000000HPXj-3txM;
	Thu, 11 Dec 2025 23:17:52 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTput-0000000HPQG-45y8
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495066;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WSMzcnKfH5zogbN6xIJkP7sWMqF2vATubBjeteI/qGc=;
	b=A5OL6V7vr/Gn/Kx8sIwBSz1T4nXxTeSlN3VSVTcrVcwVtK9/9p7t03j6v8JwuFnjNsI2QN
	R7jHqyVG9ZaipW8RFKT1MscjvbWg56NLjOh+s1zPXeSPl9P4kKDPKTFf2FVcfiRmKGLsIY
	QwxwWbcR8nXqVJRWndeEhqEYqb7aoTY=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-516--LKsGMSyPnC6L0JOSMAgrw-1; Thu, 11 Dec 2025 18:17:45 -0500
X-MC-Unique: -LKsGMSyPnC6L0JOSMAgrw-1
X-Mimecast-MFC-AGG-ID: -LKsGMSyPnC6L0JOSMAgrw_1765495065
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bb3388703dso49217985a.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 15:17:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495065; x=1766099865;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WSMzcnKfH5zogbN6xIJkP7sWMqF2vATubBjeteI/qGc=;
        b=FFtJcYD+w164e1LV3f4uESiHoxtbf4yIudrY9hsdNGN+N6LnXQA2K8w2gOs7v756sh
         GcLQM2GwKQy6R4QxYu+kDjzir7gYp6+tAxAvO/8/+Rrso+j5JDwe/QcgiO7DoWt9uQHp
         MHdoVY5rQJqpI7hG3h7OM1jXmU3lmJPbPxjjFeyHs0qfR/xlRv2WvSR3SS10YQXDoaSc
         0dX/vbE9UCB22eXsRK4WYYuR7FbDR0c0jPNizPVFaeikRfSuvtzPZWvGMNaS/1TRkN0z
         Oan3WPEuIynWpBOFrtAAUtrAZOoSHyAFtmFcrIOmKaoGFTuXHfHqay1cRGA22woJAFM0
         TdAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfnFWE2xcayhIozNpvjws8NnPqtjAVrmt6s6AcZRGs5aFwv4yX38O0ateXISwzCXdtuSIX/yt1XUQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwXlMWfHj9D1QARAUAScU+Ng3BIrzFIZPJy3U8NGF1vmhNYfsyD
	eNKPbsN5dLb3vdbJTB0monImdCCGK7g+atWxBzXU6EcVyQz82RG9x9JEIF56b7DhSpyoN0pker2
	VbL8PJDXZgtVq0iIJXkIK0fstNNfYokax2TdYO42rPs/+iVOhAftejhUJGuYkCqAy1a4=
X-Gm-Gg: AY/fxX6h5MxGjf/rGWSbFYNBq2Uv5U5L5NIkwP3RrQq74tNs00RQgY+1otL87BkWbvN
	gvklK+NHoCSQ7tFN1n3CR87RPT3fFg401WDBkCSiKAnL2Oe3C7EXK8nHRoRvjh+YE6hxu5hikhK
	Z7NGIti9Wl9ypO4j+XYfnXXjFjmIsaf1VXu+i/wcLVi9rfT66Nt5rgNe4hGQ1UQKHdX3rkdVzQo
	qeR57sCprJvKScXcwvRYPasOR/2/SvfQuXciFItIkPJXcMtlJFVfvcDI8o3a/mx9aN3u4G4j6SK
	3Fdk3Oj0k5fffLmSUaE5xAcX43imUqdvzUZRrLliMYxWcEP88y4F+vWgPtbhK+cA9B1E++7VCKK
	bcTh0Rigr1Hh1cxp9CoepomWkduZ20SUCSum3JWS6YV/sTqHS5/FMkQ==
X-Received: by 2002:a05:620a:4416:b0:89e:c659:3f99 with SMTP id af79cd13be357-8bb398d703bmr36053485a.6.1765495065300;
        Thu, 11 Dec 2025 15:17:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHLYKRP7lHhgawU3OEaYHk6OghheRQMM/cwXxtpO8QhTtXeryEcvWYjXWc+lMjIJt9Bnf4lfQ==
X-Received: by 2002:a05:620a:4416:b0:89e:c659:3f99 with SMTP id af79cd13be357-8bb398d703bmr36048785a.6.1765495064870;
        Thu, 11 Dec 2025 15:17:44 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:17:44 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:27 +0900
Subject: [PATCH v3 9/9] phy: ti: phy-j721e-wiz: convert from round_rate()
 to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-9-beae3962f767@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1629; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=NfOJan9Myaz8PWi/tdBEvmDwiM4IlBdU+UqmIR/UHpw=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy71PRfV83r1eE1XcMbr4193OXztck+aIzTF0fIwx
 8OmyOXFHaUsDGJcDLJiiixLco0KIlJX2d67o8kCM4eVCWQIAxenAEzkcBnDT8bgg94/bv76LP98
 asNWnk3r2i7mlX2fL39CbHOvzuf29BCGP/wVmU95Y0IeCWi+VV+bOlm/YtKFpXbSLZp8AR0a0lV
 hPAA=
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gFTfS4C_5J6qGNC-I7Zt5rWTRMym8frdbGbK5FxoGGU_1765495065
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151748_121456_22CB65EE 
X-CRM114-Status: GOOD (  10.64  )
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
 drivers/phy/ti/phy-j721e-wiz.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index a8b440c6c46bb0c754845655f9c2c0ba6b435b8d..cbc98d4dec74560e6403fb899ebe2bb916440f45 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -934,12 +934,15 @@ static unsigned long wiz_clk_div_recalc_rate(struct clk_hw *hw,
 	return divider_recalc_rate(hw, parent_rate, val, div->table, 0x0, 2);
 }
 
-static long wiz_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
-				   unsigned long *prate)
+static int wiz_clk_div_determine_rate(struct clk_hw *hw,
+				      struct clk_rate_request *req)
 {
 	struct wiz_clk_divider *div = to_wiz_clk_div(hw);
 
-	return divider_round_rate(hw, rate, prate, div->table, 2, 0x0);
+	req->rate = divider_round_rate(hw, req->rate, &req->best_parent_rate,
+				       div->table, 2, 0x0);
+
+	return 0;
 }
 
 static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -958,7 +961,7 @@ static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
 
 static const struct clk_ops wiz_clk_div_ops = {
 	.recalc_rate = wiz_clk_div_recalc_rate,
-	.round_rate = wiz_clk_div_round_rate,
+	.determine_rate = wiz_clk_div_determine_rate,
 	.set_rate = wiz_clk_div_set_rate,
 };
 

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
