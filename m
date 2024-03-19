Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4EC1C54F61
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 14:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLkc5ZeXh2eSiOa5hMhnQbrr0siUpXo6GytQAotJH3o=; b=ws6AxyrEbDGxOI
	05U2jFvWw6Cn4mDXfFo4vKilDHAIZTqbw7Nypg0wQ4hil2qzCwbvzCvjMbTKHd1d8rRUlS4zaTJo3
	H3/2Upf1dYRXkwztJ0M8/vKiQL/GCqFgDpBoSVwpLRKIEjC+i4Ruo9aO12Ok3vEA8VmtK7X4tGgpL
	1ZSplVEsm+vkTVXu3ByuSXDS2txu3rRwk3uRETIv9I/ftL38GImZv0mHQXZb/730YTWJqunCrInnG
	MdGFEaNSxO6GneHqie914Fe65GPw0IAwizFSv8mEpU2J6hd8kQ25To/1T+tQh5XuuFEguhMcOhnf2
	+GBxyBdHIgKGFwTVEXFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmaji-0000000D13w-1a9V;
	Tue, 19 Mar 2024 14:46:42 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmajf-0000000D13T-2OXl
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 14:46:41 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-609f060cbafso66840497b3.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 07:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710859598; x=1711464398; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BPlNhua1WaqcSnRpkvhSs0yu6N7jGpn1fD8XUmo6+sY=;
        b=bMvmS04b8zTKH1DUXo/Ki7lC+tr/BjBKR5MoE1BYrgnGKWviiX8Bj3WY+j8X3mV34L
         DUu7RslYhIaXJh5ZB/lLgz4FlaVCn/bazgAItiHIcvAZpdkliVchld9p+WTg9jrqilu5
         WY1+RTu71m8flXxYwXlgzvuL34urSaB6rEquHeUJdu948+VYCAWZT42L4RIvVaLOzJCK
         tZGQl4AvCkaUCNfWcFbBwRY4rsrmvoL2kcbot1KudoN05SxiigbbhTiL5o9o0iRB+7kr
         MgQ2pvPNhL7qD6+5m9s5Z6QJpK4fiGlTs0VlOBPeToeb+FDYhXke2sPLAMSadmxKTqBu
         xUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710859598; x=1711464398;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BPlNhua1WaqcSnRpkvhSs0yu6N7jGpn1fD8XUmo6+sY=;
        b=WnAy6NUSYOiUOlzp2WVB8VASquWIFaq0Omie9eua0BtCxQO3ub4YlFZTnXY544ScT4
         KJHb8WwFBbmkpTg8gF/KjngCWtD+D5uYzBcM1YY2MKxMSuoWVPD1lQrHSfcWMavyjFVq
         raOFhTM3Kf9uAJbyFba+DuMvojztNiQyh0IOEsWZffBrZzFLJ2IqzLk9g6USxPnIRRYX
         AwyQ/I1e70KbU0UwLqOweLe0mVlf1ZQvDAWq4w0lZNTPA/HJugQPRl9azIClcZ4B4g05
         2WfKws/8Wdem6PSLYebO+vhW6EVLs1T1vPz1pbbiOmLzrFUmGtaNHi+Q7C/xTze2r3cs
         h7jA==
X-Forwarded-Encrypted: i=1; AJvYcCUb+PPNa610zZ4CCnC1oPCsnahdfy+6YFYDaEOYauCKdhOZ6Fi1k9BO2IU0Dw+zP414m9+jQS0NCKAh1CAaTXs/0q+ykTK9gqJyFlNc4w==
X-Gm-Message-State: AOJu0Yw/dYSSNAg8IuCWBCCXFMe1yr/EOY5/mdiUALI4PDsO12ZhS/Ws
	1ezdj/f+q6mUah7C0KNcBW9gq+0mced/WnhcrOAQQ+dh9sFl7rAP1RcgzQ3hohLT8sjXckeAx9U
	IfMlOkAMcZ00TbN4HHYsZA0SOP8aQ0SpPIjHldw==
X-Google-Smtp-Source: AGHT+IEXyzVQEjMGPIvQmFR8INOGeXXHEcno7tcbTIIT/p8RjF8ofE3sSYVPzm7Iah6+/YLpDlP+7Vd8Gk7/89u0Xjk=
X-Received: by 2002:a0d:e943:0:b0:609:efe8:2bfc with SMTP id
 s64-20020a0de943000000b00609efe82bfcmr2947995ywe.27.1710859597965; Tue, 19
 Mar 2024 07:46:37 -0700 (PDT)
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-3-926d7a4ccd80@linaro.org>
 <CAA8EJpoJ0rUd8aY6xpXyL3Obg66XtOebso_AUUxKmg1CWNykJA@mail.gmail.com>
 <85d67f3f-2b01-44c0-ace3-5e7cb48a9431@linaro.org> <090e306c-0bfc-4374-83ed-e883d73a0f0a@linaro.org>
In-Reply-To: <090e306c-0bfc-4374-83ed-e883d73a0f0a@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 16:46:26 +0200
Message-ID: <CAA8EJpovp1S9MYb3ByeoR7WmjPgUmqicqs_fQo_OoL5_NTNPJw@mail.gmail.com>
Subject: Re: [PATCH 3/7] phy: qcom: qmp-pcie: register second optional PHY AUX clock
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_074639_740380_F966252A 
X-CRM114-Status: GOOD (  28.58  )
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

