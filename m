Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2CFDC77B61
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 13:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJXt2bZIrgM5grccjSCeTMjqrrzA4PZUQPfmySJwEn0=; b=TqqvFSB95RIlWo
	qseRnfKE+Aeyyr3qCzjjSeR75OuaGDRwNBOGDj5aO3lurvY6dFxgR4ObFbbDK7OCyj4JeDcElHMYH
	qitwTwJ0he0FxXHQ3x3lvg/GlkP8zQD9PWk+J9erq1nFl0NoF9CseDZND1y98yfwsRVsbTCpbQ9gV
	A6GtNiXvkJ8QLxEdr+G1EWGdexdy9ZPPfaSvvcGk1ebQ445TU3aVEhjHfF5c1dmcRpFPpNnx3er7C
	Hn/0KKb8CmbY7K1yA9Dq45fsj229UWQW/9DaBTQqCNPUQUnUx1Eh8RnMOjysXaBazBVWPNgGDrUe4
	VhJbKdQzUr6dz+SW7S0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xn-00DsAs-1m;
	Sun, 16 Apr 2023 13:35:51 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po2Xd-00Ds3q-0p;
	Sun, 16 Apr 2023 13:35:43 +0000
Received: by mail-ej1-x636.google.com with SMTP id dm2so57577162ejc.8;
        Sun, 16 Apr 2023 06:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681652139; x=1684244139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ads9PaDpLFMxNXIqpGW0TRi2DREypjUaM/F9ijw7fLg=;
        b=hCmzpPTm6Llt0v3x9eLmqKG/7YKO62IIb3juGKudvZR4xIDmT5C1wwqnzTDmU8R0AX
         KcMrT6KZyrSwHjQInL/bEyEgXQefT78/wRKseJDRVImC3fhTrq/UoisJNe3XDwkJZnWE
         e2pGnAw2QcIXkhvDFAIpT/1Zm+N8Rvzv5d6Rn13/n+B7+n+BfYutoo8G/9z3wSoYMLSG
         eO5BmLFG9OvwYJ9WnrYEa7boSiavr/9qP3PYQDW6vmSTUeKZ/0QIzDVEW+6O5rHe+wSg
         /L7orLggpRECNhZ21VIFW8La46bMrMR+o+yFec4Pkj4t87t6bLK6EgEB1oazag3Dkc5H
         DH5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681652139; x=1684244139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ads9PaDpLFMxNXIqpGW0TRi2DREypjUaM/F9ijw7fLg=;
        b=OhHveOerSnkqRETEDkLCib4+VH9DfXpUAQTaUJlkDtz08lz9HxipSyZ1zPtkjK9Wy1
         H+0BpufidKGY4aIOxXRQTU9liMklzGnX0OXGSlh9v1VYHZK+x2JksMDXAaxXD7D6Fbfl
         k1WK+EHpiGeWUhOB+PkgVQl00XjvZIC7ju82hj+b8CLTHqAR4wtd5Ow+ESYdhWy7+iMh
         XX//AMua8YCuMcluvO1dMqB6jNXc3NFzGqJD0jJMdnI1zmLM2k+t1spI9Lim+Nfo+u3t
         gsU8QTwt8rWdRqDDv0043sAJ69XWDlkhO7D7Q8p7IAm4lzZE3ncMHdg2QFhojjcsy2rQ
         +waQ==
X-Gm-Message-State: AAQBX9ellLO5hSrUM2sZdtrysREh9cjnVdsTOq0Ta7IP2FlkvzvOHqp1
	3s0sNJKaOVvBr9zAIUplKf4=
X-Google-Smtp-Source: AKy350YRu6qOt9Bau0nwy9dTE7kzSEMo8AqoB896i81vC6wp6OwNRfIlSgYDy0oCffJMuMEb/kLBWg==
X-Received: by 2002:a17:906:4955:b0:8f4:ec13:d599 with SMTP id f21-20020a170906495500b008f4ec13d599mr5125024ejt.27.1681652139279;
        Sun, 16 Apr 2023 06:35:39 -0700 (PDT)
