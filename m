Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 596E9C47DD9
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 11:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hwCcghZ74dbXwilHMaL68sGFaPQa4cOjyl02n+h5B8=; b=raJydpu78PoLT2
	lE7uFARr+9zkuT4J85TPibaE5x2dOqgPj0eAgeg2Id2AYS2vQgRc8nifHhRucNa0YfHzxKIqmtMS4
	Ggl6/LynCRPVO5t+NRmasBD3Gu0kFC1CWJ4yNM9Kxa7pIAELwgEZP2bZvsRpye66YfyvPT73jBM5K
	hnhJAqnsJZT5R45CkjQT2Q+/+BljO80WGXMEgE5CR/X2YFY1gr6ijD4TWO9hor+JExNyH5nInDHem
	BVzcr2MMfVgR/B9+8vNjW/U/R4HOSb4jRUzrdY76bJoR4XWF83hocSoO1q2TGn9ZKCd7qe0ZYEC9m
	WBm3DVlUelKqmUaDTSjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rndYL-000000072xf-3Ycq;
	Fri, 22 Mar 2024 11:59:17 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rndYJ-000000072xG-0n8U
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 11:59:16 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-dcd7c526cc0so2114360276.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 04:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711108753; x=1711713553; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EJ4qxaRb0DnjjjwFv0BXf+jboY67mKdpnlHN78YiQb4=;
        b=KA2z17PjMr+UyhA6kslJ7wWmUiGiIRXNxu13SS2Hnt08TKxYdCn+v1Pq1zlVkyaCPJ
         TphkEE6UBuxSQ8c6eBOS1+ecwR9Cz1TH0ka0b2kvW9Fusbj7RMAI/ii/jO+56uhKG2n8
         CJWl/YCTk5N8QOxccBiH+u2dvN6UaC3ErCswmgQxZBhuozfU+wo0saMMoGaHhADWfA80
         RS0oNN5F6wIMUv9a1KiHr2IlcqKBfbEjP17TXyYIM2ou/0Ka8Rn6WXC81sgU4hNK64EG
         bXlrmM6jG1cw6e41PT5iVXpy7+Q/7oyorH8pEGZcy5YE9v4w91jlrYBwnNQonCzcOfoZ
         KUKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711108753; x=1711713553;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EJ4qxaRb0DnjjjwFv0BXf+jboY67mKdpnlHN78YiQb4=;
        b=IJ89SX56Ff29qAW5eDwF10OCmfwwOhFOK+bENQrORnpb+soKnwAt9IiXf8OQhQNLTj
         dGckjZLDk8q82JBT95I1O4CqQf3Z3gsRVvgM4CSYAz8vp/cm8tNAwI1QvZWgOMVj8XbC
         fkgQ93hLDTRZmAw1//B+to6MmXBJ88PJxxE2pPNcBDu9A5KO1Y5PD/xs5WndynltfBhK
         wgY3cPu2SFkvFevLqdNkcKcexf/zYwldmEHnkjH3rQt9Rgi21nNQopNxZKoDsFuyDAdD
         /07yFz+7isEF5Rp2yzoZ46bhIwK0/ETkIQe727Qpv3PDAUFwckRYHaexcKE9KbFHjov5
         okHg==
X-Forwarded-Encrypted: i=1; AJvYcCXkD1fK+gycxW+WUH09jzegv7kMLGoJOpPGVEgKs9isrDWDFQRHj3QbOK/c8i1BSssY1owS+dOyZF8hhFnM8saGxMIn07QxJ1AJ/u9SaA==
X-Gm-Message-State: AOJu0YwpribLtLBPLHkqv1TKrI+TIWXFIJdvijQFmfa/Vj73K9xXgAN7
	fV4AMwI5t+tzFNg99qjEBO2fbaHKDrdocVPPMPeFDIVQcCa6TUUXEtqBLQ24odkS8lNAdW1n+ut
	FkJy1ix47NuYUvPA8M6rfwGZ5BR/w2RAum9PEEA==
X-Google-Smtp-Source: AGHT+IG4PJW4EkXp9yDhjzJ9l54D0Nbyr3MBR5vOvVMeILc9lQZSEahak/8wu01jB44Tr5IqY8iB3AdtW6Nd5h+Z18E=
X-Received: by 2002:a05:6902:50e:b0:dda:aa3e:73fc with SMTP id
 x14-20020a056902050e00b00ddaaa3e73fcmr1783046ybs.41.1711108753359; Fri, 22
 Mar 2024 04:59:13 -0700 (PDT)
MIME-Version: 1.0
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
 <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-3-3ec0a966d52f@linaro.org>
 <CAA8EJpoJWKZcZu3SY2P9dpYQ_KXkimRXNhAKfaOreCGZ1muYqw@mail.gmail.com> <1dc187c1-2005-486f-a9dd-6648cf52ab70@linaro.org>
In-Reply-To: <1dc187c1-2005-486f-a9dd-6648cf52ab70@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Mar 2024 13:59:02 +0200
Message-ID: <CAA8EJprwAqCSpey0scgPHKEW7=DMKoh7EBmL2jtktKLwMM+rCQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] phy: qcom: qmp-pcie: register second optional PHY
 AUX clock
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_045915_254705_8FBB48DE 
X-CRM114-Status: GOOD (  30.13  )
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

