Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA00AC77B61
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 14:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4SiwWrI1FKtGCDkPwV0THeLuf3wO8t4hxwTwMWslUg=; b=BptoaLCDHfDVur
	A6UprdwkgSQLTCd35U0LVPZHQXmoh5Cu85gchbhMvI88DeMQnJeRsTwYxMzuNyqZlCVIJT+LiBzQu
	250BrYx54ThWGO7NiM4Kn8IppZa+8BNZsMM3t2k1wMse4JNmJ+L8DlIVnb6TwgEvK2ZpwhaUFl/MS
	V2seg+3l/roidoHhon9HsmVlgegmDpQ1O2Nyfz7LFeLX9aubtIwPPH4gGbWEq1DZd4etqaRAfQIaS
	NnGS6byWdXM5YQlZf7/tlqfNJwIwU8NA7fiwdMy3xFDtHSjv6KPfx+Hhczuraih15D43VMbAXV0+c
	h42cQizVFJkp/Dw1nW9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po3cu-00DybA-1R;
	Sun, 16 Apr 2023 14:45:12 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xn-00Ds9X-11;
	Sun, 16 Apr 2023 13:35:52 +0000
Received: by mail-ej1-x634.google.com with SMTP id kt6so19302632ejb.0;
        Sun, 16 Apr 2023 06:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681652149; x=1684244149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MKVIgiz58zIFJgX8elDwMTDtG02bu6kIfybVoLMLnnE=;
        b=jpx0NRbyMusb0ecSr5/iGMxYz0JwUDJN886OD/9YfiIzcVKnJXLY1BYn+1t78nwV/y
         9nqeIod/pXUqjApOqH5PHrxNljX+93tczHKOM9pYDHpgALFBPRH2cgBNjKuGHFbW/BSh
         zXwzu+r8BKDFt/NS4dgd9QHVM4vSwtgzMt3N06YoEi35nns7MZdzSQg1qy1c4v0pXPbw
         sldLFMjV93K8as7gmDeIcBrtXMy6fWb+Zo8ctWts38oyC+of47DRGUVY/13hsB/y/5n6
         pWQaJO0+RH+PoMjECv/s/3drmcniEaMqsCurZ1l5/zrpHramZCQWCzqqCHiqkMvK87O6
         5Q7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681652149; x=1684244149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MKVIgiz58zIFJgX8elDwMTDtG02bu6kIfybVoLMLnnE=;
        b=LaGeCcrea8dHV6Q5gy15RXmYgWQDBImG8+zv2pUpLjGT67eF31cbQHzqBLV6jXfmvQ
         NlztLO7cQKqWHRDAxFfyI81jrPOmOm2ndnE84Fm0rAKUWQjs/Tvkbc8wfTT+TIyeYJNo
         vb9/r8lWEI8hvAKLl4CGYBoh8veoA9o3S4sIzhsO8wjy8H1Z4ajsA58JdBeN/sihCaEb
         4uhn4dhN6nybAfSspkWcJr1sm2359H1TCgu1spuIqBo2O0BO0aJfkNXuvz3cDBp5kxUS
         0KtbZxMtQJ3eIcj8wzJLPmlqb7QAoAc6Tk+jxFOOC/Ykywo88TOudjiD2LJVSdnhCRs9
         ztTw==
X-Gm-Message-State: AAQBX9eyDsfzwbvKShuy43oqZ+pP/wyNCykIk8QJ6cKP01bBZpZPY3em
	eK0r2LYuSKC7Ss6INABo0Hw=
X-Google-Smtp-Source: AKy350YPmstbPVajjknyXiRkvg9C+KqbRwgdFKT785sk0SCoKCnq3TzeyY7LVWJnakbCk4/HQ+J22w==
X-Received: by 2002:a17:907:2ccc:b0:94f:3cb2:9351 with SMTP id hg12-20020a1709072ccc00b0094f3cb29351mr2253935ejc.40.1681652148930;
        Sun, 16 Apr 2023 06:35:48 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id gn23-20020a1709070d1700b009373f1b5c4esm5122958ejc.161.2023.04.16.06.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 06:35:48 -0700 (PDT)
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
Subject: [PATCH v2 07/12] Revert "media: exynos4-is: Remove dependency on obsolete SoC support"
Date: Sun, 16 Apr 2023 15:34:17 +0200
Message-Id: <20230416133422.1949-8-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416133422.1949-1-aweber.kernel@gmail.com>
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_063551_388773_6528EDCC 
X-CRM114-Status: GOOD (  15.47  )
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
