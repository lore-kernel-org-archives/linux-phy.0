Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F36E3C7EE21
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 13:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpVpacT+cjNmEpJJ7w0pHtzZ1pUYnlSV6ovAYNvuhdY=; b=TfRX/S93WuqNIm
	wRbNpsW9Fsrv70ynQGkN9l5GClM2luxEcmTZ17238gD/0SI8gT82qCylv7x9K9aHF+fF2tehXUCqz
	a3sdV7495bNP3BHsaKiPRShB8FGm2LSNauZ/U84cK7+w/gROqfD2iVkcQ6+XNqFi9hKTWceOUqzzn
	qYDvRz6RwjFUyyy7ffgD5DgLg1UYB8DDtfuStAtrSKE8zdg+ZvVjDjHQb0ot7FdEsOYWBRDvDQ5VT
	VBcGRJzxP6F5k5j4PPiTj12fsnJkvOUAuG+idFhIKfPlLc6j2xdoa4Qn9gzkxLa+i30ji3lHB1vKd
	DuPTXsNFmNq9n57fkhXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xg-00Ds6g-1Y;
	Sun, 16 Apr 2023 13:35:44 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xa-00Ds27-0q;
	Sun, 16 Apr 2023 13:35:41 +0000
Received: by mail-ej1-x62c.google.com with SMTP id q23so47998707ejz.3;
        Sun, 16 Apr 2023 06:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681652137; x=1684244137;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lcsub8KhIgRh8+LjsAALX2kQhfzLuSTeBZW6A1vW2A0=;
        b=iwMbVHa2MlgG+jx7mloofP6Nhzg6eDc/daviEdAbzrJm8snqyK4r5K/LnDuGCaHplN
         ux+3e6SEg7bmLl68gyyylkkkc6rLq2fFEmXiRkrdalZUEHrdlB31AYnZsceJw8Fl7mNZ
         mCvXrGL20X921acbXCWbvcPEhzWQyG2zfcJPJpnT41ZIFpDoyNYtmGi++8qjAAGiPzSs
         X0TUE/6/+8998N2H5pjWRVr2lLuo7pMNW/ES/2BThl+wol5rBLzECPqcWewNU8ImVjVK
         a9JzopBdhbPXQgoJOBKvvA2PcVrJjf319Ie4UI/yrHgFnE8rEBclRJkEYHBKNrk9kF4n
         iEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681652137; x=1684244137;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lcsub8KhIgRh8+LjsAALX2kQhfzLuSTeBZW6A1vW2A0=;
        b=BlcRKgv70pAX/w/dRGMggU7HZLomse/QhChlIspsQWd1e3PK39v0MIKt8W83X+AJCr
         r3qOVUlIJ1zJ29HiksMMuTBjxSGKQ9ep4A9q7bhEvWMo4zSMiZ7RrGngxC2parAoCJz1
         MGu+fQ3/xeqWtLQ6/WnewXu+3iRGboRXx0XblnpabQ8veO1bM/64xhEAzfm8NYslV6MF
         kA4D9tsDnPhQLzZF3GP796wPC3NKXSKED5tGCB7elhKxqw4r0C4gVRC8r8bJgK1uaZKC
         BuqL+tateoDCk4ggxgQYAeE2jclXz4bHrspQBI3xiI7UKMbQ5XWyLZNe6geyuSQMUz5w
         S/aQ==
X-Gm-Message-State: AAQBX9fFpZGqF4vFqnhN+WSyUqSy9ThIVpZXob0mUyywa49kxvUyzMpF
	38lUEX+4eeYMDmeTF8b9iPY=
X-Google-Smtp-Source: AKy350bGaVuX5pzurnhlXfdKfoZIS5zhuQjlj1IZXMX185GoOm0fxbH3sL4jtNmKj8vjEVK4oORE4Q==
X-Received: by 2002:a17:906:254:b0:93b:5f2:36c with SMTP id 20-20020a170906025400b0093b05f2036cmr4220124ejl.61.1681652136807;
        Sun, 16 Apr 2023 06:35:36 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id gn23-20020a1709070d1700b009373f1b5c4esm5122958ejc.161.2023.04.16.06.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 06:35:36 -0700 (PDT)
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
Subject: [PATCH v2 02/12] dt-bindings: clock: add Exynos4212 clock compatible
Date: Sun, 16 Apr 2023 15:34:12 +0200
Message-Id: <20230416133422.1949-3-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416133422.1949-1-aweber.kernel@gmail.com>
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_063538_305813_20563591 
X-CRM114-Status: GOOD (  11.32  )
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
 .../devicetree/bindings/clock/samsung,exynos-clock.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
index 0589a63e273a..a36781a455b6 100644
--- a/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,exynos-clock.yaml
@@ -24,6 +24,7 @@ properties:
           - samsung,exynos3250-cmu-dmc
           - samsung,exynos3250-cmu-isp
           - samsung,exynos4210-clock
+          - samsung,exynos4212-clock
           - samsung,exynos4412-clock
           - samsung,exynos5250-clock
       - items:
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
