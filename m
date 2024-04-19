Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD5ABC4345F
	for <linux-phy@archiver.kernel.org>; Fri, 19 Apr 2024 22:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0EBDHmVp2DyJUE0+Oq6o4hkX/6K1XUFvMqG/+6ZAnY=; b=jV8WbzJL7dZgDn
	zDDuLgrAz+Uw0BFWP8QnosIzfyYbfQytDTJ7s6ISKaC/AixGFQlvQYKccz3mavEGF3E8UfAZxsk90
	LDROu1dcUmDLdAHmu3H8Xuv8xAiW6LzOoyLFl9zQz/RSpbjfikPzbONHE/twP5p+rVv/zuRh89Pdq
	YoIQ9+MKwe8TxHpMUgTyfEz6zQQFoV3Xt0Q+qkME/xLTmU69iYQmT30STST+iSNS8dqc/bd4tZctw
	1aUR4Mc2sR+2BgbEAXN57rEEmQ5HOa9qhgtnMUIclXjZGVhrBX6W+dEEI24lFiCadYPNgbLr13bAW
	5Aij1x6L5r9IyIR1p2uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxwcV-000000077z2-1UAh;
	Fri, 19 Apr 2024 22:22:11 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxwcS-000000077xt-03el
	for linux-phy@lists.infradead.org;
	Fri, 19 Apr 2024 22:22:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0BE12CE1AE1;
	Fri, 19 Apr 2024 22:22:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13E9CC072AA;
	Fri, 19 Apr 2024 22:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713565324;
	bh=W93MArkTN2nFQxNyz/XsQyNZSKFRYf+2wns3m/0iJ9k=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=m2fgKXHiFy8amOaO1SVc9kiYlQYn5t7O2IUojLh7YNXpZaxiqfPAZ4WLuE/QQY4gF
	 qZqKUlW0izC9UOkGw7qMIvfVfPR2imSHf2nRL0UsA7MdWyANPC7IIorwW5/CR5h++9
	 WO9zlomf5CUir5xVMtWes6wKFQWgNXWda4I1IF3FTzIhnYuU36SCFM/xbYGw8efvLr
	 aXKJL/guX+3Gk+RRY3sl3qXhhWXeznLga8jp/jwJqnOyJtMjA0+Rd2htFnKCIerpME
	 8HcLjspkYW6nCEYIRi07S5Sf6CyprS0rGYsST8aHi00lwrMTLngudTLGNGe6/F5ddi
	 jb1Wsgi6Ah9Dw==
Message-ID: <e938c677de8e8c8742701c7660b84706.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240415182052.374494-3-mr.nuke.me@gmail.com>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com> <20240415182052.374494-3-mr.nuke.me@gmail.com>
Subject: Re: [PATCH v3 2/7] clk: qcom: gcc-ipq9574: Add PCIe pipe clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>, Bjorn Andersson <andersson@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Conor Dooley <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Krzysztof =?utf-8?q?Wilczy=C5=84ski?= <kw@linux.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Date: Fri, 19 Apr 2024 15:22:01 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_152208_317046_DB93A268 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
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

Quoting Alexandru Gagniuc (2024-04-15 11:20:47)
> diff --git a/drivers/clk/qcom/gcc-ipq9574.c b/drivers/clk/qcom/gcc-ipq9574.c
> index 0a3f846695b8..c748d2f124f3 100644
> --- a/drivers/clk/qcom/gcc-ipq9574.c
> +++ b/drivers/clk/qcom/gcc-ipq9574.c
> @@ -1569,6 +1569,24 @@ static struct clk_regmap_phy_mux pcie0_pipe_clk_src = {
>         },
>  };
>  
> +static struct clk_branch gcc_pcie0_pipe_clk = {
> +       .halt_reg = 0x28044,
> +       .halt_check = BRANCH_HALT_DELAY,
> +       .clkr = {
> +               .enable_reg = 0x28044,
> +               .enable_mask = BIT(0),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gcc_pcie0_pipe_clk",
> +                       .parent_hws = (const struct clk_hw *[]) {
> +                               &pcie0_pipe_clk_src.clkr.hw
> +                       },
> +                       .num_parents = 1,
> +                       .flags = CLK_SET_RATE_PARENT,
> +                       .ops = &clk_branch2_ops,
> +               },
> +       },
> +};
> +
>  static struct clk_regmap_phy_mux pcie1_pipe_clk_src = {
>         .reg = 0x29064,
>         .clkr = {
> @@ -1583,6 +1601,24 @@ static struct clk_regmap_phy_mux pcie1_pipe_clk_src = {
>         },
>  };
>  
> +static struct clk_branch gcc_pcie1_pipe_clk = {
> +       .halt_reg = 0x29044,
> +       .halt_check = BRANCH_HALT_DELAY,
> +       .clkr = {
> +               .enable_reg = 0x29044,
> +               .enable_mask = BIT(0),
> +               .hw.init = &(struct clk_init_data){

const clk_init_data please.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