On Tue, 19 Mar 2024 at 16:35, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 19/03/2024 11:59, Neil Armstrong wrote:
> > On 19/03/2024 11:55, Dmitry Baryshkov wrote:
> >> On Tue, 19 Mar 2024 at 12:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> >>>
> >>> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> >>> add the code to register it for PHYs configs that sets a aux_clock_rate.
> >>>
> >>> In order to get the right clock, add qmp_pcie_clk_hw_get() which uses
> >>> the newly introduced QMP_PCIE_PIPE_CLK & QMP_PCIE_PHY_AUX_CLK clock
> >>> IDs and also supports the legacy bindings by returning the PIPE clock.
> >>>
> >>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >>> ---
> >>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 70 ++++++++++++++++++++++++++++++++
> >>>   1 file changed, 70 insertions(+)
> >>>
> >>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >>> index 079b3e306489..2d05226ae200 100644
> >>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >>> @@ -22,6 +22,8 @@
> >>>   #include <linux/reset.h>
> >>>   #include <linux/slab.h>
> >>>
> >>> +#include <dt-bindings/phy/phy-qcom-qmp.h>
> >>> +
> >>>   #include "phy-qcom-qmp-common.h"
> >>>
> >>>   #include "phy-qcom-qmp.h"
> >>> @@ -2389,6 +2391,9 @@ struct qmp_phy_cfg {
> >>>
> >>>          /* QMP PHY pipe clock interface rate */
> >>>          unsigned long pipe_clock_rate;
> >>> +
> >>> +       /* QMP PHY AUX clock interface rate */
> >>> +       unsigned long aux_clock_rate;
> >>>   };
> >>>
> >>>   struct qmp_pcie {
> >>> @@ -2420,6 +2425,7 @@ struct qmp_pcie {
> >>>          int mode;
> >>>
> >>>          struct clk_fixed_rate pipe_clk_fixed;
> >>> +       struct clk_fixed_rate aux_clk_fixed;
> >>>   };
> >>>
> >>>   static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
> >>> @@ -3681,6 +3687,62 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
> >>>          return devm_clk_hw_register(qmp->dev, &fixed->hw);
> >>>   }
> >>>
> >>> +/*
> >>> + * Register a fixed rate PHY aux clock.
> >>> + *
> >>> + * The <s>_phy_aux_clksrc generated by PHY goes to the GCC that gate
> >>> + * controls it. The <s>_phy_aux_clk coming out of the GCC is requested
> >>> + * by the PHY driver for its operations.
> >>> + * We register the <s>_phy_aux_clksrc here. The gcc driver takes care
> >>> + * of assigning this <s>_phy_aux_clksrc as parent to <s>_phy_aux_clk.
> >>> + * Below picture shows this relationship.
> >>> + *
> >>> + *         +---------------+
> >>> + *         |   PHY block   |<<---------------------------------------------+
> >>> + *         |               |                                               |
> >>> + *         |   +-------+   |                      +-----+                  |
> >>> + *   I/P---^-->|  PLL  |---^--->phy_aux_clksrc--->| GCC |--->phy_aux_clk---+
> >>> + *    clk  |   +-------+   |                      +-----+
> >>> + *         +---------------+
> >>> + */
> >>> +static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
> >>> +{
> >>> +       struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
> >>> +       struct clk_init_data init = { };
> >>> +       int ret;
> >>> +
> >>> +       ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
> >>> +       if (ret) {
> >>> +               dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
> >>> +               return ret;
> >>> +       }
> >>> +
> >>> +       init.ops = &clk_fixed_rate_ops;
> >>> +
> >>> +       fixed->fixed_rate = qmp->cfg->aux_clock_rate;
> >>> +       fixed->hw.init = &init;
> >>> +
> >>> +       return devm_clk_hw_register(qmp->dev, &fixed->hw);
> >>> +}
> >>> +
> >>> +static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void *data)
> >>> +{
> >>> +       struct qmp_pcie *qmp = data;
> >>> +
> >>> +       /* Support legacy bindings */
> >>> +       if (!clkspec->args_count)
> >>> +               return &qmp->pipe_clk_fixed.hw;
> >>> +
> >>> +       switch (clkspec->args[0]) {
> >>> +       case QMP_PCIE_PIPE_CLK:
> >>> +               return &qmp->pipe_clk_fixed.hw;
> >>> +       case QMP_PCIE_PHY_AUX_CLK:
> >>> +               return &qmp->aux_clk_fixed.hw;
> >>> +       }
> >>> +
> >>> +       return ERR_PTR(-EINVAL);
> >>> +}
> >>
> >> Can we use of_clk_hw_onecell_get() instead? I think it even should be
> >> possible to use onecell for both cases, it will look at the first arg,
> >> which will be 0 in case of #clock-cells equal to 0.
> >
> > Let me investigate if it's possible
>
> Ok, it would work but it would require building a clk_hw_onecell_data a runtime,
> while we could simply provide this qmp_pcie_clk_hw_get() and avoid runtime 2 allocations.
>
> I'm not sure it's worth it.

Single allocation (or even 0 allocations if you embed it into struct
qmp_pcie) for the sake of using standard helpers.



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
