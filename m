Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9C44C4167D
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 12:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syGLxmQ/y43vUilyT6VYdZY9WupOgE1GIqWx2YCb6Ts=; b=m7VuG1e/QYVzIh
	FHOqVyCracI1qvtIBY45RRzHxxzr1PHmag/BjY0fGUvG5uJMhoOa+9TrAd6KDH8Nn2O7kHyWIZ0bS
	m+flaE78Hc8Jw9CHcfQ+kH4TocxAVAdQhHY7OJUZJ17Mj7HfP92DMFUuDYzbQU88698OT+Q9W1mpN
	eoZhOhxUmYONMPA86LW8fhXqceurbv3M4n99Gx95jwrxDXJfTvz0mqH8JHPJASWmbk+ZC+sxbQpUI
	BdpdXJ0V1IVqJtO1d0BOSTR+QyjqiSDyDHM25thCgNc9LhjZqWfeFKfTHg35DgUpWQC93L57j3OQ5
	pXbhYORzuCQ88Zt0484Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzyUR-00Gc1h-1r;
	Mon, 06 Nov 2023 12:13:59 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzyUO-00Gc1K-2R
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 12:13:58 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5a81ab75f21so52419957b3.2
        for <linux-phy@lists.infradead.org>; Mon, 06 Nov 2023 04:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699272835; x=1699877635; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F3Zbr/7wNikMm8fVZo9O7MEbsokzhS7zeLCZ4OYDYRk=;
        b=kPrwU+Yxvrh51aTZXFjedUytPiak5EioCpKvYU0ixPkegLc4zO8iRQu7S6vkOMb5if
         gVMzACQ6qPRxa0ZC9EejowsIQZfUjh4RmQiYD4lmvyuP0eXqOtlad1XJyt5waCtBxTcL
         wCsqeVoPG4w5Gd7n/e8BqDwakK9a8SxrVQGiaAmok7hJ+OYShsrc6IiU+BBozF93KPvA
         O161L3D+BhI2pYnn0P5eeXtM/sluk+AcqPU9PR20DV5b7ytLu7lrerIs1TDztjgEAhoB
         t5pNj3e6aVNu0h5baHWdJQP9eNE3inYpTU+iPTWUErORavtpMQy8+knEb2KllXUwaaIU
         0kaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699272835; x=1699877635;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F3Zbr/7wNikMm8fVZo9O7MEbsokzhS7zeLCZ4OYDYRk=;
        b=jUM/MCnc/HVd1EiP98foskBg4Esoqo+OxH15jbEUM5QIGeOWuOp+7PizE6Kzp6UJS6
         xP6DqUJDXhmd6XQ2uydNzkdrh8YwAclfUnOE45ce0gw6LVmcU0vUWVIs+CBfniWrLPFJ
         9HBB+pEqGKjElqGOOXdOB3McUh6mtOq3n7sWcJc1FmiWQBGaNnD1h8yoMH+h1W8x3qsf
         fO77Px+4I+tuogrYStc93FaHzsuFRKljE4KZboEuEg1JznE4Nw/sTCnxAR9wTD0FNp8B
         Ge4mGoNyZDohwyw/hLqGeA9j6QU37bqBu3hTLxAJx5cApIGanzbAVssH/mllGWZRFIbe
         RwMw==
X-Gm-Message-State: AOJu0YzzrWvG3F86/JgWd24DasV3uQJVLWaREe5Q8ydYK4EA9KIZuo7H
	RYFleUaF7tFVclGjmwn81QulSmpbOuPGlMNSRuoLog==
X-Google-Smtp-Source: AGHT+IGGM3UIDY+b5l1UooC9gUNrzrvkGoCUCgdNg/5181q+F7Rutpj6JhdZVJm/bP30cG66zRn32AVniYfDFGzb1eo=
X-Received: by 2002:a05:690c:6:b0:5a1:d352:9fe1 with SMTP id
 bc6-20020a05690c000600b005a1d3529fe1mr12063192ywb.42.1699272835361; Mon, 06
 Nov 2023 04:13:55 -0800 (PST)
