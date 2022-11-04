Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25EE9C4332F
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 15:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdRPV4S6/yq94oc6LLojmCGTVX0S/gTad+0BQ6aoQc0=; b=nhZYQZ7e9y4/KT
	c7DXtQ7Sbm1oTJQKUJMUmww2tV74m5nEAfyJDUlPlcJFgCG0/BOBVMbKgJUuokobDq4088izHN6bg
	qeSrFVwBLBa7DkASRtEY6X4eOfJIEcqmrvoIcsOT0gqojLW+yMZGjC34dXXomZ2DhTqsIZ/bOXrXq
	mhP73I19tIpKmjdoM3a2ox7EXCU5gvLbd4rdGJfthpECG+YB3PEuTc0V2Hl4SM9T1nuC9GFenBnNK
	kd4x4+BSg4bMQRkDqUHpH67ddfwoOXZg66jEiz5igI02C6UXoxdoaph8a3SBqn8lDeBStIpm9PgdQ
	i3QgoQxQMgaigDj43Jng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqyQR-0049N0-HW; Fri, 04 Nov 2022 15:16:07 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqxSU-003sjX-90
	for linux-phy@lists.infradead.org; Fri, 04 Nov 2022 14:14:16 +0000
Received: by mail-wm1-x32c.google.com with SMTP id a11-20020a05600c2d4b00b003cf6f5fd9f1so3267400wmg.2
        for <linux-phy@lists.infradead.org>; Fri, 04 Nov 2022 07:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=li+ooNBePGxuv5adSrcu60bPx2IUcKrfzonF2RWQwto=;
        b=zR9PNCqP6LnfsGUVgC20l61o2e/4yuW58vmlf/xo2BRYL3BoOJKLInNIhJkmLVrhoF
         Xzc3czOjrEs/5KzBYRKyaCGBvVIvWdtvVOhMCRqmOhgglalyAAbVHmwG8O0aLu+UMX7u
         cvtKHzUKILM4SSPLJUng6/LOpay5HFoMOWVoN9MGSJacVudS83/y27LoVZiuyYU+J1Ny
         vHLmR4iCRMqREQzAuRLSHFQ5TeTNnyf//ScHESkxGLdiPDS1UFs1jv5oDMAe11/0wZS5
         O/wFpOwUiAFdYMRrlew+JFvUDYMv56eHxOV1xK73rgAWXHrvPMx0lI6RS7wOe9LqCVa7
         hGvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=li+ooNBePGxuv5adSrcu60bPx2IUcKrfzonF2RWQwto=;
        b=FdGEoW+TRsgtsJza5ntMG5fJyaJHPEDtnPaWG7xfsc4B+R6gZ8JIa6OIytAPa5Y42i
         UT00hS4tIDKKA03UJqL57/b3k6P+jS7dEoJjTc3oMPQ71cDsZBIrJ0sUT9JRSv7f2ZBY
         WgPz7bBbQrgDVGry45yYabMYJpvwQbr28oKHBfxQkZ4P1bVehrO8LHbGpnvZ0Gizt4MV
         5oVR5oQzdlRb+desW9MRfk9Ylpa3g/da3+KbzmjgUErN2Ecbu7abfAlU3VcohWpc42/s
         KOlA24GYhZL3QvDORKm8zfBG8kH5BI405wfh+eOjUZV+prlSd/1/2GFt2r8mVW/gWGZg
         vdLw==
X-Gm-Message-State: ACrzQf0vFb/M1x4vvcAK4S+q9G2hmYJRO2jGI8TMcTG56xU4wdrJMtO2
	VF8tGTE6WAtBLHt0W6yecAqMGA==
X-Google-Smtp-Source: AMsMyM63r3C5u1drFWJNKOHbN490iUTdHFjO5ZeWcbLnzzuK//cTCIVyTn05wzs5W6KfxlqKz7l7MA==
X-Received: by 2002:a05:600c:4394:b0:3cf:75a8:ecc6 with SMTP id e20-20020a05600c439400b003cf75a8ecc6mr17784154wmn.74.1667571248761;
        Fri, 04 Nov 2022 07:14:08 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6440-7fff-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6440:7fff:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id bj9-20020a0560001e0900b002365cd93d05sm3594512wrb.102.2022.11.04.07.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 07:14:08 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 04 Nov 2022 15:09:47 +0100
Subject: [PATCH v3 01/12] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
MIME-Version: 1.0
Message-Id: <20220919-v3-1-a803f2660127@baylibre.com>
References: <20220919-v3-0-a803f2660127@baylibre.com>
In-Reply-To: <20220919-v3-0-a803f2660127@baylibre.com>
To: Rob Herring <robh+dt@kernel.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Jitao shi <jitao.shi@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 CK Hu <ck.hu@mediatek.com>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, Guillaume Ranquet <granquet@baylibre.com>, mac.shen@mediatek.com,
 linux-phy@lists.infradead.org
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_071413_173565_C6A10A4C 
X-CRM114-Status: UNSURE (   8.00  )
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
