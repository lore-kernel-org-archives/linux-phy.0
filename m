Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B2B7C77B7C
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 19:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hja2Sz4Ol8jMbwQ6m1VdcH+9PypEJckWKikgFwxqVE=; b=D/wkgtrQHJ+wic
	lTJ7Ng/Fdlwd247pmB1m1WgE16GathujQmvKeKV03B+F8esytmpr8RDs6TVxTK5LICsrboDmNQGVv
	JDR8mbJ/2gYFsnr/JEDrWeI7fotUcFDN+fmNnh2LkfvAFVcu2GLXbv707+/JH/YoHXANeMLXFpiF3
	mfCX7ftvXEt7onG9/44i167ahIB7uitI18QNIJjoRWxgxNIobyOVUza5TJahm993gpJYxF7ki4yLn
	ALkcQW71pFAETixz4JIAmorhzfYfETTLF09kKE1FT9ts9E0qDCV3P4qNOZTvFjLx3zVeS8O8B0Xk0
	HZT/AQnvIYnvTOSKkdnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZce-00GoJF-2H;
	Mon, 01 May 2023 19:55:44 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptZcY-00GoCe-0c;
	Mon, 01 May 2023 19:55:39 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-50bc4b88998so2931571a12.3;
        Mon, 01 May 2023 12:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682970937; x=1685562937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KJ1xwSsn9WAxKp4+FVy3uMyaQqKLYzRvWJsDjShDz7k=;
        b=lV2UVdoKJIXJxs9c1Kl/Tkp5vCeDIjJqcZdk9QWBgawI95I4dmTKQM8lKb/DhsdC+r
         M5un/xA2GqwMz0hbThGg+HOdm/MNXzQcSoxc0WP94tTuf0K63EQpbSqqOW+OVwmGGog8
         U2JKE0h/APOq1FluIjqRE21/onFTxI7bk9WUzPcn0Fv0MCs8vb2QVTc/a5EiHUhmlaLi
         AGsXPlncnJH4uv4g8PbTNc1kj53macx4c2oOnVXKKzyAaYqR6+JnG7lRzhtYMSGBws9v
         M0uEbofeMwiSE0LA4uCKOj1SzCFzwRBR4irSJlE/2txLxyHnVWeuaL1fSFr9P2YjSR5W
         p+gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682970937; x=1685562937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KJ1xwSsn9WAxKp4+FVy3uMyaQqKLYzRvWJsDjShDz7k=;
        b=UX4Q/DmKvA0nmusawnj/iHHwMgBW5pzIZnMFLWg3JF0toTAaVZFH+xtY/Jck3C15gl
         JZdgHbruXf3xc2UeNeNVFHwXe9HAY3tETweoqTOWEGhXCAm398J4ELpGFqchDGchnGj8
         U1JqDK9wa+49qFttSETqkE/S8IfqcXRp+WyWTk4B7X6tPcaJRsddr3yr6L8aQSVqFhgs
         kstVwz6TALgPx09SqksfM5svV5PBjoBDn3IxdjDvAPgpvvTMgRYkL1qONgAc1XJeSQag
         HqyoAHA3Iu/oYY+usczOh8cYwLKenyJDlDFXxhbocJU2ews9kmAs20kyr1b3IX0+1asY
         oX/Q==
X-Gm-Message-State: AC+VfDyOGfScJpp/4RzUPED/6DfuBM9jFAaCDIOY0R6Q8ubkKf2kpj2D
	hbxz4FD+3rhU+JRWMRFoD38=
X-Google-Smtp-Source: ACHHUZ4m8pgSUQrAzpTAhZBRSJ24MXaTl3Rfk6l8TWQoM1hEZi6MMFRz8j7up7fMLIpTOp8To3AXZA==
X-Received: by 2002:a17:907:8a01:b0:95f:f573:bf7e with SMTP id sc1-20020a1709078a0100b0095ff573bf7emr13790034ejc.0.1682970936824;
        Mon, 01 May 2023 12:55:36 -0700 (PDT)
Received: from localhost.my.domain (83.8.115.30.ipv4.supernova.orange.pl. [83.8.115.30])
        by smtp.gmail.com with ESMTPSA id og36-20020a1709071de400b009600ce4fb53sm6333650ejc.37.2023.05.01.12.55.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 12:55:36 -0700 (PDT)
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
Subject: [PATCH v3 03/13] ARM: exynos: Re-introduce Exynos4212 support
Date: Mon,  1 May 2023 21:55:15 +0200
Message-Id: <20230501195525.6268-4-aweber.kernel@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230501195525.6268-1-aweber.kernel@gmail.com>
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_125538_237698_EBBD7B25 
X-CRM114-Status: GOOD (  22.25  )
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

Support for the Exynos4212 SoC was originally dropped as there were
no boards using it. We will be adding a device that uses it, so add
back the relevant code.

This reverts commit 9e43eca3c87476f75680f472ff3ebcd85f357b86.

Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
Changed in v3:
 - Reordered if statement conditionals (Exynos4212 comes before 4412)
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
index 2da5b60b59e2..a5e22678e27b 100644
--- a/arch/arm/mach-exynos/firmware.c
+++ b/arch/arm/mach-exynos/firmware.c
@@ -63,12 +63,18 @@ static int exynos_cpu_boot(int cpu)
 	 *
 	 * On Exynos5 devices the call is ignored by trustzone firmware.
 	 */
-	if (!soc_is_exynos4210() && !soc_is_exynos4412())
+	if (!soc_is_exynos4210() && !soc_is_exynos4212() &&
+	    !soc_is_exynos4412())
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
index 30f4e55bf39e..0019d21bff90 100644
--- a/arch/arm/mach-exynos/pm.c
+++ b/arch/arm/mach-exynos/pm.c
@@ -161,7 +161,7 @@ void exynos_enter_aftr(void)
 
 	exynos_pm_central_suspend();
 
-	if (soc_is_exynos4412()) {
+	if (soc_is_exynos4212() || soc_is_exynos4412()) {
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
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
