Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24A48C54E5D
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ceTIlCelLZweWQblnndYKLO2ItSwkAezgbjYNXwoC20=; b=czvClgqB7EBoRB
	YxjkUbTmEN4+fncUxA6ZaQctOO4U5+7uCG4P5XV6Z606pUyszViZtlpFmWBSYSdFU+tQXTWaHuPnf
	DDyPSoFKOrAItf7yNPbwILYy/3B4IvgAIPCo5twMCDE2ss5s0R9KIY8wznz2dBaf3BgoyDSJnQV3H
	LD1CYZDGGXayQIsWGDUsqRJ39MUitF3HShD+X0JYBY00Gex3IG/xzPcR745TsHgmMCnXDL8Iip00A
	gjT9pHaZpVYwjoBMNM51ghXBBvJeWUVx5L3z0fO3wnJc5/qSUZ3cSkly2ZoiFPfpGkI0AJScJnFSA
	sUZufYgMEGBavCZ3TtRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX88-0000000CNnn-3Wtc;
	Tue, 19 Mar 2024 10:55:40 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX86-0000000CNkf-09hT
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:55:39 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-609ed7ca444so49948797b3.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845733; x=1711450533; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UuiRCB4J1EASJb1go8Fpz/CijV4D1bMBgCchLstiJ5E=;
        b=icL7RxAViOYmxf3ZX0arJgOkoc/wPIFoBOeHaZ2mWWdL/buWAaKbdTXOouwAF1sK6o
         H6HPyZMpW8H1mWjRCiu+4hGWJseng+kiIVCBbGcSt9QTKw6ROSvmJbpiAmyLWeKQEjCG
         Ua2n97FdRMx/I7wZBhqVg2sRvObc/vLN524ROwqj2s35J4h9IZNc74nghgjwJM23OHTN
         7SIk9amdVvmdGWm2XiuI8bF0OjduCp0veRPDMaDYGv6CiPavzsD1L7nriFyaOmVj4uD1
         +SNqvlYNujlnOBZF7Xzfi9Z1s2ZvIHKQLXjL5XxbrtL+Y4oj3eyKY2+PTp/BX3doTyCx
         Z3pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845733; x=1711450533;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UuiRCB4J1EASJb1go8Fpz/CijV4D1bMBgCchLstiJ5E=;
        b=h4PstpndMtcHFRC1B0q8hTKbx4lATl1AK3kOJk2khhYmAznKJ90NFtlWbhYOVv5Pvn
         3010JQqLw4/anIp/qDrOlwqo+Z2hoG2QQKBqY0L4ijJRXiOt7UE36Pi/4LSks8Re/IyK
         X3aBrGlaFLUPA/0PCoQITlwf/5X+18q2GAceCRRCYjTdijC0F1Yw3J6AKExqZ1+ZIyrQ
         6wHdGu8ri4j6D7an0RCnCxMnH/6VZmML/JB1RjszknjsXZcBUs5LcI+i5Hp309yF357O
         YKJyFopnsL+dQclzqD88v3UZ28ASqJx7oSSvKPHjm7FdH6RI88lqzojxwglDy8ZAR4oS
         tLxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXy7LZlAcw14qYxoP7A/hwNyRxynkPRvPvN2Hwde3TtR7f/JJn517QOELaM2dxAvK2O+NozB9vJEHcDGGaJZt5GMCn4pNG5CA8il3pZpQ==
X-Gm-Message-State: AOJu0YwnBvMjwMG2d+sGyvE+ChjeZgfDavERgGbvdUL67Da2ucY9aWyD
	SM5/7xUnyRLC5+w7+QjhCSGoj82vR/eRKYTzs8SI7RxM/YxudUJvo1kFPQ6jPQL+iB19RCnjeG6
	oJ23rVsRIZXg1/NhLSVK/ZkB5IzA1UrQf00Nt7w==
X-Google-Smtp-Source: AGHT+IG+cj2Aheca6UpAxlVZJCMgERGN9VnWz7DvJy8XksWseeZxvDZzQGrFmnlQaiA3352Eai507nvaF+fW3MxFqTo=
X-Received: by 2002:a25:1f56:0:b0:dcb:f7a0:b031 with SMTP id
 f83-20020a251f56000000b00dcbf7a0b031mr11312882ybf.50.1710845732757; Tue, 19
 Mar 2024 03:55:32 -0700 (PDT)
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-3-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-3-926d7a4ccd80@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 12:55:21 +0200
Message-ID: <CAA8EJpoJ0rUd8aY6xpXyL3Obg66XtOebso_AUUxKmg1CWNykJA@mail.gmail.com>
Subject: Re: [PATCH 3/7] phy: qcom: qmp-pcie: register second optional PHY AUX clock
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_035538_136415_F5532BBB 
X-CRM114-Status: GOOD (  27.80  )
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

On Tue, 19 Mar 2024 at 12:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> add the code to register it for PHYs configs that sets a aux_clock_rate.
>
> In order to get the right clock, add qmp_pcie_clk_hw_get() which uses
> the newly introduced QMP_PCIE_PIPE_CLK & QMP_PCIE_PHY_AUX_CLK clock
> IDs and also supports the legacy bindings by returning the PIPE clock.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 70 ++++++++++++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 079b3e306489..2d05226ae200 100644
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
> @@ -3681,6 +3687,62 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
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
> +       }
> +
> +       return ERR_PTR(-EINVAL);
> +}

Can we use of_clk_hw_onecell_get() instead? I think it even should be
possible to use onecell for both cases, it will look at the first arg,
which will be 0 in case of #clock-cells equal to 0.

> +
>  static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
>  {
>         int ret;
> @@ -3689,6 +3751,14 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
>         if (ret)
>                 return ret;
>
> +       if (qmp->cfg->aux_clock_rate) {
> +               ret = phy_aux_clk_register(qmp, np);
> +               if (ret)
> +                       return ret;
> +
> +               return devm_of_clk_add_hw_provider(qmp->dev, qmp_pcie_clk_hw_get, qmp);
> +       }
> +
>         return devm_of_clk_add_hw_provider(qmp->dev, of_clk_hw_simple_get,
>                                            &qmp->pipe_clk_fixed.hw);
>  }
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
