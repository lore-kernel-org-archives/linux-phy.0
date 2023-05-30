Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F8F0C7EE3A
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 14:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZ+qh9oP+3eu/7XhOSXgcSMmFzYq3z+UoNMMlwjjdyE=; b=EZa13M8SznR45Z
	B1O14pmgnYqbehdzZhKHAnZcIcZvodtouybG7uE/0MeM5bkxfff3/h6E8o5Ko5psATDcukEkEUM+h
	Ae0xUA5HYesh2/CrEfjEBnYxdw+zx9c4SUN+OtEu0fqwkWN5h/ahLtmajP/x4SgdkxNBOO7avwlIQ
	MaCwC/yMO+Q7dCZ9bw0X9j/tE8+iU3axxI/L/o8Nnw7kPgCXfJof7g3ckmgsLpEO1aU0a7kD7Rkdm
	Hm55qbXcx0n8aqaszC1xLeWQ/Mja3q743tPSI+1oAuAqJ4WWoVwpGXqgnHH371PVWnHeXie+cSI+k
	bO2u/NBFP6ep3neNEzSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q40eq-00EHT7-2q;
	Tue, 30 May 2023 14:49:08 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q40eo-00EHR6-0l
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 14:49:07 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-96f818c48fbso841803366b.0
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 07:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685458142; x=1688050142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sC1DLYYtBIULk7ShCQFp6sqNI5K0yrBz0U0PM92RpVI=;
        b=cYj/0UdvnrYRxLWE30Pag0dMjBlnkPhq9SfEVLhSh0h7wesZCsN7ZQbFx9LGd0w0o6
         p/1LFcwMRXMEa89KQvnwZokxdlcPl1Q6M5yAc7YujbUYgQ+x1MrzbImjdinSrwy2+AC2
         Odd/VANoBeApcDTBI50o53gAvId28G2cGWCrdZcual2NYoPCgjUgOD3Zi/HCVDNkJF3e
         fC4YwBfzsEOmebe+lJL+K0fUTmIILgzkJdJ+9zQAivS7vBtvmSy5iDWTeVZUT3qxMhsI
         ikFqfe7TYZpvhPUiLdoS3ycpGKRL3nP0wOHGf2c76lHh2YHavqCNPWaeAEPAv4Klr0Nb
         DG7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685458142; x=1688050142;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sC1DLYYtBIULk7ShCQFp6sqNI5K0yrBz0U0PM92RpVI=;
        b=O0XgczhL8EdZrejIfeSwQG8tBFxnPu/7KbyLs6PeKwauea6uMwj8+kKknB4gwgGHDg
         LOZ3Z6IYOkvHMF5bmc3GsoTvoTnrc4d9J2McaegT9w541dvRQmFRFmqZsT+M5MmhX6zJ
         KdBTodf4y2wgdx73cFZvJEbTdCnzW6XIAPiEYb3xE2CoFhAQv3RDpzkYWjKQvZaV6fsE
         6YPkHP+ttOzIMYH2/z0Xc64zzVnNu8DDtHOAYxkYjzbyogH7fkZ3R6c2zgBWVEL0PSSh
         BD6lv98V+Gk744WaMFjENigYjpLOUtwmRe3T4LTbdgltDGkFQ0lAV6R/XkHvg51qW2MP
         4u8A==
X-Gm-Message-State: AC+VfDzn+K0s48SuS56n+gFALldVLE513pTtzkYNYVepAonIUqlTkgAT
	Aj4vNSLpg7jt1AcTPIbb/oBUeQ==
X-Google-Smtp-Source: ACHHUZ5ekV/qA/jutZ5TY0nfdJ3IfVJCe2ml8+qjE57PgMROisWg3g5xJPBlz+bFlKz96buQX6Bymg==
X-Received: by 2002:a17:906:9b88:b0:970:925:6563 with SMTP id dd8-20020a1709069b8800b0097009256563mr2507516ejc.8.1685458142210;
        Tue, 30 May 2023 07:49:02 -0700 (PDT)
Received: from krzk-bin.. ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id q21-20020aa7cc15000000b00514b2717ec6sm631283edt.28.2023.05.30.07.48.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 07:49:01 -0700 (PDT)
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
Subject: [PATCH 2/7] dt-bindings: pwm: restrict node name suffixes
Date: Tue, 30 May 2023 16:48:46 +0200
Message-Id: <20230530144851.92059-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_074906_274012_6081F659 
X-CRM114-Status: GOOD (  12.71  )
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
 Documentation/devicetree/bindings/pwm/pwm.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm.yaml b/Documentation/devicetree/bindings/pwm/pwm.yaml
index 3c01f85029e5..abd9fa873354 100644
--- a/Documentation/devicetree/bindings/pwm/pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm.yaml
@@ -13,7 +13,7 @@ select: false
 
 properties:
   $nodename:
-    pattern: "^pwm(@.*|-[0-9a-f])*$"
+    pattern: "^pwm(@.*|-([0-9]|[1-9][0-9]+))?$"
 
   "#pwm-cells":
     description:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
