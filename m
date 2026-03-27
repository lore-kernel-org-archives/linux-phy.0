Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66ED010F2867
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 20:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/f5Aoyd7Nr0fteFzp4GoBL04R9/r6+lGsycp4UUm9Q=; b=oVt3zrYBj4GKw0
	cQLZJrw2xu3MiSj30bFsJoOtbSmYoMVI3oW1L4sEAT+cjiymOpuPL8bMDPGlDUfyynUMZvZiDq63L
	BvJZ9UfgA1RNqFutydNYGAJxrPoPwkCff5clpe+NRgyKHdXGYfJpLlJAx4eevcSBDW9hyvDlApf/z
	akNclvsFVEN5qIAD40AKRcFsyrg05MWCHIJeiTHdUNN28m0QzaKev83s8MhQbq0/TZ7JGJE9jXmYl
	nvYqHLsAIxtEEccMUhKtChmP0nMFSM53UMoH4enzj5eC+O8uXFdmyXb7hjvzgpCwtf8t1CUtFMz5+
	yhZCd4sTrKOp/UZO6vow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6DjC-000000089rg-0VtI;
	Fri, 27 Mar 2026 20:24:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6DjA-000000089r5-1Dpc
	for linux-phy@bombadil.infradead.org;
	Fri, 27 Mar 2026 20:24:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=9WeOtA6rLKd2feImk1nWk/a5NsEeM0kN8oqqyEId0bQ=; b=iS34NWxAuhrQ7+3J/9+fZxdhAQ
	lf75SNJ/z7HsQlY6l0vkVHGtyKSH5QTJqJwKPSaoTB/QAZzp4RYAEPMdm4GIBrJT0ThX15TB0Oqa5
	5J1KTUSil6G8t+v6KMeVM6eEqBWR6cBwrWzAoTZH9FbjgaXRXpDzT8J43GthnCSzF1pXNqM4umLQN
	GQntV/L9ahOXLF4fgS6vrzcCnLMG1EorhLX+fOyq4p3Wj2tGBkUHKd5/dAdetKzA+gdGzPSjc915c
	LU+Lr6c3O+rEGYke3obKWPzzcqmTsUC4DrrIW1zYiugKOKphDsm0vKTKAOBGN7AoNPGcW+AL5AJCu
	jFnoUExw==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6Dj0-0000000BE2x-2Qhz
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 20:24:19 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-66b51bfe5f3so1545364a12.2
        for <linux-phy@lists.infradead.org>; Fri, 27 Mar 2026 13:24:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774643047; cv=none;
        d=google.com; s=arc-20240605;
        b=g3WApaDsBunMQpTQLqHdI1oWzmP015IA3yAkwED4Y6ig/XjTNZqDKd/4Zpmnzdu31N
         TmgXJw3P1LuKMQhoXc0fY3eSbmAboShzNQfPL8Bm1LiH9UIfKB7eBbV70tE1Y56YXBze
         SZjXQPa8yPMy7guEaJgfMYAOSwu9LSC9/+fU/VUg11BBQx06atbU7RcD/Ua361h+TqOI
         Y/h3rUr+Edegulesf5KfJxmGK0h4SBqIi1t2LFqBL+0cy7YhUWfOdUL9CT5zXnw9L8ko
         teMjTX9Z7XNHxf1NfKUhkFk6caUOnD8XwLPM1pFTA+7KgP5U07S/8ZCa1D7vVLhn9btz
         FRrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9WeOtA6rLKd2feImk1nWk/a5NsEeM0kN8oqqyEId0bQ=;
        fh=Sm0515sn8kqJ4nMntSRGJy4M741BcM0eFV3ijczLoYg=;
        b=DO/VpglGohQpCOJv/qFDZyf8gaPdTAAfwyhwyi16DB07LhqT3PcI4PB1yC+V9uk1Hf
         S/MhNgEWT/MCU7shf+oel/R+pwfN8Xi4T2Dfo1jNZXtPcjzg6CsRjIdo9JLP7DxJRgoh
         YBNG8T/078xCv3nKmSfSDDE/+OADT7gHvLqJSyVjSv001HCQNb0zRFRpOvbw6qLDtVrG
         QtPjWTWZvSpI5XDenxX3Hcfml9d45yAj74WAXoVbRweWXiU8FLHw2ugXLfmt3UyXTuDs
         pWbuVjY0LCiB07yE9SZSC8P2dSeeJ9XeLaCzYSJInjQ8Bh3S8dekSduVKzZcAR4xvxS4
         6Mxg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774643047; x=1775247847; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9WeOtA6rLKd2feImk1nWk/a5NsEeM0kN8oqqyEId0bQ=;
        b=tPiVudZrKWH5LTTvmhnYDqFOJyyk5sAfhGUhLn+yB/mCpgOz9auKLaegCrXEQ59Vvi
         YJDDhg2iIOYQ19A+L+8/WF3KyXJj8F4uOuHKUPuZZYPeZNbHlHqOTnLZQEfXax1vFbWt
         8627Ed1dpmJJ+QuGFA24cl/IaVeGKBYc9ZcAqdWQLqri6lLclJsHw/3P5g+v5oi1wC1v
         w55pPNoq8e4RX89LaC69Q6KfXNPCI1PXv2GpaTpNZe5rELaEMIyrB9Gs81v/UW4H8aYI
         lhbAHfpUi7/I60wRNvP8bU7UCtCW72gV0ch4y9G7PCRVTyyjlYLrZIA6KsPNmEyyoDoL
         zoXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774643047; x=1775247847;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9WeOtA6rLKd2feImk1nWk/a5NsEeM0kN8oqqyEId0bQ=;
        b=f0jeQEcNzjY86FEWv17l9z0U96KFwB4Y7hgGeJnjc4AWn4bBe5fV5Hj1uSfiMtS40B
         HwH/+0CiMykLRlUkEqu3/HodzbJF09+gi7yL/HaPgYmD0l//YTAtucp/IiZ/XCZpgyNd
         LTMC177yxV/8M26O7uJRiEXQXSfuIdgrs5SHRmWeud2Gj/CuSv44sA1bn52k27IM4KSu
         DyCyqO0hL6JX3pGczdNpIoGPsI/DGs0AOlP1MiS1zNfxB6Mc0cQfB0bg5SmrbvLC2rM8
         iBp1Ij8RlTSVP9ZSpVHVZnWQyqTIQyCWBL4H+FsVDuWogP8XOF7PXJuP4VI87/5ret5X
         QaDA==
