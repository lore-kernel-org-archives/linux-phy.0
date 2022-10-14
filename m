Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63B12C43217
	for <linux-phy@archiver.kernel.org>; Fri, 14 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdRPV4S6/yq94oc6LLojmCGTVX0S/gTad+0BQ6aoQc0=; b=Bs3skqlXSE6l31
	5NcQeD47dlbhzmiZyhZirJdnoiNSiLsznmt6Bmha9cT4aJtKl3nuxvXDjK/5wd+DGIZxt1pUIjtbO
	IPTiUtcb9lTIDEugM+4R1FDGm3v8uk3SI967rMhANd16cKcc3ikzWEk2UC0O5TQo9gaNh/lFyOoxE
	y0whzOpcliYz4h/zsOkgB6zaGqwmItQ55Y4VDaj711LPBGW0t3Ufm8ZThrfZ5h+z4+0ssecLVmltp
	3JVK9Nml1Mx7z4quMtInj2TsVFY2FXj/TCc0NIKpaA3UYfQX7jgf+lEJ/BDdOdAG2A/63FiN8lFwA
	c9rb+MfKFDH05JRZ8JGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNaG-00FLht-QL; Fri, 14 Oct 2022 16:30:52 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojMTm-00F9bw-RV
	for linux-phy@lists.infradead.org; Fri, 14 Oct 2022 15:20:10 +0000
Received: by mail-wm1-x32e.google.com with SMTP id iv17so3281651wmb.4
        for <linux-phy@lists.infradead.org>; Fri, 14 Oct 2022 08:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=li+ooNBePGxuv5adSrcu60bPx2IUcKrfzonF2RWQwto=;
        b=epkJ13yY8mYBq+7snTc4JIPHLrRNtilHx+hAalOSDuQQtz7vFP5mgU+7k1Vhr0+rFX
         Ow1xaOHCWvrWzCFqYYcViguZdLp828mdx+FfUb4KmOsBySHDSICcntviZ2W336a6B20D
         Govk7liuLT6Y5gJiCtbaGpu98F7yk7qK8JetNh9QJtVR/7O41KdtOWcSszbYCKNjK+oO
         WCC7gTI69GwD8HTlXtRqZ6XJlbkQptIlMG/ITOBi6Yl+1IfFhrk2LfFXI4o9IVx7ynBl
         /C3aGlkxyXAtGdgdwX5nXm3acDaEmIiDA4A0nDoP2aAcHyT7Rw7wYJsMk8u9fF38G0Wh
         uejA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=li+ooNBePGxuv5adSrcu60bPx2IUcKrfzonF2RWQwto=;
        b=g/IQiL7rqv9mAp6EusHxv49fmBSdu1MylFZ0UZbOnqtqKfeajpnspv1U1W8OxaLQZh
         Uo9DfPNGd2C7fVh/P7N+b1i8yOxNq7HIsshhJSj4iIZB+JX2m3D/ppljyqOZzgHD4ScG
         ZNNB/4Osrna3XUdjsI+NOOxWYu1C3uHCBTieENV/TMzAtKbnxNhYyzyfbXhTcrqttOTu
         BCBEOvJZx5b7l4mDlCA/1XHtKwcq4oHT4Roi46PFio38Zj1rFNuyWndguRPTAmLZfyig
         LBAOzS3eqp0VFDWJiGR2gJUuM9bADjeRA0rQBMH2Y6jfxHAg9PU+B7Ua/PIcfNd4kLqc
         lF9g==
X-Gm-Message-State: ACrzQf2rzS0TFdMBzVh8M9+BQaFM8MakMiNqR/KwJS3v+4wkdzP6JZxb
	KV86v8mXqyNnIdrTDEJPg4FnkA==
X-Google-Smtp-Source: AMsMyM7nfhhjiRNQJTJ256AUcmhFf8h1a1IyYKXuRQ+avC22+kNiw+Sb+phmd/NqxY8Jm5rg3oVcSA==
X-Received: by 2002:a05:600c:689b:b0:3c2:fd6e:1fe5 with SMTP id fn27-20020a05600c689b00b003c2fd6e1fe5mr3974394wmb.99.1665760803237;
        Fri, 14 Oct 2022 08:20:03 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6241-7429-3074-96af-9642-0004.rev.sfr.net. [2a02:8440:6241:7429:3074:96af:9642:4])
        by smtp.gmail.com with ESMTPSA id z11-20020a05600c0a0b00b003c6bd91caa5sm2818223wmp.17.2022.10.14.08.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 08:20:02 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 14 Oct 2022 17:15:54 +0200
Subject: [PATCH v2 01/12] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
MIME-Version: 1.0
Message-Id: <20220919-v2-1-8419dcf4f09d@baylibre.com>
References: <20220919-v2-0-8419dcf4f09d@baylibre.com>
In-Reply-To: <20220919-v2-0-8419dcf4f09d@baylibre.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, David Airlie <airlied@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Jitao shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Guillaume Ranquet <granquet@baylibre.com>, stuart.lee@mediatek.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, mac.shen@mediatek.com, linux-mediatek@lists.infradead.org,
 dri-devel@lists.freedesktop.org
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_082006_894626_D87952D2 
X-CRM114-Status: UNSURE (   7.73  )
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
b4 0.11.0-dev

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
