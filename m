Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF6DDC7EE20
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 10:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4SiwWrI1FKtGCDkPwV0THeLuf3wO8t4hxwTwMWslUg=; b=kM+XEwncKyJf35
	zQksVrfhu4NPc+Oz4oV4rwL0fOnfTH4mAayH/Rz0n7fDsWFJkplvcX6Ars3CyJSPwd/J069mlKN3c
	jzEtPyBLdep7Om2TnFQ8BNyjLXAIloN6HxwO6V3R+rNdCDCCjwoFymjhsTtqDwZGEKaF39rWCqLvk
	Pj91F439lQpQOGf6yrEFMSzI8bn9EM4SSX5u5m4DGIdD891/ZOG+hMJZrMC19oggmFWy8u4VIPmRW
	Uz4wAQemPHu8o40TIvtZCd8jkO3kUONbuQTiV+WaVbEw2t7DF5JA3e2KRbAXtu4i8FXMVTPX6OqXj
	kazK963eHUug6kM80w1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSt-00DVjz-1h;
	Sun, 16 Apr 2023 10:18:35 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnzSh-00DVZH-1u;
	Sun, 16 Apr 2023 10:18:25 +0000
Received: by mail-ej1-x635.google.com with SMTP id q23so47331583ejz.3;
        Sun, 16 Apr 2023 03:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681640302; x=1684232302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MKVIgiz58zIFJgX8elDwMTDtG02bu6kIfybVoLMLnnE=;
        b=cqXiolsx0L2qOIBAA7EALCik+iaaMM62IB0P+KqocrXkk7GYA93KjBCpZoy0NZhJUd
         zFaSWz7Pk/WRCBJVmp76y9w8+t7VnQLSiTi0SzoZ1VSEtpmbzRMTxFrqiGFAYYFBIsGx
         WPYkkPYTcimur1fXWbF9clpXQOhh6c/8gItlzWD0C74yR1BtOioezl+95Jpx2Pz4K5gn
         /EBQZXYEXoszFUQPGeQznA9XBQtpL8d9IW4DEizt/m2fZDYEdmlYRdVBr5SbXw2B77mz
         yI3+V/Rn+urSLxJtYLfbjVP6d8B8WC0W4ZxKS7UmQ7rHRGzxlhBhZE3Qiv+xlVEXTHKR
         A14g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681640302; x=1684232302;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MKVIgiz58zIFJgX8elDwMTDtG02bu6kIfybVoLMLnnE=;
        b=Ge/BGi0KHFP7zfO3VfdPT2AZPsFvvc2AunUshqrvTWMz2HeSEd2kK3+B7rOTrT9ocN
         scpBIDcAbi6FnHWoiHtJGLGuNblhdr6sP4HcfGlJeXIfkDOvHcfPO5hOoms7E2E/ILKC
         yjDT8jkgwX3Ao24i2MxLdtRryrqIGnDpagMjbmourB0482dcOc52bVWreNyIbLWouwU2
         8K2BuCxlwypRPwmnAKu8U9m1YlbvRJtp93FAZhQQU1Mznxj78diYR4ucum2SbcCBgeUw
         E3O7Sbvkz0mw91kREFOW8JcB19ooKlf0FS0AfdOQj0qTnQ0pdiG1aQHqkpOzfstDs739
         vB9w==
X-Gm-Message-State: AAQBX9c2azO/GDYvl09uhNRf70puWLHoIVVhEIn2ZhFuVZxKwc/p8x9S
	7lRKXnx1MYVdSS3s8v0ia+g=
X-Google-Smtp-Source: AKy350Zs3joV9ktaohSXSoa5ZOuDSyR6CCu/nkacUYcu2ur7+lu2yQnFNAz/9zbkpqhVoD9a6AMQUA==
X-Received: by 2002:a17:906:57d5:b0:94e:dd1c:dc78 with SMTP id u21-20020a17090657d500b0094edd1cdc78mr4487386ejr.69.1681640301702;
        Sun, 16 Apr 2023 03:18:21 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id r20-20020a056402019400b0050476da5160sm4427443edv.45.2023.04.16.03.18.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 03:18:21 -0700 (PDT)
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
Subject: [PATCH 07/12] Revert "media: exynos4-is: Remove dependency on obsolete SoC support"
Date: Sun, 16 Apr 2023 12:16:19 +0200
Message-Id: <20230416101624.15866-8-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416101624.15866-1-aweber.kernel@gmail.com>
References: <20230416101624.15866-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_031823_650307_0494E6A1 
X-CRM114-Status: GOOD (  15.26  )
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

This reverts commit 2d41a0c9ae51ac363d107f2510022106e7234b33.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 drivers/media/platform/samsung/exynos4-is/Kconfig     | 2 +-
 drivers/media/platform/samsung/exynos4-is/fimc-core.c | 2 +-
 drivers/media/platform/samsung/exynos4-is/fimc-lite.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/samsung/exynos4-is/Kconfig b/drivers/media/platform/samsung/exynos4-is/Kconfig
index da33faa7132e..7f9ba053dd8e 100644
--- a/drivers/media/platform/samsung/exynos4-is/Kconfig
+++ b/drivers/media/platform/samsung/exynos4-is/Kconfig
@@ -47,7 +47,7 @@ config VIDEO_S5P_MIPI_CSIS
 config VIDEO_EXYNOS_FIMC_LITE
 	tristate "EXYNOS FIMC-LITE camera interface driver"
 	depends on I2C
-	depends on SOC_EXYNOS4412 || SOC_EXYNOS5250 || COMPILE_TEST
+	depends on SOC_EXYNOS4212 || SOC_EXYNOS4412 || SOC_EXYNOS5250 || COMPILE_TEST
 	depends on HAS_DMA
 	select VIDEOBUF2_DMA_CONTIG
 	select VIDEO_EXYNOS4_IS_COMMON
diff --git a/drivers/media/platform/samsung/exynos4-is/fimc-core.c b/drivers/media/platform/samsung/exynos4-is/fimc-core.c
index 1791100b6935..e2f394e60dee 100644
--- a/drivers/media/platform/samsung/exynos4-is/fimc-core.c
+++ b/drivers/media/platform/samsung/exynos4-is/fimc-core.c
@@ -1129,7 +1129,7 @@ static const struct fimc_drvdata fimc_drvdata_exynos4210 = {
 	.out_buf_count	= 32,
 };
 
-/* EXYNOS4412 */
+/* EXYNOS4212, EXYNOS4412 */
 static const struct fimc_drvdata fimc_drvdata_exynos4x12 = {
 	.num_entities	= 4,
 	.lclk_frequency	= 166000000UL,
diff --git a/drivers/media/platform/samsung/exynos4-is/fimc-lite.c b/drivers/media/platform/samsung/exynos4-is/fimc-lite.c
index e185a40305a8..f80047095f30 100644
--- a/drivers/media/platform/samsung/exynos4-is/fimc-lite.c
+++ b/drivers/media/platform/samsung/exynos4-is/fimc-lite.c
@@ -1619,7 +1619,7 @@ static const struct dev_pm_ops fimc_lite_pm_ops = {
 			   NULL)
 };
 
-/* EXYNOS4412 */
+/* EXYNOS4212, EXYNOS4412 */
 static struct flite_drvdata fimc_lite_drvdata_exynos4 = {
 	.max_width		= 8192,
 	.max_height		= 8192,
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
