Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8A82C77B78
	for <linux-phy@archiver.kernel.org>; Sun, 16 Apr 2023 18:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CdSzoKKeQDHK7c2Gg76A1zoOe5ogq98c0zrIW71c+M=; b=vC9zqGAU/niFDE
	lkpAKoRHY3rhFmi8lww2eUiW+69klfRUhSEgx01It2m4zC13AhHgYdqZZl5xK0yztY+FC4RxyzWOZ
	t9VEmtHdwsZ4wTRNq9sAdt1kD+7WL86Mq6B8+KacSERHoajCD6CTD0vuG5lVc/YyoG+cXUUqiSQ8j
	9ckm9vlkZTBBnvIexRMsDL9iD4ILQAxb1x0KJ9t1i8yOYCRHHN0jQjlzl4KYfiNE/gDgCJJmEvtDw
	/aObAtXar+npUUOCi4MGbczx2MoNU2JlPyXhOwzvH3oYsl96fKG17uKRJExJvV0wteTgcOOgogc5y
	czUdIZ3Xi05vP0lnlFIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1po6gG-00EEhw-0i;
	Sun, 16 Apr 2023 18:00:52 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po6gC-00EEgp-0j
	for linux-phy@lists.infradead.org;
	Sun, 16 Apr 2023 18:00:49 +0000
Received: by mail-ej1-x631.google.com with SMTP id q23so49028024ejz.3
        for <linux-phy@lists.infradead.org>; Sun, 16 Apr 2023 11:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681668046; x=1684260046;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8r3Ph3wlo9aaB7DgnoPHy3tyWqlgW0rD+5zyojxS3hs=;
        b=mmJl88pBJmqq7M40k9C+dTZWeToJCvvEHd5ziWNNYwChaS3z0gHAnhGbrzM0HNJUQC
         8T39fdc1hMuEpXek569W6uW8kX8i8obKHwTib6wyUhWtPldbz76omqa4+TQyhikRfrvh
         AxDluD6PekcBtZjkytKHnD9pK4FkGxucaj42VQ+7rEtk2Tdj5PpLJgHDyW7LR9Wm0/DR
         KnxnINvuh0Clp9VDXXm7gnt4U16gJCVxrRFX66npHV/AtwG1pGCrPx6K/UODFATp6H4b
         9a8Rl6am6CO86e6teZ9CqliGKVMXttYXxVIHKbFCX/byeAs4H5A0bITRdzGSEuWk9OP+
         yL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681668046; x=1684260046;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8r3Ph3wlo9aaB7DgnoPHy3tyWqlgW0rD+5zyojxS3hs=;
        b=Il55SPqJMKg9wstq70Ii34CwTBjzDCmmZAVrYPoprBVx/sxqGCwdBN1jYAWCmhnvHL
         LXDmHFvc9gUDNCS1vhyQ3S3Tq0xBH27iahaNLoIQLmVNM33nF5uT1GDW65nFpFsnjiv9
         DmBs3zz6yxGPqRKULXNG+9liTfaXgV+a1ieoNgc7kjnqVaL4O5Zw1YZYySZRCJR/FJKu
         TKme6Qr7J7cCcHlMFasBIK92dru688Rjr5wDQmMGT5FgvzqRZsZyylnzyxOQGh0XVj/0
         EZ2cS5NMcGLyzfS7BPjbGrAU4T6oiyatLYctq+xCRaRS/FUplSiu8qX9MgOx2gBs+tEj
         zwpA==
X-Gm-Message-State: AAQBX9e/5nyFwFhFtAEO6xi4p+Fu2G4YUsjU2/ZI7/j7dawc1xzWkpzj
	wBADl3LCCFbPUnAEjieU/8TnTQ==
