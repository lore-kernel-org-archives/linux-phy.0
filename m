Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55634C7EE22
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 13:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g00GZTtc++Id70mXk5c/FXFmhD32ygphrrHXHD+5l4o=; b=hMrtR0xBjwQHv4
	62xKMGPddCKwMJk5/8+0SicxW2kZD+pnZWiGmxpR0cfYB71hMrMdCNOEQhsBBmoVSo36zoIfneuu4
	gTvI4UtntHSS3e3PfbaTcHzFsEwZkrwJsixbXHKdRNHSLV7+CfsDWN2r6L99mywuktjOQyBti8mZ7
	tW8fKA7gO0vgSxwDxFCAI0zmuiqxgWTdbqDe0k3j7jCz0PURMaVSLwG3+eKzOfbldBQlJqUvsFG9g
	KYldD+efl28Y2F1BaJZTbq7AeV8gbGRtClFQsgPLix6asyXaKMgmO3/SKbkavmClLWYZjewmkDYPp
	xM+RXumnuoIRBve2UY5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xt-00DsGC-2w;
	Sun, 16 Apr 2023 13:35:57 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xj-00Ds7u-2q;
	Sun, 16 Apr 2023 13:35:49 +0000
Received: by mail-ej1-x636.google.com with SMTP id dx24so13440789ejb.11;
        Sun, 16 Apr 2023 06:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681652146; x=1684244146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rsVMP+nc4oNcZ87McW4OVdy6DpQdiSat54tBtHLhBBY=;
        b=BK9ciytjH5O2apYl911PFKkIxjD0zuyUTnHnkFvow0HPrFXNgXRS+bCDhdVp/D36t6
         2P+yZB0Cqdr/gCuTRs5bqhMWolKAffqrQgg9iAQve6wBRsD6NVOxaeGXviUDLeV3rJuR
         xLdhNHynxxhPQGqFxrD6NL5AK92/CrwjBjCH+NRPxkfCyXCUTnTwKgi5E73R0eV7jBwZ
         HznmnxwUraE0gCIW5shq36yHLszhwO9+ho7QeR+RTJKYESs+Q3YqnnBWCavzVTrwfVvh
         9ov5d3uIsJZKmu/pF0PG+eTcUExVaN7r7ETQ1ENn984AqaKihGNVEDbOeyz6yR/EZfad
         w00Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681652146; x=1684244146;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rsVMP+nc4oNcZ87McW4OVdy6DpQdiSat54tBtHLhBBY=;
        b=NmNbH8cbh+7nZUMqHUU7AfJnjViYPyRx6Ac994knVghK2IwbJMyG9ya5yePn6TYAOE
         oHPorpQ1Q3v1QZ+3Iq2H5I7bt1Q4KfIZMXPJOLMY4JwwHLAaMMlh7TIn2Y6J5bLwyCk7
         CSzl1TI7rvjlUSzopy8JHtIgY8j6QPGXH8nUiY42qtmgW/C+WQ8jCqED0LaZF+VZO0aX
         nxlrH2XLt0PTULhH2UCIxeK3BkC0v9tjDXnY/LxFZJL1L0Y2ccz8p0yU34nPk6ait0c9
         TA7W/71CqVq3pA+jul0RvORt9U6P/SJjt99E0PnANNTOK9EPPtpxuI54M/l//rvRPsO7
         xYDQ==
X-Gm-Message-State: AAQBX9cwSIei52epsxq+RgtqstiTDLi77DtSV9EKSnLdzi5qAbaJh07x
	WL7g1bgy9P34I6kQBs+mQ0o=
X-Google-Smtp-Source: AKy350aOQZtUDJ6HCtW/XeHcJyZm9y8dSlT6kREJgZmf3EgNgVfgfeFUalYfzshLE7tAJJsTQfMIqQ==
X-Received: by 2002:a17:906:4a0f:b0:94e:d664:c2d5 with SMTP id w15-20020a1709064a0f00b0094ed664c2d5mr4822386eju.21.1681652146503;
        Sun, 16 Apr 2023 06:35:46 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id gn23-20020a1709070d1700b009373f1b5c4esm5122958ejc.161.2023.04.16.06.35.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 06:35:46 -0700 (PDT)
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
Subject: [PATCH v2 06/12] clk: samsung: Re-add support for Exynos4212 CPU clock
Date: Sun, 16 Apr 2023 15:34:16 +0200
Message-Id: <20230416133422.1949-7-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416133422.1949-1-aweber.kernel@gmail.com>
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_063547_929564_72130460 
X-CRM114-Status: GOOD (  17.04  )
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