X-Gm-Message-State: AOJu0YwHmHNi6MRcfZxToU7tsq2VdPeX3AGURctvNulWkHQ2uJYN0vTj
	U36nVYiRkdLBHBNj85DPrpiKzCUpG2vELC/BjDefFLSjV6qy05mah/wjixMfK6HkyqVXYQcoQWc
	Kxq7JIPsmax8OuAKHa5/4DiXRrvfAEkoeuR2OHC7www==
X-Gm-Gg: ATEYQzzQpuB0GkUNC4dxmE21BMvVnqFYKP/Z7uY4ysYRbQx/ij//QZ+MBJCx0z5QQjF
	AwuYDPafJWNrEVoeAMxy8rP5DY/GB5jU1L6TMy0rUeaa7OsNzUIcs6VTL3NUawGT0GgY3+qsVsa
	At/waZjFJl91+h1nVvdl45g5K1vUsXGyR8BZBq9Wzm6SwhCJ/GjuiUxFk/RqCEMl35YHPif9YJz
	Fv8qMkWbLghUXjbREWaKp2obFb5J5nGoBk6JIyu1gsYzPhdtStpYObolST8BhRKsUxDb05JdBf8
	WmocLVDdn5PNp5/GICJmaLpkrOZYM7VJayWxYSkX
X-Received: by 2002:a05:6402:46db:b0:66a:199d:138 with SMTP id
 4fb4d7f45d1cf-66b28c66cbemr2039826a12.20.1774643046839; Fri, 27 Mar 2026
 13:24:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260327184706.1600329-1-vladimir.oltean@nxp.com> <20260327184706.1600329-10-vladimir.oltean@nxp.com>
In-Reply-To: <20260327184706.1600329-10-vladimir.oltean@nxp.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 27 Mar 2026 20:23:54 +0000
X-Gm-Features: AQROBzCjrloDfUGTlNvOpQXdM4anVOjHCl2P0WQRB2XbIrpLYVg7AhYSjcExBJI
Message-ID: <CADrjBPqMwtrae7LB9A8xipg6R0rHGewe69awQ_jJnsf=2c=eTw@mail.gmail.com>
Subject: Re: [PATCH v6 phy-next 09/28] scsi: ufs: exynos: stop poking into
 struct phy guts
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	linux-usb@vger.kernel.org, netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com, Bart Van Assche <bvanassche@acm.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Chanho Park <chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_202417_034543_95D0E39D 
X-CRM114-Status: GOOD (  28.23  )
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

On Fri, 27 Mar 2026 at 18:48, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
>
> The Exynos host controller driver is clearly a PHY consumer (gets the
> ufs->phy using devm_phy_get()), but pokes into the guts of struct phy
> to get the generic_phy->power_count.
>
> The UFS core (specifically ufshcd_link_startup()) may call the variant
> operation exynos_ufs_pre_link() -> exynos_ufs_phy_init() multiple times
> if the link startup fails and needs to be retried.
>
> However ufs-exynos shouldn't be doing what it's doing, i.e. looking at
> the generic_phy->power_count, because in the general sense of the API, a
> single Generic PHY may have multiple consumers. If ufs-exynos looks at
> generic_phy->power_count, there's no guarantee that this ufs-exynos
> instance is the one who previously bumped that power count. So it may be
> powering down the PHY on behalf of another consumer.
>
> The correct way in which this should be handled is ufs-exynos should
> *remember* whether it has initialized and powered up the PHY before, and
> power it down during link retries. Not rely on the power_count (which,
> btw, on the writer side is modified under &phy->mutex, but on the reader
> side is accessed unlocked). This is a discouraged pattern even if here
> it doesn't cause functional problems.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Bart Van Assche <bvanassche@acm.org>
> Acked-by: Alim Akhtar <alim.akhtar@samsung.com>
> Tested-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

