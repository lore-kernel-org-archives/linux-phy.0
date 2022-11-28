Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC2D4C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 28 Nov 2022 16:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtiKUtvdddT+M5FcY8vlS/jm3ExAkODXo6DuelGL3BA=; b=RGv3UL7YWcXcBp
	PAn1wzEdrpeV2eAPD7eh60Lp8UAM4REJ4WrOiJROBTwXhiyvo0MakM0E5Pm27HnjfBVKSM4KwrfTu
	f75s/mN6TW5hmr//plRx/MGLb8u7n8OTtVpSOJP0lLgcQFkunkckad/2B/HWK5N/Mgwsw9KY3fEiz
	GZzHHvXUW/EVdr3e5JkhyCbnnrks2eOtl4VT7AAUKhhyeatJw67P8XP6ijYz3vY45Lv7fSgdwZDjZ
	c6b7C3BQ0BhV9BDWAcxBa9TDRByEkLGJKNnERnZtM3TbNSKgc9cZxOrdFA1sjC97NoRg4BoDItcEz
	he46a36A+asuCVoUFZnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozgtS-002m5Y-Bo; Mon, 28 Nov 2022 16:22:06 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozgtB-002luA-6Z
	for linux-phy@lists.infradead.org; Mon, 28 Nov 2022 16:21:53 +0000
Received: by mail-wr1-x42b.google.com with SMTP id x5so17723431wrt.7
        for <linux-phy@lists.infradead.org>; Mon, 28 Nov 2022 08:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dS8cQQ4bUCIGdTuiAN/aAd8jqSH5EJokFUSJdAjidPI=;
        b=0+jl/jbubFkfZTQZYgBADk0y7xxrO/2O6QnzOVhd0Ay2GZ3bHMfzNgrtNe26Sz8wrW
         x+gpWK/PWX9RuKHQi9Ch0lKr7Fd2CxuKQcJefXlOvLsbdjQbfpN81PLo5z6u6RrKZQ1/
         dY0NeCNnghuCx5+smHJpKR5x43S7aUls/hwRPXFC3u/Z7e49DZ70Ni+XFVOcAUJwZU4U
         LbehBw0bXN9VsXSVv3+SyJrjfLxG47GWP1E1qPhVnl9qHUwRU8OrPseNT2rJvgdixZnD
         tix9Ry5TWNyILcL7MiL4+CyOFJc2kjHhqnjEuH53SjfWTtCwAbhBDmrA64Ain9vGGAl8
         dlIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dS8cQQ4bUCIGdTuiAN/aAd8jqSH5EJokFUSJdAjidPI=;
        b=69ph8u+31KxwjnXrh83HIno72eavjQ6Cr4qS/t8HucJNvQdOzpKKqMV3ZJnVSjiXYl
         ntH0nGzQIWf83E4KgA65JaxUs1p1a+qNNGaactOX43RuieUrKfiA+0XTy1+OZOKO0Lat
         NnMaDslJadlDznhZPF75reJG2Q62y6aFE/L7/pdRTJkOKGCL32AkrCMf5QFj5VwjrLyk
         ZXd0sLprnlc/8HQU56u78f4a2XpdBg51dMtq/kqmkZCfCl7BiTGr9dzXvwMLmWWoX4Uv
         yL1EJ4+Sq7n7xxw1Rbs0vGOZT4gIaxs3HPSz3vpE4426pCnpPBexRkArAEqbvE8QvNOn
         inRw==
X-Gm-Message-State: ANoB5pkymrl/9AHZPwqwHcmRGPmmTq7dBXVzt8IJAKWPgD5APVdNBLX3
	2JLmvVgIwXuHU6uEZWZ2C8PY0g==
X-Google-Smtp-Source: AA0mqf7zILY88KtlDUpp9lKnmVPVFaeVSYmrpe6eWbhZCXd1jcABe1SItKMY2e2rfy2bYoaSKhc5bQ==
X-Received: by 2002:adf:fd01:0:b0:235:83aa:a6ed with SMTP id e1-20020adffd01000000b0023583aaa6edmr30496312wrr.543.1669652505287;
        Mon, 28 Nov 2022 08:21:45 -0800 (PST)
Received: from [127.0.0.1] (2a02-8440-6340-f657-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6340:f657:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id s10-20020a1cf20a000000b003cfe1376f68sm15311450wmc.9.2022.11.28.08.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 08:21:44 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Mon, 28 Nov 2022 17:17:36 +0100
Subject: [PATCH v5 1/3] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
MIME-Version: 1.0
Message-Id: <20220919-v5-1-f346444bc459@baylibre.com>
References: <20220919-v5-0-f346444bc459@baylibre.com>
In-Reply-To: <20220919-v5-0-f346444bc459@baylibre.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 David Airlie <airlied@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Daniel Vetter <daniel@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>,
 Jitao shi <jitao.shi@mediatek.com>
Cc: mac.shen@mediatek.com, Guillaume Ranquet <granquet@baylibre.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
 kernel test robot <lkp@intel.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-mediatek@lists.infradead.org
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_082149_273455_5F5C3280 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
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

Add a compatible for the HDMI PHY on MT8195

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
index 0d94950b84ca..71c75a11e189 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
@@ -28,6 +28,7 @@ properties:
           - const: mediatek,mt2701-hdmi-phy
       - const: mediatek,mt2701-hdmi-phy
       - const: mediatek,mt8173-hdmi-phy
+      - const: mediatek,mt8195-hdmi-phy
 
   reg:
     maxItems: 1

-- 
2.38.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
