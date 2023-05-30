Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 020C2C77B73
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 14:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bme+HHUhQIQXJzDu/4xeCSk8TGjc6yk0jE3Q5XctzqU=; b=ViHZ8yuzeA+FA4
	a1dC9Mup33S5TAxK73m7iSYT5O9K/jhwshMTRFues/mzwx1ohGCH2BpieCDlJfUMxP557Z7/yN801
	dYqYinkLUkURuS8q+yHRyYCECpYfylZ2Gdkis/lCOUXjX3DHc2LboH1+RNUd2pIe+Tm8EjAJ0QGHd
	xCd9387ErglQrDACkVQBrRIwW7roNvGjrzxw3rUmhz5FMQmtR+/jFdhlxLESQmdTcJ6Ul3Jovl/c9
	SpuUd4Xsd0Kq01MajmeORSfhOo721mY+9dBljNKRuexKXEubXUwyCdI+7OMckCvsA5PTAzR8YtJeH
	E6bknKX90j+b+FPiU31w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q40eq-00EHSs-1y;
	Tue, 30 May 2023 14:49:08 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q40en-00EHQR-1h
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 14:49:06 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2afb2874e83so48819581fa.0
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 07:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685458139; x=1688050139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hlemkSAZzL/U9gKFtrjPiWNMuzaH3xd08e53mEnq57M=;
        b=q76h1ZEyA3kflY8T+tAg6eEkOHLYK0YZTFqFbCCKF2K9iyLput/pxGqmVSlGXhqv7P
         WnAHGN3sBVvANR/w6I/EN92qOLxT7kfA+TYRrbMeQfQ5Ix17P62ma2yKm6N1X7n7zy6a
         9nl5jWppRRrsIKlusdV7Z4xtzwxXfCbcQGTgabenNUfaXkr6pbTiAq/s44M2sqhPwN5Y
         aF2N5hQt6Q2QJHKpFbTR/tFqhDOls0J+/KD33Q68HF2m1O8GZk0L7u6CimkvrwEvNDi8
         9vyiJE+L61MBUJCGSp7RCegRZ1TxnfE/0ySvZZCeQAKuFtx+4L45fUMJd/FEseCp9LT+
         MzUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685458139; x=1688050139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hlemkSAZzL/U9gKFtrjPiWNMuzaH3xd08e53mEnq57M=;
        b=fgpK0giXEv8RnzrW7a3pDZDi261bRIhHvbS8X9MPqwXKDuSdxZgLbYJRu2MPV1salA
         HiLQ54ZP1uzCo8rgRW8UxMRgQ7arg5Ujw/DH2oadNjeKUv4+kQJgQX/5FqVaz7yYPCrQ
         jhCaQUQF8uu2JJ2IBfu03szb5fTzL5xnUAO3okXWBb3HSW1yYkCrDzuaaRZNlcQ5fy4u
         55eRhlerzHaUFzgPb4PVTbtQqquUlb0Hp+7GC3+emi+d9fmM+Vt48ALk3TdbWxkfsn4e
         OOkLN+fKEFlwo2imKwo8SUZkTQvyu7lDuptAQyQDdtsEaR+karM0Ln53A5QQDs9wZYh8
         uduQ==
X-Gm-Message-State: AC+VfDwk1nU8Ofs9/CWv0gWRmyu5j08SqIN7N8pZ44NHVRZfNWoYTE99
	sD1Qq05ps6EPKCBQmCurfU37nQ==
X-Google-Smtp-Source: ACHHUZ75iw6ri2Ado2xzCbkAC1E3tQDvSOkgKFSnxjKffw7eTsxcgM6foIzrYPzzNhulhzOltIlCVg==
X-Received: by 2002:a2e:6a17:0:b0:2ac:b63e:94a6 with SMTP id f23-20020a2e6a17000000b002acb63e94a6mr966165ljc.21.1685458139198;
        Tue, 30 May 2023 07:48:59 -0700 (PDT)
Received: from krzk-bin.. ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id q21-20020aa7cc15000000b00514b2717ec6sm631283edt.28.2023.05.30.07.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 07:48:58 -0700 (PDT)
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
Subject: [PATCH 1/7] dt-bindings: phy: intel,combo-phy: restrict node name suffixes
Date: Tue, 30 May 2023 16:48:45 +0200
Message-Id: <20230530144851.92059-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_074905_564406_C85E83DE 
X-CRM114-Status: GOOD (  12.73  )
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
consistency.  The pattern is restricted to:
1. Only one unit address or one -N suffix,
2. -N suffixes to decimal numbers.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Tony Lindgren <tony@atomide.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/devicetree/bindings/phy/intel,combo-phy.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/intel,combo-phy.yaml b/Documentation/devicetree/bindings/phy/intel,combo-phy.yaml
index 5d54b0a0e873..7dd6a4d94b48 100644
--- a/Documentation/devicetree/bindings/phy/intel,combo-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/intel,combo-phy.yaml
@@ -15,7 +15,7 @@ description: |
 
 properties:
   $nodename:
-    pattern: "combophy(@.*|-[0-9a-f])*$"
+    pattern: "combophy(@.*|-([0-9]|[1-9][0-9]+))?$"
 
   compatible:
     items:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
