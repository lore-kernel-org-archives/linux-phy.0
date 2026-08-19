Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD27EC5DF6D
	for <linux-phy@archiver.kernel.org>; Wed, 19 Aug 2026 06:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RzqIxD58XfIlSjOrUOXtdmNAYKX2TF/dpSGvScEwXs=; b=LElu5C2P++niUj
	vx0IQhfLDnEEjbh3qVu+NJpGKQ9Wp/HBB9ZrFJcxdZDX8FR+cxnnr6vGFqIybyG8G1MJmqTHsN+6Y
	B5GF8Zb0Sj6NibanziNunIfKYEPwLpDj6/iM+NLB3IP3hg4anNbosuckAlpXSBWWYt7j7C/wqwzHa
	EMwM3yvbDv422s0eLLh41H1NcHxRszlQHyq81PoiOE5JQz3E/zhCrI4dV2O2+WMTRwryW1oG27opF
	JnCPM7cpzXEoGPTOIu1v8bzhpTkIHnLHWWjzVaEKlkRFTJz/gPEfl08gCsUsWzWcSv03IeX01Uga6
	NpPBSCLJfsMIpwKXFCAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwZrN-000000096Vj-0Xi6;
	Wed, 19 Aug 2026 06:33:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwZrL-000000096VO-1GLL
	for linux-phy@lists.infradead.org;
	Wed, 19 Aug 2026 06:33:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7948F60204;
	Wed, 19 Aug 2026 06:33:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55DC61F000E9;
	Wed, 19 Aug 2026 06:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787121190;
	bh=Tlw0UXpCBuq3f9nJWEiu2z4H3LwS0KIYrWqNlHzeNAM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LDViCpCbRk7rn/hj6eAc0ua65YAETCwuya3/6e840pGe5t+tte2/B60LVBbG5yiDE
	 M5USLndQr94xclK4VGq+dI0S45rAWK9Lf6P0LpO3YHhh57rjlAJCq4eA1GdqX8EUmL
	 wse/37Ei6LED7vQY4FC8nUNjDnO6j/a8Sg4+WemySq8D6BSV4mctD/aqd6pqVAl2lz
	 fLLcCR49j66Aspc/EwhcnflXaaDsStgi4uA3Hff7oh+yDndog+Hxz/9AHTTMURAglO
	 2HXalWZNLDD6twl01W97zGT99x9Wv4Jc9OmErfql7I41v91KVcp7Jha0QVCPXYZeC1
	 2JMv58b8jGRAg==
Date: Tue, 18 Aug 2026 23:33:07 -0700
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
Subject: Re: [PATCH 05/10] usb: chipidea: msm: support the HSIC asynchronous
 wakeup interrupt
Message-ID: <aoVOI0euyCIZq9U7@hu-petche-lv.qualcomm.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-5-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb-hsic-v1-5-e5f93ea76ffa@oss.qualcomm.com>
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

On 26-08-10 18:42:09, Dmitry Baryshkov wrote:
> The HSIC instances of the chipidea controller runtime-suspend with
> their clocks gated whenever the bus is empty. HSIC has no VBUS-style
> connect detection: a device (such as an onboard hub coming out of
> reset) signals a single connect event, and if the controller is
> suspended at that moment the connect is never noticed and the device
> never enumerates.
> 
> The hardware provides an asynchronous wakeup interrupt that fires on
> HSIC bus activity while the controller is in low power mode. Pick it
> up as an optional second interrupt and attach it as a dedicated wake
> irq of the core device, so the PM core arms it over runtime suspend
> and resumes the controller when the bus reports activity.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/usb/chipidea/ci_hdrc_msm.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/usb/chipidea/ci_hdrc_msm.c b/drivers/usb/chipidea/ci_hdrc_msm.c
> index 3ab3daa78e34..e28ea87f9898 100644
> --- a/drivers/usb/chipidea/ci_hdrc_msm.c
> +++ b/drivers/usb/chipidea/ci_hdrc_msm.c
> @@ -4,6 +4,7 @@
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/pm_wakeirq.h>
>  #include <linux/usb/chipidea.h>
>  #include <linux/clk.h>
>  #include <linux/reset.h>
> @@ -173,6 +174,7 @@ static int ci_hdrc_msm_probe(struct platform_device *pdev)
>  {
>  	struct ci_hdrc_msm *ci;
>  	struct platform_device *plat_ci;
> +	int wake_irq;
>  	struct clk *clk;
>  	struct reset_control *reset;
>  	int ret;
> @@ -261,6 +263,19 @@ static int ci_hdrc_msm_probe(struct platform_device *pdev)
>  
>  	ci->ci = plat_ci;
>  
> +	/*
> +	 * The optional second interrupt is the asynchronous wakeup interrupt
> +	 * of the HSIC instances: without it a bus connect arriving while the
> +	 * runtime-suspended controller has its clocks gated is never seen.
> +	 */
> +	wake_irq = platform_get_irq_optional(pdev, 1);

You may need to consider error case:

https://lore.kernel.org/all/20260807065619.30604-1-phucduc.bui@gmail.com/

> +	if (wake_irq > 0) {
> +		device_init_wakeup(&plat_ci->dev, true);

USB wakeup may NOT the same with system wakeup, the user may don't want
USB event wake system up from suspend. You may consider the solution at:
see data->wakeup_irq at drivers/usb/chipidea/ci_hdrc_imx.c. 

Peter

> +		ret = dev_pm_set_dedicated_wake_irq(&plat_ci->dev, wake_irq);
> +		if (ret)
> +			dev_warn(&pdev->dev, "no wakeup interrupt: %d\n", ret);
> +	}
> +
>  	pm_runtime_set_active(&pdev->dev);
>  	pm_runtime_no_callbacks(&pdev->dev);
>  	pm_runtime_enable(&pdev->dev);
> @@ -279,6 +294,7 @@ static void ci_hdrc_msm_remove(struct platform_device *pdev)
>  	struct ci_hdrc_msm *ci = platform_get_drvdata(pdev);
>  
>  	pm_runtime_disable(&pdev->dev);
> +	dev_pm_clear_wake_irq(&ci->ci->dev);
>  	ci_hdrc_remove_device(ci->ci);
>  	clk_disable_unprepare(ci->iface_clk);
>  	clk_disable_unprepare(ci->core_clk);
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
