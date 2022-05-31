Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42F0EC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 15:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihqCqa3apEdsUtyr7idpGP2LyirXZGBtXRAXn275FRU=; b=buP88/hE8a2ljA
	NgneFF8gwIgAXjcvvAQcwHkx9NxTRULalhYpv1C6iF7ni0teZLiYNgkqaWOM+oJtrIXAA7SEPLc1u
	5E/KrEiePEZ8JbzLzsDKcn5edFHAZoTrIZu1npRuNy80a7+vMNEv0tPlv6EF53K1ccEmYH/XT9PMu
	63AXSGf/P5P3w1zw5hgxNmn4VvEAYfzmXPwK4zv0YxRxB8hRhGfS39TQBOd1dlPndVg4CktYz8d7f
	PTyTrAojomewCdAur4r8uFOufIqfIL0mOq9BRPodczS79hXvEP+Phh1X2m7LxnvmgGuF44j5AT0TR
	P/BXJ+Q+TzhSO0sjfwKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw3O8-00BPq4-83; Tue, 31 May 2022 15:02:28 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw2Gt-00BA8M-Ig
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 13:50:57 +0000
Received: by mail-wm1-x32a.google.com with SMTP id n124-20020a1c2782000000b003972dfca96cso1240871wmn.4
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 06:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7hTkqdJSG32FEC0xJwQxsGaVxXfP9pn5uHosSEpvk/o=;
        b=8V4VsGA9OVOOn0SdJ25JIZGwaIM5LceU5cEeIikivz49vnnxZAGp7IY4ojZQryeGnJ
         DP2gZq2HIx2X9KjjPP97ub/aV8GnlaIzRYU2dyi4ll7AaU5prn6VHbRNOuIWY32qdXGP
         lfSx/5pavnyO2+V0r85FCrEZZcgYKBajNvaAwL2INiM/VWtWvlm85BJkhIyhGFv2WlnA
         bgv9mq8TOvr/DR/S/KyRMtMk/feIQVxxIsgVxNxdt57BbR1t/pFrt7PFL6/ATtanGSR2
         VQ114YE12cjm+Zs5zQGB67fBgQPSdash0s6aDAcmmp0Efp6dbTMc/oGaq8ZPhlmKU1vA
         No1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7hTkqdJSG32FEC0xJwQxsGaVxXfP9pn5uHosSEpvk/o=;
        b=iTmnUogAVXZUh9PxqF+edCxni0AS7yjJUj1cQYQWJeCBMGIhQEbbG54Gr+HnkJqFeB
         +bt8v6+VuTNjepjOL/D2Iu56R68LK4Dqr25x1CJWcpJsPLnLu+sQ/DucHNxAJs/E/bXM
         +3GLfgT0Kl5o3T01HbUUZZIcdGgy42G6ashiRKsmqKPINYkRC4E/4+Cbnb4EjUcujAR0
         1hx5xazOICfgoehkUbphkLfTLPofkxK2z7QKPEsVXf3lY6cvrtkbdPspCqUJuxNX9EgW
         7DGSyP1AijfkBJAjAJ6jq3Vp7g4pknug2oZhKu0o9NMCkGzlS/NfTgTdSY2JyMhlfwbt
         lcZg==
X-Gm-Message-State: AOAM532hK4L6Y5SoWBdFeG3CYVKInbbJltPEMXgwhDpQxmIiVsMElmT0
	0oAbwQLhmpZwYgS5C6u7m8DCzw==
X-Google-Smtp-Source: ABdhPJygJdWIMEqnFljSCeHyRbLD1v7vofyqs6EKiM1gktA+EiK+fDFmHMqxmTLq4ylJWgeaim7/yw==
X-Received: by 2002:a05:600c:354e:b0:397:7c1c:5b66 with SMTP id i14-20020a05600c354e00b003977c1c5b66mr23408175wmq.142.1654005051142;
        Tue, 31 May 2022 06:50:51 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600c1d0b00b00394351e35edsm2404806wms.26.2022.05.31.06.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 06:50:50 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	qii.wang@mediatek.com,
	matthias.bgg@gmail.com,
	jic23@kernel.org,
	chaotian.jing@mediatek.com,
	ulf.hansson@linaro.org,
	srinivas.kandagatla@linaro.org,
	chunfeng.yun@mediatek.com,
	broonie@kernel.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Lala Lin <lala.lin@mediatek.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 07/17] dt-bindings: nvmem: mediatek,efuse: add MT8365 bindings
Date: Tue, 31 May 2022 15:50:16 +0200
Message-Id: <20220531135026.238475-8-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531135026.238475-1-fparent@baylibre.com>
References: <20220531135026.238475-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_065055_643604_000DC579 
X-CRM114-Status: UNSURE (   8.72  )
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

Add bindings documentation for the efuse driver on MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
index 7c7233e29ecf..444875264493 100644
--- a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
+++ b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
@@ -32,6 +32,7 @@ properties:
               - mediatek,mt8192-efuse
               - mediatek,mt8195-efuse
               - mediatek,mt8516-efuse
+              - mediatek,mt8365-efuse
           - const: mediatek,efuse
       - const: mediatek,mt8173-efuse
         deprecated: true
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
