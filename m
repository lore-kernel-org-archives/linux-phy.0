Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ECABC4332F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 13:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SX8D2neIiUP4NlZkKGzEu+8M/4/s8jHToG7nswUqt0=; b=2/EwSV2tmLsmOL
	RvJw8F0k+9HGA12bmqd+vsCfep51OC+Fwh3XYkjW5mmQX1MPwctsENf5KY5fyEslg0WR0Ib8UBb5n
	NnvnI6aOuWlcPaxFY2qStIUcVu+I+eEeZQRjXma2QxJAcM4iugPV31haytTCCipN53HbQ8N0Rfwet
	7QhqVyqmGvCLjo5EQJl0ya6HvD5/Z9K0MTpRn5tei+/DOrpQLWCoWqHkX7ORDE03mFpO96pIdULPg
	5Q7p7wPoem2xqIXzIVlAuQK5JjwE5WqbvVTJkY1VotBROes7YGMJ0Qy8nsSy/+VgbLCgeep9WVpSN
	pHRtqbt9OeZLw0Nu8lEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LpB-001aDE-2w;
	Tue, 07 Nov 2023 13:08:57 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Lp8-001aCE-3B
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 13:08:56 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5a877e0f0d8so56209307b3.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Nov 2023 05:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699362533; x=1699967333; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dbx/UynaS38IRg6RqSnz8/nqPOY3sS3Z4B+scjr8meY=;
        b=e3NUc0HF6zdiD+tGvwQcZNN7Jnk8q9J4Fh0jWkmL7PuMV/UsASbkImw8Nr9naSN7VD
         VcyPzWeD9NXEEWkaOeVx/v0wOZgC/Go2i41zrDfWKex902X5s871188FQhilfKOtFCrj
         0XfxjiIomWX8wM9vFgH+3kqZjxwjPki1hHOXjzp0fZo376J208o5FfYydBFxrh3WJLWt
         IKrG0WDnhjP/xbb0xpgCUS1JWFvOkrgw1L0bo4ICUzsVp5INE6XbOnh2TWZpGj8uDger
         YVGP7ijRhNQEP2L0vB+xXj8G0Z2I7eDaS5Xan6ICyEf+su+bMTjBFa6pZcPrVPEQSDQL
         mcxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699362533; x=1699967333;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dbx/UynaS38IRg6RqSnz8/nqPOY3sS3Z4B+scjr8meY=;
        b=vaiqhnlXS8U827bB9Mbwo9DRfyh1AuCGGCxGw86NQdI49Sjg3S4DTncsTf2EgQrDCg
         /Pu9gS5DF6Jv0RfQby2Knm3Bt3PzdEpY0F3PQ5KY9aUUhZTigV+YcWUyPEHcJkSFxpol
         6m8OoqWp1pB256KHFr9/SThIcKTT6e5PWASDcyv83QATD21UTKeRs1YY541FUFW8maaE
         O9qhe/7N/weKN1SVC/qF1d+9D5nIaoBamK5LHyn+mUbw3WulXQzmzh8hFzF6aqhIPh1d
         56S4wJPJlyIQq9+BWfLLLL5hjFEI91MVp67WTjAmi3b7Kcdrap16SI2GLVx3FDKUk4ry
         D9AQ==
X-Gm-Message-State: AOJu0YxDHYN5HSexX8GgpwfnyeKLtdNlVfSH+U9d7JhDPCtd1K83Dhuh
	VafryUbuTzJnuSn2Ia1n0ADGeMp1Dv7MXx2Lor0Lzg==
X-Google-Smtp-Source: AGHT+IELQi9sG90iFpA9loHvBjUJx0r9EJFbAMFv8Z46iVDiHRl4G0EmCSSc86dZtYBzCJ5XkBrXYS2Xo1C3aXEOwXs=
X-Received: by 2002:a81:9846:0:b0:5b3:4c7e:7473 with SMTP id
 p67-20020a819846000000b005b34c7e7473mr1656944ywg.17.1699362533189; Tue, 07
 Nov 2023 05:08:53 -0800 (PST)
MIME-Version: 1.0
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com> <20231107-refclk_always_on-v2-3-de23962fc4b3@quicinc.com>
In-Reply-To: <20231107-refclk_always_on-v2-3-de23962fc4b3@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 Nov 2023 15:08:41 +0200
Message-ID: <CAA8EJpp1ObZjmX65TctoPo7ywvFBguFND2LcmTq3Dhcj=3vstg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] phy: qcom-qmp-pcie: Add support for keeping refclk
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
X-CRM114-CacheID: sfid-20231107_050855_026267_2C9803A2 
X-CRM114-Status: GOOD (  22.11  )
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

On Tue, 7 Nov 2023 at 14:26, Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> In PCIe low power states like L1.1 or L1.2 the phy will stop
> supplying refclk to endpoint. If endpoint asserts clkreq to bring
> back link L0, then RC needs to provide refclk to endpoint.
>
> If there is some issues in platform with clkreq signal propagation

Nit: there are

I'd rephrase this in the following way:

Some platforms (e.g. ABC DEF) fail to drive the clkreq signal to the
host (because it is unconnected ?). Due to that...

Other than that:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> to host and due to that host will not send refclk which results PCIe link
> down. For those platforms phy needs to provide refclk even in low power
> states.
>
> Add a flag to keep refclk always supplied to endpoint.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 74d03d217ff2..a8d6d69e3f74 100644
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
> @@ -2264,6 +2266,8 @@ struct qmp_pcie {
>         struct phy *phy;
>         int mode;
>
> +       bool refclk_always_on;
> +
>         struct clk_fixed_rate pipe_clk_fixed;
>  };
>
> @@ -3179,6 +3183,10 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
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
> @@ -3701,6 +3709,12 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>         if (ret)
>                 goto err_node_put;
>
> +       qmp->refclk_always_on = of_property_read_bool(dev->of_node, "qcom,refclk-always-on");
> +       if (qmp->refclk_always_on && !qmp->cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]) {
> +               dev_err(dev, "refclk is always on is present but refclk cntrl offset is not present\n");
> +               goto err_node_put;
> +       }
> +
>         ret = phy_pipe_clk_register(qmp, np);
>         if (ret)
>                 goto err_node_put;
>
> --
> 2.42.0
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