X-Google-Smtp-Source: AKy350bEeekS6PjjoYeaY9ZD65LfZf1mhdBAyCQ7201c+Gz5Stjr8OqVkeI9F4SK1ojfGrPXfXNLmg==
X-Received: by 2002:a17:906:a945:b0:870:d9a:9ebb with SMTP id hh5-20020a170906a94500b008700d9a9ebbmr5530065ejb.38.1681668046515;
        Sun, 16 Apr 2023 11:00:46 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f9e3:1d38:66a7:ae92? ([2a02:810d:15c0:828:f9e3:1d38:66a7:ae92])
        by smtp.gmail.com with ESMTPSA id q17-20020a1709066ad100b0094f6f45b2c1sm576598ejs.156.2023.04.16.11.00.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 11:00:46 -0700 (PDT)
Message-ID: <21eff2e7-1ebc-1d98-6e5e-025f5cf7b822@linaro.org>
Date: Sun, 16 Apr 2023 20:00:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 03/12] ARM: exynos: Re-introduce Exynos4212 support
Content-Language: en-US
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230416133422.1949-1-aweber.kernel@gmail.com>
 <20230416133422.1949-4-aweber.kernel@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230416133422.1949-4-aweber.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_110048_267870_4A2FCB6B 
X-CRM114-Status: GOOD (  28.19  )
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

