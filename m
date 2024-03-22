Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D625C47DD9
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 10:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEnazSo+uH2ppoGcSWylufZOTE1PcYmhxqYN7qkkZy4=; b=k/jepruUxPu+Z1
	72iI0MJqT5SUNKOw5I9F259qgmbXmmzqINiMSBV/0GSbyo51yWCQ/eEp0fTJQ7UmX0D9sqE8Jf6M5
	r0gN0PnOSVYrhjhEDOl/HErjTrmUR0+9w+xh77Dj+QS2CgpgziS6S0cOGh+gR+LB8JdEE/NxScafZ
	P3ulr+M7gceup3+B2GHPD4GnfVJhRWNoojqJsKmtCuoB2qI1Fa3+vFsQXxoPQgErSAdlnP6REysei
	VUSY0HAFGc9941bfDhHvPZPRtI3mKXvAtGd+UKCoHMiL0drX9gYN1vwfeRGDCxMJvotJ5eKTElrud
	NuJXB49GL8EW9AoWBxJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rncL5-00000006pyx-43TZ;
	Fri, 22 Mar 2024 10:41:31 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rncL3-00000006pyF-1k6R
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 10:41:30 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-dc6dcd9124bso2007559276.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 03:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711104088; x=1711708888; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r3j8ySJDt0zAi6ld6z1Lj8J4TK4Y7Ou8xI40rnNaKms=;
        b=GakAjdlA7dwSUcz2qGNFpQTONbzeSx7smmJ903HWpAVmEUkfkkzKLomrdELoHWF2Md
         kVZef/Pcic2YDNTPk9/q/amyvRcS6d27ipK80bqJm60EVPYGePyjF6HOv/GmlK0DJg7X
         ugM5Hh6w9cJtnEF8c2oxSURl3xOt7JQQiiwHDI0ju84jNvP2wjQszy1Tbe5DuYgRcBwf
         q28HfA1MMtNP4Vwe1uZn/pp69s8qUoEx8SgObnx9ZxaKbNKDQDA2Uy8AUDDc/pV+6IAw
         GmKu2dp72MXlOolgktZCaPEw8iJhnYJovNYZlLD5ksfg4JJVwJ7d34yejlH/uQUhruks
         F6uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711104088; x=1711708888;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r3j8ySJDt0zAi6ld6z1Lj8J4TK4Y7Ou8xI40rnNaKms=;
        b=IWsfocLKWloyuBN/Bt50Z+iyrr66QOJMAgCtpW2O/GNgzRxTArQ4mNqEYXzvngf8qm
         HiK6cxe29qZM5MVHPQTz39/JM452HQ+nIijGnH9iMlnv40hff+QDpZc3wA3UuiW5mKmL
         OZBONs9bosEKG1hB+7vvi9vSuW3ZtgNbWL7K5RdZDwPVooUvgo4iT9czYu4NHEfZliwL
         WPNkxc6ZOpoiHNTQPJ2O6NAQ7sDeQbxGNFW8wSIhgeviHuv+gOFgwtmrr1Qs3rFLHbOA
         y7zWeEDS6tgATgC0kbm2D6ef0Co9CrRLPK5caEaAhb0K5iM23hx0672F2jpJlQO1+Csc
         TZ3w==
X-Forwarded-Encrypted: i=1; AJvYcCUFC5QDFShpJY4+IoJnBaD4bOkEedvtTv7zqLhGnIrjbCvzwdKQtjRctpGJbyJ0lv0TGJHIZETy8GOGVXHmp9MgISpaCjAG44PVsG00hA==
X-Gm-Message-State: AOJu0YyQQEL0gfHz8cZBOd93C+oS99v36OfstJBneb1JEMnD2Ijkz7U/
	Fmv/66w/KjWNEzdZ6XuiQUZ3zhoc6z47YfsfhKvXffJHTdGPTZA0PXsTaIHS2En7h3P+vSz5IPl
	t4mAuOKC9Gd4HNWXa77cgvDH1PULlD5HOMKHFDw==
X-Google-Smtp-Source: AGHT+IECg8xX2zG9AQzDESnUGKYjL+NJyLZiZXz5O/yXLNKfSKZNNivj+dBmvfrO7HDlJz5jdiXaKfZqiP/XNvTEZuI=
X-Received: by 2002:a25:2644:0:b0:dcc:79ab:e51a with SMTP id
 m65-20020a252644000000b00dcc79abe51amr1725019ybm.57.1711104087935; Fri, 22
 Mar 2024 03:41:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
 <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-3-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-3-3ec0a966d52f@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Mar 2024 12:41:16 +0200
