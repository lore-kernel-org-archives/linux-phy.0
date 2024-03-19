Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7301C6FD1F
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 16:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCwtBo2PYrf8PQjdBqYahzDxZHdRlJ9I1oWa3iXh2ks=; b=SdqsaiPEaVa5UA
	Q+T3KHXyOZSmCSF4aWFs+gLfsurHSgignUJfeA9WgiWKstfFLd1jpsSiCiBTqDz8ZpS6MAFQ+7gGT
	uZ02VCQBKQqKbokY2elU7yxWk7pzn3uIW1qmMN95o5xNeRfnFeC4QE1VN/C3TOrQkAi8z1kFlz9lq
	WRXxD/1nsq20vpzthQFUaY+UlWNbYPMAKomoxArf6bx1hqrqylQIQOlw212sPgvawvEk3ZoK8FRNM
	Z211kr2uNojUJJfqlku0lg7H2tzqeUEvv0HKrdkkKf8Krpg35J3cvpgiuspd8wOdboG1TeRn0cNx+
	/C+eCEDf03a7cRLG2LKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmclC-0000000DV5g-1w4r;
	Tue, 19 Mar 2024 16:56:22 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmcl9-0000000DV2n-2DFt
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 16:56:21 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-dc74e33fe1bso4927403276.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 09:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710867372; x=1711472172; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YkHjKPhUPt3fZU/G756ueDdxkjyiTjvSfugB2XJYp2E=;
        b=VUQ3BIjrgu0a0ItRvce3WuJsTKU2+Tr0u7akw9FX+kFp8fbk4vcv41MXjNhPkMHJtl
         z3ywrC2nDf+HCLpBAGQ6B/DoocPGFd/oeZetuOQXl8PXfKL1ACuHQJ5tj/o0pqzM9RmT
         /7wX+7iRBCvkkRAmRyiD+1//UEoRo5435ELlXM1lgUlnafvSqU+Cow4TYCxBuhTQVEsq
         M5nj8I8wrJvWibTf0dCW5fPLKvXZ5uEdOXikz7E/bqQPXZmNSLQ6dEsAFvF9M+K1HQBa
         JSAGgNTgd9Stv+RdW3HBM1+YPcgrhQ1h/NqVnGQJcCvAY6m3yUdSueelgLv4GRdShKQG
         gi8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710867372; x=1711472172;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YkHjKPhUPt3fZU/G756ueDdxkjyiTjvSfugB2XJYp2E=;
        b=RMKIuhSjRL2feVoAy8RNA03HcnQbjFTC1zuZ+q0INxd8RrMjx3mya65IOltbKGMw4y
         MXbU19QzfM1OfTS0vkL01zRDmgBzcWNFmnjBB6Ji31MizCscSkQrbx0ZFBw3LyMLWu27
         Fo8u94h9l8JTZt+0K5T4hnB98ZYOO82gQu5tBTXXBfmUivZLclqcivQFAPOOAEOkJMP/
         MgWQM0CMQqVT4QgiTFBsAdnOCVSo37pYmQuGrzsA9K0yh/3aL9l3t9fy1Kukca12XZJc
         86fTZKvAX6D0MYUluuVQ5SW/ZR5h44WHAkEkeBavrLAx44DMzpdP0W1EwXsjaEMNapUD
         IGNg==
X-Forwarded-Encrypted: i=1; AJvYcCV3M1VHi7Lx2/rNWELNqoAoOtD8A77V/mq7KAwlRZxU1h5bkEl529kE1CEqZb1sKORSjQzQ9q1FlHshsbjpAVVRgXSK+kSnHNf1LwhaQw==
X-Gm-Message-State: AOJu0YwNOT0gppWdOyR65bfGQICg0d7ROOXQCG8fx+8MPnW7Xhs8hIOG
	xjl/YYj7s9cd3pIFYFBT5G0TXzKRJy4vI/3Y2jdrtdMTywY8Tsl53ZW5wYH+/7QvJYlVThk7dNF
	5KY+2TG+rcjv5CTJM17QipXKm3dh9iCQaFI1jBlcX4dALvm/d
