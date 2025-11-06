Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 580E7CCFA13
	for <linux-phy@archiver.kernel.org>; Thu,  6 Nov 2025 23:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9AiRxNDT7WVGbd46ggNs98WH8TjwGsFK5Y1ciFV4l8k=; b=e7USTq//ITtm2R
	3U97FAq9dJ2KAw7bug6CYHG44eBWu1KCWCZajV0/4Baf3bh4g7+XXCY8Oiu6hsFBIHyoiR9oxskq3
	AeWAdOQQEQtGNB9JPcF2yIgaY8t6pdsOloKKJabKSdFv/7Z1q+l1t4B4KKbh1r6o2AWpoth43T5GN
	A7OWVSeyCv3fYXspYUUJNTKNhzMNZvI43VnjN1jV/pqALlIh/SKv2/Drh8miILirp+Ggzr870zQ5F
	Pwl72kk8ayGCuWco5FEiTRzYTwXLVpPaWSL08P7K82lnBRXvb1YCGjTvNRf/Np93FKsaSQN9Ojj99
	KU2Rbw2kRZ3dNrDUrlTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Nj-0000000GNRQ-33PG;
	Thu, 06 Nov 2025 23:27:07 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9Nf-0000000GNJN-2zzU
	for linux-phy@lists.infradead.org;
	Thu, 06 Nov 2025 23:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762471622;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WZVea0Mun92OWS2efd7OZNCrg3R5Kgv6X7v7bFvHs04=;
	b=EqTM/YYhjhCONY8iuSR54NmnEKSSV3lXpSyLls28EdlWSmCKZcrVUEsuOvyW4AfIznPC04
	eByIxNNgZRMocwOOQ1Qf19sMfKZeyDK/df+SePPEhpPud0gL0f5uD4wdMFMsqj/Ct0iiKg
	y82Oy8yQfkyPizwevnxnUILD/Ni+mq4=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-644-WLFEX3nEOgKgHqACReGjFw-1; Thu, 06 Nov 2025 18:27:01 -0500
X-MC-Unique: WLFEX3nEOgKgHqACReGjFw-1
X-Mimecast-MFC-AGG-ID: WLFEX3nEOgKgHqACReGjFw_1762471621
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88025a7fc9aso5650086d6.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Nov 2025 15:27:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762471621; x=1763076421;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WZVea0Mun92OWS2efd7OZNCrg3R5Kgv6X7v7bFvHs04=;
        b=xKFnJU+ec/2gzdFW1J3JIFRmc2jkJxCRn1F3yFugDJzPiwZraiFrZdmFSBFUA6JuTV
         H40f5dNBOKD8tWCjoVWliRMjxFkAc90yjz96loxm9eEbs8+M8MCsnzalYwrdLPpJCYaD
         tqlKS3Mc/rftUBHY4twYoiorGNkWwmtAzPNb094U1woO3FaOnhqTfWpuXS1+Vs3j/M4s
         4sI6vtkJMwPK03FWpy04ZKxvEEKAT2T4MW6kAhaT/Vv+FeM8JvFJ2xJskEDWtMlbO5s9
         myHUubJe9BnAXlKpOlU+Ec3n+YL89Q8uhMg5lrZJ/SI2A1PZK0n9DY/BmfFUIBiwC2Vo
         92ug==
X-Forwarded-Encrypted: i=1; AJvYcCWW7rg6p743RlG1wcGjfCIh7sGF+vLFiPcXD978Ldw/6YZfhMUo5atV71z2FOm41aSSmZq6rVzXsjE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLP8zeEbdmdoskBzRneBVwPEaGGkAozr4xayj1x2SWJlIfr07Z
	JdbI10Ed28DyFhfqU79vz0n8iuy19Y4DMtaIhbCIwGhWlRMn8g/Jg8cRh/ihPHYbFSmUDd3qnzO
	OrD3fv9yiVlO+fghrMmqxF92OhS9VJJvS/HMbVvPThf32NuW1G5hx8/cnwLjnCZA6Gbo=
X-Gm-Gg: ASbGnctZkGUPNRuyconL6KvD72goEYyjvW8LRPg0aAZTku+iI3GPK+5ykkYcvGZDcuZ
	RdMWeChJzb73rFZkKskGyqujN/gRsdBc5+2HVXLbmOnPsU4/M16y6RgVpxeN+OBPh2DFAImSKkz
	R93iwom5pyP8YPOGGq4ENAVfSZFzAnfyh2GgqglLoal2uMaIRvc+9wmiFFnSRsEtuMf8kUOlucK
	JP9vI70jMdqwkaqgjQoswQfUM9vZ+sQyLswpxp8hNycls/BkLnArrb68oP7cg0oJtH71f8PCa+W
	QMDkS0wiDjuBopJBEAbr3qiRPS4RYowNV7pQbKx/o+9zC/TZJVTsgNOBiEMw6ilsw0sHVrQPKk6
	Jrd2/Ogm4Qmzvc460KAt2H/NVEqkqG7blKJnNhzyqqQ==
X-Received: by 2002:a05:6214:4110:b0:880:53a7:a445 with SMTP id 6a1803df08f44-88151e4bc49mr17960516d6.2.1762471620721;
        Thu, 06 Nov 2025 15:27:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtHpA4COaBy2TQDBCCELqXAf0sfk+lQ3jKjHR4cm3lLWRVAj13ngGgT8ax+bpg/JoDlCOeww==
X-Received: by 2002:a05:6214:4110:b0:880:53a7:a445 with SMTP id 6a1803df08f44-88151e4bc49mr17960216d6.2.1762471620343;
        Thu, 06 Nov 2025 15:27:00 -0800 (PST)
Received: from [10.197.115.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88082a3aa91sm27389196d6.56.2025.11.06.15.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 15:26:59 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 06 Nov 2025 18:25:52 -0500
Subject: [PATCH v2 RESEND 6/9] phy: mediatek: phy-mtk-mipi-dsi-mt8183:
 convert from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251106-phy-clk-route-rate-v2-resend-v1-6-e2058963bfb1@redhat.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1507; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=pGum4msvOB3xDDFVObf0RbWafZEF5jMmYiXTVfgLr2I=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDJ59RaqnVC7xubvIvpuN3fZv7sHddmfyK78rtPpal0bY
 a34zmpPRykLgxgXg6yYIsuSXKOCiNRVtvfuaLLAzGFlAhnCwMUpABM55MfwTzdcOk1ownJ5dj3F
 lEqP2+cWf1utHLvJU8rLrrGyvaomjeGfmciaJ0/c/+l5/550WeiIRfKndL0k6eYkX0bZkg35Iam
 MAA==
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: blg8CiO-lG15FU_yRwqi_jT3vomjWfZ2yQfV6YOgxVM_1762471621
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_152703_896995_BFB96933 
X-CRM114-Status: GOOD (  12.32  )
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
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
