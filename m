Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAA4AC43334
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jun 2022 01:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARNTWSIS3YXPnFoMQ2vXAz3pqq0lH9aNarez1dhsXDo=; b=N8Pr/S4pVNN/Ta
	cNMo8K15ctw20s2OkbAlceT+8qQgUnBSHokkLAZw1NGqrr4liTUfTYGJPbD3ph2U3q4n++6WSBNoS
	b5gn7Tv6ucHdbTnVgI/dY7JBPsvnQT+cT8ecBxHNj5oueb8fG2nD+jLdjLm0WC1i4Ma/qQtHtgnac
	mJhEh30cX9y9j7kJihP+tQ9TREE2br8XNaoneSIKPVoyh7s5QVfJs4vswg1G6/5VPQq4/f6k4u89r
	xP9hOOGHTJXMWEui7odX+epA8EvyfBE/a0kiOD7Zd0c56X6MrLyvge0R7xNm8lXKJs6OpXMPIBIEs
	MiyZfc4rqglZ3mTr4y9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Xqd-00HIUt-31; Fri, 24 Jun 2022 01:10:59 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Xqa-00HIUM-Gl
	for linux-phy@lists.infradead.org; Fri, 24 Jun 2022 01:10:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 713F9B824DC;
	Fri, 24 Jun 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EC7BC3411D;
	Fri, 24 Jun 2022 01:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656033052;
	bh=NmgagNBV9gwyhlChqhV/v07V/dIV0rkFErcWLoUCSAw=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=HwHYvAZ4Ia+YMvOHpa9O7bQy34QnFxHF0HREeVjJNj1xbvp5RrFQK3Dl2QIylJD0q
	 FNzYHu+lLFeNpjhZO8ZL9ud7L4bW95bZ/5wuNNemDGu0iqkUBwbdE/WePnn3XxuVDz
	 +KI4zEDOuRVwcnySCWv66QIn/1sczkmhKIH9BacbSh57H8Io35NjxUexYhSGlKFH83
	 wlgTwV6uZKlLfo12+Iy10uO1jcZ+5sQ8H2KBVDdlTgv/QPId4JL8LO6sNJBeDzFjKw
	 VBs4/E3YqoPY5t9bFAOMoL/MFiT01m4cki7WSqBOmM1K0jDv33dgTU9qkVoBacnvTk
	 i05q3WYediiZQ==
MIME-Version: 1.0
In-Reply-To: <20220620153956.1723269-1-dmitry.baryshkov@linaro.org>
References: <20220620153956.1723269-1-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH 1/2] clk: fixed-rate: add devm_clk_hw_register_fixed_rate
From: Stephen Boyd <sboyd@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>, Michael Turquette <mturquette@baylibre.com>, Taniya Das <quic_tdas@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Date: Thu, 23 Jun 2022 18:10:50 -0700
User-Agent: alot/0.10
Message-Id: <20220624011052.1EC7BC3411D@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_181056_739921_7602D72C 
X-CRM114-Status: GOOD (  13.84  )
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

Quoting Dmitry Baryshkov (2022-06-20 08:39:55)
> Add devm_clk_hw_register_fixed_rate(), devres-managed helper to register
> fixed-rate clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/clk/clk-asm9260.c    |  2 +-
>  drivers/clk/clk-fixed-rate.c | 28 ++++++++++++++++++++++++----
>  include/linux/clk-provider.h | 27 ++++++++++++++++++++-------
>  3 files changed, 45 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/clk/clk-asm9260.c b/drivers/clk/clk-asm9260.c
> index bacebd457e6f..4da5f38249bf 100644
> --- a/drivers/clk/clk-asm9260.c
> +++ b/drivers/clk/clk-asm9260.c
> @@ -278,7 +278,7 @@ static void __init asm9260_acc_init(struct device_node *np)
>         ref_clk = of_clk_get_parent_name(np, 0);
>         hw = __clk_hw_register_fixed_rate(NULL, NULL, pll_clk,
>                         ref_clk, NULL, NULL, 0, rate, 0,
> -                       CLK_FIXED_RATE_PARENT_ACCURACY);
> +                       CLK_FIXED_RATE_PARENT_ACCURACY, false);

Can you also make this usage into a macro so that it doesn't change in
the future when a new argument is added?

>  
>         if (IS_ERR(hw))
>                 panic("%pOFn: can't register REFCLK. Check DT!", np);

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
