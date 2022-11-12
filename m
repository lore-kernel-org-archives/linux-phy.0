Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37C6AC43217
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 11:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B9cfLH+CMD9LxdzNudUrA+1mAwN19uE4mLf1mKDbgVI=; b=RkfCZeunSOU12j
	KPvxg4wu2e5MOkkE2wTkLyTvJRgneiakVHCq4P+DqbccW2sOysdBnbJJAAZbaNfcUJmeYzZJmtWkS
	Bt1AHwZkKrkhyVVRhVu/c0SMwnf3gOZqKuj22TtNP3ffgRfNTr2sgzgca+J4p+je3kbswql+7lzUR
	hJ8HNG04Gp8MI3m+nl0s+dpSUHBVOI34xjS/fZszD0EFqvD+/sOq0AfK1Peu5CGr1s15//++1sIgK
	GN/CXrkIS2ZVOhz716uQPdNRqQ0adZddiBp6Qz1nqVbhTQ2nsVLLt2xmnofxD9aPRCRBuAoF8xIn6
	bWOSzVqJplm80LZoZTUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otoTf-005HTC-BZ; Sat, 12 Nov 2022 11:15:11 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otoTc-005HSn-49
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 11:15:09 +0000
Received: by mail-lf1-x12b.google.com with SMTP id g12so11960429lfh.3
        for <linux-phy@lists.infradead.org>; Sat, 12 Nov 2022 03:15:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BP3HObLwfnQ6Z033Q/+ZsVYc5sgYgaxGGPnUH0Zg5Zg=;
        b=D9CjHXdC2dDtUGwfpFzrppKqh3FCN2xg3+eiugFIqSdPBMtIc/ZqtiQB6wIv+N6xo2
         fZRQ+OuQe7PNEaUQpRysJSHHCAF9tNIaMcmX+ndioHtqTedd10nfELorFV09fVegr3RU
         Z/+e1A3R3yW2kBiCKb4Tmi8nuBdzqHDnryaVBur52TP1G+0Xs3r7LkonykEJrlDdrVAL
         rS7/4nynNZpQZ3Gu710mccDL0ejFyR6otdDdRcdpvyIY7mt6a5yd60qFJvKaI0AUnare
         6PpX+SuzJjr76KOG2SIIU4rpaAZiU1AuwlPQQFanB1+W25Ddi0gfPFdpJr9dJIglvHmm
         F5mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BP3HObLwfnQ6Z033Q/+ZsVYc5sgYgaxGGPnUH0Zg5Zg=;
        b=uAShvnjR2Nb2MUmrV4SWKAH8SeLLf7VL3/KYOTwVInXSrK4prAsdI2vIJ9Ycpc7IL/
         Wm1j7bJHSAoAsuiHgDVOaxGv3py7aexvuRv1draY3xUIkZr60uC1vBr+sMcSYYok2/1U
         sAHbYJU8IdgEq/F8uMk3VxgRnqWkwrKtBYQx9KnZo/ZtXUVEmOnLppLpvf7Uz8s15xgd
         zo93IUPMLCJ/agRvTOi/yPXKmssAnkdn2931btA2vMplI4BCisQQuR0bOuT5YEU+7iRw
         ktBr1p32FI6HE6/tTgS/zISEL22oA8p1oL+36b+oAYdMba7jFIrLr5611Y8jUvizGgkm
         eBTQ==
X-Gm-Message-State: ANoB5pmqc2aOiAHe1hyVM//5pqv1su6dyYBP3ghrcIVlSnwFVLP8HM93
	WfRDAa8tZVC0blhs5L4TQQ8Zcg==
X-Google-Smtp-Source: AA0mqf63YnUBeua3mL7qR3PkxrkqtWWRHuxK7R+CfBrmhjcm4iJJ/tIaUB+VKUkYN7sx1ncWqJ7fvw==
X-Received: by 2002:a19:5016:0:b0:4ad:5fbb:a5b0 with SMTP id e22-20020a195016000000b004ad5fbba5b0mr1832416lfb.466.1668251705808;
        Sat, 12 Nov 2022 03:15:05 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u19-20020a05651220d300b0049462af8614sm823974lfr.145.2022.11.12.03.15.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:15:05 -0800 (PST)
Message-ID: <9c94f81c-963e-d1a3-6514-f803bb7e05fa@linaro.org>
Date: Sat, 12 Nov 2022 14:15:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 05/14] phy: qcom-qmp-combo: register clocks sooner
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-6-johan+linaro@kernel.org>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_031508_230584_08234117 
X-CRM114-Status: GOOD (  16.14  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/11/2022 12:24, Johan Hovold wrote:
> Runtime PM should be enabled before registering the PHYs, but there is
> no reason that the clocks can not be registered before enabling runtime
> PM.

This will have a side effect of DP and pipe clocks not using runtime PM 
during the clocks operations (see the code handling rpm_enabled in 
drivers/clk/clk.c). If this is an intended change, it should be 
described in the commit message.

> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 1bc8567a8605..1a6aa61a12c5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -2642,6 +2642,14 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   	if (ret)
>   		goto err_node_put;
>   
> +	ret = phy_pipe_clk_register(qmp, usb_np);
> +	if (ret)
> +		goto err_node_put;
> +
> +	ret = phy_dp_clks_register(qmp, dp_np);
> +	if (ret)
> +		goto err_node_put;
> +
>   	pm_runtime_set_active(dev);
>   	ret = devm_pm_runtime_enable(dev);
>   	if (ret)
> @@ -2652,14 +2660,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   	 */
>   	pm_runtime_forbid(dev);
>   
> -	ret = phy_pipe_clk_register(qmp, usb_np);
> -	if (ret)
> -		goto err_node_put;
> -
> -	ret = phy_dp_clks_register(qmp, dp_np);
> -	if (ret)
> -		goto err_node_put;
> -
>   	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
>   	if (IS_ERR(qmp->usb_phy)) {
>   		ret = PTR_ERR(qmp->usb_phy);

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