Message-ID: <CAA8EJpoJWKZcZu3SY2P9dpYQ_KXkimRXNhAKfaOreCGZ1muYqw@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] phy: qcom: qmp-pcie: register second optional PHY
 AUX clock
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_034129_540980_DE6F843C 
X-CRM114-Status: GOOD (  27.48  )
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

On Fri, 22 Mar 2024 at 11:43, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> add the code to register it for PHYs configs that sets a aux_clock_rate.
>
> In order to get the right clock, add qmp_pcie_clk_hw_get() which uses
> the newly introduced QMP_PCIE_PIPE_CLK & QMP_PCIE_PHY_AUX_CLK clock
> IDs and also supports the legacy bindings by returning the PIPE clock
> when #clock-cells=0.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Small question below.

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 78 ++++++++++++++++++++++++++++++--
>  1 file changed, 75 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index e8da2e9146dc..6c9a95e62429 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -22,6 +22,8 @@
>  #include <linux/reset.h>
>  #include <linux/slab.h>
>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
> +
>  #include "phy-qcom-qmp-common.h"
>
>  #include "phy-qcom-qmp.h"
> @@ -2389,6 +2391,9 @@ struct qmp_phy_cfg {
>
>         /* QMP PHY pipe clock interface rate */
>         unsigned long pipe_clock_rate;
> +
> +       /* QMP PHY AUX clock interface rate */
> +       unsigned long aux_clock_rate;
>  };
>
>  struct qmp_pcie {
> @@ -2420,6 +2425,7 @@ struct qmp_pcie {
>         int mode;
>
>         struct clk_fixed_rate pipe_clk_fixed;
> +       struct clk_fixed_rate aux_clk_fixed;
>  };
>
>  static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
> @@ -3686,6 +3692,62 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>         return devm_clk_hw_register(qmp->dev, &fixed->hw);
>  }
>
> +/*
> + * Register a fixed rate PHY aux clock.
> + *
> + * The <s>_phy_aux_clksrc generated by PHY goes to the GCC that gate
> + * controls it. The <s>_phy_aux_clk coming out of the GCC is requested
> + * by the PHY driver for its operations.
> + * We register the <s>_phy_aux_clksrc here. The gcc driver takes care
> + * of assigning this <s>_phy_aux_clksrc as parent to <s>_phy_aux_clk.
> + * Below picture shows this relationship.
> + *
> + *         +---------------+
> + *         |   PHY block   |<<---------------------------------------------+
> + *         |               |                                               |
> + *         |   +-------+   |                      +-----+                  |
> + *   I/P---^-->|  PLL  |---^--->phy_aux_clksrc--->| GCC |--->phy_aux_clk---+
> + *    clk  |   +-------+   |                      +-----+
> + *         +---------------+
> + */
> +static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
> +{
> +       struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
> +       struct clk_init_data init = { };
> +       int ret;
> +
> +       ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
> +       if (ret) {
> +               dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
> +               return ret;
> +       }
> +
> +       init.ops = &clk_fixed_rate_ops;
> +
> +       fixed->fixed_rate = qmp->cfg->aux_clock_rate;
> +       fixed->hw.init = &init;
> +
> +       return devm_clk_hw_register(qmp->dev, &fixed->hw);
> +}
> +
> +static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void *data)
> +{
> +       struct qmp_pcie *qmp = data;
> +
> +       /* Support legacy bindings */
> +       if (!clkspec->args_count)
> +               return &qmp->pipe_clk_fixed.hw;
> +
> +       switch (clkspec->args[0]) {
> +       case QMP_PCIE_PIPE_CLK:
> +               return &qmp->pipe_clk_fixed.hw;
> +       case QMP_PCIE_PHY_AUX_CLK:
> +               return &qmp->aux_clk_fixed.hw;

Does the absence of the default case trigger a warning if compiled with W=1?

> +       }
> +
> +       return ERR_PTR(-EINVAL);
> +}
> +
>  static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
>  {
>         int ret;
> @@ -3694,9 +3756,19 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
>         if (ret)
>                 return ret;
>
> -       ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &qmp->pipe_clk_fixed.hw);
> -       if (ret)
> -               return ret;
> +       if (qmp->cfg->aux_clock_rate) {
> +               ret = phy_aux_clk_register(qmp, np);
> +               if (ret)
> +                       return ret;
> +
> +               ret = of_clk_add_hw_provider(np, qmp_pcie_clk_hw_get, qmp);
> +               if (ret)
> +                       return ret;
> +       } else {
> +               ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &qmp->pipe_clk_fixed.hw);
> +               if (ret)
> +                       return ret;
> +       }
>
>         /*
>          * Roll a devm action because the clock provider is the child node, but
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