This is effectively a revert of commit c9194fb623b0 ("clk: samsung:
Remove support for obsolete Exynos4212 CPU clock"); the driver
has changed significantly since then, prompting this re-make.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 drivers/clk/samsung/clk-exynos4.c | 44 +++++++++++++++++++++++++++----
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos4.c b/drivers/clk/samsung/clk-exynos4.c
index 22009cb53428..9655f46db95c 100644
--- a/drivers/clk/samsung/clk-exynos4.c
+++ b/drivers/clk/samsung/clk-exynos4.c
@@ -138,7 +138,8 @@
 /* the exynos4 soc type */
 enum exynos4_soc {
 	EXYNOS4210,
-	EXYNOS4X12,
+	EXYNOS4412,
+	EXYNOS4212,
 };
 
 /* list of PLLs to be registered */
@@ -1205,6 +1206,24 @@ static const struct exynos_cpuclk_cfg_data e4210_armclk_d[] __initconst = {
 	{  0 },
 };
 
+static const struct exynos_cpuclk_cfg_data e4212_armclk_d[] __initconst = {
+	{ 1500000, E4210_CPU_DIV0(2, 1, 6, 0, 7, 3), E4210_CPU_DIV1(2, 6), },
+	{ 1400000, E4210_CPU_DIV0(2, 1, 6, 0, 7, 3), E4210_CPU_DIV1(2, 6), },
+	{ 1300000, E4210_CPU_DIV0(2, 1, 5, 0, 7, 3), E4210_CPU_DIV1(2, 5), },
+	{ 1200000, E4210_CPU_DIV0(2, 1, 5, 0, 7, 3), E4210_CPU_DIV1(2, 5), },
+	{ 1100000, E4210_CPU_DIV0(2, 1, 4, 0, 6, 3), E4210_CPU_DIV1(2, 4), },
+	{ 1000000, E4210_CPU_DIV0(1, 1, 4, 0, 5, 2), E4210_CPU_DIV1(2, 4), },
+	{  900000, E4210_CPU_DIV0(1, 1, 3, 0, 5, 2), E4210_CPU_DIV1(2, 3), },
+	{  800000, E4210_CPU_DIV0(1, 1, 3, 0, 5, 2), E4210_CPU_DIV1(2, 3), },
+	{  700000, E4210_CPU_DIV0(1, 1, 3, 0, 4, 2), E4210_CPU_DIV1(2, 3), },
+	{  600000, E4210_CPU_DIV0(1, 1, 3, 0, 4, 2), E4210_CPU_DIV1(2, 3), },
+	{  500000, E4210_CPU_DIV0(1, 1, 3, 0, 4, 2), E4210_CPU_DIV1(2, 3), },
+	{  400000, E4210_CPU_DIV0(1, 1, 3, 0, 4, 2), E4210_CPU_DIV1(2, 3), },
+	{  300000, E4210_CPU_DIV0(1, 1, 2, 0, 4, 2), E4210_CPU_DIV1(2, 3), },
+	{  200000, E4210_CPU_DIV0(1, 1, 1, 0, 3, 1), E4210_CPU_DIV1(2, 3), },
+	{  0 },
+};
+
 #define E4412_CPU_DIV1(cores, hpm, copy)				\
 		(((cores) << 8) | ((hpm) << 4) | ((copy) << 0))
 
@@ -1233,6 +1252,11 @@ static const struct samsung_cpu_clock exynos4210_cpu_clks[] __initconst = {
 			CLK_CPU_NEEDS_DEBUG_ALT_DIV | CLK_CPU_HAS_DIV1, 0x14200, e4210_armclk_d),
 };
 
+static const struct samsung_cpu_clock exynos4212_cpu_clks[] __initconst = {
+	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_MOUT_MPLL_USER_C,
+			CLK_CPU_NEEDS_DEBUG_ALT_DIV | CLK_CPU_HAS_DIV1, 0x14200, e4212_armclk_d),
+};
+
 static const struct samsung_cpu_clock exynos4412_cpu_clks[] __initconst = {
 	CPU_CLK(CLK_ARM_CLK, "armclk", CLK_MOUT_APLL, CLK_MOUT_MPLL_USER_C,
 			CLK_CPU_NEEDS_DEBUG_ALT_DIV | CLK_CPU_HAS_DIV1, 0x14200, e4412_armclk_d),
@@ -1326,11 +1350,15 @@ static void __init exynos4_clk_init(struct device_node *np,
 		samsung_clk_register_fixed_factor(ctx,
 			exynos4x12_fixed_factor_clks,
 			ARRAY_SIZE(exynos4x12_fixed_factor_clks));
-		samsung_clk_register_cpu(ctx, exynos4412_cpu_clks,
-				ARRAY_SIZE(exynos4412_cpu_clks));
+		if (soc == EXYNOS4412)
+			samsung_clk_register_cpu(ctx, exynos4412_cpu_clks,
+					ARRAY_SIZE(exynos4412_cpu_clks));
+		else
+			samsung_clk_register_cpu(ctx, exynos4212_cpu_clks,
+					ARRAY_SIZE(exynos4212_cpu_clks));
 	}
 
-	if (soc == EXYNOS4X12)
+	if (soc == EXYNOS4412 || soc == EXYNOS4212)
 		exynos4x12_core_down_clock();
 
 	samsung_clk_extended_sleep_init(reg_base,
@@ -1363,8 +1391,14 @@ static void __init exynos4210_clk_init(struct device_node *np)
 }
 CLK_OF_DECLARE(exynos4210_clk, "samsung,exynos4210-clock", exynos4210_clk_init);
 
+static void __init exynos4212_clk_init(struct device_node *np)
+{
+	exynos4_clk_init(np, EXYNOS4212);
+}
+CLK_OF_DECLARE(exynos4212_clk, "samsung,exynos4212-clock", exynos4212_clk_init);
+
 static void __init exynos4412_clk_init(struct device_node *np)
 {
-	exynos4_clk_init(np, EXYNOS4X12);
+	exynos4_clk_init(np, EXYNOS4412);
 }
 CLK_OF_DECLARE(exynos4412_clk, "samsung,exynos4412-clock", exynos4412_clk_init);
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