> Cc: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: Peter Griffin <peter.griffin@linaro.org>
> Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
> Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Chanho Park <chanho61.park@samsung.com>
>
> v5->v6: collect tags from Alim Akhtar
> v4->v5: collect tag, add "scsi: " prefix to commit title
> v3->v4: none
> v2->v3:
> - add Cc Chanho Park, author of commit 3d73b200f989 ("scsi: ufs:
>   ufs-exynos: Change ufs phy control sequence")
> v1->v2:
> - add better ufs->phy_powered_on handling in exynos_ufs_exit(),
>   exynos_ufs_suspend() and exynos_ufs_resume() which ensures we won't
>   enter a phy->power_count underrun condition
> ---
>  drivers/ufs/host/ufs-exynos.c | 24 ++++++++++++++++++++----
>  drivers/ufs/host/ufs-exynos.h |  1 +
>  2 files changed, 21 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
> index 76fee3a79c77..274e53833571 100644
> --- a/drivers/ufs/host/ufs-exynos.c
> +++ b/drivers/ufs/host/ufs-exynos.c
> @@ -963,9 +963,10 @@ static int exynos_ufs_phy_init(struct exynos_ufs *ufs)
>
>         phy_set_bus_width(generic_phy, ufs->avail_ln_rx);
>
> -       if (generic_phy->power_count) {
> +       if (ufs->phy_powered_on) {
>                 phy_power_off(generic_phy);
>                 phy_exit(generic_phy);
> +               ufs->phy_powered_on = false;
>         }
>
>         ret = phy_init(generic_phy);
> @@ -979,6 +980,8 @@ static int exynos_ufs_phy_init(struct exynos_ufs *ufs)
>         if (ret)
>                 goto out_exit_phy;
>
> +       ufs->phy_powered_on = true;
> +
>         return 0;
>
>  out_exit_phy:
> @@ -1527,6 +1530,9 @@ static void exynos_ufs_exit(struct ufs_hba *hba)
>  {
>         struct exynos_ufs *ufs = ufshcd_get_variant(hba);
>
> +       if (!ufs->phy_powered_on)
> +               return;
> +
>         phy_power_off(ufs->phy);
>         phy_exit(ufs->phy);
>  }
> @@ -1728,8 +1734,10 @@ static int exynos_ufs_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
>         if (ufs->drv_data->suspend)
>                 ufs->drv_data->suspend(ufs);
>
> -       if (!ufshcd_is_link_active(hba))
> +       if (!ufshcd_is_link_active(hba) && ufs->phy_powered_on) {
>                 phy_power_off(ufs->phy);
> +               ufs->phy_powered_on = false;
> +       }
>
>         return 0;
>  }
> @@ -1737,9 +1745,17 @@ static int exynos_ufs_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op,
>  static int exynos_ufs_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
>  {
>         struct exynos_ufs *ufs = ufshcd_get_variant(hba);
> +       int err;
>
> -       if (!ufshcd_is_link_active(hba))
> -               phy_power_on(ufs->phy);
> +       if (!ufshcd_is_link_active(hba) && !ufs->phy_powered_on) {
> +               err = phy_power_on(ufs->phy);
> +               if (err) {
> +                       dev_err(hba->dev, "Failed to power on PHY: %pe\n",
> +                               ERR_PTR(err));
> +               } else {
> +                       ufs->phy_powered_on = true;
> +               }
> +       }
>
>         exynos_ufs_config_smu(ufs);
>         exynos_ufs_fmp_resume(hba);
> diff --git a/drivers/ufs/host/ufs-exynos.h b/drivers/ufs/host/ufs-exynos.h
> index abe7e472759e..683b9150e2ba 100644
> --- a/drivers/ufs/host/ufs-exynos.h
> +++ b/drivers/ufs/host/ufs-exynos.h
> @@ -227,6 +227,7 @@ struct exynos_ufs {
>         int avail_ln_rx;
>         int avail_ln_tx;
>         int rx_sel_idx;
> +       bool phy_powered_on;
>         struct ufs_pa_layer_attr dev_req_params;
>         struct ufs_phy_time_cfg t_cfg;
>         ktime_t entry_hibern8_t;
> --
> 2.43.0
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
