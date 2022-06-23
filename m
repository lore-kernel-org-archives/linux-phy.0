Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19EB4C43334
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 11:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YztbfajXqfuPkA9JgCanBNz79yRrUt9xSFXUqkSBb1U=; b=1ZTA5FLmSKBRUx
	6DgWsJSz0qo+aZVm/Md1QS+PJ5xzm9kDORnrEJR0eWR3cbXzd3a0L2LEhYDXX/y1gUSZTf+ovp7N7
	KZ8F93l76X91WKBePRwfawFpP2uG3EM1RKs84JZEUPRlfe1vO0xdmSo7uYzUBs5/NzF9FWTlFHUco
	6MLJs/w4FR2wY6Qq+Z6AG1ORIAX9rpEoIRCCdyr05rgF2Vj6jJFC0U5JhPQvhRDln9DBwZJX9kRQv
	fCQDw4rSxdVonlySuUl3q/0c0Cre8MteuxnvJD9ySaiQlIL+jIsK1A276T8q9W4RzTIjZquD0/FfG
	U3A+2Fj6pWicuRB8OY8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LGx-00ElXx-Fp; Thu, 23 Jun 2022 11:45:19 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LGv-00ElXP-Fr
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 11:45:18 +0000
Received: by mail-qk1-x735.google.com with SMTP id k20so372141qkj.1
        for <linux-phy@lists.infradead.org>; Thu, 23 Jun 2022 04:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YRiMFknIosk7rzc3FACzC8i3+BE+kw7LbKBj/XF0BiA=;
        b=el/gpLoFkmjQMFb+n5tfsNyJZsnuaZISi5iUTVxKQu1KCODSOBgPxey4akKrwM5Odj
         Y73S+/Xk1ZfiAcWDjHdLq51Nlf6LREV70byKAVFjxzQuBr4js8HDQlu0+mfr0kjJ1PPl
         TsKXp5SnT/8pG3qH+gEEMBXdJoZdgmrYrqsp7TFzuTKz/glMoWyGODdjuchGSBs5/j4E
         RDTMjo7xnbLFKWGKAXlFuVEE71j/W3TEktUCuxFsp/vJk3mLIoSFV6yItAn+m0iAEG9a
         TrF5ZK2Wi/8vWDCyiX5vpivedlt7M+wkVB7WYGJTx8vI/b/ynV02CFjXjMJXA1EBhPmc
         lxRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YRiMFknIosk7rzc3FACzC8i3+BE+kw7LbKBj/XF0BiA=;
        b=RhG0pRviKi1ZqaNaxMma7SoZI48h82m8Iodgc3Bx3ihGE8vOeY6UV2KBBMyfMEQRrD
         nZm3cBd7WgHC517Lapm9WjJD6D/6TU1NaBi4AyUTosPlJUDIJZAvww/GWVMzTXy18RpO
         B7OZTVTXogwoRamphfBtsdgvnnsl3ux5ClAsH/8eb8AonGxbsAR2ekgBxKr1QdG+EY6v
         NL4HBXhf9b4Gkip/QCgVHsRX3a0MOLFpoMKT7tuFso7ya6f/EpO9tTIuklwt1Lwwp/hT
         1uUkBOC9/wXe2uYe+KDJo1TFvXjKw7bju+RqUMwvF09WedcapldCQXtIliSSriFj+TFb
         DCYw==
X-Gm-Message-State: AJIora/LR3+8pJG61ZdPYCiFRtVb6RzqGNIBAwszA5uSiryC/qL9scrv
	0m0q5Ob1dsQA0A+pYWdN4wuxCiUmCrlKDHvfNTauXQ==
X-Google-Smtp-Source: AGRyM1uNhkwV7YKwEBnt0+jA8ukX9HYxfgdPreFB+ew9E+uDqJwgxZLpklUoZOZBCem94Jw61TCl5xPv+/YYYMUYNc4=
X-Received: by 2002:a05:620a:4305:b0:6a9:3829:c03 with SMTP id
 u5-20020a05620a430500b006a938290c03mr5786648qko.363.1655984716194; Thu, 23
 Jun 2022 04:45:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220623113314.29761-1-johan+linaro@kernel.org> <20220623113314.29761-3-johan+linaro@kernel.org>
In-Reply-To: <20220623113314.29761-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 23 Jun 2022 14:45:05 +0300
Message-ID: <CAA8EJpp6aeZvkkQx1Fep_09QcPB0i3Tq8J6x-d4jw5-=Fg7FjQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] phy: qcom-qmp-pcie-msm8996: drop obsolete pipe clock
 type check
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_044517_571687_0112AC7E 
X-CRM114-Status: GOOD (  18.29  )
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

On Thu, 23 Jun 2022 at 14:33, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> Drop the obsolete pipe clock handling which was used to treat the pipe
> clock as optional for types other than PCIe and USB and which is no
> longer needed since splitting the PHY driver.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 19 ++-----------------
>  1 file changed, 2 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> index 48ea1de81d7c..812d14afb5ec 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> @@ -904,26 +904,11 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
>         if (!qphy->pcs_misc)
>                 dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
>
> -       /*
> -        * Get PHY's Pipe clock, if any. USB3 and PCIe are PIPE3
> -        * based phys, so they essentially have pipe clock. So,
> -        * we return error in case phy is USB3 or PIPE type.
> -        * Otherwise, we initialize pipe clock to NULL for
> -        * all phys that don't need this.
> -        */
>         snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
>         qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
>         if (IS_ERR(qphy->pipe_clk)) {
> -               if (cfg->type == PHY_TYPE_PCIE ||
> -                   cfg->type == PHY_TYPE_USB3) {
> -                       ret = PTR_ERR(qphy->pipe_clk);
> -                       if (ret != -EPROBE_DEFER)
> -                               dev_err(dev,
> -                                       "failed to get lane%d pipe_clk, %d\n",
> -                                       id, ret);
> -                       return ret;
> -               }
> -               qphy->pipe_clk = NULL;
> +               return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
> +                                    "failed to get lane%d pipe clock\n", id);
>         }

Same comment. Please remove brackets. With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
>         /* Get lane reset, if any */
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
