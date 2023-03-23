Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E3C6C76195
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 12:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFdrqFAdX8j5nqf8OIZdsZLojG0TMhv4RDQGb2L3wmM=; b=E9ZMaH7fwCFC8d
	3+1zvEmEvkDyiVIYjZhBBNkvEoLDjZRJabenPbhNjyE6t/xWTOfZzUhKzXGcNroYgFT5Gmkq3GoSC
	A4dczG5RiivO0JSrrZoqUMkkVmxWTGUIsyUv6XHx3IB9YxSeWNQ82grvBkBJoHMEuojuaiAImheQP
	RVDg3b7Aes5bExuEwDfVrJGhzkN6gpXbacErJQfhREhjhl5p0wBPjKUCXgxvRCKNc8TJkxW+BlbPn
	oacT0w/GMPR0ENLQCaEy88Ee2fuYlxJA2KalijNbEGwdL7vMIJ2gpm/DDS7BteNOEccRWBFOtcmNP
	Yt0kMoYYO/eDm/9UttQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfJph-001rlv-2R;
	Thu, 23 Mar 2023 12:14:17 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfJpN-001rdX-10
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 12:13:58 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-544b959a971so357227237b3.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 05:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679573635;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N7lgk6f+q2nEXeqkUqxHnazbXtEwKCKae3zY+1NYR88=;
        b=dCCUMvk8tORlt404OScY7h/k1sjCR9SqoK+Pd9k+QQsZSPAFkp4p01ZaANHdc7xBxm
         F7QNJxfsQgaqTz5Wj49ad+c3sBbKYw6RFYX2oz1eI8cIbFoeHDj4GhThLY2nxNzojico
         sLoXWN/iHtiFFLgPtEhtqS8TcRLB9fguGM8/B5dQ1YWoMKRwECmPPR7aRzbJ7ScymT8B
         lwMe/vybOwZHsNhKlsrRQlxlJBoX+RxTrFo3jIjo1vq3PgN/J/tb1QpCxnzszCgyrfbE
         Hcg6mnnhFD/vZhOPFIC3rL9eq3hFJaDnroswNxlxLo7cdEdnNlHES2goA3V9wlQvLo2R
         QBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679573635;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N7lgk6f+q2nEXeqkUqxHnazbXtEwKCKae3zY+1NYR88=;
        b=CX5+1gPO4eFw0fBP1/1Vv8ttxyUWosCZ+UpHz4Vv1bYa2Xf84VgdUkZmTAvKuFcUDI
         C+jObdfRtXgeyrY7TB7GNsYOhkmSYJ0X/RVdWYfDl6OEhCuFWIMzIs2uKWEX+hXC6RFY
         whr53MiKrXPKJ0H7OfDh8f20IsmVC5tthSU1i4Fprx7jidx2d11SbwfUwIxf9vUu08YB
         wTs964aNtgBrGCV9Msw+paa8QhlnKpPq8nuzpvNIo3de82gntOGaGbMPC03+ZeIbu1FV
         fpXigfDW9kJD0RQHCNOnR8igiXI/Y+adREzdSqTAXMrWY1IZ1lcg/S1n73spsiniKPAk
         gLow==
X-Gm-Message-State: AAQBX9ei6UnB0fHRl68maUoRSRrB6EoTRRds2KkYFw69LNlQEsCxxIJm
	/c8zsZmChzA6YgSKxltPfDteUzL8ASb41IMRTgSj6w==
X-Google-Smtp-Source: AKy350ab9pO/mcEnaUl/HDWXZ+Fnty7B9nPqyTX1tQTW/yxspuOWNB+4UF7majPChSEe/kPlAwb+LVwCezJ7W94X0hs=
X-Received: by 2002:a81:b3c3:0:b0:545:343b:ecba with SMTP id
 r186-20020a81b3c3000000b00545343becbamr1735106ywh.0.1679573635527; Thu, 23
 Mar 2023 05:13:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230316120549.21486-1-rashmi.a@intel.com> <20230316120549.21486-2-rashmi.a@intel.com>
