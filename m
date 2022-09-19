Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF55FECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0C4+r6IubYoLCt0YcjK5lvciKhc0s1owpXfbsZDabAg=; b=KNBwLDNSsg+C69
	nx2lqzodmCFWQkIje8RAskpAu/CXyeT5+d3RATI2enubcy1NPvTbP2Ag7/k9PsiNVWYyHA+oguSaR
	aXXfFkbAfVXexrXuHl3nHDckbuli6RP99oen+r1Zwq0Hr+gOx2QdSY8/PBu7UnCGMEhGigYqpzYbi
	R/4M386zKJ4IBXUluei0n9dBFYWfJqu2mxUB5OnrOJgwWliz1UXEH6QK0mfstWnSUtL/YMwyxEPeR
	jCHhRXq2YgiWFaFtxH/q771J2lAgZikR0Pwv+tbyiNcs9kJkSVH/0hjlA0tvwq1DV9IP6ssB5urep
	wppCFvehXAxJKJpq0qPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaL4f-00DUEa-A8; Mon, 19 Sep 2022 18:00:53 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaK7d-00D4LG-NQ
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 16:59:55 +0000
Received: by mail-ed1-x52e.google.com with SMTP id e17so136582edc.5
        for <linux-phy@lists.infradead.org>; Mon, 19 Sep 2022 09:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=7xDk5BrXibXgfT99ckwNvMekh76xOPeNv/4FsaCfh58=;
        b=CEZJ9TEVferg0ulxXwdUEbWib2zYhw9Tir5LaamEXUe9UQabtpHUZ7t39RbS4S85HC
         x9PFzpX7wALrVEGjd5qyae6tIH2bK+BZxA3AsOGG5SLe8GtLeXrWR5PdxeYfhkGL8zz6
         4aQbHNr7a6hYGMtek5NqaK1fsiK/TphfUjeSfIXBdpM51CKKKEWyLmeQpmyv0FJfOOKB
         18XYmYWBK0IEwGn7H7CTG9n/4b/wl9y9Ex4FAUHaHxrhTxfMVImS7y1QRGtXw5/va7SX
         FYVEq7OHlcwL2JOG2/A0K17XMaMH2dmNtlQw3PM5ptekzTUaKbzqovvSlmYzThYg57/r
         AsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=7xDk5BrXibXgfT99ckwNvMekh76xOPeNv/4FsaCfh58=;
        b=jC/WgJF2zdDYx2IVlL4xeMAAGMU7SvUT+XOP3S7v/HPChuAIGcDKtb7uQZlj4lHdDp
         H/EQ3TLRo/8nw1sBpO693wyLN1CA2UBwXSQw/9pdnflPEIL+vGnLBjoJSvk9JU9Df87Q
         HsmT3mEklljDO/5SGK2I9t/EsNpBgK+s994d59rO7I42RdpIUgYthSfjJBgXxOMvTM9i
         Eu3JU1vYqU04SCQ2N3Hd5QVBBKDrYV57Qql2RHM1Es+PIPpbNrylMDbv/5ooJ/cf1ATm
         1UJzdPxEPEQGx6M8Bkq3880WD85WZN3dpXdWxlBsxoc1NEQomQVpKnFjYiuFdG2WTIvh
         Ey9A==
X-Gm-Message-State: ACrzQf0wLYcSWC+uyhS3X9ETqk8DSTJw9NuLHdWmpXZc07O1VARSeLNQ
	CCFJQusqp5Fuo8+SMdWdzlJqCg==
X-Google-Smtp-Source: AMsMyM5gxGj7vc60+sBilG3OlczkPRO2uGjBc+la49BQKMmf9aIyceQBVlL/fz7uc0yOaSZjotbdPQ==
X-Received: by 2002:a05:6402:493:b0:445:b5f0:7a0f with SMTP id k19-20020a056402049300b00445b5f07a0fmr16348159edv.120.1663606789339;
        Mon, 19 Sep 2022 09:59:49 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6340-f287-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6340:f287:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id cf16-20020a0564020b9000b0044fc3c0930csm20424246edb.16.2022.09.19.09.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:59:49 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Mon, 19 Sep 2022 18:56:01 +0200
Subject: [PATCH v1 03/17] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
MIME-Version: 1.0
Message-Id: <20220919-v1-3-4844816c9808@baylibre.com>
References: <20220919-v1-0-4844816c9808@baylibre.com>
In-Reply-To: <20220919-v1-0-4844816c9808@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, Pablo Sun <pablo.sun@mediatek.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, Guillaume Ranquet <granquet@baylibre.com>,
 devicetree@vger.kernel.org
X-Mailer: b4 0.10.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_095953_805620_8D29220F 
X-CRM114-Status: UNSURE (   6.38  )
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

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

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
b4 0.10.0-dev

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
