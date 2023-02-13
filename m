Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BF35C636D4
	for <linux-phy@archiver.kernel.org>; Mon, 13 Feb 2023 11:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkeZVsDtjOWl1ZaYgeVvZ4QzjDNs0jWNt8EXDoohi6g=; b=VqiVXZ9mLG+ocb
	zg7hrgaOxK/ukLbSj8pMv2oR24vpMiqInj4OUAOpoBbVXdWegtZ1B321URY27hO/Uo9MiI19TjXUU
	KMq+EzBqcYa2rZ7WtGsvaAd+9fWxcqJzboC0KDQSdV+/NayJfKBujegnF8m2y84tGzOo5jnELaM/L
	/VffOLNv6l+dkYLDC/hYQSnnBLqQRaa53TWe2uHyE/lMqT5yG8rF/NsYZNU8eYx7DUhYH7L0f0Gze
	4WSJlmNnsjbV/dznMf8vu6TeUyJqBARw0np+o9dIZ9/tOUX/LluTkaxRe/3ERtnK4N1R8zMQgcgWY
	rFnDHyoZuV8Q4M5rjINA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRXAx-00ET8U-JO; Mon, 13 Feb 2023 11:39:15 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRXAS-00EStk-LU
	for linux-phy@lists.infradead.org; Mon, 13 Feb 2023 11:38:46 +0000
Received: by mail-ej1-x629.google.com with SMTP id dr8so31012475ejc.12
        for <linux-phy@lists.infradead.org>; Mon, 13 Feb 2023 03:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=op30N8VplB3ypI088BE1DuG6HdC3ZVERGlwL+v56hF8=;
        b=vB8WykBafuRzRtDuguyc/Bo7sbY5f8z+gZOza7CCBeeEj6YTIzlIkJq/9c4EOPLl7C
         50Ee1gHpVfORgKOsSDYfzA9WuJGCvSwAAoDVcifSXr8s+InCZw2mDiGTae7uUdOWm8mt
         BcwlQKCl4oQx9mHeAK/roUU2AtelFtJ1kXJcs17xzwpymr7zFiHP+KN0M75x2IlqAk/M
         ssRZdEBzWecwlqDwlqi+JTyG4CffD+U03W843WrTFJ1mrTO8AjS7o4FZY5RPo6GoX4rL
         jhy7au2YWjp5Xi3WlVC+hNIc9AsFm6lEABGBUScDZhtW/akwnOb9YHELHjQh64vW83It
         uo6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=op30N8VplB3ypI088BE1DuG6HdC3ZVERGlwL+v56hF8=;
        b=EWjxUWyDriYpefjjfgFXNil/bhB0B0p3nZk6HmWPgGuvAuoRSMC+SihDI7D+TQOzLm
         /RJHqox6m3w/f1759vHj9KKkdDsZOTgbMHtlZaFtDB7By7soLWpGJgni6x5ipjqDze81
         AmemjHL/OchT8SYTcM8gU9qHIb11+M5Eu4avXcqaZFQ1kVONHQtCHcY59NvjVh/WKLR9
         gB4yiMC1x7Pl7HWKPoZ5UVhYZDp7XP4EY9GlwqlHJ2JOAgFZb1dADy4/y5kFdoKZ2L64
         JgxLfnlSNH6Pn6IuLXOcng6FHyILhPOaLp5IxaKzmF5CcyIrAwOB2KClaKvL1uFIolzK
         N6TQ==
X-Gm-Message-State: AO0yUKV5Xy5/MWk/wkz4oyXcATQErDE06BPpjY0qBiOPlkHx5uIGSF27
	SmU6mo0DEu1QZEsWPCVwZybK4g==
X-Google-Smtp-Source: AK7set+hnByAR87YpkSk8ZEV835WPhK7lmMocjr5dOOtPVxa4wOhPW/jWxc2FJLO53e5q5T3zl73pA==
X-Received: by 2002:a17:907:72cb:b0:8af:5750:917 with SMTP id du11-20020a17090772cb00b008af57500917mr12827958ejc.35.1676288322760;
        Mon, 13 Feb 2023 03:38:42 -0800 (PST)
Received: from [127.0.0.1] (2a02-8440-d206-ae05-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:d206:ae05:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id s20-20020a170906061400b0088ba2de323csm6638792ejb.181.2023.02.13.03.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 03:38:42 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Mon, 13 Feb 2023 12:33:33 +0100
Subject: [PATCH v7 2/3] phy: phy-mtk-hdmi: Add generic phy configure
 callback
MIME-Version: 1.0
Message-Id: <20220919-v7-2-b5b58c5ccc07@baylibre.com>
References: <20220919-v7-0-b5b58c5ccc07@baylibre.com>
In-Reply-To: <20220919-v7-0-b5b58c5ccc07@baylibre.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>, 
 Jitao shi <jitao.shi@mediatek.com>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 mac.shen@mediatek.com, stuart.lee@mediatek.com, 
 Guillaume Ranquet <granquet@baylibre.com>
X-Mailer: b4 0.13-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_033844_754485_14D083CD 
X-CRM114-Status: GOOD (  10.43  )
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

Some phys, such as mt8195, needs to have a configure callback defined.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/phy/mediatek/phy-mtk-hdmi.c | 12 ++++++++++++
 drivers/phy/mediatek/phy-mtk-hdmi.h |  1 +
 2 files changed, 13 insertions(+)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi.c b/drivers/phy/mediatek/phy-mtk-hdmi.c
index b16d437d6721..32f713301768 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi.c
@@ -8,10 +8,12 @@
 
 static int mtk_hdmi_phy_power_on(struct phy *phy);
 static int mtk_hdmi_phy_power_off(struct phy *phy);
+static int mtk_hdmi_phy_configure(struct phy *phy, union phy_configure_opts *opts);
 
 static const struct phy_ops mtk_hdmi_phy_dev_ops = {
 	.power_on = mtk_hdmi_phy_power_on,
 	.power_off = mtk_hdmi_phy_power_off,
+	.configure = mtk_hdmi_phy_configure,
 	.owner = THIS_MODULE,
 };
 
@@ -43,6 +45,16 @@ static int mtk_hdmi_phy_power_off(struct phy *phy)
 	return 0;
 }
 
+static int mtk_hdmi_phy_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	struct mtk_hdmi_phy *hdmi_phy = phy_get_drvdata(phy);
+
+	if (hdmi_phy->conf->hdmi_phy_configure)
+		return hdmi_phy->conf->hdmi_phy_configure(phy, opts);
+
+	return 0;
+}
+
 static const struct phy_ops *
 mtk_hdmi_phy_dev_get_ops(const struct mtk_hdmi_phy *hdmi_phy)
 {
diff --git a/drivers/phy/mediatek/phy-mtk-hdmi.h b/drivers/phy/mediatek/phy-mtk-hdmi.h
index c7fa65cff989..f5aac9d352d8 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi.h
+++ b/drivers/phy/mediatek/phy-mtk-hdmi.h
@@ -24,6 +24,7 @@ struct mtk_hdmi_phy_conf {
 	const struct clk_ops *hdmi_phy_clk_ops;
 	void (*hdmi_phy_enable_tmds)(struct mtk_hdmi_phy *hdmi_phy);
 	void (*hdmi_phy_disable_tmds)(struct mtk_hdmi_phy *hdmi_phy);
+	int (*hdmi_phy_configure)(struct phy *phy, union phy_configure_opts *opts);
 };
 
 struct mtk_hdmi_phy {

-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
