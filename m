Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ED1DC7EE20
	for <linux-phy@archiver.kernel.org>; Tue, 25 Apr 2023 01:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87KQJptZMzOqNvMtyIcIP2TF/HWJ0W/5gid3oJZ2ZEw=; b=Ra12lSyU9AsNhB
	qNyq9DsWjY5CKmddNYGUVAJML34erc/jD0W4gY5Bp5D7CAfFiGTaRUw1o6FKrNlZup+voFoSBlQYZ
	GF0V7Ca+nEJX8JEsDxIf4/fJZc0ZCFMLjQP5IkFfRva9hpB9l8IY2Yogwgz0U0tkOfZLIKT2OsERC
	GIz1QbWLGMBzDGMZuvDqIMIMTYrBhyddbEawep7i3T3Kj/GyP3GyeTImpyhLh3M5qAWrrwA4kfb+y
	VSXmW8azqpwPNci/oh1p3wNXqjXUaQtgZvhnxVBvovKZ+XG74sFEqzDTBpmf3MKMJh7kyVdNv84er
	ydlIiwornYIaZG+Vhylw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pr7OF-00HZKF-0Q;
	Tue, 25 Apr 2023 01:22:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pr7OC-00HZJt-2X
	for linux-phy@lists.infradead.org;
	Tue, 25 Apr 2023 01:22:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0B3A462AB0;
	Tue, 25 Apr 2023 01:22:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F69FC433D2;
	Tue, 25 Apr 2023 01:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682385759;
	bh=NXv2pfWTZu2vC/ltC9EBZjzxRHTO+30j39cQI4dlOcI=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=QJz5cVl4PhMTJze+KDFWmNZN+FXdOg3aVsZ/KR+Y+3QjbyY2nS/TfywqnRsgKaBTF
	 nJOqM35LATYQeGQr6PFCS97a2xp7TeBqn8cgkHFXYJSlODrxGYHdKzrCrhv7upaRdI
	 fboWksg5SsnAYQjZRPz19/6iyzcpJf4r+wR/b/pu0id/R/6Ez82JngI29Mc5HdjFmv
	 O8Bmf3dc/gJ5pNaUv8rJ+LoLGgboVQ960jpOhZ5gKQ/rpJTNAGAjFwVf4rgcqzf8Vl
	 g6etBREYdQfQnQQPaBlWU+ihDWuorrak90eRAdlGNJyOQwFwiru1icSFqgY4W4j5oK
	 Atl76ju7cy1Xw==
Message-ID: <2b56630aa93c1c1e9cd45a745046a12e.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <1c6fe00696f808e889ce72571b8ed8e7fa20f661.1682092324.git.quic_varada@quicinc.com>
References: <cover.1682092324.git.quic_varada@quicinc.com> <1c6fe00696f808e889ce72571b8ed8e7fa20f661.1682092324.git.quic_varada@quicinc.com>
Subject: Re: [PATCH v9 4/8] clk: qcom: gcc-ipq9574: Add USB related clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org, andersson@kernel.org, devicetree@vger.kernel.org, gregkh@linuxfoundation.org, kishon@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, mturquette@baylibre.com, quic_wcheng@quicinc.com, robh+dt@kernel.org, vkoul@kernel.org
Date: Mon, 24 Apr 2023 18:22:35 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_182240_882636_6C2620D4 
X-CRM114-Status: GOOD (  10.26  )
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

Quoting Varadarajan Narayanan (2023-04-21 08:54:46)
> diff --git a/drivers/clk/qcom/gcc-ipq9574.c b/drivers/clk/qcom/gcc-ipq9574.c
> index a4cf750..8d7f543 100644
> --- a/drivers/clk/qcom/gcc-ipq9574.c
> +++ b/drivers/clk/qcom/gcc-ipq9574.c
> @@ -2025,6 +2025,41 @@ static struct clk_regmap_mux usb0_pipe_clk_src = {
>         },
>  };
>  
> +static struct clk_branch gcc_usb0_pipe_clk = {
> +       .halt_reg = 0x2c054,
> +       .halt_check = BRANCH_HALT_DELAY,
> +       .clkr = {
> +               .enable_reg = 0x2c054,
> +               .enable_mask = BIT(0),
> +               .hw.init = &(struct clk_init_data){

const

> +                       .name = "gcc_usb0_pipe_clk",
> +                       .parent_hws = (const struct clk_hw *[]) {
> +                               &usb0_pipe_clk_src.clkr.hw
> +                       },
> +                       .num_parents = 1,
> +                       .flags = CLK_SET_RATE_PARENT,
> +                       .ops = &clk_branch2_ops,
> +               },
> +       },
> +};
> +
> +static struct clk_branch gcc_usb0_sleep_clk = {
> +       .halt_reg = 0x2c058,
> +       .clkr = {
> +               .enable_reg = 0x2c058,
> +               .enable_mask = BIT(0),
> +               .hw.init = &(struct clk_init_data){

const

> +                       .name = "gcc_usb0_sleep_clk",
> +                       .parent_hws = (const struct clk_hw *[]) {
> +                               &gcc_sleep_clk_src.clkr.hw
> +                       },
> +                       .num_parents = 1,
> +                       .flags = CLK_SET_RATE_PARENT,
> +                       .ops = &clk_branch2_ops,
> +               },
> +       },
> +};
> +
>  static const struct freq_tbl ftbl_sdcc_apps_clk_src[] = {
>         F(144000, P_XO, 16, 12, 125),
>         F(400000, P_XO, 12, 1, 5),

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
