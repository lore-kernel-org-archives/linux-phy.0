Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CAFFC5DF6D
	for <linux-phy@archiver.kernel.org>; Wed, 19 Aug 2026 06:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mXz0VQBsW0IYA5RimtbMS6HUBP+MiRpQJYV5iq5AlY=; b=koDDnjkxl7EulG
	ltZjZp+bZlmCGcv/OVaJKfOE+pyR7FW+cfOha89w4auautJyrROIUb/wGmxnQOo6/8b04bzlZbNCy
	nDLMFpovt68gitnLbFLqvLpOz8yqzx5GX/o9nY3qE5Zows2Ns/1uXFlerOrI7S1T64nfkd/k4b4XG
	sx9TAedBFzNRnEztcHMSdJPaHAwTmQMAvWxTAStnY2izOLsaZEtfwiUtvKHqa46uMy9nLrVFczrEa
	01wpV7Cd/99jETHeBAnV/gDJ1LPxr+EFFK4NhfqcgDtqnb5uhELl0AwdrRedpk2y/vxaIUTmJ7wfI
	kxN1MLFeGqduEKPGSaJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwa1e-0000000975N-1BFd;
	Wed, 19 Aug 2026 06:43:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwa1c-00000009757-22Td
	for linux-phy@lists.infradead.org;
	Wed, 19 Aug 2026 06:43:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EBB31429DF;
	Wed, 19 Aug 2026 06:43:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC4451F000E9;
	Wed, 19 Aug 2026 06:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787121827;
	bh=pBeI4LSUCsKWR92NNr2fzdaoEZgirvmeMcG4YeV6lt4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oG1IALg9IcRgh7YDL9NG4/48nVho2UEJgnAhI6qv4aagz0Ja0Tq+mGHV+C1S0ST75
	 os1egMG63yowg1mHK+31cIX1LgQuaCXoqK05Ibl5Xh6TbMje1+PFsbFWVT76jKZXWc
	 V9pv1C5+IJGubIMEQMXNTa3vN5OnK9O4BxXcBh3JLOzJgPkRdgOyJwTT6mQju/YNPi
	 Be0bVgHgh+CQblQxNXYQdA0bEmByiBMDMH6VempDSsNzV7l0nawYZCQfu0kZa0wm8y
	 RzUuUFH2wv0uKll+QySTWhnEVOrrhdarcx0JLKABk10+gEUjve5VUFsmdjWX8zzXDt
	 tsvigyXhUE+Hw==
Date: Tue, 18 Aug 2026 23:43:45 -0700
From: Peter Chen <peter.chen@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
	Stephen Boyd <stephen.boyd@linaro.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org,
	Greg Kroah-Hartman <gregkh@suse.de>,
	Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 06/10] usb: chipidea: msm: keep the glue device
 runtime-active
Message-ID: <aoVQoYDWZ-w6PUJr@hu-petche-lv.qualcomm.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-6-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb-hsic-v1-6-e5f93ea76ffa@oss.qualcomm.com>
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

On 26-08-10 18:42:10, Dmitry Baryshkov wrote:
> The msm chipidea glue enables runtime PM with pm_runtime_no_callbacks()
> and nothing pinning it active. Right after a successful probe the
> driver core's pm_request_idle() runtime-suspends the glue (the ci core
> child has runtime PM disabled, so it does not hold its parent), and
> when the glue sits in a power domain - the HSIC instances live in the
> USB_HS_HSIC GDSC on msm8974 - genpd then powers the domain off
> underneath the running controller. The EHCI register file reads back
> zeroes, an onboard hub's connect is never seen, and subsequent bus
> accesses into the unpowered block wedge the interconnect, eventually
> taking the whole SoC down.

If you want runtime-pm support, you may set flag CI_HDRC_SUPPORTS_RUNTIME_PM,
The USB core (EHCI) would resume the controller (CI core).

> 
> Pin the glue runtime-active so the domain stays powered for the
> lifetime of the controller. Proper low-power handling can later be
> built on the child's runtime PM together with the HSIC wakeup
> interrupt.

If you would need HSIC wakeup interrupt, the CI MSM should support
runtime PM per my understanding.

Peter
> 
> Fixes: 2d0cdcc5a0e4 ("USB: gadget: Implement runtime PM for MSM bus glue driver")
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/usb/chipidea/ci_hdrc_msm.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/chipidea/ci_hdrc_msm.c b/drivers/usb/chipidea/ci_hdrc_msm.c
> index e28ea87f9898..9a9410a814e5 100644
> --- a/drivers/usb/chipidea/ci_hdrc_msm.c
> +++ b/drivers/usb/chipidea/ci_hdrc_msm.c
> @@ -276,7 +276,13 @@ static int ci_hdrc_msm_probe(struct platform_device *pdev)
>  			dev_warn(&pdev->dev, "no wakeup interrupt: %d\n", ret);
>  	}
>  
> +	/*
> +	 * The glue owns the controller's power domain (the HSIC instances sit
> +	 * in a GDSC): if it runtime-suspends, the domain is powered off
> +	 * underneath the running controller. Pin it active.
> +	 */
>  	pm_runtime_set_active(&pdev->dev);
> +	pm_runtime_get_noresume(&pdev->dev);
>  	pm_runtime_no_callbacks(&pdev->dev);
>  	pm_runtime_enable(&pdev->dev);
>  
> @@ -294,6 +300,7 @@ static void ci_hdrc_msm_remove(struct platform_device *pdev)
>  	struct ci_hdrc_msm *ci = platform_get_drvdata(pdev);
>  
>  	pm_runtime_disable(&pdev->dev);
> +	pm_runtime_put_noidle(&pdev->dev);
>  	dev_pm_clear_wake_irq(&ci->ci->dev);
>  	ci_hdrc_remove_device(ci->ci);
>  	clk_disable_unprepare(ci->iface_clk);
> 
> -- 
> 2.47.3
> 

-- 

Thanks,
Peter Chen

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