Received: from localhost.my.domain (83.8.121.70.ipv4.supernova.orange.pl. [83.8.121.70])
        by smtp.gmail.com with ESMTPSA id gn23-20020a1709070d1700b009373f1b5c4esm5122958ejc.161.2023.04.16.06.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 06:35:38 -0700 (PDT)
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
Subject: [PATCH v2 03/12] ARM: exynos: Re-introduce Exynos4212 support
Date: Sun, 16 Apr 2023 15:34:13 +0200
Message-Id: <20230416133422.1949-4-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230416133422.1949-1-aweber.kernel@gmail.com>
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_063541_294017_76CDF0EA 
X-CRM114-Status: GOOD (  21.21  )
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

This effectively reverts commit 9e43eca3c874 ("ARM: EXYNOS: Remove
Exynos4212 related dead code").

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
 arch/arm/mach-exynos/Kconfig    | 5 +++++
 arch/arm/mach-exynos/common.h   | 8 ++++++++
 arch/arm/mach-exynos/exynos.c   | 2 ++
 arch/arm/mach-exynos/firmware.c | 8 +++++++-
 arch/arm/mach-exynos/pm.c       | 2 +-
 arch/arm/mach-exynos/suspend.c  | 4 ++++
 6 files changed, 27 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
index 4d3b40e4049a..b3d5df5225fe 100644
--- a/arch/arm/mach-exynos/Kconfig
+++ b/arch/arm/mach-exynos/Kconfig
@@ -78,6 +78,11 @@ config CPU_EXYNOS4210
 	default y
 	depends on ARCH_EXYNOS4
 
+config SOC_EXYNOS4212
+	bool "Samsung Exynos4212"
+	default y
+	depends on ARCH_EXYNOS4
+
 config SOC_EXYNOS4412
 	bool "Samsung Exynos4412"
 	default y
diff --git a/arch/arm/mach-exynos/common.h b/arch/arm/mach-exynos/common.h
index 29eb075b24a4..c9e85d33c309 100644
--- a/arch/arm/mach-exynos/common.h
+++ b/arch/arm/mach-exynos/common.h
@@ -15,6 +15,7 @@
 #define EXYNOS3_SOC_MASK	0xFFFFF000
 
 #define EXYNOS4210_CPU_ID	0x43210000
+#define EXYNOS4212_CPU_ID	0x43220000
 #define EXYNOS4412_CPU_ID	0xE4412200
 #define EXYNOS4_CPU_MASK	0xFFFE0000
 
@@ -34,6 +35,7 @@ static inline int is_samsung_##name(void)	\
 
 IS_SAMSUNG_CPU(exynos3250, EXYNOS3250_SOC_ID, EXYNOS3_SOC_MASK)
 IS_SAMSUNG_CPU(exynos4210, EXYNOS4210_CPU_ID, EXYNOS4_CPU_MASK)
+IS_SAMSUNG_CPU(exynos4212, EXYNOS4212_CPU_ID, EXYNOS4_CPU_MASK)
 IS_SAMSUNG_CPU(exynos4412, EXYNOS4412_CPU_ID, EXYNOS4_CPU_MASK)
 IS_SAMSUNG_CPU(exynos5250, EXYNOS5250_SOC_ID, EXYNOS5_SOC_MASK)
 IS_SAMSUNG_CPU(exynos5410, EXYNOS5410_SOC_ID, EXYNOS5_SOC_MASK)
@@ -52,6 +54,12 @@ IS_SAMSUNG_CPU(exynos5800, EXYNOS5800_SOC_ID, EXYNOS5_SOC_MASK)
 # define soc_is_exynos4210()	0
 #endif
 
+#if defined(CONFIG_SOC_EXYNOS4212)
+# define soc_is_exynos4212()	is_samsung_exynos4212()
+#else
+# define soc_is_exynos4212()	0
+#endif
+
 #if defined(CONFIG_SOC_EXYNOS4412)
 # define soc_is_exynos4412()	is_samsung_exynos4412()
 #else
diff --git a/arch/arm/mach-exynos/exynos.c b/arch/arm/mach-exynos/exynos.c
index 51a247ca4da8..5671621f1661 100644
--- a/arch/arm/mach-exynos/exynos.c
+++ b/arch/arm/mach-exynos/exynos.c
@@ -178,6 +178,7 @@ static void __init exynos_dt_machine_init(void)
 		exynos_cpuidle.dev.platform_data = &cpuidle_coupled_exynos_data;
 #endif
 	if (of_machine_is_compatible("samsung,exynos4210") ||
+	    of_machine_is_compatible("samsung,exynos4212") ||
 	    (of_machine_is_compatible("samsung,exynos4412") &&
 	     (of_machine_is_compatible("samsung,trats2") ||
 		  of_machine_is_compatible("samsung,midas") ||
@@ -192,6 +193,7 @@ static char const *const exynos_dt_compat[] __initconst = {
 	"samsung,exynos3250",
 	"samsung,exynos4",
 	"samsung,exynos4210",
+	"samsung,exynos4212",
 	"samsung,exynos4412",
 	"samsung,exynos5",
 	"samsung,exynos5250",
diff --git a/arch/arm/mach-exynos/firmware.c b/arch/arm/mach-exynos/firmware.c
index 2da5b60b59e2..110c8064ee64 100644
--- a/arch/arm/mach-exynos/firmware.c
+++ b/arch/arm/mach-exynos/firmware.c
@@ -63,12 +63,18 @@ static int exynos_cpu_boot(int cpu)
 	 *
 	 * On Exynos5 devices the call is ignored by trustzone firmware.
 	 */
-	if (!soc_is_exynos4210() && !soc_is_exynos4412())
+	if (!soc_is_exynos4210() && !soc_is_exynos4412() &&
+	    !soc_is_exynos4212())
 		return 0;
 
 	/*
 	 * The second parameter of SMC_CMD_CPU1BOOT command means CPU id.
+	 * But, Exynos4212 has only one secondary CPU so second parameter
+	 * isn't used for informing secure firmware about CPU id.
 	 */
+	if (soc_is_exynos4212())
+		cpu = 0;
+
 	exynos_smc(SMC_CMD_CPU1BOOT, cpu, 0, 0);
 	return 0;
 }
diff --git a/arch/arm/mach-exynos/pm.c b/arch/arm/mach-exynos/pm.c
index 30f4e55bf39e..9b6db04e4e34 100644
--- a/arch/arm/mach-exynos/pm.c
+++ b/arch/arm/mach-exynos/pm.c
@@ -161,7 +161,7 @@ void exynos_enter_aftr(void)
 
 	exynos_pm_central_suspend();
 
-	if (soc_is_exynos4412()) {
+	if (soc_is_exynos4412() || soc_is_exynos4212()) {
 		/* Setting SEQ_OPTION register */
 		pmu_raw_writel(S5P_USE_STANDBY_WFI0 | S5P_USE_STANDBY_WFE0,
 			       S5P_CENTRAL_SEQ_OPTION);
diff --git a/arch/arm/mach-exynos/suspend.c b/arch/arm/mach-exynos/suspend.c
index 3bf14ca78b62..df1e10033f90 100644
--- a/arch/arm/mach-exynos/suspend.c
+++ b/arch/arm/mach-exynos/suspend.c
@@ -231,6 +231,7 @@ static int __init exynos_pmu_irq_init(struct device_node *node,
 
 EXYNOS_PMU_IRQ(exynos3250_pmu_irq, "samsung,exynos3250-pmu");
 EXYNOS_PMU_IRQ(exynos4210_pmu_irq, "samsung,exynos4210-pmu");
+EXYNOS_PMU_IRQ(exynos4212_pmu_irq, "samsung,exynos4212-pmu");
 EXYNOS_PMU_IRQ(exynos4412_pmu_irq, "samsung,exynos4412-pmu");
 EXYNOS_PMU_IRQ(exynos5250_pmu_irq, "samsung,exynos5250-pmu");
 EXYNOS_PMU_IRQ(exynos5420_pmu_irq, "samsung,exynos5420-pmu");
@@ -640,6 +641,9 @@ static const struct of_device_id exynos_pmu_of_device_ids[] __initconst = {
 	}, {
 		.compatible = "samsung,exynos4210-pmu",
 		.data = &exynos4_pm_data,
+	}, {
+		.compatible = "samsung,exynos4212-pmu",
+		.data = &exynos4_pm_data,
 	}, {
 		.compatible = "samsung,exynos4412-pmu",
 		.data = &exynos4_pm_data,
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