X-Google-Smtp-Source: AGHT+IHQGyrQSCFzYPtFZI5OVIQnV9UqVHhY1ukDJX0beVjFP+DlS1CQJiXmzNZgxIr8UYHu6GIuRKmLMusHowKmWWE=
X-Received: by 2002:a25:904:0:b0:dbe:9509:141c with SMTP id
 4-20020a250904000000b00dbe9509141cmr2672384ybj.30.1710867372238; Tue, 19 Mar
 2024 09:56:12 -0700 (PDT)
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-3-926d7a4ccd80@linaro.org>
 <CAA8EJpoJ0rUd8aY6xpXyL3Obg66XtOebso_AUUxKmg1CWNykJA@mail.gmail.com>
 <85d67f3f-2b01-44c0-ace3-5e7cb48a9431@linaro.org> <090e306c-0bfc-4374-83ed-e883d73a0f0a@linaro.org>
 <CAA8EJpovp1S9MYb3ByeoR7WmjPgUmqicqs_fQo_OoL5_NTNPJw@mail.gmail.com>
 <c799b110-978f-412f-b50e-87a4215a17cf@linaro.org> <CAA8EJpp2pVnKh4J0TnGy_s_GB60P58xEW7OtmzReGVTF-1Ax-g@mail.gmail.com>
 <3141e539-67f9-4a90-abf7-0cc8d95f7396@linaro.org>
In-Reply-To: <3141e539-67f9-4a90-abf7-0cc8d95f7396@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 18:56:00 +0200
Message-ID: <CAA8EJpq70JervmeDKS8T3xY3qgTunJWyPPomn_pRTRqOyDzMMg@mail.gmail.com>
Subject: Re: [PATCH 3/7] phy: qcom: qmp-pcie: register second optional PHY AUX clock
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_095619_603530_ED450F5F 
X-CRM114-Status: GOOD (  35.22  )
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

