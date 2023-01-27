Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47DE4C38142
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FI8w17qQvTxp5qCEYImddnELzb16haaWtxp2XW4MIIg=; b=tOCxm5//tXO/af
	NqGuEbQ91lmngAqhKelqZxItT4SDSwPZIVy/nDQehgbMHUMVnQxaE03LEyXzCu2mT2CRpPwOjowdq
	6FvoNlZj5ONU6+O4aDcKDBpRlPlW9xX/6INYE/lZegcxhV7Xr413pklJe+jlUcddPvzZTijXWhGzT
	SBa5E3kMokfwIHJpIgLyocqSGNrvbLIQ82fgufLqDG7HJghvUnawb76YnohGc499wJjC0TtgwIMIt
	5Jc4u+QLNmUjj+JCRoYzsmSuu0ylj6t6tjZGq8vbtwdcQSS6nu4O0VT2gIymLkJRS0TFKRMScalOQ
	ZbIpjZNQ9++3t5Y1vpGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLR9o-00FZQ0-8D; Fri, 27 Jan 2023 16:00:52 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLR94-00FYz6-ET
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 16:00:08 +0000
Received: by mail-wr1-x42f.google.com with SMTP id m7so5373659wru.8
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 08:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y/FOgQ0NZG0jwRqHnOj//3vzxfhNSgcxkGZMIRLxc18=;
        b=Z581dVEflQIlkmAKVpzH1Hx78FcKmqgluOxsgZVKB34gp/ileDSKefoZZa6XtitIdh
         VeyfnjDVQp2URi7NSUQ6bfXScFnBxGluMOrrpalAE1hlJYoypTK5wriQD7F6LWFf5hSS
         cqAbhI+M1KnpkLcR1KxQKLrj1pvLyK6A18TsnpbNXC6/AiRIFHvd5LmfZ6DAE+N4NsPN
         jbWWNZNKISVB16cKK348o+yXYUhLdlwEZC8Iq5M8hxtXRVb6TNeLqE/FxYA64xUYbnC0
         2AfgGKURgK4IW/6uTHPr+SobQH2IGMduVh3aCIULGx8M1W4QTqmGfUwX7vhmtNcGF1aT
         GCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y/FOgQ0NZG0jwRqHnOj//3vzxfhNSgcxkGZMIRLxc18=;
        b=aVVhrf61tPX7cGptiLB52fp8OgMUv98mFNSJLrTk8qbbbZD6dxfq+3z2un97Amdkaj
         h0OUIUMGuQrEDV0FW/VVvKkNCTbPY1gh8NtYH9P7IH6cNtfNradwrC1PZE0HUUxmCHPV
         IY2W5LnC9VDX0d+u10/2NejZWucfbCv1zB2Z2RF8U2XbjcIhruoIAMhGlk5gZvHSFqHV
         I7fzpmdxidh3RER6sO4thfh10of+ddeFCjhOCng5tgmn6u7Or89XM67ikvj19lDiU3oK
         XUEyeAhofE0keZMSQuKpw9m97QrI9BqtgysN6aw2uEj+Diqw3IJWMWOWP2d0HUAUIj+K
         Rr9g==
X-Gm-Message-State: AFqh2krWk3Yt0y9GvbLz/DqRbJL+udZ5hjXLxlnQeOhNMjSvPiK3hCZC
	ilCKGNpK7Cc0JEcM7YHsM0L3Tg==
X-Google-Smtp-Source: AMrXdXsfxZfsB12h/I+4kDdqKwJTa4EmVK4edFjSQJRMCkCqjHfeJdCXRiwlufDWBONCnyUY10a/Qg==
X-Received: by 2002:a05:6000:8d:b0:2be:3a6a:f565 with SMTP id m13-20020a056000008d00b002be3a6af565mr26758952wrx.38.1674835200796;
        Fri, 27 Jan 2023 08:00:00 -0800 (PST)
Received: from [127.0.0.1] ([2a01:cb19:85c2:1100:7fe1:513:212f:568e])
        by smtp.gmail.com with ESMTPSA id b11-20020adfe30b000000b002bfcc940014sm3171942wrj.82.2023.01.27.07.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 08:00:00 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 27 Jan 2023 16:55:08 +0100
Subject: [PATCH v5 1/3] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
MIME-Version: 1.0
Message-Id: <20220919-v5-1-cfb0e5ad29b2@baylibre.com>
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
X-CRM114-CacheID: sfid-20230127_080006_654585_622A85C8 
X-CRM114-Status: UNSURE (   7.78  )
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
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
index 6cfdaadec085..f3a8b0b745d1 100644
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
2.39.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
