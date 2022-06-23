Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C469BC43334
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jun 2022 11:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=al2KL0ZAv2JM0qHPaV1/K6u+cLE63RtBjGjXBiuUtd0=; b=JpyrBXmJvk1UKF
	du3oQgA0Su51gn4g5JB5abaoUKUk3TOiRbvSZBOSrKRt0ku/HNBk1/7TDfObS+/rt9WlnL0FSHR5h
	TidZQkWsfNSysm1hIuxjmv/GlKjAxjBkGT5O4iuL9MEGCMtfJUTNUX+R4NYAOGirK7wxGRTPaO6dM
	PHUJc2My+WXAj0zCL4QLdiJNWri7bLMgRkggR5GeuOgHl9abOiuHJ24XsN2Qgs4JEUwyGTs62FS7B
	Bud/hTczu8bpaIjk1QFCq5jR0YincJEk1Gjc29iTpgXZKjV587zYMLyhvGDAsDN4qsXL4Y7b0vVf4
	lxSTph6nYX5JRxs9j5kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LGQ-00ElT8-76; Thu, 23 Jun 2022 11:44:46 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4LGL-00ElQQ-4H
	for linux-phy@lists.infradead.org; Thu, 23 Jun 2022 11:44:45 +0000
Received: by mail-qv1-xf30.google.com with SMTP id 59so6784988qvb.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Jun 2022 04:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bRssUP7Qyiwf2B6rtjrdjEQfEg9fVJc6BLmXnQSQ1d8=;
        b=tg2iriwD73aWHHozE/1hw6S3dvsiQDqyw192D5Uvb3tVOls78V+XRUKdGY7zQ6ovt3
         ro1nSlvQsaYm4YHVoRPrhLNT52gkOEcGzlLe99Wf58ZnqSo/UDYwtsthVT5ebHJAyzjf
         +aSuUCxWCMhD1ngemCBQHDS0mWNsxV5qOVyQvHmKoJzcToeKN10el5UgoHzJlHG4yJ5K
         uou8rp/+OMuN3itLAm+lBHhFl93sR84kL7pn4mz/RMKnQ9hNIm+npyQIorOygR89Ot1B
         OuV5pCH56Y1OOVTqZQsXGJnBhi6IkJ/g3ZkpZFeSPBealzsXy5VQCYRFBjXqkrfXh38D
         WrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bRssUP7Qyiwf2B6rtjrdjEQfEg9fVJc6BLmXnQSQ1d8=;
        b=fFyhdqWEut9DUblahvIu2lfWgGaSDgT/vUnyrkyStEPImWFRkRsFWGUsEwGB1YKNzG
         3rN2tb336URN6WHwsjX/nM8z23+8vOTBeuZZJEJPfyT6EAJg2cW6DxZ4f1kou5ckyCfT
         tIZGzhk5784KumoqC+XcwFHF4Cpwd8W75Rh08UvPF5cskE++CIf3tRiQUOIt4XTG/+q6
         uoF7H8HrBp2v24BKTQO4i2WlWlOfL4JPYjzbYY9yGrQdMc7RprfnAwz8pMgr+rEQZInm
         ux574jV3tMHo1duHT+eW8dWnnzLbKEMqMrzHWJX93RuHxI+8fd1zZcFZenfWnisuf/K/
         E9fQ==
X-Gm-Message-State: AJIora/bWggMO3r5tuH0kvcXKXlkHikdSCelnawQ9Fb9JlSSTc7EL2NV
	Ek+fM2DHHrqOwsgesiTm4Lp12HDwf1u2j5876r9jjg==
X-Google-Smtp-Source: AGRyM1uEAyvgAhj12Q7Pch8RZuPkQJtMdlm3nJy5abbVrrUtoijAls3SkgTnnDYwAyImRkngkIUcp661/l68sOJV6FE=
X-Received: by 2002:ac8:7e87:0:b0:306:6575:6035 with SMTP id
 w7-20020ac87e87000000b0030665756035mr7539261qtj.629.1655984679871; Thu, 23
 Jun 2022 04:44:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220623113314.29761-1-johan+linaro@kernel.org> <20220623113314.29761-2-johan+linaro@kernel.org>
In-Reply-To: <20220623113314.29761-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 23 Jun 2022 14:44:28 +0300
Message-ID: <CAA8EJpp0XAZ3V9XQ2QnbrVoiKrdD_mxoTpKuzC34hKVPQ7wT0g@mail.gmail.com>
Subject: Re: [PATCH 1/3] phy: qcom-qmp-pcie: drop obsolete pipe clock type check
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_044441_228862_2CDDEE69 
X-CRM114-Status: GOOD (  18.67  )
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
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 19 ++-----------------
>  1 file changed, 2 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index b2cd0cf965d8..385ea3d8de08 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2210,26 +2210,11 @@ int qcom_qmp_phy_pcie_create(struct device *dev, struct device_node *np, int id,
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

Please remove the brackets around a single statement. With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
>         generic_phy = devm_phy_create(dev, np, &qcom_qmp_phy_pcie_ops);
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
