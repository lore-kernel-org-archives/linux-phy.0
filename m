Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE495C38142
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 16:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJMAKMvTxRzhCvWggkTZTmepBcg/VTaJjHwrhsYJ0x8=; b=bj/kZ4RChtn6LJ
	Df5whaK1yDiSwv0rHeoExYEBoYIQyr5/sODCUqoJCyPy7dv4n5AgVnXdl39qz2q50QFUt8X49aFtK
	ih70h5z/FTIjwtgvV6EdYbZj77tWqFkisjCIUcpE0irbPvQYiE2LP4doioczefRcoxIWR6PJHbQ2N
	fZZETQUQhS6MaoyGm5q73LiBBoYRLr08894nD7Yp8BewKjZCCzluizFEpeKkJtvo5OkbpzhGp+LNi
	Iu5CIKZVZa+A+4tCoWfyV+TZMnSfXnbLnez3gsurFDBd1RD7TaB4S6mZDIEp2D7rXhUIyZ5G5FVKw
	q9tGIc7MWDFLB5+zLG8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLR9l-00FZO5-0B; Fri, 27 Jan 2023 16:00:49 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLR91-00FZ0D-G7
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 16:00:06 +0000
Received: by mail-wr1-x433.google.com with SMTP id b7so5393467wrt.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 08:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bzJbuEpSorl6eoXYVPl93ynMwjEC1wNPzgQRRlVLFcc=;
        b=UM1CmdhDrD5/cs9Kn1JfLX/109YUd3P0NDK0KFLaXqbEeeV6VRoSh3GXf9NXpUqGS1
         Fm1q9JcCWzFmyGKu2HUHQTLhdHrnl9JwtjToxAh1AZD23rO3CgOCMYEo96B45HdHudgD
         pCngAPF0X8mcULZCPC4sAfkdwpcjkZQ8V8CFQDlFOioSOWjTJB/Ve1dtpCXOdwq1XCvA
         dNTSr+/EyhpCj+0yQhKJiGVHS5jtlmJZShT/Q9TkE9BGTGZWjnNM+8HSXl+IYnIRehDf
         n89xd7OLLGGKJxSaDbCwwmfLgzRyv8EnZF/BusgcHoqSANXJSu6nXz2T7T/osDdX9ezr
         2pEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bzJbuEpSorl6eoXYVPl93ynMwjEC1wNPzgQRRlVLFcc=;
        b=ZgVO7EdWbjqNkozhHZjtMhydYXqDr9ZwoP6LrTtlvgUhL9z2Ljiovo1k16ZLiEglHj
         83ZvkEF6hLMY3yJwnanoRzoUsr1RdUjgYVs6zhfIVVLMrpDfBtz4dF8xn5kXRMjnlXHa
         QRjJezYgcW3XEyebVgFU9PCtNzrNMuPyoD2bjkJojo9kk+kbVbNXMiMRv6pgs8yndX1k
         zBkGCM29zTIyB52mTJzOnNGuNC8I+HlEak2q9oFMjdYgfqFHXwr/wajImh8rSu7YzGId
         uIQ2eRhnz02qsIutq+r6Z9zyQGqWEvKstowOAe3JmBG4sQaJQgtH5DdXXmkHP36nR5He
         10NQ==
X-Gm-Message-State: AO0yUKVjrxDVo7Egr1udh6sXqWYQgDLgIhqg/294NjkUDghaq1bItQ+y
	gQcu2aqTZ/9upCq7JTor2jIYhA==
X-Google-Smtp-Source: AK7set8GqJEyHXCYvmzLPwbIFxr282s+0gOPSbsGs1wFB2Rc04VMUynXQuFy9kq6+Qi867lK7eO+Xg==
X-Received: by 2002:adf:cf08:0:b0:2bf:bbd1:1db3 with SMTP id o8-20020adfcf08000000b002bfbbd11db3mr9145215wrj.44.1674835202019;
        Fri, 27 Jan 2023 08:00:02 -0800 (PST)
Received: from [127.0.0.1] ([2a01:cb19:85c2:1100:7fe1:513:212f:568e])
        by smtp.gmail.com with ESMTPSA id b11-20020adfe30b000000b002bfcc940014sm3171942wrj.82.2023.01.27.08.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 08:00:01 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 27 Jan 2023 16:55:09 +0100
Subject: [PATCH v5 2/3] phy: phy-mtk-hdmi: Add generic phy configure callback
MIME-Version: 1.0
Message-Id: <20220919-v5-2-cfb0e5ad29b2@baylibre.com>
References: <20220919-v5-0-cfb0e5ad29b2@baylibre.com>
In-Reply-To: <20220919-v5-0-cfb0e5ad29b2@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, Jitao shi <jitao.shi@mediatek.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 David Airlie <airlied@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 CK Hu <ck.hu@mediatek.com>
Cc: linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 mac.shen@mediatek.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-phy@lists.infradead.org,
 Guillaume Ranquet <granquet@baylibre.com>, devicetree@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, stuart.lee@mediatek.com
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_080003_641417_AF2E9F25 
X-CRM114-Status: GOOD (  10.63  )
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
2.39.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
