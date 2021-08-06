Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CF04C4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 13:06:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2F7D1611CE
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 13:06:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2F7D1611CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbvKvgCoO3LMstAID707UfKfJ3s8rA3pWZ9Ev4LbUsc=; b=LX8R+OG6zic33Q
	O4qIskYH6H3XKFp+YA9ZB/NdMU03d3hIc4VPELlvOEyCTcN9A9z133o4s7jM86eq7AIcqLkGvHy+r
	Cz40s47Xp5A+pLq0wYFKJ2GFIgjgweIqkiPt2/D3CXR5u2vrMzxl6sNys9g/xMlduKM7RN4DG7kKj
	NZmdlKkLWNppMrXjmyB3POX8IUJEoiUflje8VsKWnvVMRDkz0ZMl0W0GFPxtabs4wwPLVVFh74Yf4
	nBjLWW8XQhqkc8a1jNrGTJMJHJDmSj4HKB1DwCqpwSok2y9YhOfRGBECxOi0RfwtoOkxoxVpYSDED
	yCoI8Zv4TQT+KLZnet8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBzYf-00CY5k-Gt; Fri, 06 Aug 2021 13:06:41 +0000
Received: from mail-vs1-xe33.google.com ([2607:f8b0:4864:20::e33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBzYc-00CY3m-HX
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 13:06:40 +0000
Received: by mail-vs1-xe33.google.com with SMTP id y1so5186860vsc.1
 for <linux-phy@lists.infradead.org>; Fri, 06 Aug 2021 06:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sNHkxBimwZ6Jh8WXRWXbNnhP/dPnhpFJMNiTGn9qTtg=;
 b=LYI5PnJT3RUxp9wDoBeVQkNxLzQXFX/cosiPt6l+YdPQlcdBwlQP3ZxmoX0KLHLESH
 rcHbLlv2mHbUf/5uV9Ir1MD3sXlk3KXNjK49vVrD/pE6xbscxSZ22pWYNQFHV88elTB1
 4iCjPw6nLaUE8oVVkltpF8WL6Pt3MUEV0+TI8b8qNd6T5EMgnK3kDgY17lnu9MLFs1DA
 skzELY6JzdOsXJy2/KbXinHkzhWWU70N0TUqeOq/lbEykjvDCZkYzfjOAmaa5RGMKJeq
 ItFX60cAhggdeFBKMf6k73IKJzPYKLOtdntTBxIinYtVxsNLm4et087M1pKosP/J7hKl
 preQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sNHkxBimwZ6Jh8WXRWXbNnhP/dPnhpFJMNiTGn9qTtg=;
 b=tqxyD0i4Icpa7eXjkenDZpdYwPU0JelxOZ7IT2g9CmN6zbgMfkeOmelzfp5wYT2IsN
 b8J7k9AdHN8iGUjHu6iw0R/WzUvTZQH9+cZ7hkfautnBPL2dCgqOi4bsAT0UfR6hVjjj
 vSnyMiWiVjShOCj7O941NfbSLrE7xJSq74IYoGeC61q/OZocDvxxfHNP0B36Ar9UIKQl
 EnjXboXVsXqARP9eu9z1dwHyvohYmLVDr6ENcIN7ePgTJ0aG1/j57VXGJmtQfJ+VYv0W
 2W++uVGBQKs4iZ08Zd7YG7Mb2cNdfUbDXQxWJ37227rnh8zvdWd7+Og6/yISEzja5OuX
 0c9Q==
X-Gm-Message-State: AOAM532XL2iqFXzwfbOUUa4xNiuRLUp621EwaSdROJ6XN0U4UEaNBgYX
 CoRXtoQOR+8C9ZedbpWcv7e1KU4WcGiX/30FDZJhTg==
X-Google-Smtp-Source: ABdhPJx7LQQ+qPQvXevHz49FTYEayCd9sFB68rW6zgcqcR0ElsNX5LPKVGqHH+cM85lbgA/GVPwxHYheJZhzMzDbZyw=
X-Received: by 2002:a67:7c14:: with SMTP id x20mr9059463vsc.42.1628255196328; 
 Fri, 06 Aug 2021 06:06:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210730063309.8194-1-rashmi.a@intel.com>
 <20210730063309.8194-3-rashmi.a@intel.com>
In-Reply-To: <20210730063309.8194-3-rashmi.a@intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 6 Aug 2021 15:06:00 +0200
Message-ID: <CAPDyKFqZ-H3+OnYyyY7y611YrRAAMFq+W65DMfM4wSNvY_fzjA@mail.gmail.com>
Subject: Re: [PATCH 2/3] mmc: sdhci-of-arasan: Add intel Thunder Bay SOC
 support to the arasan eMMC driver
To: rashmi.a@intel.com
Cc: linux-drivers-review-request@eclists.intel.com, 
 Michal Simek <michal.simek@xilinx.com>, linux-mmc <linux-mmc@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 linux-phy@lists.infradead.org, Mark Gross <mgross@linux.intel.com>, 
 kris.pan@linux.intel.com, furong.zhou@intel.com, 
 mallikarjunappa.sangannavar@intel.com, 
 Adrian Hunter <adrian.hunter@intel.com>, mahesh.r.vaidya@intel.com, 
 nandhini.srikandan@intel.com, kenchappa.demakkanavar@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_060638_652025_B082A287 
X-CRM114-Status: GOOD (  19.82  )
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

On Fri, 30 Jul 2021 at 08:33, <rashmi.a@intel.com> wrote:
>
> From: Rashmi A <rashmi.a@intel.com>
>
> Intel Thunder Bay SoC eMMC controller is based on Arasan
> eMMC 5.1 host controller IP
>
> Signed-off-by: Rashmi A <rashmi.a@intel.com>
> Reviewed-by: Adrian Hunter <adrian.hunter@intel.com>

Rashmi, is it safe to apply this separately from the phy driver/dt
changes? Then I can queue this via my mmc tree, if you like.

Kind regards
Uffe

> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 29 ++++++++++++++++++++++++++++-
>  1 file changed, 28 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index 839965f7c717..6f202fb7a546 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -185,6 +185,13 @@ static const struct sdhci_arasan_soc_ctl_map intel_lgm_sdxc_soc_ctl_map = {
>         .hiword_update = false,
>  };
>
> +static const struct sdhci_arasan_soc_ctl_map thunderbay_soc_ctl_map = {
> +       .baseclkfreq = { .reg = 0x0, .width = 8, .shift = 14 },
> +       .clockmultiplier = { .reg = 0x4, .width = 8, .shift = 14 },
> +       .support64b = { .reg = 0x4, .width = 1, .shift = 24 },
> +       .hiword_update = false,
> +};
> +
>  static const struct sdhci_arasan_soc_ctl_map intel_keembay_soc_ctl_map = {
>         .baseclkfreq = { .reg = 0x0, .width = 8, .shift = 14 },
>         .clockmultiplier = { .reg = 0x4, .width = 8, .shift = 14 },
> @@ -430,6 +437,15 @@ static const struct sdhci_pltfm_data sdhci_arasan_cqe_pdata = {
>                         SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
>  };
>
> +static const struct sdhci_pltfm_data sdhci_arasan_thunderbay_pdata = {
> +       .ops = &sdhci_arasan_cqe_ops,
> +       .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN | SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC,
> +       .quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
> +               SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
> +               SDHCI_QUIRK2_STOP_WITH_TC |
> +               SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400,
> +};
> +
>  #ifdef CONFIG_PM_SLEEP
>  /**
>   * sdhci_arasan_suspend - Suspend method for the driver
> @@ -1098,6 +1114,12 @@ static struct sdhci_arasan_of_data sdhci_arasan_generic_data = {
>         .clk_ops = &arasan_clk_ops,
>  };
>
> +static const struct sdhci_arasan_of_data sdhci_arasan_thunderbay_data = {
> +       .soc_ctl_map = &thunderbay_soc_ctl_map,
> +       .pdata = &sdhci_arasan_thunderbay_pdata,
> +       .clk_ops = &arasan_clk_ops,
> +};
> +
>  static const struct sdhci_pltfm_data sdhci_keembay_emmc_pdata = {
>         .ops = &sdhci_arasan_cqe_ops,
>         .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
> @@ -1231,6 +1253,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
>                 .compatible = "intel,keembay-sdhci-5.1-sdio",
>                 .data = &intel_keembay_sdio_data,
>         },
> +       {
> +               .compatible = "intel,thunderbay-sdhci-5.1",
> +               .data = &sdhci_arasan_thunderbay_data,
> +       },
>         /* Generic compatible below here */
>         {
>                 .compatible = "arasan,sdhci-8.9a",
> @@ -1582,7 +1608,8 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
>
>         if (of_device_is_compatible(np, "intel,keembay-sdhci-5.1-emmc") ||
>             of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sd") ||
> -           of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sdio")) {
> +           of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sdio") ||
> +           of_device_is_compatible(np, "intel,thunderbay-sdhci-5.1")) {
>                 sdhci_arasan_update_clockmultiplier(host, 0x0);
>                 sdhci_arasan_update_support64b(host, 0x0);
>
> --
> 2.17.1
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
