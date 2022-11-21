Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75755C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 14:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I777jggQYzkWMk/5rmdbW8nptq9FI8fxzzlkoi8ezK4=; b=SYhW8EIve/LLFH
	lRsClJ68EsSbHe1hSy8E670o6YfawXJyI2nT3cqgwEqEYvo/3l38vxcltIKOnGqhrZ6Jl99umE7Pf
	/yU4wdlqumypBG5MqnLkRJRDaLPnKchh9OW7Zay2y284dgFg6tcmJtp5BCDalP8rHG+4VW8CIXSNS
	k+M+GYgowUX2pU2/8eVs3RzIYq5hLiiXH2zrDarRHVBO2pCvr146oAiSRCkG5lwC4bPRsXtIh0woa
	lSG2fmH+N9cNzLDYqfrdDOZtQykV0Nt1XywEvO5WJhseJnIYxT8ySoBgpgrrzn1Dyiky0AyUXeyRh
	K3REbtQezHirODIeW2zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox7i2-00EPEp-PU; Mon, 21 Nov 2022 14:23:42 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox7hf-00EOtb-1Z
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 14:23:23 +0000
Received: by mail-wr1-x430.google.com with SMTP id bs21so20101564wrb.4
        for <linux-phy@lists.infradead.org>; Mon, 21 Nov 2022 06:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7X1Ix6DYXkJKvOpCSL0+NcLZ4Uv+Ocb7clfjl/SWGQ0=;
        b=s71oMRkklsqZnyDb1zK5ceAUQtV8Td4tfuhmrW723HFjndQp4ccUQjRuPU3zrCoDCM
         2FFYLqlWjAwsMI3H1wi+nlgzfEs2JMhzpZdyyfSGFxRd/9x77YaAc0rJ4wLatZR3cECi
         Zai/ujmpKvZkV+KVrqlrcz9nuEevuNPep2mfAt92eysFprjZ5kvxAm1/ABmCe9NWc6l8
         3LksNERiu28C54gtUeqmc7zfk+lwJKWcpNwOIRqbgtgJEHrEM0e0CzsKHVReEFKkZ38S
         9VO2LPiy8kZUmUJi2hmVLGSA6XK1LanqxuLG77jUXVcQJQklinb8IAb86Q3CcDKl8yYn
         vSuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7X1Ix6DYXkJKvOpCSL0+NcLZ4Uv+Ocb7clfjl/SWGQ0=;
        b=1zhVlnQAusPUrnqrfMbKJrRKHOK4ZwUKhGPny4bLhf+UjG+nZpkjGt2E7SgIQunU6q
         bnmaXvP+Flg4uY9K3Mnw/7e/VSOHSxmuMMCSDWdJYnLcq57oY+Lu4qAw+rDEGQagGTGV
         mTeVibe6k55J4gcWSsAHjKDGsBsL03emoEUoa9bBriYNL8LV+6URP5cg9viuKo3WQ91x
         iLboFe/IDQtnbz/i3JHh18JXQeYIW5xsP9FTa1gBxljandkhJAMUAoP/MdYI++vkn+QA
         HqdfA33ntlhJD4f8V1EKa3hokM1CRCHYGcPugNnLITUZpn3qcmiC2Msy2Fddz+DCqdQ4
         mVdQ==
X-Gm-Message-State: ANoB5pm+1aDi0t/PSfddiJxnb3QKmc3aaXiQ4tcHt22v2kRWasHK1SG4
	x7k/Pfbv6gnPNXBAB4RaSbHVgA==
X-Google-Smtp-Source: AA0mqf7RIb1eFAjcM1IXnwT5b4P0Fd7112f1MpVA2+FDNojC2Brs0StDqsRvjN+qEhrL3UsK+BfV4g==
X-Received: by 2002:adf:f38d:0:b0:241:cb5d:113e with SMTP id m13-20020adff38d000000b00241cb5d113emr6039179wro.353.1669040594871;
        Mon, 21 Nov 2022 06:23:14 -0800 (PST)
Received: from [127.0.0.1] (2a02-8440-6441-244f-3074-96af-9642-0002.rev.sfr.net. [2a02:8440:6441:244f:3074:96af:9642:2])
        by smtp.gmail.com with ESMTPSA id m7-20020a05600c4f4700b003b4fe03c881sm20206468wmq.48.2022.11.21.06.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 06:23:14 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Mon, 21 Nov 2022 15:19:12 +0100
Subject: [PATCH v4 2/3] phy: phy-mtk-hdmi: Add generic phy configure callback
MIME-Version: 1.0
Message-Id: <20220919-v4-2-bdc21e1307e9@baylibre.com>
References: <20220919-v4-0-bdc21e1307e9@baylibre.com>
In-Reply-To: <20220919-v4-0-bdc21e1307e9@baylibre.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 CK Hu <ck.hu@mediatek.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jitao shi <jitao.shi@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, Kishon Vijay Abraham I <kishon@ti.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, David Airlie <airlied@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: Guillaume Ranquet <granquet@baylibre.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 stuart.lee@mediatek.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, mac.shen@mediatek.com,
 linux-phy@lists.infradead.org, linux-mediatek@lists.infradead.org
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_062319_216333_B46EB044 
X-CRM114-Status: GOOD (  10.04  )
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
2.38.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
