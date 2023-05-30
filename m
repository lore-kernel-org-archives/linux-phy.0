Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43DF6C7EE3A
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 14:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jq7yBDq7BPYs7jU03JEbuOvF3npakgIECH0k0wRB68c=; b=k5yZlL+r3XTGu3
	ww6woRRJKu8KWjuG7kpQkjoE3/SduqXQ1hJ3gT7C+5ZuPNtytqIJqJpW9KVE8VQvqjCT7SkLI+38G
	uklMxW/OZN7YwfURzVChHcPaf9ZQCM7zhgzH2fRyXNzENgGRFE+58xrMwcv8i/Zu5WqKfzT+bbArw
	N04+hiVx6jxxSp5+D7ncdbHOuhhGHbkGzU6vGPFYhVrqyEpgnz6cwNTEAKZ/6i7YzUK4w5uElMOST
	Pj+I6z3lfNrJNdc9Rb6yYaHbgpz/V/u+s+Eqh+Fj2+GRFnkXiQBPD2B5AxGtqsmkH9zTxTSQQC8Gc
	q/wztMrNkP7xnhJTg2zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q40ew-00EHVj-2y;
	Tue, 30 May 2023 14:49:14 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q40eu-00EHUB-1o
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 14:49:13 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2af29b37bd7so49175801fa.1
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 07:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685458150; x=1688050150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W1z7LKWFPOmfXdAKBPrDZn05nG/m3OsiksUdI+BUoo8=;
        b=au3kKg8W7QqZlM184Mf3plRAjYuxNOiScsb1NkoNQrKhB+QKk+18S6EtrPRE58o5Rs
         Q1/3o2Mjj9eY0FEkE53VAKcNAbApZFdG5q9x7+IyOwzMudLNMFi+sq4W0TzNG2QkGwHO
         YnGuPKIwQhukjOLKYlXmRBvdNvqokIHxeYfj7hwnQ4hepXuizdGpVCLTdZusUyau/TGP
         3Vj4v3F4Sg6f3/X2GB+44fSqmHH9eyb+nkIEeJFVpK5Ifb5peDRxxdT/JHpLmKDfKEph
         /287kJIavDJMaiQ4wsKVKTqboEp2XQfs7llNgs/6FY4YQQ0C6Fz2iGXVoBHlZ2Iep6Ah
         ZkVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685458150; x=1688050150;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W1z7LKWFPOmfXdAKBPrDZn05nG/m3OsiksUdI+BUoo8=;
        b=UiDEz+qWXFVR7qr5Px95PjdJntJNKb8O9PTXXO0QiBvX45b/pVe6TXVC21GOrZdsE9
         glgrRCAnikoKWmycxTkG0Umfmh/dAssSiYoI7rZU+HHHSw3l3aw7vP4/hUJ1FbrXupU7
         tgJSrzeK5bRvdM879rp7nPK8MKuiGwmaqlUatHoSYDE6GsM+hnaGHwpxEh/3ZXcVq3og
         emE5id0M/XJGjWi9qC8PeSlkX+jiCJf5mBX7WTM//ZMXzTre39J5oDK+O4IzG/kt0YV6
         kOxapYA6zYnzn+qBAnJBk+/KLWov6U1lk/SYANFVOOc9sVTPbwJap7Wapp28xHwteeQe
         CiUg==
X-Gm-Message-State: AC+VfDwKpGMIfC5PMv12CGprY5KGzkWaeRhm9L4cjppEXRQX7Rn8IyGT
	gZSVwdbM2Q1ml22QsWuFOtHHPwK0/4FJlx86CGN2+g==
X-Google-Smtp-Source: ACHHUZ6Q397O5W+0T36KU+LeZVZXavLXO/YPP87rL8qBwPyoOzxipjl3/WBbz3r85vX0ljLsQp0EWA==
X-Received: by 2002:a2e:8382:0:b0:2ad:a12d:e458 with SMTP id x2-20020a2e8382000000b002ada12de458mr1016018ljg.41.1685458150736;
        Tue, 30 May 2023 07:49:10 -0700 (PDT)
Received: from krzk-bin.. ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id q21-20020aa7cc15000000b00514b2717ec6sm631283edt.28.2023.05.30.07.49.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 07:49:10 -0700 (PDT)
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
Subject: [PATCH 5/7] spi: dt-bindings: restrict node name suffixes
Date: Tue, 30 May 2023 16:48:49 +0200
Message-Id: <20230530144851.92059-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_074912_598381_A3A59983 
X-CRM114-Status: GOOD (  12.43  )
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
 Documentation/devicetree/bindings/spi/spi-controller.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-controller.yaml b/Documentation/devicetree/bindings/spi/spi-controller.yaml
index 90945f59b7e8..524f6fe8c27b 100644
--- a/Documentation/devicetree/bindings/spi/spi-controller.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-controller.yaml
@@ -17,7 +17,7 @@ description: |
 
 properties:
   $nodename:
-    pattern: "^spi(@.*|-[0-9a-f])*$"
+    pattern: "^spi(@.*|-([0-9]|[1-9][0-9]+))?$"
 
   "#address-cells":
     enum: [0, 1]
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
