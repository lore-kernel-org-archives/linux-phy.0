Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23D3BC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=528650WCgbq49ymexS0MegsgcFSQYZ4CJ/95WJmo+Kw=; b=m8eJoi9c8rn4Ci
	leJQVmenCMfP9URpZgGjq5I0pesoy0DaWFXlLU/17HjFTS+6+v2rWY4sVKwP1WsKNBRrx2o+Dym+e
	+PvCMLWHoa9Cbyb65C4CcHFzBU1g4XrEbXe3ClzsaB94U6AEFk941UwMHTbaD0jT2pN2SMP63v81b
	rKCDG4KmkBxFb7fpC7/ondIakLDkVlvg4LvNw5/Wt7VRVp8A3ZLL3qseP9iPIF2ImMC9dFqfjbyd1
	s/XX06KiDME0JsA2r7L/HNuinJoENs9ajYCT9EPvdqm6usg47jzJxUrvId+ZMONas9V4WQA7Wcqm1
	wS5CDsDiTbT2u5wCzB6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw3N5-00BPGM-Av; Tue, 31 May 2022 15:01:23 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw2Gl-00BA1U-Mt
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 13:50:50 +0000
Received: by mail-wr1-x42f.google.com with SMTP id q7so7831596wrg.5
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 06:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=84B5l6CLEYOYUre8rq3yJnmiSsiXoAiqgOdGcXH7KzA=;
        b=wjCDUvAzmwhW8ShvFMODKlOAJvENmeZCAsQFEBBjpmCjVefXiQwTBynBslAevnS/ar
         IXm4cXmqxylBQs193ugMlR1BjEOc3/Vk7U4T9LJteC5aqnNV4CXZ/jFlXuyrmnd+Hd5D
         VCNQQUjf1leoYsHvfEgfO63Psj1/Zace3a/H4c4v0Ewdmwjm2AWqWy+FkXHdgjohoAH1
         iYI0/ouaIN6JdlbiGEIUyAzSCsrHyrO24nEYivf97/369hIv7k81eCdJwjiidtXbLyUS
         /+R4GrIUqCJ7UoFADiWq/7vAKLkpPNArYC6LGy40/7qc4u3ixQEjvWKr2h+AZvt1+nts
         blQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=84B5l6CLEYOYUre8rq3yJnmiSsiXoAiqgOdGcXH7KzA=;
        b=alwt5b1aaLXmFVDFJ3t4NCy8jxODF61XPhWSwK5DKLZV1+i+MxQTZSYdUbDkbmAKws
         Qh3h1tuHZWQFaBR37eWDULeS6tY116sqMNU9y1hANP02dwsBatItHy4bIIA2+wrgIjOG
         pQ7TYnwbry1j0yWb+m1BoA4oDGEeeMf3FgvPNC9Vs3crfQG+hbdHQlszpmoqKXcPWKiu
         3EiJ2j0KsIGOJX29q/qHJBdUrqflrmz/RifJkzXjdI7L+SkiJeazif+F/J7AO+Dp0oZL
         CkYuOPz7QgIfCi18bCNWWlP9+3M2WD9NM23jY8nbkiclXHFf8PdNUfvaXiYxPp+AED20
         xS2Q==
X-Gm-Message-State: AOAM533KH4MBTzWtlUjD+5TMF0mvD4C1MbkD2xMPZTLSNBK3QqoxuD9v
	JZeAv2aKKEf8lvSW7UEASSMlFA==
X-Google-Smtp-Source: ABdhPJx1HdFDNNiPkbLkJv2ksIxQsCl1lQetWRtoVAAGpHCrR8geKFAxOVuea00BT4mrXnnAAW7uhg==
X-Received: by 2002:adf:ec84:0:b0:210:e87:113b with SMTP id z4-20020adfec84000000b002100e87113bmr20885976wrn.545.1654005047238;
        Tue, 31 May 2022 06:50:47 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600c1d0b00b00394351e35edsm2404806wms.26.2022.05.31.06.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 06:50:46 -0700 (PDT)
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
	Long Cheng <long.cheng@mediatek.com>
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
Subject: [PATCH 05/17] dt-bindings: dma: mediatek,uart-dma: add MT8365 bindings
Date: Tue, 31 May 2022 15:50:14 +0200
Message-Id: <20220531135026.238475-6-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531135026.238475-1-fparent@baylibre.com>
References: <20220531135026.238475-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_065047_776663_582DAE38 
X-CRM114-Status: UNSURE (   8.20  )
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

Add binding documentation in order to support the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml b/Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml
index 54d68fc688b5..19ea8dcbcbce 100644
--- a/Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/mediatek,uart-dma.yaml
@@ -22,6 +22,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt2712-uart-dma
+              - mediatek,mt8365-uart-dma
               - mediatek,mt8516-uart-dma
           - const: mediatek,mt6577-uart-dma
       - enum:
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
