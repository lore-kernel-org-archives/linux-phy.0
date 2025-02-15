Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77FDDC021A0
	for <linux-phy@archiver.kernel.org>; Sat, 15 Feb 2025 09:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nYHvmM4DUOs+idZ91FBZKcN05eGNGtODu+DT5n1Wm0M=; b=gUn53Yyzb6wHCn
	BfqBGQORwJlwqz93+xd5n8F+YjElUnZdiTZYTr1JHIl1NHwD//gvV4b52ehmj5Qh5dJRC7SCiwqVA
	+3xa1z9Jzr48YVHnlvjl6Myldwi4NU0s2uwrtMaM06VHoKa0dQ9VVTd2UCxqKiQQ2EwEGFsXybjOj
	iaNu68JZFOdaY+eNFrPenKZD5zNZb2Wg2x/10hl8oZN4ixDlGiG4MLAQMG7sBtUdI1UKAxIA1Fuky
	Lg+AwsJ9KB2P6Y/DDT8ffBzx7sMEwBUIRD+Nw4qNVs39mAByEAKnvwJSjQxux2DxaPMIEgVunw3zO
	8eKjmssGz+scNrtGca7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjEtz-0000000HNrF-0wi1;
	Sat, 15 Feb 2025 09:55:59 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjEfv-0000000HLzi-2Z6V
	for linux-phy@lists.infradead.org;
	Sat, 15 Feb 2025 09:41:30 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4395d8edc69so1527045e9.0
        for <linux-phy@lists.infradead.org>; Sat, 15 Feb 2025 01:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739612486; x=1740217286; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5SxoWr2vFLkloiiVYCn5S11j3T2lrQAUOXkKWdINmvg=;
        b=xjZvEhDjKpqfILJ1f4B+y2eumSMr9EhyMffn05UOSzUDOk1TbeCXNctTof+drZ0LAp
         vklvAzbv/jACsXOntNYf0MrLhA+BeMR+X3PdkDv87RVRHZVKrvDKOAJ4qZToAFpbIU3g
         HRSoLI64EHtM1H9AFvA7aYI+vGBrCYpYymNhi+oVmVZft27hOR98O0wiwij+yo8rkhxq
         BUkGB3avJ2hCKYHUVWyBlxa/onUS+C2iczIrlwA5TNaLh7WiFWJYWFzeDWTFVqFXe5VH
         3OUuVe5TUCtGTle5FO4InmtkfksqlssOKJrFTp46JgUg7oJanrmTTUywlbXu2CVo7F5X
         kGig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739612486; x=1740217286;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5SxoWr2vFLkloiiVYCn5S11j3T2lrQAUOXkKWdINmvg=;
        b=OS6G87pelswEOOfaGKSr/pgx4l5jGn6B/SRJ8iTYjgyKg99a2/DJPkvDczcgqntpJS
         dEsYOt2dBvM0X3uRt5uVnK2Qlnj6eQvqXmpBQU3BjwTNHrIgDE0z52Mg+MM2SSYB1mKc
         yuDlX2whL+1cFY86rPABc3sP8PMZlLRA1RevTLvAJE8r6IZ988lIDyYBKSjkgmkxs/+y
         1uMvx6nmpaQsIgVP+fS5aV9MjDoud6yzzMIU23n69VtTkkpx96xXQWdemw2WgTqFoc5g
         +HtpS3riRSY4tn1xnADxJsaLJYl5tOemuDr5FFHKGSgBIRT3sI7e4duxGN6dc6HswNDS
         SkfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZO1ju/7IH9tcnRzLNYaQ7rfdChhcp9vOcdgI4b8k4mpmdNNP3Qi5Pm8pJXH24e2iKDj8h9T8ryUo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyd1C2mvz1hwj/rrjAsb7LQCOiq0CGv+ImMWUXGtthV2D79Ry2T
	die00oeN2IlObzznGi9WC0R2mHCfXTxBRpMTh3ywA5EaEk4a+isCnXTM//RgY0w=
X-Gm-Gg: ASbGnctTvREdI6AuckjwW/6PuEoebMco+P9vaMbpNjOaGHtcywST0z+fPbkGA3d9ptK
	yubGM781pdezDuWMMjvI+pIG1AjV5ENL5dFx+5da+naezpvlevUNr70WS35SESBkBwH550Z+x77
	dLVcGxTlrwNpCbgfdJtrUWyd1UstFhxFzmg0j6ulp9Hh5lT9oUYgpa0EoA6njBrkhNJIH/yQnGF
	WH2tSXsJZUg1ZkvWRxRDdVRs1DkkiKZkqjpiszI0aoFl/6PfL+uK6aRvREVLG7cZ1gDGVxASRvJ
	vqW4dxCO/QUYwa1mSR1cyrN4pombVg==
X-Google-Smtp-Source: AGHT+IF2PoXxZGft4S7bEaK90H7os4Iev7h+v97AgdpzM5GZ1g5ZH5opiwmuf7Drdh8bXm5uHZBgtA==
X-Received: by 2002:a05:600c:3ba5:b0:439:6538:c979 with SMTP id 5b1f17b1804b1-4396e781fa7mr9169255e9.3.1739612485654;
        Sat, 15 Feb 2025 01:41:25 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a1b8471sm97985345e9.37.2025.02.15.01.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Feb 2025 01:41:24 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH] phy: exynos5-usbdrd: Fix broken USB on Exynos5422 (TYPEC dependency)
Date: Sat, 15 Feb 2025 10:41:22 +0100
Message-ID: <20250215094122.60535-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_014127_668094_617EA049 
X-CRM114-Status: GOOD (  12.96  )
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
USB DRD PHY does not really depend on Type-C for these devices at all.
Incorrectly added dependency on CONFIG_TYPEC caused this driver to be
missing for exynos_defconfig and as result Exynos5422-based boards like
Hardkernel Odroid HC1 failed to probe USB.

Drop incorrect dependency and rely on module to be reachable by the
compiler.

Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
Closes: https://krzk.eu/#/builders/21/builds/6139
Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
Closes: https://lore.kernel.org/all/3c0b77e6-357d-453e-8b63-4757c3231bde@samsung.com/
Fixes: 09dc674295a3 ("phy: exynos5-usbdrd: subscribe to orientation notifier if required")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Patch for issue in linux-next
---
 drivers/phy/samsung/Kconfig              | 1 -
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/samsung/Kconfig b/drivers/phy/samsung/Kconfig
index 7fba571c0e2b..e2330b0894d6 100644
--- a/drivers/phy/samsung/Kconfig
+++ b/drivers/phy/samsung/Kconfig
@@ -81,7 +81,6 @@ config PHY_EXYNOS5_USBDRD
 	tristate "Exynos5 SoC series USB DRD PHY driver"
 	depends on (ARCH_EXYNOS && OF) || COMPILE_TEST
 	depends on HAS_IOMEM
-	depends on TYPEC || (TYPEC=n && COMPILE_TEST)
 	depends on USB_DWC3_EXYNOS
 	select GENERIC_PHY
 	select MFD_SYSCON
diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index ff2436f11d68..e8a9fef22107 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -1456,7 +1456,7 @@ static int exynos5_usbdrd_setup_notifiers(struct exynos5_usbdrd_phy *phy_drd)
 {
 	int ret;
 
-	if (!IS_ENABLED(CONFIG_TYPEC))
+	if (!IS_REACHABLE(CONFIG_TYPEC))
 		return 0;
 
 	if (device_property_present(phy_drd->dev, "orientation-switch")) {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