In-Reply-To: <20230316120549.21486-2-rashmi.a@intel.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 23 Mar 2023 13:13:19 +0100
Message-ID: <CAPDyKFrte0nQYhZCD3FeMo7=z4PczhTi7C7Sp3=7fQ_QvcPbQg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] mmc: sdhci-of-arasan: Remove Intel Thunder Bay SOC support
To: rashmi.a@intel.com
Cc: michal.simek@xilinx.com, p.zabel@pengutronix.de, linux-mmc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	yuancan@huawei.com, andriy.shevchenko@linux.intel.com, 
	linux-phy@lists.infradead.org, mgross@linux.intel.com, 
	kris.pan@linux.intel.com, adrian.hunter@intel.com, mahesh.r.vaidya@intel.com, 
	nandhini.srikandan@intel.com, vasavi.v.itha@intel.com, 
	kenchappa.demakkanavar@intel.com, furong.zhou@intel.com, 
	mallikarjunappa.sangannavar@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_051357_363560_60779F04 
X-CRM114-Status: GOOD (  17.91  )
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

On Thu, 16 Mar 2023 at 13:06, <rashmi.a@intel.com> wrote:
>
> From: "A, Rashmi" <rashmi.a@intel.com>
>
> Remove Thunder Bay specific code as the product got cancelled
> and there are no end customers or users.
>
> Signed-off-by: A, Rashmi <rashmi.a@intel.com>
> Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 29 +----------------------------
>  1 file changed, 1 insertion(+), 28 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index 89c431a34c43..fbafc87266aa 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -193,13 +193,6 @@ static const struct sdhci_arasan_soc_ctl_map intel_lgm_sdxc_soc_ctl_map = {
>         .hiword_update = false,
>  };
>
> -static const struct sdhci_arasan_soc_ctl_map thunderbay_soc_ctl_map = {
> -       .baseclkfreq = { .reg = 0x0, .width = 8, .shift = 14 },
> -       .clockmultiplier = { .reg = 0x4, .width = 8, .shift = 14 },
> -       .support64b = { .reg = 0x4, .width = 1, .shift = 24 },
> -       .hiword_update = false,
> -};
> -
>  static const struct sdhci_arasan_soc_ctl_map intel_keembay_soc_ctl_map = {
>         .baseclkfreq = { .reg = 0x0, .width = 8, .shift = 14 },
>         .clockmultiplier = { .reg = 0x4, .width = 8, .shift = 14 },
> @@ -465,15 +458,6 @@ static const struct sdhci_pltfm_data sdhci_arasan_cqe_pdata = {
>                         SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
>  };
>
> -static const struct sdhci_pltfm_data sdhci_arasan_thunderbay_pdata = {
> -       .ops = &sdhci_arasan_cqe_ops,
> -       .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN | SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC,
> -       .quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
> -               SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
> -               SDHCI_QUIRK2_STOP_WITH_TC |
> -               SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400,
> -};
> -
>  #ifdef CONFIG_PM_SLEEP
>  /**
>   * sdhci_arasan_suspend - Suspend method for the driver
> @@ -1150,12 +1134,6 @@ static struct sdhci_arasan_of_data sdhci_arasan_generic_data = {
>         .clk_ops = &arasan_clk_ops,
>  };
>
> -static const struct sdhci_arasan_of_data sdhci_arasan_thunderbay_data = {
> -       .soc_ctl_map = &thunderbay_soc_ctl_map,
> -       .pdata = &sdhci_arasan_thunderbay_pdata,
> -       .clk_ops = &arasan_clk_ops,
> -};
> -
>  static const struct sdhci_pltfm_data sdhci_keembay_emmc_pdata = {
>         .ops = &sdhci_arasan_cqe_ops,
>         .quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
> @@ -1289,10 +1267,6 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
>                 .compatible = "intel,keembay-sdhci-5.1-sdio",
>                 .data = &intel_keembay_sdio_data,
>         },
> -       {
> -               .compatible = "intel,thunderbay-sdhci-5.1",
> -               .data = &sdhci_arasan_thunderbay_data,
> -       },
>         /* Generic compatible below here */
>         {
>                 .compatible = "arasan,sdhci-8.9a",
> @@ -1716,8 +1690,7 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
>
>         if (of_device_is_compatible(np, "intel,keembay-sdhci-5.1-emmc") ||
>             of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sd") ||
> -           of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sdio") ||
> -           of_device_is_compatible(np, "intel,thunderbay-sdhci-5.1")) {
> +           of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sdio")) {
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