MIME-Version: 1.0
References: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com> <20231106-refclk_always_on-v1-2-17a7fd8b532b@quicinc.com>
In-Reply-To: <20231106-refclk_always_on-v1-2-17a7fd8b532b@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Nov 2023 14:13:43 +0200
Message-ID: <CAA8EJpq9azRC5msZfS1V8NK4EmPN+jxh+99yGEyQ+EWkk1gROQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-pcie: Add support for keeping refclk
 always on
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com, quic_parass@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_041356_804968_4A5ADA6A 
X-CRM114-Status: GOOD (  23.46  )
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

On Mon, 6 Nov 2023 at 13:53, Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> In PCIe low power states like L1.1 or L1.2 the phy will stop
> supplying refclk to endpoint. If endpoint asserts clkreq to bring
> back link L0, then RC needs to provide refclk to endpoint.
>
> If there is some issues in platform with clkreq signal propagation
> to host and due to that host will not send refclk which results PCIe link
> down. For those platforms  phy needs to provide refclk even in low power
> states.
>
> Add a flag which indicates refclk is always supplied to endpoint.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 21 +++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index a63ca7424974..d7e377a7d96e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -43,6 +43,8 @@
>  /* QPHY_PCS_STATUS bit */
>  #define PHYSTATUS                              BIT(6)
>  #define PHYSTATUS_4_20                         BIT(7)
> +/* PCS_PCIE_ENDPOINT_REFCLK_CNTRL */
> +#define EPCLK_ALWAYS_ON_EN                     BIT(6)


>
>  #define PHY_INIT_COMPLETE_TIMEOUT              10000
>
> @@ -77,6 +79,7 @@ enum qphy_reg_layout {
>         QPHY_START_CTRL,
>         QPHY_PCS_STATUS,
>         QPHY_PCS_POWER_DOWN_CONTROL,
> +       QPHY_PCS_ENDPOINT_REFCLK_CNTRL,
>         /* Keep last to ensure regs_layout arrays are properly initialized */
>         QPHY_LAYOUT_SIZE
>  };
> @@ -103,10 +106,11 @@ static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  };
>
>  static const unsigned int pciephy_v4_regs_layout[QPHY_LAYOUT_SIZE] = {
> -       [QPHY_SW_RESET]                 = QPHY_V4_PCS_SW_RESET,
> -       [QPHY_START_CTRL]               = QPHY_V4_PCS_START_CONTROL,
> -       [QPHY_PCS_STATUS]               = QPHY_V4_PCS_PCS_STATUS1,
> -       [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V4_PCS_POWER_DOWN_CONTROL,
> +       [QPHY_SW_RESET]                         = QPHY_V4_PCS_SW_RESET,
> +       [QPHY_START_CTRL]                       = QPHY_V4_PCS_START_CONTROL,
> +       [QPHY_PCS_STATUS]                       = QPHY_V4_PCS_PCS_STATUS1,
> +       [QPHY_PCS_POWER_DOWN_CONTROL]           = QPHY_V4_PCS_POWER_DOWN_CONTROL,

No unnecessary whitespace changes, please.

> +       [QPHY_PCS_ENDPOINT_REFCLK_CNTRL]        = QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,

Any other platform having this register?

>  };
>
>  static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
> @@ -2244,6 +2248,8 @@ struct qmp_pcie {
>         struct phy *phy;
>         int mode;
>
> +       bool refclk_always_on;
> +
>         struct clk_fixed_rate pipe_clk_fixed;
>  };
>
> @@ -3159,6 +3165,10 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
>         qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
>         qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
>
> +       if (qmp->refclk_always_on && cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL])
> +               qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL],
> +                            EPCLK_ALWAYS_ON_EN);
> +
>         if (cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
>                 qmp_pcie_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
>                 qmp_pcie_init_port_b(qmp, tbls);
> @@ -3681,6 +3691,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>         if (ret)
>                 goto err_node_put;
>
> +       qmp->refclk_always_on = of_property_read_bool(dev->of_node,
> +                                                     "qcom,refclk-always-on");

Error out if !cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]).
Otherwise your DT value can be silently ignored.

> +
>         ret = phy_pipe_clk_register(qmp, np);
>         if (ret)
>                 goto err_node_put;
>
> --
> 2.42.0
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
