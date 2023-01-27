Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1D2CC54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 16:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeSlZbcq8SbdlHErQ5nqwXV+8EL8gfErUNwlLdkEerM=; b=B5A9H5UHL0lawu
	G9+YjNZH2jRPjiGZFRbyjSKC/PNu8CbXkIDC45WC15mm9LQk8fa3ZUh4j2y6JtpdqF7eXeTCL0auT
	C0WKY0tzYeDgcUVlo3iKbvy25iPx/rdEmEHtR3SM4gom5xS9NJUnqssfygIfG9u7J1nd+u7hKTfk1
	zYS7Ix2371o4AuX298zNM0F58aNU5UuM87F+8+9N4SmIX/711JBwoFrmyoBuNqF5DowJWb5tclOUh
	g5M1qU1E36fbkeANgtpzxol3FGH6klZXTKLkwte9bo/siFZbHKjIldDoGlFa0OtQ4AZabm9khTYdG
	P7XULF1YtgB2cYDHvN6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLRPV-00Fcre-UL; Fri, 27 Jan 2023 16:17:06 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLROn-00FcaH-G4
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 16:16:25 +0000
Received: by mail-wm1-x32a.google.com with SMTP id m16-20020a05600c3b1000b003dc4050c94aso1025484wms.4
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 08:16:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=op30N8VplB3ypI088BE1DuG6HdC3ZVERGlwL+v56hF8=;
        b=SZmfIny3U/S8qG+e/WnJPW4Ssp//fHLsfmZRnuGKIjQTiMoUmWHXcxyZjYy1KVA7QS
         oaCB2QrEooTl9JsCGk5BX2yDzWNkkiEWfQKklWElFXvT5LuTZ8bl6PA8gvRxnJiuFQCQ
         ys/gWBK0HZXF0WohL0y6qH1/kbm86bd0lvIE5rIwCVnNwBXpou+1efVA4qJxT0PBMkNz
         uUqCAIDiXkYYJoRn+34edZorjJOJ8YWGQ7jt1oNyZ1865LL63dXK3s4fGMeaRKCwlFFL
         WzgoOyT8vV2UQ4rOZYkBaUxxGTudg8Ca3ay0+6v2g4tpfg5b0E8kHpd1HDjOaU0sE3o9
         uxpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=op30N8VplB3ypI088BE1DuG6HdC3ZVERGlwL+v56hF8=;
        b=T3tG36vEr2RaaaFZX5NwHJ4/MQ260uighSjP9S5yHZb6tn60vVjxU0n8PauLIhyJSX
         6pu5l65LFKCbmHYKUSUpjdeAYwLnmLsE+MsqwnsOOVt3rKt3IhaYBmMKpRwFzBrATYPd
         RATlsR1TwvchdcTVu+p0ymM+e86WGREUnsCJw3aWNFScuYzvzeCxsK2LY/ZONC0ZyLBV
         Wt9Dvb/jjeCnf7GdayLNQ2lbSksEoSz+LAX2miiMGFlvrhLuVqLoKLbJ4TpIhz5cfI2m
         G9hpINcTUcEYRUy8OLwXDgDnNN20oVMuZfxEDPlZE1APKpbftA45oDRJSGMmMgDODRgJ
         8ydA==
X-Gm-Message-State: AFqh2kpx4kGGYllW/7p2Cn2u+assOdqFgYEFsZ/R/7YF8vT/TrfAE5ND
	Hui799I465padEZFrHTD1IMv6w==
X-Google-Smtp-Source: AMrXdXuordLziVYmuuVYBeA7Bkt5b1HbFTqNvAAo/MRucQWcpaadudaJmH5tq/D7Ta4P+ZjFAaTv7A==
X-Received: by 2002:a05:600c:21c4:b0:3da:fcf1:d4cc with SMTP id x4-20020a05600c21c400b003dafcf1d4ccmr40404327wmj.30.1674836178781;
        Fri, 27 Jan 2023 08:16:18 -0800 (PST)
Received: from [127.0.0.1] ([2a01:cb19:85c2:1100:7fe1:513:212f:568e])
        by smtp.gmail.com with ESMTPSA id e19-20020a05600c439300b003cfd4e6400csm4744566wmn.19.2023.01.27.08.16.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 08:16:18 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 27 Jan 2023 17:11:35 +0100
Subject: [PATCH v6 2/3] phy: phy-mtk-hdmi: Add generic phy configure callback
MIME-Version: 1.0
Message-Id: <20220919-v6-2-2f641c422cb6@baylibre.com>
References: <20220919-v6-0-2f641c422cb6@baylibre.com>
In-Reply-To: <20220919-v6-0-2f641c422cb6@baylibre.com>
To: David Airlie <airlied@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jitao shi <jitao.shi@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, stuart.lee@mediatek.com, Guillaume Ranquet <granquet@baylibre.com>,
 mac.shen@mediatek.com, kernel test robot <lkp@intel.com>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_081621_573262_A13AFCCC 
X-CRM114-Status: GOOD (  10.73  )
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
