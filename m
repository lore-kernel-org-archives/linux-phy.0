Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37B32C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 14:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5TpX64j3F+jmFENuWr97EOXqYBl7i8FRuomciE/mg8=; b=obLwhsWocRACzy
	yy6CgnczH4MOeETSKvTuZV200vyL/1YwW4ic83tJ76vPcdW8z1f1I2ID6Vj32L8w5FaRkynLC+nmq
	EHA/gxFsCts5qpUuJCKB/OVoCpax1fGyfbaVfc5ccOJulGDYmAiv3SDX8vq6rX/eTeCCQ8by90Xxt
	nTSQ+1Y1uibOLS+7Yr/5yDT7zuDsd5nsKv4hiZHXhDHmPB6YlW/uGwtvZmUPP4T8FZr3X48NI9K/b
	akcod+pZ/ojC68fhHodXC02VDHFQfJHNji5xijnHkHF7ZW/vQG6BAXXdBpkHwjJzVbOUrETVGX1Dp
	cz/5S/UgGxwIrfbhF8iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox7iG-00EPLf-I6; Mon, 21 Nov 2022 14:23:56 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox7hf-00EOt5-BC
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 14:23:25 +0000
Received: by mail-wr1-x435.google.com with SMTP id s5so2885722wru.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Nov 2022 06:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NLTLi7Z7FiKWId+bi8fZkLc6EVgRkKs3skyHC5sG8CY=;
        b=D5V9EF0OejBZwuqpXWui3ZalpJ94bdEGZUloCx4GdvNpwOu9DnvwMeBnDCPDI1vp46
         AGFcpmiIvx+gkVhyBOQnmNadzLjlkAaJd40zYPC7juQ7zSpWS8V024Im1PK6bd3RzqiX
         s7wxVLjufCv/PrmyEFEvNG0y31n8d9ZTC+LQeKmJqeV7LETKBBo1Yy5cd0hUhqFSGIVF
         Djdl1Im3wRsOrQCpl08PJVOEe5hQvCd3aEmJYgsXVaw1mhZ5bOEVNf8AUKU0lYOAhbAy
         E/U6awm3Pe3WLXI4jtWCv4avCJhKROA1HO6lb/tJYpFaBfNAkReYvX/lilAdSpcIwTKg
         EDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NLTLi7Z7FiKWId+bi8fZkLc6EVgRkKs3skyHC5sG8CY=;
        b=RvzxakOVD/ZJaUGDV4PJJTEUUBijNC/ZDBrDEQUR3ez0YlFJKIO1lGZCmAS4G8pFLz
         OAR4JeTUXJ3qgIXhVQztKZtczI14gpAJ7r3gOqOv879Z9KfY0WBntYdm2r7a1cCaZFye
         P91d/KIoAe7bgoh6yp58JwqqbaeTMvoYBQC+73G4+/GmjOdeZTKMPezJ4OqNeAb/kP1K
         Mbtld4PoVS5+igI2aKRjGc+yuytVFFksZfRdDPH6NBOvHsgcR1OacbVvNa5R8ed3Abso
         g72xEhVhFpNnzA2xCdDWeMm2fqqbF//HYGKK8tUkNzSeMkealF9ymFSQLtgfzJuEn+6a
         /Sbw==
X-Gm-Message-State: ANoB5plnNc49im4I+RXf27A8IX9e3Foma6UL0P90wa6PnDI2ITJPveD0
	6TEKyA59hwWbpo4n1qzQx7vZBw==
X-Google-Smtp-Source: AA0mqf4in6pPCN0j2CQX8M6zf6umy322ySdxWk1PP56QJInbjwv4ZjaMUm16qPsll5SjfuP4QxNrwg==
X-Received: by 2002:a05:6000:983:b0:236:aacc:ea07 with SMTP id by3-20020a056000098300b00236aaccea07mr11745338wrb.36.1669040593275;
        Mon, 21 Nov 2022 06:23:13 -0800 (PST)
Received: from [127.0.0.1] (2a02-8440-6441-244f-3074-96af-9642-0002.rev.sfr.net. [2a02:8440:6441:244f:3074:96af:9642:2])
        by smtp.gmail.com with ESMTPSA id m7-20020a05600c4f4700b003b4fe03c881sm20206468wmq.48.2022.11.21.06.23.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 06:23:12 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Mon, 21 Nov 2022 15:19:11 +0100
Subject: [PATCH v4 1/3] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
MIME-Version: 1.0
Message-Id: <20220919-v4-1-bdc21e1307e9@baylibre.com>
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
X-CRM114-CacheID: sfid-20221121_062319_474568_847B7F7F 
X-CRM114-Status: UNSURE (   7.16  )
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