On 16/04/2023 15:34, Artur Weber wrote:
> The platform was originally dropped in commit bca9085e0ae9 ("ARM:
> dts: exynos: remove Exynos4212 support (dead code)"), as there were
> no boards using it.

This is not accurate. Platform was not dropped with that commit. This
was only DTS. I propose to drop it and focus on commit which you are
reverting.

> 
> We will be adding a device that uses it, so add it back.
> 
> This effectively reverts commit 9e43eca3c874 ("ARM: EXYNOS: Remove
> Exynos4212 related dead code").
> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
> ---
>  arch/arm/mach-exynos/Kconfig    | 5 +++++
>  arch/arm/mach-exynos/common.h   | 8 ++++++++
>  arch/arm/mach-exynos/exynos.c   | 2 ++
>  arch/arm/mach-exynos/firmware.c | 8 +++++++-
>  arch/arm/mach-exynos/pm.c       | 2 +-
>  arch/arm/mach-exynos/suspend.c  | 4 ++++
>  6 files changed, 27 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-exynos/Kconfig b/arch/arm/mach-exynos/Kconfig
> index 4d3b40e4049a..b3d5df5225fe 100644
> --- a/arch/arm/mach-exynos/Kconfig
> +++ b/arch/arm/mach-exynos/Kconfig
> @@ -78,6 +78,11 @@ config CPU_EXYNOS4210
>  	default y
>  	depends on ARCH_EXYNOS4
>  
> +config SOC_EXYNOS4212
> +	bool "Samsung Exynos4212"
> +	default y
> +	depends on ARCH_EXYNOS4
> +
>  config SOC_EXYNOS4412
>  	bool "Samsung Exynos4412"
>  	default y
> diff --git a/arch/arm/mach-exynos/common.h b/arch/arm/mach-exynos/common.h
> index 29eb075b24a4..c9e85d33c309 100644
> --- a/arch/arm/mach-exynos/common.h
> +++ b/arch/arm/mach-exynos/common.h
> @@ -15,6 +15,7 @@
>  #define EXYNOS3_SOC_MASK	0xFFFFF000
>  
>  #define EXYNOS4210_CPU_ID	0x43210000
> +#define EXYNOS4212_CPU_ID	0x43220000
>  #define EXYNOS4412_CPU_ID	0xE4412200
>  #define EXYNOS4_CPU_MASK	0xFFFE0000
>  
> @@ -34,6 +35,7 @@ static inline int is_samsung_##name(void)	\
>  
>  IS_SAMSUNG_CPU(exynos3250, EXYNOS3250_SOC_ID, EXYNOS3_SOC_MASK)
>  IS_SAMSUNG_CPU(exynos4210, EXYNOS4210_CPU_ID, EXYNOS4_CPU_MASK)
> +IS_SAMSUNG_CPU(exynos4212, EXYNOS4212_CPU_ID, EXYNOS4_CPU_MASK)
>  IS_SAMSUNG_CPU(exynos4412, EXYNOS4412_CPU_ID, EXYNOS4_CPU_MASK)
>  IS_SAMSUNG_CPU(exynos5250, EXYNOS5250_SOC_ID, EXYNOS5_SOC_MASK)
>  IS_SAMSUNG_CPU(exynos5410, EXYNOS5410_SOC_ID, EXYNOS5_SOC_MASK)
> @@ -52,6 +54,12 @@ IS_SAMSUNG_CPU(exynos5800, EXYNOS5800_SOC_ID, EXYNOS5_SOC_MASK)
>  # define soc_is_exynos4210()	0
>  #endif
>  
> +#if defined(CONFIG_SOC_EXYNOS4212)
> +# define soc_is_exynos4212()	is_samsung_exynos4212()
> +#else
> +# define soc_is_exynos4212()	0
> +#endif
> +
>  #if defined(CONFIG_SOC_EXYNOS4412)
>  # define soc_is_exynos4412()	is_samsung_exynos4412()
>  #else
> diff --git a/arch/arm/mach-exynos/exynos.c b/arch/arm/mach-exynos/exynos.c
> index 51a247ca4da8..5671621f1661 100644
> --- a/arch/arm/mach-exynos/exynos.c
> +++ b/arch/arm/mach-exynos/exynos.c
> @@ -178,6 +178,7 @@ static void __init exynos_dt_machine_init(void)
>  		exynos_cpuidle.dev.platform_data = &cpuidle_coupled_exynos_data;
>  #endif
>  	if (of_machine_is_compatible("samsung,exynos4210") ||
> +	    of_machine_is_compatible("samsung,exynos4212") ||
>  	    (of_machine_is_compatible("samsung,exynos4412") &&
>  	     (of_machine_is_compatible("samsung,trats2") ||
>  		  of_machine_is_compatible("samsung,midas") ||
> @@ -192,6 +193,7 @@ static char const *const exynos_dt_compat[] __initconst = {
>  	"samsung,exynos3250",
>  	"samsung,exynos4",
>  	"samsung,exynos4210",
> +	"samsung,exynos4212",
>  	"samsung,exynos4412",
>  	"samsung,exynos5",
>  	"samsung,exynos5250",
> diff --git a/arch/arm/mach-exynos/firmware.c b/arch/arm/mach-exynos/firmware.c
> index 2da5b60b59e2..110c8064ee64 100644
> --- a/arch/arm/mach-exynos/firmware.c
> +++ b/arch/arm/mach-exynos/firmware.c
> @@ -63,12 +63,18 @@ static int exynos_cpu_boot(int cpu)
>  	 *
>  	 * On Exynos5 devices the call is ignored by trustzone firmware.
>  	 */
> -	if (!soc_is_exynos4210() && !soc_is_exynos4412())
> +	if (!soc_is_exynos4210() && !soc_is_exynos4412() &&
> +	    !soc_is_exynos4212())

Keep them ordered, so 4210, 4212 and 4412.

>  		return 0;
>  
>  	/*
>  	 * The second parameter of SMC_CMD_CPU1BOOT command means CPU id.
> +	 * But, Exynos4212 has only one secondary CPU so second parameter
> +	 * isn't used for informing secure firmware about CPU id.
>  	 */
> +	if (soc_is_exynos4212())
> +		cpu = 0;
> +
>  	exynos_smc(SMC_CMD_CPU1BOOT, cpu, 0, 0);
>  	return 0;
>  }
> diff --git a/arch/arm/mach-exynos/pm.c b/arch/arm/mach-exynos/pm.c
> index 30f4e55bf39e..9b6db04e4e34 100644
> --- a/arch/arm/mach-exynos/pm.c
> +++ b/arch/arm/mach-exynos/pm.c
> @@ -161,7 +161,7 @@ void exynos_enter_aftr(void)
>  
>  	exynos_pm_central_suspend();
>  
> -	if (soc_is_exynos4412()) {
> +	if (soc_is_exynos4412() || soc_is_exynos4212()) {

Ditto

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
