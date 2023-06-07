Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A48ACC7EE23
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 11:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xAtxCvXsxtiq8rh32cHo1b5js+RFwIvPHkMRBuqcSlQ=; b=mPzp1xL7FkJOMw
	G78DqV//VGPPmuU3tGKa8F296xmTpW5fC4FR1ak17SNyliRXZl9driUiz/0087tt+gI63yqBKYUiL
	U8X9m9bKWV3ZC4bn7LAKehekwaBDg6rSp1I8cS8O3MgYACEOKGkOB3Eh526V8lxRFJbMUfBkHeUsj
	qlemdyiKOReWnKiJvgVtlY4iq8Iwo+kDPzhCY/JM05J2dEP++21X9P5JIMur5JH8r6D5BSBH2T8eF
	q3/W7zbZGN/SFrdJmhIFXfUB2NfZ9BlUJTBr0iIMy+XfOeEOBz4dWOBeXANtZQ3svEJqaDJgNDfzA
	ZbNuyJYdKac3NRfG9MlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rkX-005hyZ-12;
	Wed, 07 Jun 2023 11:54:49 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rkU-005hxG-2E
	for linux-phy@lists.infradead.org;
	Wed, 07 Jun 2023 11:54:48 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-973f78329e3so1178756466b.3
        for <linux-phy@lists.infradead.org>; Wed, 07 Jun 2023 04:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686138884; x=1688730884;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cMpYnd8K0KUjk943ETGb3pgLuWnp+NjqkKVfYBnfUjc=;
        b=TvREFw8JmP7lNGG8Jt6YNMWuPvV8RkGsW/J3WtZVYPljX9xDYCUe1KvYqrloXDZ5+J
         rsISilWx+sBnTrlQQI7B3UyBlAwoNC0AljGFxfFqge5LFrrLhoqKZlWTvylcV/HJoqZy
         1AtYnLkmzL1jEPoMHO7GNxWepy7jWb+1ChIQPxo0CfxWGavPiD9SsJGgawHgPqsSKFdE
         s+wxuEo5vqLIbBpiVEAfxtsUlsXlcsUqKJG871Jl5HOfZ6Whb/3o9dKKZ/fhrTDce4gZ
         GLQxUtPXsDfC0SgOnEKr7SEs9nigRj5vV6g2xXbxY14S8icYwYvSuoptjzI7E7Vu32B+
         WDVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686138884; x=1688730884;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cMpYnd8K0KUjk943ETGb3pgLuWnp+NjqkKVfYBnfUjc=;
        b=Ethbfhv0lAkCjje3rulX+Gjflfe9ild0rNx57axnrd32ALJu+7lOtUpVmZvPmWZfC+
         3FGrzBihC3tBCSjFjZuGOVZcNDLjOZ3NBHOlnVsEzrx8bu+8Xbiuv4yGOIgdTnp16mJI
         bWac+EqAidmW7710x+0Sp2JOuPYfvAssk1AgYlbgFQIYEnwf04aG92LY/NPQzPa4QKGM
         sU2V3s/yXR0amDEa0Joa+JV8dAOVyr2okQVI05ox1Trv9LFfnB3c7x7YELWa5OJWvlPu
         g1PSpoi4WMk41jMzYuxV4LGGL5H5OqkBossVJHnHwGyYDA9hOa3NWNpqDLk/x3j4MFLX
         5aVg==
X-Gm-Message-State: AC+VfDxeyYjj3HYoG8xpAJahEeftpk917NG8trU3w43SQfoYH2THDPta
	CaKSTO5oCQMFpo5kFm3zvmIDTg==
X-Google-Smtp-Source: ACHHUZ4lsNW7UB/AdIJhmQsRv/ujZHWy36LNehPBHbmBvk72viOS7FuDtFy6IDKDYzT1blLCXBb+VA==
X-Received: by 2002:a17:906:6a1c:b0:96f:88a3:3a0e with SMTP id qw28-20020a1709066a1c00b0096f88a33a0emr6274061ejc.0.1686138884458;
        Wed, 07 Jun 2023 04:54:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id oz17-20020a170906cd1100b009745edfb7cbsm6802817ejb.45.2023.06.07.04.54.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 04:54:44 -0700 (PDT)
Message-ID: <79201bd6-6048-7013-aeb7-34d218139844@linaro.org>
Date: Wed, 7 Jun 2023 13:54:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/5] phy: realtek: usb: Add driver for the Realtek SoC
 USB 2.0 PHY
Content-Language: en-US
To: Stanley Chang <stanley_chang@realtek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Mathias Nyman <mathias.nyman@linux.intel.com>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Ray Chi <raychi@google.com>, Flavio Suligoi <f.suligoi@asem.it>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20230607062500.24669-1-stanley_chang@realtek.com>
 <20230607062500.24669-2-stanley_chang@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230607062500.24669-2-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_045446_736515_2803BF57 
X-CRM114-Status: GOOD (  12.97  )
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

On 07/06/2023 08:24, Stanley Chang wrote:
> Realtek DHC (digital home center) RTD SoCs support DWC3 XHCI USB
> controller. Added the driver to drive the USB 2.0 PHY transceivers.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> ---
> v2 to v3 change:
>     1. Broken down into two patches, one for each of USB 2 & 3 PHY.
>     2. Removed parameter v1 support for simplification.
>     3. Use remove_new for driver remove callback.


...

> +	platform_set_drvdata(pdev, rtk_phy);
> +
> +	generic_phy = devm_phy_create(rtk_phy->dev, NULL, &ops);
> +	if (IS_ERR(generic_phy))
> +		return PTR_ERR(generic_phy);
> +
> +	phy_set_drvdata(generic_phy, rtk_phy);
> +
> +	phy_provider = devm_of_phy_provider_register(rtk_phy->dev,
> +				    of_phy_simple_xlate);
> +	if (IS_ERR(phy_provider))
> +		return PTR_ERR(phy_provider);
> +
> +	ret = usb_add_phy_dev(&rtk_phy->phy);
> +	if (ret)
> +		goto err;
> +
> +	create_debug_files(rtk_phy);
> +
> +err:
> +	dev_dbg(dev, "Probe RTK USB 2.0 PHY (ret=%d)\n", ret);

I commented on your second patch, but everything is applicable here as
well. You have many useless debug messages. Many incorrect or useless
"if() return" which point to broken driver design (e.g. concurrent
access to half initialized structures where you substitute lack of
synchronization with incorrect "if() return"). Undocumented user
interface is one more big trouble.

I doubt you run checkpatch on this (be sure to run it with --strict and
fix almost everything).


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