On Tue, 19 Mar 2024 at 18:46, <neil.armstrong@linaro.org> wrote:
>
> On 19/03/2024 17:05, Dmitry Baryshkov wrote:
> > On Tue, 19 Mar 2024 at 17:15, <neil.armstrong@linaro.org> wrote:
> >>
> >> On 19/03/2024 15:46, Dmitry Baryshkov wrote:
> >>> On Tue, 19 Mar 2024 at 16:35, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> >>>>
> >>>> On 19/03/2024 11:59, Neil Armstrong wrote:
> >>>>> On 19/03/2024 11:55, Dmitry Baryshkov wrote:
> >>>>>> On Tue, 19 Mar 2024 at 12:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> >>>>>>>
> >>>>>>> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> >>>>>>> add the code to register it for PHYs configs that sets a aux_clock_rate.
> >>>>>>>
> >>>>>>> In order to get the right clock, add qmp_pcie_clk_hw_get() which uses
> >>>>>>> the newly introduced QMP_PCIE_PIPE_CLK & QMP_PCIE_PHY_AUX_CLK clock
> >>>>>>> IDs and also supports the legacy bindings by returning the PIPE clock.
> >>>>>>>
> >>>>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >>>>>>> ---
> >>>>>>>     drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 70 ++++++++++++++++++++++++++++++++
> >>>>>>>     1 file changed, 70 insertions(+)
> >>>>>>>
> >>>>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >>>>>>> index 079b3e306489..2d05226ae200 100644
> >>>>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >>>>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >>>>>>> @@ -22,6 +22,8 @@
> >>>>>>>     #include <linux/reset.h>
> >>>>>>>     #include <linux/slab.h>
> >>>>>>>
> >>>>>>> +#include <dt-bindings/phy/phy-qcom-qmp.h>
> >>>>>>> +
> >>>>>>>     #include "phy-qcom-qmp-common.h"
> >>>>>>>
> >>>>>>>     #include "phy-qcom-qmp.h"
> >>>>>>> @@ -2389,6 +2391,9 @@ struct qmp_phy_cfg {
> >>>>>>>
> >>>>>>>            /* QMP PHY pipe clock interface rate */
> >>>>>>>            unsigned long pipe_clock_rate;
> >>>>>>> +
> >>>>>>> +       /* QMP PHY AUX clock interface rate */
> >>>>>>> +       unsigned long aux_clock_rate;
> >>>>>>>     };
> >>>>>>>
> >>>>>>>     struct qmp_pcie {
> >>>>>>> @@ -2420,6 +2425,7 @@ struct qmp_pcie {
> >>>>>>>            int mode;
> >>>>>>>
> >>>>>>>            struct clk_fixed_rate pipe_clk_fixed;
> >>>>>>> +       struct clk_fixed_rate aux_clk_fixed;
> >>>>>>>     };
> >>>>>>>
> >>>>>>>     static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
> >>>>>>> @@ -3681,6 +3687,62 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
> >>>>>>>            return devm_clk_hw_register(qmp->dev, &fixed->hw);
> >>>>>>>     }
> >>>>>>>
> >>>>>>> +/*
> >>>>>>> + * Register a fixed rate PHY aux clock.
> >>>>>>> + *
> >>>>>>> + * The <s>_phy_aux_clksrc generated by PHY goes to the GCC that gate
> >>>>>>> + * controls it. The <s>_phy_aux_clk coming out of the GCC is requested
> >>>>>>> + * by the PHY driver for its operations.
> >>>>>>> + * We register the <s>_phy_aux_clksrc here. The gcc driver takes care
> >>>>>>> + * of assigning this <s>_phy_aux_clksrc as parent to <s>_phy_aux_clk.
> >>>>>>> + * Below picture shows this relationship.
> >>>>>>> + *
> >>>>>>> + *         +---------------+
> >>>>>>> + *         |   PHY block   |<<---------------------------------------------+
> >>>>>>> + *         |               |                                               |
> >>>>>>> + *         |   +-------+   |                      +-----+                  |
> >>>>>>> + *   I/P---^-->|  PLL  |---^--->phy_aux_clksrc--->| GCC |--->phy_aux_clk---+
> >>>>>>> + *    clk  |   +-------+   |                      +-----+
> >>>>>>> + *         +---------------+
> >>>>>>> + */
> >>>>>>> +static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
> >>>>>>> +{
> >>>>>>> +       struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
> >>>>>>> +       struct clk_init_data init = { };
> >>>>>>> +       int ret;
> >>>>>>> +
> >>>>>>> +       ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
> >>>>>>> +       if (ret) {
> >>>>>>> +               dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
> >>>>>>> +               return ret;
> >>>>>>> +       }
> >>>>>>> +
> >>>>>>> +       init.ops = &clk_fixed_rate_ops;
> >>>>>>> +
> >>>>>>> +       fixed->fixed_rate = qmp->cfg->aux_clock_rate;
> >>>>>>> +       fixed->hw.init = &init;
> >>>>>>> +
> >>>>>>> +       return devm_clk_hw_register(qmp->dev, &fixed->hw);
> >>>>>>> +}
> >>>>>>> +
> >>>>>>> +static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void *data)
> >>>>>>> +{
> >>>>>>> +       struct qmp_pcie *qmp = data;
> >>>>>>> +
> >>>>>>> +       /* Support legacy bindings */
> >>>>>>> +       if (!clkspec->args_count)
> >>>>>>> +               return &qmp->pipe_clk_fixed.hw;
> >>>>>>> +
> >>>>>>> +       switch (clkspec->args[0]) {
> >>>>>>> +       case QMP_PCIE_PIPE_CLK:
> >>>>>>> +               return &qmp->pipe_clk_fixed.hw;
> >>>>>>> +       case QMP_PCIE_PHY_AUX_CLK:
> >>>>>>> +               return &qmp->aux_clk_fixed.hw;
> >>>>>>> +       }
> >>>>>>> +
> >>>>>>> +       return ERR_PTR(-EINVAL);
> >>>>>>> +}
> >>>>>>
> >>>>>> Can we use of_clk_hw_onecell_get() instead? I think it even should be
> >>>>>> possible to use onecell for both cases, it will look at the first arg,
> >>>>>> which will be 0 in case of #clock-cells equal to 0.
> >>>>>
> >>>>> Let me investigate if it's possible
> >>>>
> >>>> Ok, it would work but it would require building a clk_hw_onecell_data a runtime,
> >>>> while we could simply provide this qmp_pcie_clk_hw_get() and avoid runtime 2 allocations.
> >>>>
> >>>> I'm not sure it's worth it.
> >>>
> >>> Single allocation (or even 0 allocations if you embed it into struct
> >>> qmp_pcie) for the sake of using standard helpers.
> >>
> >> And I just recall I tried the same for Amlogic clocks, but the clk_hw_onecell_data hws
> >> field is a flexible array member you can't set at runtime, if you try you'll get:
> >> drivers/phy/qualcomm/phy-qcom-qmp-pcie.c:3753:38: error: invalid use of flexible array member
> >>    3753 |                 qmp->clk_hw_data.hws = qmp->clk_hws;
> >
> > Yes, so it's either
> > devm_kzalloc(dev, struct_size(data, hws, 2), GFP_KERNEL);
> > or
> > struct qmp_pcie {
> > ...
> >    struct {
> >      struct clk_hw_onecell_data clk_data;
> >      struct clk_hw clocks[2];
> >    };
> > };
>
> I won't go down this path because of that mess and using of_clk_hw_onecell_get() would need
> to still add a custom getter before calling of_clk_hw_onecell_get() to handle the
> #clock-cells=0 legacy case.

No need for custom getters, if you select the getter during DT probe.
But yes, choose whatever seems better.

>
> Neil
>
> >
> >>
> >> Neil
> >>
> >>>
> >>>
> >>>
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
