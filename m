Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C73FC43334
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jun 2022 01:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=amzuUIX6FlG28KAWVdOuvLObNu/b5cV3gFGpn5d61XY=; b=KiTBmfFyNXkW9F
	4rWvnpb5xoDYxXJTHmngX/tHhiwFJv5/MVX8Y363TNyRGOzG4lhtJxntVuJMeEXAEDA/NxFpYFwNq
	EE9m+p2n3toHxvChf9G6hBlf28ZJm8c0aclV+TwzVNmt8GCqsXvhIJFMgrL6/CEGkt2g/Y8smKyCi
	bb6I1mcMaNX8HDd2uASRoqV6p9pzKHt7S1CTRggpmjO20yS2Wq5XQUJmLh2C6pQkDWmDfgS+8xaZA
	uq2XJ2QjpINKWZi6QxqPEpg3v+NsXQcueUkWVs1PAvqVbpC1UYXkY/fsR84Zo13FrGC2XyzJyTE6A
	XyIUnKxRnUwg6dj0XgFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4XpG-00HIMP-HE; Fri, 24 Jun 2022 01:09:34 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4XpD-00HILm-T2
	for linux-phy@lists.infradead.org; Fri, 24 Jun 2022 01:09:33 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-101d96fe0a5so1812912fac.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Jun 2022 18:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=OCHZxokmpPS3ghyjxdWAlsOmOJoJ7RkmN7lu9vpq/qc=;
        b=mgmCgBe5WxBpH89yuOr301hjK5lL5qvKpX+q0WY3Kvk8Uct1ju85U3VL84gbnUbFGm
         umtfp93y0TObeGA/vX0kAbt5pmZnBdQTd3LOEemB+ztk752fsZT48g2k4qF4gTuG3BxW
         yMWg66ompzCQcsliNLhBFppZ8A6TCE7euehNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=OCHZxokmpPS3ghyjxdWAlsOmOJoJ7RkmN7lu9vpq/qc=;
        b=5gaj/669pDi3s5coGQQnBBg/JYR0S3KWkx9OM8HyMi7AjGrfHbkEvuR2hMV9ltQuc/
         wcYcXPg7FmdIaGBDEC7wVMmoHkny4sNuKn0sp8oRG9gcroqiWBKiSz/HwE1hITm8p/0q
         V1s5Y9uEiuRzIUjMfFMYZFfXZfdaC5Cc/tkvxtrD2ZD3DFzOR07GCMu8bRsQWOJm87qp
         3Gd/C6SvA4WDL6+sR+FY6b7qsiM+t9E3j8sKnf7bHW3lmcyUZKfCZMQPb1URyb/88ezo
         AbqtePiApYBuo/p43vTmyd4JUphe5yYHi8OJis6N2roOwH6OVJt3Kyb0u6t5j2wRXVoC
         E5Xg==
X-Gm-Message-State: AJIora8It8QR7Hh8OwEfAptwSqxp1A2EH+Avex587U4dtleb47goqGQL
	ZWODfi8JrR2E5cWfJNn2tViWx5byfih+kJi7xwaeuA==
X-Google-Smtp-Source: AGRyM1tXirInAlabjW2wEws7IJSezLdoi0NAHbcTGFYyFOOwxy2J/0t4iXkfHnq/bVhSuIcagOvo549caWEkIJTT/0w=
X-Received: by 2002:a05:6870:b627:b0:102:f25:a460 with SMTP id
 cm39-20020a056870b62700b001020f25a460mr481377oab.193.1656032970163; Thu, 23
 Jun 2022 18:09:30 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 23 Jun 2022 18:09:29 -0700
MIME-Version: 1.0
In-Reply-To: <20220620153956.1723269-2-dmitry.baryshkov@linaro.org>
References: <20220620153956.1723269-1-dmitry.baryshkov@linaro.org> <20220620153956.1723269-2-dmitry.baryshkov@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Thu, 23 Jun 2022 18:09:29 -0700
Message-ID: <CAE-0n50P1sre19Vn76m2JuyNV1dLsBt7dOA30rnGPS_z3=aVjw@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-ufs: provide symbol clocks
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Michael Turquette <mturquette@baylibre.com>, Taniya Das <quic_tdas@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_180931_997564_35885EC1 
X-CRM114-Status: GOOD (  13.60  )
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

Quoting Dmitry Baryshkov (2022-06-20 08:39:56)
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index a2526068232b..0f31d3255897 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1167,6 +1167,54 @@ static int qcom_qmp_phy_ufs_clk_init(struct device *dev, const struct qmp_phy_cf
>         return devm_clk_bulk_get(dev, num, qmp->clks);
>  }
>
> +static void phy_clk_release_provider(void *res)
> +{
> +       of_clk_del_provider(res);
> +}
> +
> +#define UFS_SYMBOL_CLOCKS 3
> +
> +static int phy_symbols_clk_register(struct qcom_qmp *qmp, struct device_node *np)
> +{
> +       struct clk_hw_onecell_data *clk_data;
> +       struct clk_hw *hw;
> +       int ret;
> +
> +       clk_data = devm_kzalloc(qmp->dev, struct_size(clk_data, hws, UFS_SYMBOL_CLOCKS), GFP_KERNEL);
> +       clk_data->num = UFS_SYMBOL_CLOCKS;
> +
> +       hw = devm_clk_hw_register_fixed_rate(qmp->dev, "ufs_rx_symbol_0_clk_src",
> +                                                          NULL, 0, 0);
> +       if (IS_ERR(hw))
> +               return PTR_ERR(hw);
> +
> +       clk_data->hws[0] = hw;
> +
> +       hw = devm_clk_hw_register_fixed_rate(qmp->dev, "ufs_rx_symbol_1_clk_src",
> +                                                          NULL, 0, 0);
> +       if (IS_ERR(hw))
> +               return PTR_ERR(hw);
> +
> +       clk_data->hws[1] = hw;
> +
> +       hw = devm_clk_hw_register_fixed_rate(qmp->dev, "ufs_tx_symbol_0_clk_src",
> +                                                          NULL, 0, 0);

This line should be aligned with the opening parenthesis. Same for the
above other two.

> +       if (IS_ERR(hw))
> +               return PTR_ERR(hw);
> +
> +       clk_data->hws[2] = hw;
> +
> +       ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
> +       if (ret)
> +               return ret;
> +
> +        /*

This is tabbed weird. It doesn't align with the if above.


> +         * Roll a devm action because the clock provider is the child node, but
> +         * the child node is not actually a device.
> +         */
> +        return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
> +}
> +
>  static const struct phy_ops qcom_qmp_ufs_ops = {
>         .power_on       = qcom_qmp_phy_ufs_enable,
>         .power_off      = qcom_qmp_phy_ufs_disable,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
