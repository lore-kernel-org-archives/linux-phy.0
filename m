Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59E41C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 10:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+xgNfAocBV6f6Z3S3cZvdVc/jpQzh84W3W4DtG9ShI=; b=0WDMZdV0uEjt+n
	gl0fpER0RcJqLBhSVrHhJvi70sgc2WwbRMxdDuabEifgd1vtnAd0OlqHjKpOhDWtw8wemaq1+J0dh
	T/o3oK3/dUSmKk2ZPoAtvPp3R+1fDapTKvOfg4ivXgkxb9bPl9G3bOCdoo+bfSja6qhpwZp2hDtVI
	7zm/efxZcI7qDHMYiIA/PgEbyDgZfF7aNP1jk1vi2QsPif1kQOHyNRPv5Xm59lg1rLxK05GSw9a+x
	xlEYUxykyLDmafCHlFxI97Pig4X+5OS9Mm2lHoVE8EuTdtA2v2PC13z966Q01tu8bmskXYDid0O2M
	aAxWJ1Nm/0jCVn//M8jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqcg-002N9k-HA; Thu, 29 Sep 2022 10:18:30 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqcd-002N5u-MO
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 10:18:29 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-3539c6f39d7so9493957b3.12
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 03:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=NhXvH9AQ64CDT9deNwc0z/+QutsFRT1qPR0raiobye4=;
        b=IxPs1daKz3m8okjBPeKXX3OHtzBJtFTUqLw/wqWawIx5H9bHEnQ3rZ5KjnXnOARpo+
         R0hImaZHia1Y/Auu+ntHIpT3FW3eThRWEmyMFjBdH4yax56YnlsRZj7VWkjH0ge/hEA3
         jbDxaXBB75ZdC+0bMEB5yHp8Y6rKsffRr9lCGCKJrWSbByg0DKTrw+9emMS3YhioHvA0
         BnuWSvfDcaS9z7tC1tCZnEfWzcwIdiEM3xYHbZwibQITZLEqGEZLSUPEuivHevbaUY1V
         wIsUc6eBVGap7dSSVR997rauiMrOzTLfxxPNrRbU+vR/JGO6c23pLbwScLL7w4YDjD4X
         Xmog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=NhXvH9AQ64CDT9deNwc0z/+QutsFRT1qPR0raiobye4=;
        b=sTFoBl9+lffTCra3seCAxBxMBCXrWruzbs3TnzSaRxwCY9Hj0Hn9dl4XZTv24x7VkO
         e8kA4skZZvjwUsKPQKy14equyE2UuaCh8NkDzrN1w6kvzoRdbC3jwUIOnnWRUplYj36V
         2mmGubTkgZm8ZDUXaxuKGcpjmLCoJX4FNQLX7ZlxIjIV3hjiJ/xN9sfLvgY6b4eqqFqz
         2pEsEmv4Bsvv5Ko23oG8rlrwT/aOEv4fbBRn53wqqDpaziK2o7AxrzK/eTIuSqmW79jB
         +34bO3mnrOyg5iMeKnpeg6geoDKG5zuMO/TMjOCd8G5/xIQq5dkd5R3Tp1OAThfycNkL
         8Dnw==
X-Gm-Message-State: ACrzQf2gQGcmdsZ/D5zAuZ/oiWxJnkHKOsiA7/eZdxAMZQ5XvyQJCOez
	RgN1dzWbloUr4m/qUjoCjwWrIjIH9V/w1dW9VlzBDA==
X-Google-Smtp-Source: AMsMyM7S8sVj2wFYLLHBC/KRMOrj63E3Md2RN0DSzsQX8JVHNTP5i4USmqzOII3+6brbfhfabn+BW25xgyUXYLKSKPQ=
X-Received: by 2002:a81:b40f:0:b0:352:477a:659e with SMTP id
 h15-20020a81b40f000000b00352477a659emr2398042ywi.127.1664446695941; Thu, 29
 Sep 2022 03:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220929092916.23068-1-johan+linaro@kernel.org> <20220929092916.23068-12-johan+linaro@kernel.org>
In-Reply-To: <20220929092916.23068-12-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Sep 2022 13:18:05 +0300
Message-ID: <CAA8EJpp+j1fx46V3zNgiYxsMbQ5UmB4+7o5dojS2FLjwUL=hRg@mail.gmail.com>
Subject: Re: [PATCH v2 11/11] phy: qcom-qmp-pcie: drop bogus register update
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_031827_752346_251E1586 
X-CRM114-Status: GOOD (  19.95  )
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

On Thu, 29 Sept 2022 at 12:29, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> Since commit 0d58280cf1e6 ("phy: Update PHY power control sequence") the
> PHY is powered on before configuring the registers and only the MSM8996
> PCIe PHY, which includes the POWER_DOWN_CONTROL register in its PCS
> initialisation table, may possibly require a second update afterwards.
>
> To make things worse, the POWER_DOWN_CONTROL register lies at a
> different offset on more recent SoCs so that the second update, which
> still used a hard-coded offset, would write to an unrelated register
> (e.g. a revision-id register on SC8280XP).
>
> As the MSM8996 PCIe PHY is now handled by a separate driver, simply drop
> the bogus register update.
>
> Fixes: e4d8b05ad5f9 ("phy: qcom-qmp: Use proper PWRDOWN offset for sm8150 USB") added support

Unless somebody confirms that this write is not needed on 8998 and
sdm845, I'd prefer a two stage fix here:
- changing this to write to proper register (and maybe moving to the
top of patch series, as we'd want to backport this to the last few
kernels)
- dropping the write completely.

Meanwhile I'll try testing this patchset on rb3 and checking whether
it makes any difference or not.

> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index a0f62e9633d9..90bdbeee8372 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1963,12 +1963,6 @@ static int qmp_pcie_power_on(struct phy *phy)
>         qmp_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl, cfg->pcs_misc_tbl_num);
>         qmp_pcie_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl_sec, cfg->pcs_misc_tbl_num_sec);
>
> -       /*
> -        * Pull out PHY from POWER DOWN state.
> -        * This is active low enable signal to power-down PHY.
> -        */
> -       qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);
> -
>         if (cfg->has_pwrdn_delay)
>                 usleep_range(cfg->pwrdn_delay_min, cfg->pwrdn_delay_max);
>
> --
> 2.35.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
