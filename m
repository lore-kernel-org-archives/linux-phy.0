Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8993C7619A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 08:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNOl7ZHDrOgXLrPKPmgstP0mLeasDeckkEnta+ixc6k=; b=axpmRa9icBjwuZ
	H98i5k7sjM0cbw/B845gp2ZrjWqseHvVLgg5whjNod06+wrisahwD6xVb5TF0UVmy/4ax+07v+TVk
	ycJQDJ+UjgQecoB4bvqE6yTuBCIDUUOziRQJ8sSdMKXam3I9zbGHMzS91A+rIyErDT3TyAMmvMISy
	DGVf2OtmNZ9k7emAFO71VdQtQAfpqKo/tMgZ1bvZc510jfwUSoCre7APb69ubGF7hcuqmhzSl4RRe
	g4UNJRQ4Se6ePQX2VQ/dIO05zXJiID/1drupfSDkPOxjfQqVRl+U0VwsIu02hcgCt3/f688aR/eAa
	4bT+HkjSf2kXLZY5+PoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghsu-00AAc0-1E;
	Mon, 27 Mar 2023 08:07:20 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghsr-00AAb1-38
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 08:07:19 +0000
Received: by mail-wm1-x32d.google.com with SMTP id p34so4482764wms.3
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 01:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679904436;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=w3BXJHRqLhTTME/YDrOdZdEXqG+CJPYxx5M4Us1a9r8=;
        b=M7EYQ6MtqtfRW3p5L7v+qmSOoubmRqT0HBtgywY/4G7eXviMq5mFf9JKzwgrLJUFLe
         gKLYFK4QcqaCgGhOoUOZF10F2qXh01NnYueFGJMV4UuDdP9zPYi/eQlCcIt+BCjn77iV
         7vbsQppjLuQ30irT+gWKb8y7Wd8EWUXmljL4ysbZgH+i+Zs7uUK2YOo/SAAy9pwgeqjS
         z+onuVvomwWMTBuo5ZkOBznqklP9KWlx3I09/vuAm2rhGJ7c5JrX6ZggDpnKSwtDBBQV
         8xxmCKMbRTJMSaRBLQk4mRKi2sUP/6LJ2w5chWCKKwqUwptFypT0ijHRuOunaju7gRj2
         uxbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679904436;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w3BXJHRqLhTTME/YDrOdZdEXqG+CJPYxx5M4Us1a9r8=;
        b=5HUphKSBArpyH3eTs5VFpZV2TEl20JLLmwkVsYY8qHGAS9YNaDZJtzfFNSdCOUYKau
         iOA/Y9sOQm2JJbR8NpSHPoEVITtQbugGrq5DES6LSTNZ3Atkm9/7YhNqz3xRbXGBIyyo
         TvMUQ4NHPGlU2QJSzsL/gNJVqYzCYC0Ov484KrnBfJXbvIJuivM+IllujUyrDFWb2nTx
         Oh8pyhfAHBfDsLZBut4vcsvC/t6GBpscPzMHg29ivGDawiVISJlww3PRQpISjSo8YsgN
         A9QEKQjp1FTol5j1zWWDtxAJFImHssm4MJv1qeFAJTH/tMOWRQUG4nJuQzrirdwmIMCj
         cSPA==
X-Gm-Message-State: AO0yUKV+FJv5+uIcncyQhlRyYH4wliyz4eVZoW2DMcnYSJETk91iC4A2
	ehlZpiCrEX94RZdntP51oMnx/g==
X-Google-Smtp-Source: AK7set/oJ1SVfTGrAElXRaKQMglzcGmkyA8aUaIdAlnAZFEUMz07Qbst+rFKA+ELhcPXxRVjFbQ+8w==
X-Received: by 2002:a05:600c:204:b0:3ea:d620:57a7 with SMTP id 4-20020a05600c020400b003ead62057a7mr8933124wmi.8.1679904436573;
        Mon, 27 Mar 2023 01:07:16 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id j11-20020a05600c2b8b00b003ef5b0a533dsm9076532wmc.47.2023.03.27.01.07.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 01:07:16 -0700 (PDT)
Message-ID: <005b7c8a-4f2f-539c-a9ec-b5f022839bd3@linaro.org>
Date: Mon, 27 Mar 2023 10:07:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 4/9] phy: qcom-qmp-combo: add
 qcom,sc7280-qmp-usb3-dp-phy compat entry
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
 <20230326005733.2166354-5-dmitry.baryshkov@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326005733.2166354-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_010718_008511_FAF123B9 
X-CRM114-Status: GOOD (  12.71  )
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

On 26/03/2023 01:57, Dmitry Baryshkov wrote:
> Add separate device entry for Combo USB+DP QMP PHY on sc7280 platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 5ce68d211998..8fadf92095c5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -3431,6 +3431,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
>   		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
>   		.data = &sc7180_usb3dpphy_cfg,
>   	},
> +	{
> +		.compatible = "qcom,sc7280-qmp-usb3-dp-phy",
> +		.data = &sm8250_usb3dpphy_cfg,
> +	},
>   	{
>   		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
>   		.data = &sc8180x_usb3dpphy_cfg,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
