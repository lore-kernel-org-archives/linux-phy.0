Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE440C7EE24
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 12:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ux3F4av2B8vx3b0EmzvjUhXEhuZpZ3EQ9Yb43Spkh8=; b=DPwHoxvaQUdG2Z
	GxNasfvvAHeYpqScTOnC6c18+dWedoPc79+DpHT55jN+wRiLyfEfUZ9dgcbjZOLdKxPwLnCzTdxki
	6mmaB/eMd7RcSfxL6PgTmGWFQH4hLz3BGKJCs3C2EWoFCLODUbrkwSBCm1AldIExbgUXIzv3Z3mmV
	3XEumDKXCt+EzTSU2M1sG8HEL0fXzRyKX/8g78YtZSpAD4qrvCtI1Xt5wFAnUOxU4FXl/nDgB1x0s
	LQzTu3zkbMizdJTDPMIePVQCNxfpmxmPcVhLomgU++rUirv7ySoy0fShBAY8Tja51cVjbN0P6vWiO
	5tkTleqD46/ub5P7/DtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp3w-001OIE-1N;
	Tue, 02 May 2023 12:24:56 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp3t-001OEr-01
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 12:24:54 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-55a010774a5so39627997b3.3
        for <linux-phy@lists.infradead.org>; Tue, 02 May 2023 05:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683030289; x=1685622289;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rsis98AS5y9CGrS/8TAMA+kRXIi6squrLmsCHxkr5QU=;
        b=D7Jp0qxIyiWEYcrV8o4HDXvVeyDMa4nuVV9DA5iy1xvb98wyUKXYquMwEgXSjRqrmA
         ng11lM+5xgUlvm9BvMIrcTo/t0JDONWgNraJPwRCxtVL1NhFQYfDSN8r1tc6SGrfNVmw
         uURXUmj2pBsJvJrg8oWK8kqvyQ6nmvvOifuI6FupTwfpL0ib51RpQKKEhcK0Bk8IBH6x
         3ymy4omrZOfPasvL5vhnX04eLcC/KkAn7VcDUn/2i2m3Nut1mhyVCGOPceY8sDV49dWt
         /NnsAiZcp05m9unSUxG+uRmT0BshumSO3DFsPFhkS841ifTd5JRoeEySkm+e1ShYDvdK
         apgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683030289; x=1685622289;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rsis98AS5y9CGrS/8TAMA+kRXIi6squrLmsCHxkr5QU=;
        b=PcLv1PheKRAFoER9xaJ+t3j7M3qrD27A+2zymmrqD9RBJT/ojt8vsCPH9ysR89AE4q
         rvxTGABa0zro4KLMQrP0vFBeyDnnOydOO05r2K0nOykftLLBnH5nwr9BvLZIsFdkBSbE
         iUuDymj5TgEMxvZOf5C7FbUq5Pg+aq7OcaMZUj5bOu4p+tEABUXTt2s34JBXlW1MRRKl
         1znM76NVcYb6fgYlg6S+BNVoDieZXkrBjn43owt7Z595UGFV3m6ri1M6E59uTlUDmtYk
         ONjZ65iR040wx2cUL8GRhANnj4PPyI6UCQMpTebkDbFof6+C+fuiIn80dL46Zygvd3vi
         VIgQ==
X-Gm-Message-State: AC+VfDwgCRO9LHhZeAchFwaX+OwOXp5V7Dw/6BjGjcJlEO0dPphS56sZ
	SJlwk4WWT10sbmFCfcyIF8TLLTHucqemrshxQrsvwA==
X-Google-Smtp-Source: ACHHUZ7eeyre+CuDCWfIJhwjZRbjjp0xunX9LvJHgIBIh5xXRh9pY8dvlc0JPGXbq1IqVaRtaMl4ODqBV5bZwDJP9Q4=
X-Received: by 2002:a81:5b43:0:b0:55a:3486:6f5b with SMTP id
 p64-20020a815b43000000b0055a34866f5bmr7760150ywb.13.1683030289668; Tue, 02
 May 2023 05:24:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230502103810.12061-1-johan+linaro@kernel.org> <20230502103810.12061-3-johan+linaro@kernel.org>
In-Reply-To: <20230502103810.12061-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 May 2023 15:24:38 +0300
Message-ID: <CAA8EJpoxL7AFApp-mbbODAu6AKWM7GV2FGzq=O=WKEFZ72-SbQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-pcie-msm8996: fix init-count imbalance
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_052453_043749_34FE23F7 
X-CRM114-Status: GOOD (  16.41  )
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

On Tue, 2 May 2023 at 13:39, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> The init counter is not decremented on initialisation errors, which
> prevents retrying initialisation.
>
> Add the missing decrement on initialisation errors so that the counter
> reflects the state of the device.
>
> Fixes: e78f3d15e115 ("phy: qcom-qmp: new qmp phy driver for qcom-chipsets")
> Cc: stable@vger.kernel.org      # 4.12
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> index 09824be088c9..0c603bc06e09 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> @@ -379,7 +379,7 @@ static int qmp_pcie_msm8996_com_init(struct qmp_phy *qphy)
>         ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
>         if (ret) {
>                 dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
> -               goto err_unlock;
> +               goto err_decrement_count;
>         }
>
>         ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> @@ -409,7 +409,8 @@ static int qmp_pcie_msm8996_com_init(struct qmp_phy *qphy)
>         reset_control_bulk_assert(cfg->num_resets, qmp->resets);
>  err_disable_regulators:
>         regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> -err_unlock:
> +err_decrement_count:
> +       qmp->init_count--;
>         mutex_unlock(&qmp->phy_mutex);
>
>         return ret;
> --
> 2.39.2
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
