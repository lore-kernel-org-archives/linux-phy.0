Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7802C021B2
	for <linux-phy@archiver.kernel.org>; Sun, 23 Feb 2025 23:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8FwwewW9oR4gFvLhEJNtvvaX5u19OG1T+D2Bb9KbuQ=; b=J5BAAxuEKQVSmu
	RXPp274hesVyrcRMzLFipfVYyoYLcWqx2tMK9N+Nvi3F0hcG+HKBE4g4UrDQJ54Hc+yMky6Dp48sD
	FqfSCl68b50uRV4TGKUYyKKeKoZUDSoGMrrXrh8zfHwyh79Af7daScCAldXwqHDKtz4yZ6dX6V0mn
	sa9UgunahwpoNahhzbJhRZBFcCJRZloNU0rRAONdE94XmQff41dqb5hMD+PndK8UAeRATBfaA8eqx
	8+wSoVykybzjpXsMdyGfIAW0V4FSPgEngtazP90U5n1AotxE72dYNWov4ktxdazgKl9wC+RJcGK7l
	nmB8IENEyOa6jjCWdEkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmLmu-0000000Bzjv-1kiS;
	Sun, 23 Feb 2025 23:53:32 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmLlQ-0000000Bzc3-0vFz
	for linux-phy@lists.infradead.org;
	Sun, 23 Feb 2025 23:52:01 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-546210287c1so3958766e87.2
        for <linux-phy@lists.infradead.org>; Sun, 23 Feb 2025 15:51:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740354718; x=1740959518; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZqpsSfd4hK9sMOyyiNPBFdSaUXrM9eOMXEQlPVLZ1L4=;
        b=S5fRIq+W3+rNKXGlQFPADZpcppbckkUCTvg6JNvmMnQQwdFBTWKW2RoanQkGwM4bJ2
         PZW0pHxQE9SsNozaN+4XmvwxKbmjK1NP/GOYCloJtwmzvZ98NCIG0nJXu0VT2crFs42F
         4LcMaqKaCEvLQYKHm4W1dClA4VZ+Tv2ygfReZOTeQsOodJTRLF+fqiX4kOwFUT+v9rND
         EQ2WhsUgS5AaooaK5fJQJ8P0gVTMFVvwhMvT/iSLq02JEvJAdNt1bMVNSo8RjNKzWfcB
         5JMtrgWoKF+kr/YWjjoB3R+VWsPepSYsTkGOUUmEw/fe0zNbKjDxqo8fUVUxAWEtdNXH
         AOmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740354718; x=1740959518;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqpsSfd4hK9sMOyyiNPBFdSaUXrM9eOMXEQlPVLZ1L4=;
        b=jHUC80TzY5GD3GAgivrBqQKNu3NOMpnYfOC3PIC8H7DlrCvwrLiV3k5DVCfxxQxaLX
         Efi+PTqDU3WhzZUb+GjIghfUmTD7AdLB49qAdx55pVbZS+pkPWb5fuU9hewK5IiAEXMS
         WilsgsdaMNqQw6R4Qx8dOSjMOMK17qcRYtCt68OLHCQf85sPH4UoHhjQgNkRv8+tsKye
         u09Zz/bEtupu68DbtKoBlVi+PVJL4QgEsJMCumRU3ah4HAI/L9YjeGSoU02ABBhlOpx6
         X/50IA9vCA0UQvxnIlXTH0QWnAItIAAKHPlFhTf7+QNBvQGqZ3ubgXEkApEzNiNbT4Q3
         VMTg==
X-Forwarded-Encrypted: i=1; AJvYcCW0zO6laHVjsvKoKkWL8wxvt4eEi4YeoXaIrIn9usIwRc3wXuaM98wEGJBhyp/N+Y5eUtboTd2caPI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxcX+QiwN9twpbEX5l7LBjV2IfBADy7T+4Ojb0Ylb0Vt7a7sJzQ
	NsoYnR1OqiB+Z+jwFom5EOmiwe/oicmVtY9yC08O7vOFunsZVugPDv0ChoXTTFQ=
