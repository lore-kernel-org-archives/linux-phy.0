Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C28A4ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yu81lkDy5qhEs03NJrY/OC11dZ9JRB93+f7k3Rnrwrc=; b=bmu1BkRAqHAQor
	prbA50+lTOX2Y5ve1T6/OVJYoCeGlf+aRaUpa+odOZS8dKK9yqrBSYIFO6snhFTf4gGRWjo1oSZE2
	Qlr8TVLadRbOynOJuOFOeh8hGwS3giZ7eqVWQNqK0ewcwgi6rsYu8bvGfllrYvx2r47nvVtry8dGi
	h5QlncJe7T4hfERb+LXcCz3eYJdRIRI9uNGPYO3T/jkAVYMGkknVFEhcr4Hq6jpUVdv3Lu28XHdnR
	tGG5z+0ZgT1eh9GhK0ilAvak2++PjUTG8MCfatpxNPzyTV49v9d4HfzHl0Cef8fgk9bonJdXVIP5C
	XrV7Z/Cp0HG7iMSn8BdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaHU-00F3Ag-7z; Fri, 09 Sep 2022 09:26:36 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaHR-00F34r-8l
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:26:34 +0000
Received: by mail-lf1-x135.google.com with SMTP id f9so957931lfr.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=JjJ2bXHWNy1h23bWYiukTnz4zT7qJyO8e7mPmA7xDqw=;
        b=okowFfxwkVz+T51v63z85m1dbtbd+lvWkXHquv2G6Pf1OfM7+VVVn8XYPkY9btaZJd
         /PO4lpqgAmAsoU+CeIqde3VoemznHwCHfPAexRT2lkuzMxU9dLdyTwIDQuNnXo5C56xs
         17aaMcCog/sUD3EyDhUNFOJ+eqgVkH1SFI1TJ4pcruje6kbs9t/qpS/d7Mpjfnp1XUG9
         QHfuutZTuJqHjNCFfDz0I4EOaGB4BBZWiExicxJLvVjJ1fHndBnZLeIISx6vweLSLs+Z
         uhjzbBX9tH9lRNMvYs0VzEpn0CnPiYFUX+3wy39Q1oCyE9dbpDFfKWirRPcbgqeq2Zfi
         f2zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=JjJ2bXHWNy1h23bWYiukTnz4zT7qJyO8e7mPmA7xDqw=;
        b=U4Sg5tjKBXP3mCKY6/uqntzb1kI0nKIlBV9q2QP0Q1XH11cTIs6CiIiYLYpU8m9oan
         V4fmWXon04lu25Fwq252KgRUJCVPVH74LzCdzqdK8SdoOsM9dhcB9OBkigXGKWfAyN4S
         YwahgiYmPYdEHsMz/NvFSz6AAOzpsf5aLAgvhImVsfNrycqanM3kJhjBv1HGFLParAMT
         4oioEJxrRIHpUpZ9coBB5MGdpKOAbV2IdJQLCDe778pn0bi4fGn4nl1yvnaJA1jSA3nL
         cy9iyciAUuKUeFNBxHfQ6RZSN2twDa6FE9VnmaxDu2ckMJOzwWl4xb0uLAbNCkGEQd/n
         nVEw==
X-Gm-Message-State: ACgBeo3Y1C3Tg4YqjV7LrKCi7r2mKVVgilw53xno5VX1np3Q5n74VJU2
	6LfwgC4HAv2BSFOS/A10uouvOg==
X-Google-Smtp-Source: AA6agR5Y1MFRwzKmNwuArQtFnCj2umTMcyMQc2YMMzOZ5vT1WO0wVcRNIHCDqKKHxXoM0jlN5/X5Pw==
X-Received: by 2002:a05:6512:903:b0:494:a3b9:8022 with SMTP id e3-20020a056512090300b00494a3b98022mr3882789lft.288.1662715591530;
        Fri, 09 Sep 2022 02:26:31 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z17-20020a2e4c11000000b002682754293fsm10833lja.1.2022.09.09.02.26.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:26:31 -0700 (PDT)
Message-ID: <167201e9-b9dc-5dca-ac37-b0593974ebc8@linaro.org>
Date: Fri, 9 Sep 2022 12:26:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 01/16] phy: qcom-qmp-combo: disable runtime PM on unbind
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_022633_338035_8D4993F9 
X-CRM114-Status: GOOD (  16.72  )
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

On 07/09/2022 14:07, Johan Hovold wrote:
> Make sure to disable runtime PM also on driver unbind.

Nit: technically the subject is misleading: you switched the code to use 
devres- helpers rather than manually disabling the runtime PM.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> 
> Fixes: ac0d239936bd ("phy: qcom-qmp: Add support for runtime PM").
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index af608c4dc869..9ce2ab56be4c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -2930,7 +2930,9 @@ static int qcom_qmp_phy_combo_probe(struct platform_device *pdev)
>   		return -ENOMEM;
>   
>   	pm_runtime_set_active(dev);
> -	pm_runtime_enable(dev);
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;
>   	/*
>   	 * Prevent runtime pm from being ON by default. Users can enable
>   	 * it using power/control in sysfs.
> @@ -2987,13 +2989,10 @@ static int qcom_qmp_phy_combo_probe(struct platform_device *pdev)
>   	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>   	if (!IS_ERR(phy_provider))
>   		dev_info(dev, "Registered Qcom-QMP phy\n");
> -	else
> -		pm_runtime_disable(dev);
>   
>   	return PTR_ERR_OR_ZERO(phy_provider);
>   
>   err_node_put:
> -	pm_runtime_disable(dev);
>   	of_node_put(child);
>   	return ret;
>   }

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
