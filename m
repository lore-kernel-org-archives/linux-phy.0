Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2A35C7EE2C
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 14:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlPHRDhrk1A/Xj9DOkiI7dtsO3KOd3preGtoV4/8ico=; b=F4GZ/CKmXlhmpW
	X02hogHS9yd6uDrFtB9zlQqS0xvMol1fPD6Dm7OrUB4B3CpvTsGXFbP8F/juHwq+cMoeSNGdFv2oc
	3Hpft6U9bdR021167YaNb8NPG5shpRus861BfkwLUDn2bAO2xcEg5iABOARCJG3kZ0gQom4YKvDVB
	WpY81+B4IqrhC+4Bl/3MVUguz+6w3YtI9zfL6PyIMQjU0JCJPFbqvXSbJKPgkDjJhGp6zwdO1sx/j
	+lpg8MlYYvaD5aORxju7AkScoVdcxF/1wvpIZIsM8sGg/zu+ZpiYbkNZyev8AgFPKgdZugshgX0I6
	ClaBX6pJoTQNuptmHKkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q40f3-00EHYK-2D;
	Tue, 30 May 2023 14:49:21 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q40f0-00EHWf-1L
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 14:49:19 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2af177f12d1so49994351fa.0
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 07:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685458156; x=1688050156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=07SVfkqZ0qgipCgWqf2WUuDolS+hCGhbSje3XLty2Ao=;
        b=aPeYmCNt05cObjx95ndQCrOdKmC01qE9rKbj1E0y9u+++2RIcqlsWtlkGyGI2n1xbU
         AghcT3BWhigFLgjE4GPxSIys40q1Sl8bw+sC08K6jVCsHQe1FDuz+txGGgs4K7+tN9lv
         D+4p4yaduPEphpO5OXOqcpkPAhLrj3akuiJimPh+rPajTiJxAjHzij7o/Rb5N41Szij0
         Vfjo2jfGnHworYtyq2Bgw0ZYnG2uSy5rKuQvaYzL13g1eDccob4no3SUelsX3xA+WyXc
         Qeq3VqRPuVvPCLgdqEFa3pTldVfXGj5yH9H+3Chlgzhm00nwJTyVe701en4WhppjApJz
         aTzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685458156; x=1688050156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=07SVfkqZ0qgipCgWqf2WUuDolS+hCGhbSje3XLty2Ao=;
        b=ZVtcaM3FhguYaoFrfHwTJR8Ghn6Y987X0w0RHvDmpwcS2YepJMVAPzd2seaRJSwBoz
         SH8Hfy9vlnIeXhHNFxgEMRNtChIhKwKXkRdIcwOqe3eiwFogh74JvCDeHgrzg18Gn1WV
         cMZwwfDUSiZINxbU6l0RQX7Pbw+UzBYybkDOwvkM11JLgLY9K+y3DNEiuyp6j/NTrdpk
         f5YfLovaUU11TgnyPirWHuXH6ZevwyWuvHYfF1XTX7alUWrf2D+TzvM3+3hbcZHnPCfD
         ZXnvFTAL5c9LriMryfeWtEaYZ9NgejNFafs6dJIvRk6aVCOJ81BacPgpTRoKXDOZZ3Cg
         liEg==
X-Gm-Message-State: AC+VfDwL68Rom/MU1gYMoizOgCF62md7NrgVuCaPHPsB4dMzZggweqeC
	iujh+FA6ngSC8ywlNhMmP8xaaA==
X-Google-Smtp-Source: ACHHUZ4eIHTpavdLEXQppq1HffGyODpAFKw+HJwL/rxKmW3KOl/YjNnJCyJOlMEXir4uXif/y/NFgw==
X-Received: by 2002:a2e:c42:0:b0:2ac:67f7:25a2 with SMTP id o2-20020a2e0c42000000b002ac67f725a2mr897767ljd.50.1685458156521;
        Tue, 30 May 2023 07:49:16 -0700 (PDT)
Received: from krzk-bin.. ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id q21-20020aa7cc15000000b00514b2717ec6sm631283edt.28.2023.05.30.07.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 07:49:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Dipen Patel <dipenp@nvidia.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Dilip Kota <eswara.kota@linux.intel.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-spi@vger.kernel.org,
	timestamp@lists.linux.dev,
	linux-watchdog@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: [PATCH 7/7] dt-bindings: watchdog: restrict node name suffixes
Date: Tue, 30 May 2023 16:48:51 +0200
Message-Id: <20230530144851.92059-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_074918_449117_38570193 
X-CRM114-Status: GOOD (  12.09  )
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

Make the pattern matching node names a bit stricter to improve DTS
consistency.  The pattern is restricted to -N suffixes to decimal
numbers.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Tony Lindgren <tony@atomide.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/devicetree/bindings/watchdog/watchdog.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/watchdog.yaml b/Documentation/devicetree/bindings/watchdog/watchdog.yaml
index 519b48889eb1..f0a584af1223 100644
--- a/Documentation/devicetree/bindings/watchdog/watchdog.yaml
+++ b/Documentation/devicetree/bindings/watchdog/watchdog.yaml
@@ -17,11 +17,11 @@ description: |
 select:
   properties:
     $nodename:
-      pattern: "^watchdog(@.*|-[0-9a-f])?$"
+      pattern: "^watchdog(@.*|-([0-9]|[1-9][0-9]+))?$"
 
 properties:
   $nodename:
-    pattern: "^(timer|watchdog)(@.*|-[0-9a-f])?$"
+    pattern: "^(timer|watchdog)(@.*|-([0-9]|[1-9][0-9]+))?$"
 
   timeout-sec:
     description:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