X-Gm-Gg: ASbGncvencejXx87kc+WMgQzBty7+GSkDXBimt/o04zQtsBeW4s/tQV2UJLtvjxzbRx
	t3fe2FDX9HMGRKhnrgdGhrO3LMh4BoY6S3nIEUTq9TpNVEZRT+UkBQo3//UXcNvuHLbJzcaxx5o
	eN4adhn54ar7abw8faQNx8KEeu1tEwaGuLKYkuDT5pdq96sK5rwe3/S5ouAzv7CLtfRgO7ezY9E
	M8lB+lcp2FoaEV1YLojC9T1kD2UckSzPt3jCxEU//Cu5IgdI5hN003h2Uh2TCxVGkfDU0IkTEub
	Fc4k8FeJi6Pf8ZnCQDRXIlSZXk4DeDp8n8uHILaVMwE9hmP5wVpt93gk7mTxxp9vwYUmSue3wtb
	QHNgULQ==
X-Google-Smtp-Source: AGHT+IEpJwtjfAQELBV6QLX+Dx/RJbukpSeVjI5C/XlxolpeCymBYYRyu1xtRVKJ/uK17lMxs8fvVw==
X-Received: by 2002:a05:6512:12c4:b0:546:3136:f03d with SMTP id 2adb3069b0e04-5483925996emr3876237e87.35.1740354718344;
        Sun, 23 Feb 2025 15:51:58 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54530df9016sm2706600e87.36.2025.02.23.15.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 15:51:56 -0800 (PST)
Date: Mon, 24 Feb 2025 01:51:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/8] phy: phy-snps-eusb2: add support for exynos2200
Message-ID: <ac7bq3toicuoppmspqvohiss5wkhgw4v6aozzstd5pr66bfcse@k7tqijab4csq>
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-8-ivo.ivanov.ivanov1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250223122227.725233-8-ivo.ivanov.ivanov1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_155200_269456_2D9C9B2B 
X-CRM114-Status: GOOD (  20.96  )
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