On Fri, 22 Mar 2024 at 12:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 22/03/2024 11:41, Dmitry Baryshkov wrote:
> > On Fri, 22 Mar 2024 at 11:43, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> >>
> >> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> >> add the code to register it for PHYs configs that sets a aux_clock_rate.
> >>
> >> In order to get the right clock, add qmp_pcie_clk_hw_get() which uses
> >> the newly introduced QMP_PCIE_PIPE_CLK & QMP_PCIE_PHY_AUX_CLK clock
> >> IDs and also supports the legacy bindings by returning the PIPE clock
> >> when #clock-cells=0.
> >>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > Small question below.
> >
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 78 ++++++++++++++++++++++++++++++--
> >>   1 file changed, 75 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> index e8da2e9146dc..6c9a95e62429 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> @@ -22,6 +22,8 @@
> >>   #include <linux/reset.h>
> >>   #include <linux/slab.h>
> >>
> >> +#include <dt-bindings/phy/phy-qcom-qmp.h>
> >> +
> >>   #include "phy-qcom-qmp-common.h"
> >>
> >>   #include "phy-qcom-qmp.h"
> >> @@ -2389,6 +2391,9 @@ struct qmp_phy_cfg {
> >>
> >>          /* QMP PHY pipe clock interface rate */
> >>          unsigned long pipe_clock_rate;
> >> +
> >> +       /* QMP PHY AUX clock interface rate */
> >> +       unsigned long aux_clock_rate;
> >>   };
> >>
> >>   struct qmp_pcie {
> >> @@ -2420,6 +2425,7 @@ struct qmp_pcie {
> >>          int mode;
> >>
> >>          struct clk_fixed_rate pipe_clk_fixed;
> >> +       struct clk_fixed_rate aux_clk_fixed;
> >>   };
> >>
> >>   static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
> >> @@ -3686,6 +3692,62 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
> >>          return devm_clk_hw_register(qmp->dev, &fixed->hw);
> >>   }
> >>
> >> +/*
> >> + * Register a fixed rate PHY aux clock.
> >> + *
> >> + * The <s>_phy_aux_clksrc generated by PHY goes to the GCC that gate
> >> + * controls it. The <s>_phy_aux_clk coming out of the GCC is requested
> >> + * by the PHY driver for its operations.
> >> + * We register the <s>_phy_aux_clksrc here. The gcc driver takes care
> >> + * of assigning this <s>_phy_aux_clksrc as parent to <s>_phy_aux_clk.
> >> + * Below picture shows this relationship.
> >> + *
> >> + *         +---------------+
> >> + *         |   PHY block   |<<---------------------------------------------+
> >> + *         |               |                                               |
> >> + *         |   +-------+   |                      +-----+                  |
> >> + *   I/P---^-->|  PLL  |---^--->phy_aux_clksrc--->| GCC |--->phy_aux_clk---+
> >> + *    clk  |   +-------+   |                      +-----+
> >> + *         +---------------+
> >> + */
> >> +static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
> >> +{
> >> +       struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
> >> +       struct clk_init_data init = { };
> >> +       int ret;
> >> +
> >> +       ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
> >> +       if (ret) {
> >> +               dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
> >> +               return ret;
> >> +       }
> >> +
> >> +       init.ops = &clk_fixed_rate_ops;
> >> +
> >> +       fixed->fixed_rate = qmp->cfg->aux_clock_rate;
> >> +       fixed->hw.init = &init;
> >> +
> >> +       return devm_clk_hw_register(qmp->dev, &fixed->hw);
> >> +}
> >> +
> >> +static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void *data)
> >> +{
> >> +       struct qmp_pcie *qmp = data;
> >> +
> >> +       /* Support legacy bindings */
> >> +       if (!clkspec->args_count)
> >> +               return &qmp->pipe_clk_fixed.hw;
> >> +
> >> +       switch (clkspec->args[0]) {
> >> +       case QMP_PCIE_PIPE_CLK:
> >> +               return &qmp->pipe_clk_fixed.hw;
> >> +       case QMP_PCIE_PHY_AUX_CLK:
> >> +               return &qmp->aux_clk_fixed.hw;
> >
> > Does the absence of the default case trigger a warning if compiled with W=1?
>
> Nop it doesn't with GCC arm-gnu-toolchain-13.2.Rel1-x86_64-aarch64-none-linux-gnu + W=1 and with smatch and C=1

Ok, great!

>
> Neil
>
> >
> >> +       }
> >> +
> >> +       return ERR_PTR(-EINVAL);
> >> +}
> >> +
> >>   static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
> >>   {
> >>          int ret;
> >> @@ -3694,9 +3756,19 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
> >>          if (ret)
> >>                  return ret;
> >>
> >> -       ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &qmp->pipe_clk_fixed.hw);
> >> -       if (ret)
> >> -               return ret;
> >> +       if (qmp->cfg->aux_clock_rate) {
> >> +               ret = phy_aux_clk_register(qmp, np);
> >> +               if (ret)
> >> +                       return ret;
> >> +
> >> +               ret = of_clk_add_hw_provider(np, qmp_pcie_clk_hw_get, qmp);
> >> +               if (ret)
> >> +                       return ret;
> >> +       } else {
> >> +               ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &qmp->pipe_clk_fixed.hw);
> >> +               if (ret)
> >> +                       return ret;
> >> +       }
> >>
> >>          /*
> >>           * Roll a devm action because the clock provider is the child node, but
> >>
> >> --
> >> 2.34.1
> >>
> >>
> >
> >
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
