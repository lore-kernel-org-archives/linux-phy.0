Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91B85C54E5D
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOD73QdNGuWU/M8jG0IWpdD8xJ25KA0TEKFYUYVXdKA=; b=ubwvuUiezVxsSF
	Ed9ScAU9ihaRo4gqWbcujsGit/b7hSGYJ6hBSXzhe+5dxAh+GtDdLinDHZm5gKJlmB24zBxgB7+3m
	qsVMH52sTu2yR5a8LnfEp2vVhfP8ilFzadMwnh0vilKalRUX2DMsMyNxOHKDwfcZIFzgwjT4K9+8z
	7zmw6CFQwOqj3OnC7oXjvF+hFnbiehilfXN7aSXP9bYj1rbtEXZ14E2ItIOw3Ps0IrxZNFSpEnaAq
	ygrRJn0kr5niAhrjN8BQqT1wMhYfa4k6la19i17aLwXSLAxsk1F2HflTNdW14PbofHVM0d2yD9uKA
	gZOfkm99jqOxzKBEYF6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX3h-0000000CN8x-18yT;
	Tue, 19 Mar 2024 10:51:05 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmX3e-0000000CN8O-1Vzh
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:51:04 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-609fb0450d8so56972977b3.0
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845460; x=1711450260; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wzawuu8hFKU1RvK4lgLUgZN5WdTja0Pdn2+gmpJF2Io=;
        b=c5jHUWmJEBhGbZqRPstDMPj1obGY3j1OBrsLsNvZLLfpCYWv6A/bv7ja/PsChE0TmM
         TbdUtq4XEsejHZX5jWNqwIdadsfShui9k+8GFfcJlHgCa+a6Wwnv+d0+SNqc323uLJBB
         a1vU7fpGqNKZJI9iCTvY16q1t87AjooTGzdGPGBuqxFU9kK3rQdwNkbK6iflgtwDYkK0
         t+JmW+oT2zmRqCPfO0J7JJus8MewPh8eGz6pfMze/1bJ9pikjKQhn36txQu7I88aKPzG
         MRAXoHSPdboshedz6wgS3i8T2vQIhjzm01fzytCm0FsoH6pe+VMpqa9X7JRffmIwhzrk
         MlHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845460; x=1711450260;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wzawuu8hFKU1RvK4lgLUgZN5WdTja0Pdn2+gmpJF2Io=;
        b=jbLrkmCp+ICQ6a79EMVyCag0wYtUTr1Bl/Zmr8iG3u2/qv/XGEBqtldH+j6ZT6m9TT
         XKktAEfie53dg3w1K1OcJRLxnkubv4DiFYHqsjNpV57iNY9swYmlPlUfG5NGN1VebCP6
         NC/QZYrp12QC61467zGjtgv3Usek6WL7sTBO5qi9gEZQGwn1eUkULCSASTlwBCxSzvTA
         HMUo84YmJtwgDO3xK0HePjuD1HMmfI0EXQw2wADmbtQtShCrDlwIy/5nvu0YX9Yh9xcI
         pjmYzVq/QPj678dJ5dKZI2ZwjDv6v8PSVpAA8rTJG98YN/5y7tgotl0a2AjU0d7nbO09
         BTxA==
X-Forwarded-Encrypted: i=1; AJvYcCUq//BykajEXh4eCtTfIbpxlimnbtWhWgdvW5UygtZU5ys8XMv79h7yoyF11s9ePeF5t+UcEaTqci3YFMsXzsEXOoFBrnmAGcHuodXzAg==
X-Gm-Message-State: AOJu0YxKTiDQOOqGDjootNRROmNYqWJWQPxx0IgXc0W4IY8zfpZOENEF
	7JO65e+X+DG2+rofURCfD7tVN8BY2tQG/MMaeyTWQj+BOVQ26aBUCqFjxl5VbRfEY3R8e2bTJKB
	UgvnEZ1NZd4U92yO9V5LBWtuw9O3QxixVwHNk7Q==
X-Google-Smtp-Source: AGHT+IF6/EuqMBnZAX9r4gMKX9xc56hM2A2d3pzv6I0+nw/q8t6zrphceVRoZ2/ZcznRqKX1df24xMZiYzkbloy8K6Y=
X-Received: by 2002:a81:4702:0:b0:60a:3e2:2a35 with SMTP id
 u2-20020a814702000000b0060a03e22a35mr2384855ywa.37.1710845460142; Tue, 19 Mar
 2024 03:51:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
 <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-2-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-2-926d7a4ccd80@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 19 Mar 2024 12:50:48 +0200
Message-ID: <CAA8EJpqbhc_Y+EBTdz1WTnAnZN=vkTUAzc6feH4NYgbdR-ZibQ@mail.gmail.com>
Subject: Re: [PATCH 2/7] phy: qcom: qmp-pcie: refactor clock register code
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_035102_598484_B5E5D795 
X-CRM114-Status: GOOD (  20.99  )
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
> in order to expose it, split the current clock registering in two parts:
> - CCF clock registering
> - DT clock registering
>
> Also switch to devm_of_clk_add_hw_provider().
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 27 +++++++++++----------------
>  1 file changed, 11 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 8836bb1ff0cc..079b3e306489 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -3635,11 +3635,6 @@ static int qmp_pcie_clk_init(struct qmp_pcie *qmp)
>         return devm_clk_bulk_get_optional(dev, num, qmp->clks);
>  }
>
> -static void phy_clk_release_provider(void *res)
> -{
> -       of_clk_del_provider(res);
> -}
> -
>  /*
>   * Register a fixed rate pipe clock.
>   *
> @@ -3664,7 +3659,7 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>         struct clk_init_data init = { };
>         int ret;
>
> -       ret = of_property_read_string(np, "clock-output-names", &init.name);
> +       ret = of_property_read_string_index(np, "clock-output-names", 0, &init.name);
>         if (ret) {
>                 dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
>                 return ret;
> @@ -3683,19 +3678,19 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>
>         fixed->hw.init = &init;
>
> -       ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
> -       if (ret)
> -               return ret;
> +       return devm_clk_hw_register(qmp->dev, &fixed->hw);
> +}
>
> -       ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
> +static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
> +{
> +       int ret;
> +
> +       ret = phy_pipe_clk_register(qmp, np);
>         if (ret)
>                 return ret;
>
> -       /*
> -        * Roll a devm action because the clock provider is the child node, but
> -        * the child node is not actually a device.
> -        */
> -       return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
> +       return devm_of_clk_add_hw_provider(qmp->dev, of_clk_hw_simple_get,
> +                                          &qmp->pipe_clk_fixed.hw);

No. The driver has to register a clock provider at the np rather than
at dev->of_node. Otherwise legacy DT will be broken.

>  }
>
>  static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np)
> @@ -3899,7 +3894,7 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>         if (ret)
>                 goto err_node_put;
>
> -       ret = phy_pipe_clk_register(qmp, np);
> +       ret = qmp_pcie_register_clocks(qmp, np);
>         if (ret)
>                 goto err_node_put;
>
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
