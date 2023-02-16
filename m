Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51246C6379F
	for <linux-phy@archiver.kernel.org>; Thu, 16 Feb 2023 16:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2SfZ0CbwswreSFthdpRRLDDdh14duVsyyLBgay2vzE=; b=XDnHopnOgCQQqv
	/sHiuxybh0PrVUgJ+j9LozGAlRcGRSjWVBMpzht+nas7QWYH32qXRwUnUKDi2bs6lnE+26K2aCxXb
	209Ca1E3V6zYAvPVScZ4CCIOdft4zVzCLL3bn+32vcJsGyWIOYK3reQQ8IOdsi7el8TEayYjE52KC
	moqLohM0iXlFSBgMkXR+1sPLSj9cV1expUIUKxOos/WonSuMyDOoHupcNrp5TJxKJGbRl5G9xks9R
	O2ASULYX0n+QPxqjmkcz+G7pZJcwCvXJOH6DimZANc4Y4RATn+NOPMBuK9WVU9aSo6TXXv4qo7par
	6G9BhHt+HlgYx/k+5jhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSgtQ-00B7JB-Ec; Thu, 16 Feb 2023 16:13:56 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSgrv-00B6TA-8R
	for linux-phy@lists.infradead.org; Thu, 16 Feb 2023 16:12:27 +0000
Received: by mail-wr1-x432.google.com with SMTP id r2so2349769wrv.7
        for <linux-phy@lists.infradead.org>; Thu, 16 Feb 2023 08:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Uam+EfbMJvYSMYj1PNEm4eMKYS9JSHriCql+8aR0/Y=;
        b=uG6JP4J5s4VgCLeaaSMrrYpMUkz7e4/+QoqIn2zymNuW8AGZIWurM14kCbo0hv7w8C
         xiAFyM3gIPNHLY7UQRPNKfQpab5CBmhzgBs1147o4xL3s9XEebMW0/EW5HEqg3T4i5cw
         lcj5Qt0nvvUeJJACn73GWUboKFIVQZfcAlCLEY4oTgbUTDXVdKOPcDZeEc8VbAH4lCGj
         QMfEqX7nU10RTyrofs6XrHhFJXHYh9fNfeoH2bz5i42bZW2GC02X/OfNXNzz37faNxPs
         kWes3m0nHyJq9xgQNTXRNPOM3XiuefIl4RVcOy6E8COMZiQQHmKL7zTKPZKSPbow/hjk
         ycRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Uam+EfbMJvYSMYj1PNEm4eMKYS9JSHriCql+8aR0/Y=;
        b=SJEB0a3GSHFHSAjjBS9x1ZVyJ0cX1SflF90oVeG60OfFihiIGZ/48SgZutFVA4fnfu
         yF74TThmGCFW3elIRjPQLdXS+/0B1v2nzAAh4ETbjRkdVBtVr3FDKenoBWfxfgMhMhmS
         XkERUVP5GgFU2JzK8YNSD38DxP+iRoAfJxfBH1HpWNu1TWFtfSi6AnwnkvVo1LVOxwBR
         3x3AaFrnarN2bmkWiPO4XcB56A3Alu9V8C+ULDnzlG13cRCHdoffr5ww2AxH5HUwwxNx
         507QXoi5hbmbb+/nMx1cWj0dd7/V9xNC8TBtt8t8xd+gG/23t+cp+PnDcQUKJ4wgkMS3
         zelg==
X-Gm-Message-State: AO0yUKVz73sgLM1MTuBBLSkZfnMmW1lIkg/VUqk1dXLn/pxeiaeP/LCz
	4cNUlvolPCnAdMbALRH4lUInCQ==
X-Google-Smtp-Source: AK7set/JKqI19u8VBblreToMVeV9IFpXFUeRASqKuwKNy3pTpYRD6UdiZmFXkRth/8vgC4ASzyhEgg==
X-Received: by 2002:a5d:688c:0:b0:2bf:1ec:a068 with SMTP id h12-20020a5d688c000000b002bf01eca068mr4816134wru.53.1676563936902;
        Thu, 16 Feb 2023 08:12:16 -0800 (PST)
Received: from [127.0.0.1] ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id m16-20020adff390000000b002c56a1a5a95sm1845586wro.30.2023.02.16.08.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Feb 2023 08:12:16 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Thu, 16 Feb 2023 17:02:25 +0100
Subject: [PATCH v8 1/3] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195
 compatible
MIME-Version: 1.0
Message-Id: <20220919-v8-1-a84c80468fe9@baylibre.com>
References: <20220919-v8-0-a84c80468fe9@baylibre.com>
In-Reply-To: <20220919-v8-0-a84c80468fe9@baylibre.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
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
X-CRM114-CacheID: sfid-20230216_081223_358936_2791459E 
X-CRM114-Status: UNSURE (   7.99  )
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
