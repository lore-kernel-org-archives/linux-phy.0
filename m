Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07D38C5DF6D
	for <linux-phy@archiver.kernel.org>; Wed, 19 Aug 2026 07:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkc8isaoMobY7m+zHHjrvJrqQ+6dJOpv0pqFCE+6KQI=; b=c54t6Hp2jSV47S
	tj/6gQy+A7OZQCQv7NCQLRmNoe+F6BVHvt3ehDGfDXUYRXPKwF54xKs8WMTUk25wybfbCme28H1ub
	kzEzkdb4afjdNKhpiiacx7oa9XvPFn4q8xK/9/SrPceeMxfyptfr6J2dLjoR0Oz2SytRQWyCvebp5
	1uPFFiWuKXthpZK9UAhVpKXoEsswPr7TexMCnSqHDLpp8D1YmZro1l+Q9Thbel4TOXqiK+LOJfqbs
	zD5WYJ5MtY7tfETFqqMhmFkS4nyZZM79F7VQqXh0V54Ypz3oPFJTRzPRV9NOzmSGKP9RIO00a4wxL
	6iAhh2bH8NdlJVF4JXyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwajL-00000009C8i-1vId;
	Wed, 19 Aug 2026 07:28:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwajK-00000009C8O-0zJq
	for linux-phy@lists.infradead.org;
	Wed, 19 Aug 2026 07:28:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 44985601FB;
	Wed, 19 Aug 2026 07:28:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02BEF1F000E9;
	Wed, 19 Aug 2026 07:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787124537;
	bh=+c4hxv5iAZoAl6x2Vsz/LzNf0z4N+7E+7ULYEPv6Crw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KicRI9RGqR/qCu1MkdulTJy84Fb4AkP/xipZO2cpfo3I7e6tfyKokUDLhAh/XBKCw
	 jj/e9/Z8fAr9XTlSURXYW75ag1DZoU5eHVGKztMlL1JN9XA58o4C0glgmYD7lWKTh/
	 opmBGNch3Cp/opPlU/bv4dqToYYRnvENSso2o+fjLkPfLP3Mal8vncsCHL27uU4iBI
	 TfEGx7co+XwL26ILXaFHc1NViD4MQxMG+jkrXHH9NgwwHgggA57W/8opNpJ9Vz6GMj
	 ZKE8t39AUkdiv4/rXy3r0TyHSbOsvLAwdMxznYw4Wy/zDbBNts5MJwUq2e3r0i59ia
	 Z1lwBjtNRMVsw==
Date: Wed, 19 Aug 2026 00:28:54 -0700
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
Subject: Re: [PATCH 08/10] usb: chipidea: host: calibrate the PHY after
 starting the host
Message-ID: <aoVbNp0J2feQ3ezX@hu-petche-lv.qualcomm.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-8-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb-hsic-v1-8-e5f93ea76ffa@oss.qualcomm.com>
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

On 26-08-10 18:42:12, Dmitry Baryshkov wrote:
> Some PHYs need a final programming step after the host controller is
> up: the Qualcomm HSIC PHY latches the device connect at the moment
> HSIC mode is engaged, so that write must happen with the root port
> already running, or an already-connected HSIC device (the strobe/data
> lines have no hotplug) is never seen. The generic PHY framework
> provides phy_calibrate() for exactly this kind of post-init fixup and
> dwc3 already calls it; the chipidea host does not, leaving no place
> for such PHY work.
> 
> Call phy_calibrate() once the HCD has been added, next to the existing
> i.MX HSIC active-event hook which serves the same purpose. PHYs
> without a calibrate op are unaffected.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Acked-by: Peter Chen <peter.chen@kernel.org>

Peter
> ---
>  drivers/usb/chipidea/host.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/usb/chipidea/host.c b/drivers/usb/chipidea/host.c
> index ced6076a8248..62bb2999edb6 100644
> --- a/drivers/usb/chipidea/host.c
> +++ b/drivers/usb/chipidea/host.c
> @@ -15,6 +15,7 @@
>  #include <linux/regulator/consumer.h>
>  #include <linux/string_choices.h>
>  #include <linux/pinctrl/consumer.h>
> +#include <linux/phy/phy.h>
>  
>  #include "../host/ehci.h"
>  
> @@ -192,6 +193,9 @@ static int host_start(struct ci_hdrc *ci)
>  			(ci->platdata->flags & CI_HDRC_IMX_IS_HSIC))
>  			ci->platdata->notify_event
>  				(ci, CI_HDRC_IMX_HSIC_ACTIVE_EVENT);
> +
> +		if (ci->phy)
> +			phy_calibrate(ci->phy);
>  	}
>  
>  	return ret;
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
