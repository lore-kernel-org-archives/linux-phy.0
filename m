Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65CDCC77B77
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 13:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+p+4fH/yPkWDx5ckV2Lzgzcnz2UYyjCt3lv+y24SCFw=; b=EMYS2wc6+Fx5we
	wcWvA9tcQDPM4BFebEeR9QTBkKUnqW1s2sGCo6+PHYM/c33GKf/cn5ARymyljtjCNEGlYrUMTxEL9
	2JhnNqUtE/zjGKN46jP7DQsSl8MLWD/iAwzeCrNgB8/ssx8nEJPCVkmAc2zzvXjzpDYSHDWBDR5Kf
	1DyEwJRhLJk0qcmIancPAiqQOIzSQx3WGX9TtH+TeqgI+R2xs034IvsyPvWq8t5bZARfUFExwvyIA
	wqdUReV4Ad1gC1VUfTSUNa/95ncS3tMsBBr/YH8SwN5yqzJx2cSN6x99wE220G5lCwxUXpiyDNyZP
	2uKlE1Ft1AAB4M1Cj04w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xm-00Ds9j-07;
	Sun, 16 Apr 2023 13:35:50 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xb-00Ds1W-1T;
	Sun, 16 Apr 2023 13:35:41 +0000
Received: by mail-ej1-x631.google.com with SMTP id sz19so393347ejc.2;
        Sun, 16 Apr 2023 06:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681652134; x=1684244134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9UY+jtzkZVxp695kD2INeOepNCktKBgUK3witE0IcM4=;
        b=iaTooN0HV3wy+r8wq4Tu/QDcwsEjpCqQ8moi/+BO4r9tom4CDZcYLjR3oWufi4pXYN
         DUnYtHtrBufhSYykf/7uASG1jLIRcIi3pBOgIPvkPQCBjmZsGJ/YUYlo4nDw/5rtH9zJ
         665gVk1zHEQlfSU2JIvzLHo32isQYdX9yg49Bfq0nSxHE9PS5Qn3oDcBa0H8Z2b19Ra7
         aQTK413zxQxnMRKoXShJvxc2Q6l8qNMBDEyZPTzcn47LVOWJ0qYWr3ACHhxTDVhFU1Y7
         3e6NsXzjs3aLxJvGCMBE7LzoPa8e2eh71tloy/03nMr0f17wKg5yH0wyP1l5TEXQdy+h
         JyCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681652134; x=1684244134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9UY+jtzkZVxp695kD2INeOepNCktKBgUK3witE0IcM4=;
        b=CRRFR0c48ImYZvnEpK2qQs2br7YSWGDWyMfIEPJ5rZ44MNUbIvjvm593pqpLHbauRe
         p1Htm5QNSTXC+EPh9FW3+8EVB7iLcq8ShSg2aJf+HSuTFhpQiirktZ3Si7L0AJB5LuBw
         2ORC345A6wbq7v0uJQUkTD2vkbF5BAt5tG1Fu61XD9TgyzpGGe9+6U/InjsbKphhjhH0
         r36frreMYpHLaqtKPyFJqhaXcPL3bT1LN8J2NFQ8Gq3ehI376hCvNhbJpD4xm/p8m5vw
         T6w4rJJvYp7WkP/HUobViXdTqD8dZ6ELaTbD+cWswWEPqnauJuNAPHZd36k4YQka7fuH
         yRPQ==
X-Gm-Message-State: AAQBX9cpofqnJ/a116ri9Ym/+F/RnSHF2CxVL0J/58tf5KBg6rgF/FKT
	ktkPQ1Jw6/pTwDYNA09Y/9I=
X-Google-Smtp-Source: AKy350ZO/bAqHPULEAVisdWwkRtRXKRD5ZhIpPWHtjHQe58iG5EhjU3xPTw+FcVrRY82zYRSX+U8RA==
X-Received: by 2002:a17:906:58d:b0:94e:da66:c5b2 with SMTP id 13-20020a170906058d00b0094eda66c5b2mr3861559ejn.73.1681652134152;
        Sun, 16 Apr 2023 06:35:34 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id gn23-20020a1709070d1700b009373f1b5c4esm5122958ejc.161.2023.04.16.06.35.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 06:35:33 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Kukjin Kim <kgene@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Artur Weber <aweber.kernel@gmail.com>
Subject: [PATCH v2 01/12] dt-bindings: soc: samsung: add Exynos4212 PMU compatible
Date: Sun, 16 Apr 2023 15:34:11 +0200
Message-Id: <20230416133422.1949-2-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416133422.1949-1-aweber.kernel@gmail.com>
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_063539_494375_B9E21183 
X-CRM114-Status: GOOD (  11.39  )
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

The platform was originally dropped in commit bca9085e0ae9 ("ARM:
dts: exynos: remove Exynos4212 support (dead code)"), as there were
no boards using it.

We will be adding a device that uses it, so add it back.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index f7c141dd11ec..be3128f2c0df 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -17,6 +17,7 @@ select:
         enum:
           - samsung,exynos3250-pmu
           - samsung,exynos4210-pmu
+          - samsung,exynos4212-pmu
           - samsung,exynos4412-pmu
           - samsung,exynos5250-pmu
           - samsung,exynos5260-pmu
@@ -36,6 +37,7 @@ properties:
           - enum:
               - samsung,exynos3250-pmu
               - samsung,exynos4210-pmu
+              - samsung,exynos4212-pmu
               - samsung,exynos4412-pmu
               - samsung,exynos5250-pmu
               - samsung,exynos5260-pmu
@@ -122,6 +124,7 @@ allOf:
             enum:
               - samsung,exynos3250-pmu
               - samsung,exynos4210-pmu
+              - samsung,exynos4212-pmu
               - samsung,exynos4412-pmu
               - samsung,exynos5250-pmu
               - samsung,exynos5410-pmu
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
