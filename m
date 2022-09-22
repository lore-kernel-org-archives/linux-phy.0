Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F96AC54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 12:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tHFC8U1VAjNuza8TUMrLciBckL8GIYUixiWbmmJg9BY=; b=FJVbJWA0H/3sA95wKne3QzQLye
	IiEoMVcOJMkd6uz3aE5juaxjsW1RM34Ll0rstdWW4Rc9CkYxl1PGTXyADow7pxe7FL3Lsmy2gh7ey
	slrwYMqP6X2qVk3W3YQ+SUt5g/EnZNKFUSg0lcSgVEQ2ngpCHlEfP6RwOFxWr9NFx0zHY7LH4jFA3
	aWFex+tLMOCHt7aJsrWPMf8qncUSsyPhTSojGSkehqVfV2eTXZiljYnGTsrasLXOOFFwAXpORABbM
	0LxNmA8TlJQN/nAgPJpoaxFHRZs6bKY6ZS37XhN2wxcB8eVnLVARlB8+gQOqmkXI3kapyrl99/gpO
	VsVZGUPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLeN-00FTDW-Um; Thu, 22 Sep 2022 12:49:55 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obLeK-00FTBA-Ta
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 12:49:54 +0000
Received: by mail-wr1-x435.google.com with SMTP id r7so15415838wrm.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 05:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:reply-to:from
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=cYAVsAB50QNWUBHodvSlZMG3l4X65go68Bfx5yHoWV8=;
        b=oXbQu/tR/L9tnDkbqGc75Kdoz0HuYgViniy9jyakVAsj16zS0R1sZPjIW5fFzAD3nM
         gEEH9CNYQP5DqxJPYr7RhvlOSjegJKJHA5NfHSqsmFiLIbyS9Npw3QvXocFA1uxRIEcK
         lm5OA/bsr5hg4aKjY4+zyKZyoQUnGxi0Cr/D/w2vzjDj+6ARQaBC8QmbvjzAmkLGfp6w
         k5rO3ywTdZ/9l1luw+6O3ybnyWNc5ZciRraeXdQLp9xV9dXwOnp2ii1jG8wJdG+Qy8yP
         2ZbDLnaCEaONVOt4KBiz2bUqQviEt5fXlezh6gh7CxeeIV2HyBObB1wBWxRqEZUUMvK6
         eVig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:reply-to:from
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=cYAVsAB50QNWUBHodvSlZMG3l4X65go68Bfx5yHoWV8=;
        b=tZCeCdXG26KjrnLKqvOZdN3aXk5kcJfeG4ZTAzK7nkoglR4GokM4+CrtYxYKxgS3Gk
         kxXVCpclfnIi2EUAFr5xjWays1yvq8sHG8wEkKzZ7MiFJT7sA5r+hvUJkgui9pDoW0iH
         1x2cNAFoA/bbFH3qO5Tzkga8g9aUhMRuijuKdbUr1DCHW777W7Nu2cR/i/ACB76iA9+4
         JMtFGAIzVZNPasM63+BntFTQ+yWfi90egtJEZ/gccYaU7ppV8UNF7W+woXKhEWANVa05
         x36dasMhgfpVyYbWoVqdKVus7jdcqdCB6V21gwYYyRu5gRJyp+5Q8ROokNkGS7E6X077
         n0ng==
X-Gm-Message-State: ACrzQf0BaqH4HcLiRFllZ6e4l4fh6uz0sAA2UuqevCOmELJu60s3nEMh
	VPTty44j/w5Qn5c+1kzQaxd8ww==
X-Google-Smtp-Source: AMsMyM7+jIq9BvpGJpNvPsQdjp+qir6rm1r9/fmP+p4ais3TtDbcBHtvcqDMWkNB1yejiZUTWt2q6w==
X-Received: by 2002:adf:dc4c:0:b0:22a:42eb:1e34 with SMTP id m12-20020adfdc4c000000b0022a42eb1e34mr2007734wrj.258.1663850989099;
        Thu, 22 Sep 2022 05:49:49 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:6aa5:ee77:c3d6:a9d6? ([2a01:e0a:982:cbb0:6aa5:ee77:c3d6:a9d6])
        by smtp.gmail.com with ESMTPSA id g18-20020a05600c4ed200b003b482fbd93bsm6959952wmq.24.2022.09.22.05.49.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:49:48 -0700 (PDT)
Message-ID: <3801e9c9-20a8-066b-e55d-6ecc520c265f@linaro.org>
Date: Thu, 22 Sep 2022 14:49:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 6/7] phy: qcom-qusb2: Use dev_err_probe() to simplify code
Content-Language: en-US
To: Yuan Can <yuancan@huawei.com>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, kishon@ti.com, vkoul@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220922111228.36355-1-yuancan@huawei.com>
 <20220922111228.36355-7-yuancan@huawei.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220922111228.36355-7-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_054952_987804_A0EBCCB5 
X-CRM114-Status: GOOD (  18.12  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 22/09/2022 13:12, Yuan Can wrote:
> In the probe path, dev_err() can be replaced with dev_err_probe()
> which will check if error code is -EPROBE_DEFER and prints the
> error name. It also sets the defer probe reason which can be
> checked later through debugfs.
> 
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qusb2.c | 27 +++++++++------------------
>   1 file changed, 9 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> index 7529a7e6e5df..2ef638b32e8f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
> @@ -973,20 +973,14 @@ static int qusb2_phy_probe(struct platform_device *pdev)
>   		return PTR_ERR(qphy->base);
>   
>   	qphy->cfg_ahb_clk = devm_clk_get(dev, "cfg_ahb");
> -	if (IS_ERR(qphy->cfg_ahb_clk)) {
> -		ret = PTR_ERR(qphy->cfg_ahb_clk);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "failed to get cfg ahb clk, %d\n", ret);
> -		return ret;
> -	}
> +	if (IS_ERR(qphy->cfg_ahb_clk))
> +		return dev_err_probe(dev, PTR_ERR(qphy->cfg_ahb_clk),
> +				     "failed to get cfg ahb clk\n");
>   
>   	qphy->ref_clk = devm_clk_get(dev, "ref");
> -	if (IS_ERR(qphy->ref_clk)) {
> -		ret = PTR_ERR(qphy->ref_clk);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "failed to get ref clk, %d\n", ret);
> -		return ret;
> -	}
> +	if (IS_ERR(qphy->ref_clk))
> +		return dev_err_probe(dev, PTR_ERR(qphy->ref_clk),
> +				     "failed to get ref clk\n");
>   
>   	qphy->iface_clk = devm_clk_get_optional(dev, "iface");
>   	if (IS_ERR(qphy->iface_clk))
> @@ -1003,12 +997,9 @@ static int qusb2_phy_probe(struct platform_device *pdev)
>   		qphy->vregs[i].supply = qusb2_phy_vreg_names[i];
>   
>   	ret = devm_regulator_bulk_get(dev, num, qphy->vregs);
> -	if (ret) {
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "failed to get regulator supplies: %d\n",
> -				ret);
> -		return ret;
> -	}
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "failed to get regulator supplies\n");
>   
>   	/* Get the specific init parameters of QMP phy */
>   	qphy->cfg = of_device_get_match_data(dev);


The error handling of devm_reset_control_get_by_index() could probably
be replaced with dev_err_probe() aswell.

Anyway:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
