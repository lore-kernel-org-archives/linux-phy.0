Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98E35C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 14:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1h4eUiT5isfIbLyD1ywLt5hfdVa7UKqVnPaXGYwznF4=; b=yMypK85IcHCgb2
	mhT4Akbh8fyd5AMn6j+P7wvGi7iLJHLLYcLlam/5saSIxEx7r57oo7A5vY72GtUaIFwitLoStDnrt
	AQiiiMPAqYYdxGH5ZswMMC3EDw+DhbE2TAFark98YTfKL+tQ2YuU+Ye2plqRQjHjEz8AkYTEjShmB
	0yXYNXXB7q/jkl8md75DENYtJgUoJ+VFWHO0x9w27hqwJG/UVI2PWuHV5Mc7Ifj9wbF78ZMLt8KOT
	vTo7GosU4TBc6vp/NNnzdFrZXhg4Opp1hU05g6iq55fkVV1gq7Yh+Nk0Jvj7W5Fp2g4mbdi6Nx1SZ
	/0mITcKcoErRsZzV1eFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q40ez-00EHWj-0s;
	Tue, 30 May 2023 14:49:17 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q40ex-00EHVc-0k
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 14:49:16 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5149e65c244so3256505a12.3
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 07:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685458153; x=1688050153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g8G0c0mpPhFQo7i+RrdSfLHYDtYE35R5vJ/b+M/gxuM=;
        b=TwckJzmIHLNkTEHE3PeH0rFIRq6IgHs6ns9hHaVT+YPvGvMq0zVOCf9i3GguI1d4gZ
         ++87FyS17cHjFpyYYP11L6B1mQU4Qo74fZSooFervsiBR+0ar8BkWpaVXwtpZJ22dllW
         F4As95G3fMbOJoMJg6N8HhzdnsqtbXz5JGTeY2R8J4hUP1ovNUrwdSrIKFEDFkBMxgWS
         VOOZWJYhhEWYhR9zQGpR4NKq5NMj69QmgmJqj/PlGAuQQv3USs+CB94ozMps71kYZ+cw
         UxnmmPyVuSIi0a0b5aN2HgHzEreZKBY9iaovEdyc1IzjG70Ypp+EX32+456crShhdma/
         B9aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685458153; x=1688050153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g8G0c0mpPhFQo7i+RrdSfLHYDtYE35R5vJ/b+M/gxuM=;
        b=XQX+XySoi8NcBpn6lMLpjvsxcG5NbfVEC6hAUxhPBRfrLJw7Vd5pkMYN8nVKFRif59
         PgTpEuoCyWUYsZZJrD45nS6qwt9KbRauiB2bwOEbpLLnKyyy1a5c22l0s8OolSIl91hj
         /hwhUuGwAKUmmRliE9sPUVP5DU7Vvwi3Fo6CkFbXM0ZfXZ7UCbi+zObkBoCHWGrWFZJ1
         hZpl6BzHtSFMUSwsrI1FLQng6sSAbVraf0bhjMa+iGFQBy7AyUWwAmgFSMKUGFA1BxB7
         /jCM+IyIyKA+Ty2HJ+G6DpvN6e6zt9Wk2BSutzrNdaWHlVkElIONRtLSPIPz88DB4HU0
         Pdpg==
X-Gm-Message-State: AC+VfDw+2OQJniZLi6iQrpH7JyyDRIuDLIB+GPgtO8F2oMWVvzfFW+ae
	du53f6SspW/oO7LE4/xv5jwYBQ==
X-Google-Smtp-Source: ACHHUZ4bhaXhOGjXcCnROMILTcaXL9g90bzH/pnqZRsukzbQfT55KK4gcDyEoP7X+Mzn6P4JbZvAeA==
X-Received: by 2002:aa7:c59a:0:b0:514:9319:ebff with SMTP id g26-20020aa7c59a000000b005149319ebffmr1869786edq.24.1685458153812;
        Tue, 30 May 2023 07:49:13 -0700 (PDT)
Received: from krzk-bin.. ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id q21-20020aa7cc15000000b00514b2717ec6sm631283edt.28.2023.05.30.07.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 07:49:13 -0700 (PDT)
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
Subject: [PATCH 6/7] dt-bindings: timestamp: restrict node name suffixes
Date: Tue, 30 May 2023 16:48:50 +0200
Message-Id: <20230530144851.92059-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_074915_265002_B695E387 
X-CRM114-Status: GOOD (  12.49  )
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
 .../bindings/timestamp/hardware-timestamps-common.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timestamp/hardware-timestamps-common.yaml b/Documentation/devicetree/bindings/timestamp/hardware-timestamps-common.yaml
index fd6a7b51f571..95f42acd0c54 100644
--- a/Documentation/devicetree/bindings/timestamp/hardware-timestamps-common.yaml
+++ b/Documentation/devicetree/bindings/timestamp/hardware-timestamps-common.yaml
@@ -17,7 +17,7 @@ description:
 
 properties:
   $nodename:
-    pattern: "^timestamp(@.*|-[0-9a-f])?$"
+    pattern: "^timestamp(@.*|-([0-9]|[1-9][0-9]+))?$"
 
   "#timestamp-cells":
     description:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
