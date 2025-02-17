Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1E9DC021A6
	for <linux-phy@archiver.kernel.org>; Mon, 17 Feb 2025 09:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X7gklputJ8Lds1Kvi7qZFGCcsCOkdESR8zEpO1hVVho=; b=34YHk7BuQYpZs2
	9sZWGEFvX3Q4y3y1YRMCmxyR/13xrNn33lyclWYmRZugrGu7/xelSV1UogLULurulGbSCE5qKWOF7
	3AgmWbYGOm9uK/I7f2wFPCsg75SWbGs/WnrbHhuJR9rhXI9MC+aJ3M2JoQOo2HvYHefjng6hUDyxp
	OXC3e89vR5EFosEPxdaaDWEB9jH8VgvTDIxgAI1QmobUhBQ22lzEsTXMNQhQLBfIgJAUduD4SMXXT
	RY1eUhK5sizNTCZGvxG0AOYgFXoMVoWY6nha2ovhXnzgwGEvNBa4nJ3mtX2Ik4i4KGDxLzE8WyzEZ
	avlHEWUjfOMvYx9/I3+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxFd-00000003u2k-2m9H;
	Mon, 17 Feb 2025 09:17:17 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjx47-00000003rXg-0W1a
	for linux-phy@lists.infradead.org;
	Mon, 17 Feb 2025 09:05:24 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-abb64620031so21227466b.1
        for <linux-phy@lists.infradead.org>; Mon, 17 Feb 2025 01:05:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739783121; x=1740387921; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CmyIFYQ0ZEfR9O2k5FWwdkgo72h3+vhymfD8Vqk6qXw=;
        b=x5ggHUVUYd2tg+fBCoH3kOJ37LrY6XrcXlzV6Qo1zbpiC2/4Dez4331d9Y9OPgDj5t
         qpy+HYvKxSmUkFlmKqcQZYik8/n7T4UaIpCi3IryEslIuPglmg2T3oyeRRsE0kTwk0Gj
         JObsL5tVRzFX0VyoR9D91c15C89wS4jDW3daKkQMhbiivuszZIAPovPoxGwTlYzCbJ5C
         q0DpGvv7wuJVMK62DdxsXyOK8xRGbhWz/H2lz+ckneVF8cpeA6QpxjgYV12/4XPSyIoX
         AowCzAVYXmuHGi1ifflLwsMTtVX5rZOk3OHPwd8gAJE7uev6urU5T9HR2UWPrUF/gWaz
         NK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739783121; x=1740387921;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CmyIFYQ0ZEfR9O2k5FWwdkgo72h3+vhymfD8Vqk6qXw=;
        b=sA50POgSyC4gwp8Tzb5LO7INURklqdxLt/SoNiHvdB69jvdfvUshksorHiNJlR5568
         opdjCP6+oDFBp/yDyWX3HbBMArUC68+51eGmdQ/6lAXksmxoyEZgVMnZ/lkHnnsvsaFu
         Ab9Wlq9K69YbyILWBs/fSt6Wf+PKzYVgiftOlB5jbKkRmRCuJmZUt2S2p58h4qkKEnF+
         L2O9Re3x7mCSMYlzH3LZGzgzC0yc+tbGJgRWZmGDwh1d7bP9J7fPKgJ7cNnOvjD1y8k5
         GCbT2HW0KTrXgcx+i32SqHj0097/yYIeOp4hSXn9QTAq+s26odvVNi5ZRzeA3MOqDUhA
         3g7w==
X-Forwarded-Encrypted: i=1; AJvYcCWLIbtQEhW+TghNxK3M6tkDm9qse6UlRU1Yei3T2oBPRiND7qN4nj8SMMLVs+sboa3l/R58hIMWkWk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzJHp1aLLT6JrTndSMqWilRRNYBVJ2LD+HcQw9A+sKtGqkTDWJL
	j8aiexU8ttjjsPmDG3SI2ItMpsz1DQavPzVZESIZg/1raqRaBiEjUlHLO+0z1IHsj+U/3boINrP
	g
X-Gm-Gg: ASbGncuBfXvrdr77WP0Fgf5vJXLMNk/t7Jy4RgOSRyvV7lkUWWxxg+AXMe0ZN63/xGR
	or5/OtHIVc3lZafHB3HZCqsZ7iTvSMZ8zh4nXDI94R/J29/mLE7v0a4z8SRNCHzTHIvmDyTarrI
	t6fIAdKvjxM/X0VJQp6ms1kFyoOVAHj7JeFFwJuuRmqOcJqCRu5JDcraK469f28ht95PxYRRilX
	i4X8272sdujDoA20VHfheCzqLGkSiJQVUR3JZBeAZrLsP7lO+M8ARxg9jxJ7NeAbVxXi6Ha9hP2
	lbKhKmnrf1g4VEaytGOHt+37el6mcg==
X-Google-Smtp-Source: AGHT+IFUhQJFGvkV4VP3XiKSdG8YIKa8uiSi/ja19wDelIasVTPOFlIChwIzjHuRzd6GvUBWD2iWsQ==
X-Received: by 2002:a17:907:7248:b0:ab7:82a7:bb1f with SMTP id a640c23a62f3a-abb70d96de8mr341479666b.10.1739783121482;
        Mon, 17 Feb 2025 01:05:21 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb8190d1b6sm368833466b.36.2025.02.17.01.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 01:05:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH v3] phy: exynos5-usbdrd: Fix broken USB on Exynos5422 (TYPEC dependency)
Date: Mon, 17 Feb 2025 10:05:18 +0100
Message-ID: <20250217090518.137606-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_010523_163289_A2573CE7 
X-CRM114-Status: GOOD (  11.58  )
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

Older Exynos designs, like Exynos5422, do not have USB Type-C and the
USB DRD PHY does not really need CONFIG_TYPEC for these devices at all.
Incorrectly added optional dependency on CONFIG_TYPEC caused this driver
to be missing for exynos_defconfig and as result Exynos5422-based boards
like Hardkernel Odroid HC1 failed to probe USB.

Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
Closes: https://krzk.eu/#/builders/21/builds/6139
Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Closes: https://lore.kernel.org/all/3c0b77e6-357d-453e-8b63-4757c3231bde@samsung.com/
Fixes: 09dc674295a3 ("phy: exynos5-usbdrd: subscribe to orientation notifier if required")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Patch for issue in linux-next

Changes in v3:
1. Simplify and go back to standard optional dependency without
   intermediate symbol

Changes in v2:
1. Add PHY_EXYNOS5_USBDRD_TYPEC, so arm64 defconfig will have both
   symbols in-sync
---
 drivers/phy/samsung/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index 7fba571c0e2b..6566100441d6 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -81,7 +81,7 @@ config PHY_EXYNOS5_USBDRD
 	tristate "Exynos5 SoC series USB DRD PHY driver"
 	depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
 	depends on HAS_IOMEM
-	depends on TYPEC || (TYPEC=n && COMPILE_TEST)
+	depends on TYPEC || !TYPEC
 	depends on USB_DWC3_EXYNOS
 	select GENERIC_PHY
 	select MFD_SYSCON
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
