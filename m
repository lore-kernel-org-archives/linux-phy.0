Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E87B4C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2t3OJWrbd9dyC14kUo39jn5kVet7QnYA7/HnB1QdG9o=; b=1FC/Xlg923H2pY
	OEHArHYSHpyWYeaPfGwThQN2qNBPIhQfTdYiQjvYqmuxDW6ZorPz1DoRv7/i9yoE02dcbN2hpd9TR
	y4qA6w9uhY4Wu9GUCSI+NrO35Pks64p+8OlMFBmunkS3TsbAu4EMH2qG+Mep3pY6fbtKWpHRCPUov
	T/P7Eq+njVsRRTPSWSob4Ty6j489OfSII7Ms29Gjkj+TN1K4/xt1s4/3le9N0tCk46EuannO1HzEU
	gO6kGxiPbj22spS7O0rQU3IQdydAY1zFANHlz1UrAb6FdvTjidThFwKafnhkCNVHcEGre0kI5pS7V
	ruwwTRCX3hknWdsVVeNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvDX-00CtM4-1X; Thu, 14 Jul 2022 09:33:07 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvCN-00CsLh-Bp
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:31:56 +0000
Received: by mail-lf1-x12b.google.com with SMTP id bp17so1855261lfb.3
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PMZaNjQtAbx8J0mKRSpXwktuMPwXaREJXWQ/VLykmlA=;
        b=CV/iF5PngbOmaQbK3ZOIIcJ9SkDO4TLcvHWghMhvpmE5BTDLqPUTFdvd0hSXgVQ174
         WV47TTX/ZyVZ8aP1Hmx+EUVcDNTW5QVHrOsh8CU+7tZ0Hhm9jc1Vbw6/+py2Tqsdz5f5
         AK/ChQhXHfqBx5I6jO3qkMqAvOY1uaMH92HWBnajolSa4s24wa8KnV1QYZ4aqvGkLS+n
         ZH0ZkcVOzgDNBUMtHwGdRiai9nC4NZ9c54hWxZDofGgx97xREC/MYbpwtTxmcDx9Fr4h
         j7ry1oGVBkEeMedlHOfb6ugnqwjr+DgglfIMi0/JHz5X5biUsDMhreLIUrraAUF/nMoE
         PI5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PMZaNjQtAbx8J0mKRSpXwktuMPwXaREJXWQ/VLykmlA=;
        b=NwJaYYlJ1C12sT+/wcWyvoOh79snLlgIY2iZDVLlk1IcisVJTHGXqsNBWGVgKrR3MH
         ge4tCoNdkBw5GpPvtArchY7wCFtOnDJ1YPrKZI/jeBL8W/QHdVW8B9qCIDeTkXH8fhRn
         qsbr7YH0VAoOW1XjXlhAKIwkjVfAPm7CraBk0/Z925I0a9GOd7hauqiQeptEEbZW+WkZ
         Aue7/cOr9Q3xDxc26FNkIWo4R49gjaqY1ufCl2Z3yqKNjiFjUHbcZ29FEn2Sn/l7Dhtb
         Wo98VrN2xbbT3DEiquYFMIEvAKR6PHKcvbG92X2v877MBr/fKcUGJ59oOu6/ICM9zCzM
         eZJw==
X-Gm-Message-State: AJIora9BfYYJBl6tG0kDOmFcd6USuuXtTZrXMwO0kEPJGVtXPk0d6cfC
	JYWUHwd4UfJ3jdA8Mb9Npa6P7w==
X-Google-Smtp-Source: AGRyM1sj75WrIm4R5Qs3nZKUQGBZwT2cTSTGxK9L3cPa36VVhOBtfYdLvyXmgesp8yOvZ0gQtlHQoQ==
X-Received: by 2002:ac2:42c5:0:b0:489:ce27:a777 with SMTP id n5-20020ac242c5000000b00489ce27a777mr4692866lfl.596.1657791113767;
        Thu, 14 Jul 2022 02:31:53 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id y12-20020a05651c106c00b0025d53e34fe7sm187744ljm.56.2022.07.14.02.31.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:31:53 -0700 (PDT)
Message-ID: <40a60647-01f2-1e3f-88aa-8625903e1081@linaro.org>
Date: Thu, 14 Jul 2022 11:31:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 29/30] phy: qcom-qmp-pcie-msm8996: drop reset lane
 suffix
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-30-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-30-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_023155_465899_3B47BF85 
X-CRM114-Status: GOOD (  16.92  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> The lane reset is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the reset name.
> 
> Update driver to support the new binding where the "lane" reset name has
> been deprecated by instead requesting the reset by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> index af2f14a53b38..1734fb01955a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
> @@ -909,9 +909,7 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
>  				     "failed to get lane%d pipe clock\n", id);
>  	}
>  
> -	/* Get lane reset, if any */
> -	snprintf(prop_name, sizeof(prop_name), "lane%d", id);
> -	qphy->lane_rst = of_reset_control_get_exclusive(np, prop_name);


I guess prop_name variable should be removed here.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