On Sun, Feb 23, 2025 at 02:22:26PM +0200, Ivaylo Ivanov wrote:
> The Exynos2200 SoC reuses the Synopsis eUSB2 PHY IP, alongside an
> external repeater, for USB 2.0. Add support for it to the existing
> driver.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/Kconfig          |   2 +-
>  drivers/phy/phy-snps-eusb2.c | 172 +++++++++++++++++++++++++++++++++++
>  2 files changed, 173 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 11c166204..58c911e1b 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -45,7 +45,7 @@ config PHY_PISTACHIO_USB
>  
>  config PHY_SNPS_EUSB2
>  	tristate "SNPS eUSB2 PHY Driver"
> -	depends on OF && (ARCH_QCOM || COMPILE_TEST)
> +	depends on OF && (ARCH_EXYNOS || ARCH_QCOM || COMPILE_TEST)
>  	select GENERIC_PHY
>  	help
>  	  Enable support for the USB high-speed SNPS eUSB2 phy on select
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index 7a242fe32..67a19d671 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -13,6 +13,39 @@
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
>  
> +#define EXYNOS_USB_PHY_HS_PHY_CTRL_RST	(0x0)
> +#define USB_PHY_RST_MASK		GENMASK(1, 0)
> +#define UTMI_PORT_RST_MASK		GENMASK(5, 4)
> +
> +#define EXYNOS_USB_PHY_HS_PHY_CTRL_COMMON	(0x4)
> +#define RPTR_MODE			BIT(10)
> +#define FSEL_20_MHZ_VAL			(0x1)
> +#define FSEL_24_MHZ_VAL			(0x2)
> +#define FSEL_26_MHZ_VAL			(0x3)
> +#define FSEL_48_MHZ_VAL			(0x2)
> +
> +#define EXYNOS_USB_PHY_CFG_PLLCFG0	(0x8)
> +#define PHY_CFG_PLL_FB_DIV_19_8_MASK	GENMASK(19, 8)
> +#define DIV_19_8_19_2_MHZ_VAL		(0x170)
> +#define DIV_19_8_20_MHZ_VAL		(0x160)
> +#define DIV_19_8_24_MHZ_VAL		(0x120)
> +#define DIV_19_8_26_MHZ_VAL		(0x107)
> +#define DIV_19_8_48_MHZ_VAL		(0x120)
> +
> +#define EXYNOS_USB_PHY_CFG_PLLCFG1	(0xc)
> +#define EXYNOS_PHY_CFG_PLL_FB_DIV_11_8_MASK	GENMASK(11, 8)
> +#define EXYNOS_DIV_11_8_19_2_MHZ_VAL	(0x0)
> +#define EXYNOS_DIV_11_8_20_MHZ_VAL	(0x0)
> +#define EXYNOS_DIV_11_8_24_MHZ_VAL	(0x0)
> +#define EXYNOS_DIV_11_8_26_MHZ_VAL	(0x0)
> +#define EXYNOS_DIV_11_8_48_MHZ_VAL	(0x1)
> +
> +#define EXYNOS_PHY_CFG_TX		(0x14)
> +#define EXYNOS_PHY_CFG_TX_FSLS_VREF_TUNE_MASK	GENMASK(2, 1)
> +
> +#define EXYNOS_USB_PHY_UTMI_TESTSE	(0x20)
> +#define TEST_IDDQ			BIT(6)
> +
>  #define QCOM_USB_PHY_UTMI_CTRL0		(0x3c)
>  #define SLEEPM				BIT(0)
>  #define OPMODE_MASK			GENMASK(4, 3)
> @@ -196,6 +229,93 @@ static void qcom_eusb2_default_parameters(struct snps_eusb2_hsphy *phy)
>  				    FIELD_PREP(PHY_CFG_TX_HS_XV_TUNE_MASK, 0x0));
>  }
>  
> +static int exynos_eusb2_ref_clk_init(struct snps_eusb2_hsphy *phy)
> +{
> +	unsigned long ref_clk_freq = clk_get_rate(phy->ref_clk);
> +
> +	switch (ref_clk_freq) {
> +	case 19200000:
> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_HS_PHY_CTRL_COMMON,
> +					    FSEL_MASK,
> +					    FIELD_PREP(FSEL_MASK, FSEL_19_2_MHZ_VAL));
> +

Could you please unify the switchcase? assign the values to temp
variables, then program them from a single code stream. Or maybe even
replace switch-case with a table-based lookup.

(we probably should implement the similar change for qcom part. Maybe
you can refactor it too?)

Other than that LGTM.

> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_CFG_PLLCFG0,
> +					    PHY_CFG_PLL_FB_DIV_19_8_MASK,
> +					    FIELD_PREP(PHY_CFG_PLL_FB_DIV_19_8_MASK,
> +						       DIV_19_8_19_2_MHZ_VAL));
> +
> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_CFG_PLLCFG1,
> +					    EXYNOS_PHY_CFG_PLL_FB_DIV_11_8_MASK,
> +					    EXYNOS_DIV_11_8_19_2_MHZ_VAL);
> +		break;
> +
> +	case 20000000:
> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_HS_PHY_CTRL_COMMON,
> +					    FSEL_MASK,
> +					    FIELD_PREP(FSEL_MASK, FSEL_20_MHZ_VAL));
> +
> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_CFG_PLLCFG0,
> +					    PHY_CFG_PLL_FB_DIV_19_8_MASK,
> +					    FIELD_PREP(PHY_CFG_PLL_FB_DIV_19_8_MASK,
> +						       DIV_19_8_20_MHZ_VAL));
> +
> +		snps_eusb2_hsphy_write_mask(phy->base, EXYNOS_USB_PHY_CFG_PLLCFG1,
> +					    EXYNOS_PHY_CFG_PLL_FB_DIV_11_8_MASK,
> +					    EXYNOS_DIV_11_8_20_MHZ_VAL);
> +		break;
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
