Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADFD0C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEEv3In05k3V3Aqkpb+pqQmpga5MvwDnR16el1WCwdk=; b=UjSg+AZA/kzlwC
	ZwI/broP4TWjjZMB2p2MIORTbeN2PMaN5P5OakN+Sm/6+eugJLF+J9V0Yy+O2i12gWONuiKQ2p35h
	BUgb8jtknAnJmsWYsNa8Rv7BlWF0jrk9jjKpJt7kDP/2pFAt0RPBxcIcnvYiORnk9C5Ehr4JHGqP4
	0iio6/Jl8F8Ix0otGEO6+WiX85ebBQSd6uA1cyRZj3zOqkZThSLGlTMN1k87EbEa/JHhfh5DZzNAy
	RxFaTOZ9gdgmQObQVWh2CLomQsuJcGMdR8GAHfI1AR5smIPZYJ0xUf7nIoCWBjrri53Q4u1MaewQy
	cf30dGum5hWFSC/92SNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadKf-0046Fo-0f; Tue, 20 Sep 2022 13:30:37 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadKc-0046CO-E5
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:30:35 +0000
Received: by mail-wr1-x430.google.com with SMTP id t14so4284866wrx.8
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=XLxjCK1UrYCEX7pcRlMkQ0jqY8Ny3pjRnQ4MiYRMmGc=;
        b=NK2Oy+tzNmW0Z0DQa5UKF/e2pj9fFX9OGHvrWk7x696wpkkn2l2T1KbCkWux41Zkco
         GCKNjtyNmTq+jrWWpZ0+/nRAjHICJ/12WhhToJoctEKsZ8iRXz/SrOte8WIYZ9QV/OuV
         RA2/XT85gYr0p89WonCHF1uuQoQd0iQFBD0/4Z71HFIx7baxKce+lVlxzF6MaajfTh/T
         u53scWLTA9g1eAlhOl7Hf7dGqGE3TRTr3XiKLQ6QV5HPhKijceuzphGZZMHNaHpOuccL
         wm6Q35jLqNE3vsLBOJCvmU0rClqWQMpDwUhmOT2C16rNsykgtZw0qwRehDDJ0mIUHw1b
         MuGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=XLxjCK1UrYCEX7pcRlMkQ0jqY8Ny3pjRnQ4MiYRMmGc=;
        b=X0SPNfV2D3zbi6oj7yRbNMZVXmA4faEDiOylwypawVK/GI+ww0esems7MOd7TONWPo
         zdSge0+MkENSLDQJLXz7w2Di21PUdSkX+VbcCJMXYfPtxrivV27eLfiOW/IhmEUaIABV
         cbNncsFfWZl12sbmWU4qoHxHwmiXuNMrpaVZVirRXzHPO1EkDvuKbzh42371pyY3oxsl
         IbFDpguciZhV7Tgs35zstj54/+X6ENNZe1h+8mw/iDlunH+BeQ3hVLFYh5Y4qsi6Sywb
         DC03I0PpHxPcPLWz6NVcIHR9t/4KjXZcqvJ4wMh59FJq6wgfAaEuH0E/tvJWWxikJ2yD
         7k1g==
X-Gm-Message-State: ACrzQf3gT03m2m9U5Yp8iTB9iRJhJu8C2ieOO/sw8xLJ9lX59e8cu8z9
	9nY+IIBT9Z1ykBYL9Waug0riGg==
X-Google-Smtp-Source: AMsMyM4rDJ9Ph6SYonLeoLqOVQkjtcIXLs9X97QpO0G9E4099LrQwE+woqtN527kN7WDVD9ZZDoZoA==
X-Received: by 2002:a05:6000:982:b0:229:79e5:6a96 with SMTP id by2-20020a056000098200b0022979e56a96mr13814135wrb.469.1663680631063;
        Tue, 20 Sep 2022 06:30:31 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id j26-20020adfa55a000000b0022afddab5dfsm70082wrb.7.2022.09.20.06.30.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:30:30 -0700 (PDT)
Message-ID: <5a10b8b7-3881-2f31-5a79-ddef9798184d@linaro.org>
Date: Tue, 20 Sep 2022 15:30:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] phy: qualcomm: call clk_disable_unprepare in the error
 handling
Content-Language: en-US
To: Dongliang Mu <dzm91@hust.edu.cn>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Vivek Gautam
 <vivek.gautam@codeaurora.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>
Cc: Dongliang Mu <mudongliangabcd@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220914051334.69282-1-dzm91@hust.edu.cn>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220914051334.69282-1-dzm91@hust.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_063034_529153_EF4EE219 
X-CRM114-Status: GOOD (  17.46  )
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

On 14/09/2022 07:13, Dongliang Mu wrote:
> From: Dongliang Mu <mudongliangabcd@gmail.com>
> 
> Smatch reports the following error:
> 
> drivers/phy/qualcomm/phy-qcom-usb-hsic.c:82 qcom_usb_hsic_phy_power_on()
> warn: 'uphy->cal_clk' from clk_prepare_enable() not released on lines:
> 58.
> drivers/phy/qualcomm/phy-qcom-usb-hsic.c:82 qcom_usb_hsic_phy_power_on()
> warn: 'uphy->cal_sleep_clk' from clk_prepare_enable() not released on
> lines: 58.
> drivers/phy/qualcomm/phy-qcom-usb-hsic.c:82 qcom_usb_hsic_phy_power_on()
> warn: 'uphy->phy_clk' from clk_prepare_enable() not released on lines:
> 58.
> 
> Fix this by calling proper clk_disable_unprepare calls.
> 
> Fixes: 0b56e9a7e835 ("phy: Group vendor specific phy drivers")
> Signed-off-by: Dongliang Mu <mudongliangabcd@gmail.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-usb-hsic.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
> index 716a77748ed8..20f6dd37c7c1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
> +++ b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
> @@ -54,8 +54,10 @@ static int qcom_usb_hsic_phy_power_on(struct phy *phy)
>   
>   	/* Configure pins for HSIC functionality */
>   	pins_default = pinctrl_lookup_state(uphy->pctl, PINCTRL_STATE_DEFAULT);
> -	if (IS_ERR(pins_default))
> -		return PTR_ERR(pins_default);
> +	if (IS_ERR(pins_default)) {
> +		ret = PTR_ERR(pins_default);
> +		goto err_ulpi;
> +	}
>   
>   	ret = pinctrl_select_state(uphy->pctl, pins_default);
>   	if (ret)

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
