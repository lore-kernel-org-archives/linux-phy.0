Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E2B2C83F14
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 09:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vWHP4omQBGIO0jrVtwuc4Fb3gHinEjpKe6mZCTJgp1A=; b=21NnXkqoeL97pYuTOm3g+4FKJ6
	W1u+GiwRZASPQgSXRrQOaQiYpDCYGfIVR/dCiwm/m8x+6hz6SyMj9Ok9oVwg4dr1R8/E3A7M5JdMF
	AxiXy6ZkJt3Wr4r62aV2RoIca0FK7ODLEIA76/6EUpo1zUlkO1o9pc4B1kMECfetpBpdpmIk6H68S
	SKXe7ZRfxpyubEQUcYku3IYnojbS6iaG+ZQzWBQlOsEyaFl7tJBv7PQv35wzqKpcLVgR+kc1+IgxQ
	x0Ac2MkKrWzMnGqXXZ60DYHPD8+Hg6L9zINJh184KrVNjtTby2lM2LdRyNgPo3omS4zXAN6rEiSJg
	ILJnk4dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qav4a-00B9Rg-0Z;
	Tue, 29 Aug 2023 09:31:44 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qav4X-00B9Qs-0b
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 09:31:42 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4ffae5bdc9aso6614321e87.1
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 02:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693301498; x=1693906298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ac6xqVgSskbwf+6SFx252FM1re6neKrPp+nbe33qmqk=;
        b=sMt8FogipfV40ZJ0kVIacpgxgR0aLO7WAv6xB5Hh1O5yCe9iGO1h/pivrQAY/VOqkn
         Q95EVL22BhWl1ZKU+EEn0fggXzJ0/Bco3sOYlweLnyQC4cX60I34KXygTmcrylsmM0PY
         LKckbEt33wz6mv9wa8Kl0j2NB39/SYQT0nALjpFMQzslNU2INY3mVWw9ZP9pidQV0rSd
         8IzOFXWefH/7rDZGgnzopZVn0Gr4PqwTWMD3yJmEGLf1H/c/Ldf+aqwdYcSe1SdFo5+L
         JUUp3XJ+7XPiDKk4+tYiQvzGp4LEv+n58BOG8xa1U2Hg6YMAg1Ca3HgYUCik58DmgOyF
         YCDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693301498; x=1693906298;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ac6xqVgSskbwf+6SFx252FM1re6neKrPp+nbe33qmqk=;
        b=hQaDv9RXJSdM32W7P/vq6FF+ROVfzWi5tq3I5W1APkDNAiI5esrDU8Ikez1rNpujok
         FfEmorlGrwjUdMck3QdXTIXPmXP7HMFFRbKjckS2uaP+Q6r1wbk37QZpZjz5nD5alUZ1
         AEwAAF+w8qt9XcZovg6LYBRE/kdn0egSZZ4/WFm/3YM3bwfiKL9rnGB4Dd5dCZwGZEDZ
         LaKgbdl6PsCd1cy8nNz2WpE2aipju3gHpjgWWKbpNibmLl8kDF5jSJUuRJgvz76QFoc3
         x+HuWbtXF1X/VZwDHU+JTpLgrr7BedAmWK8BoTX5Jed9ABQAcYsChmst6HInHe1YykWV
         Eiiw==
X-Gm-Message-State: AOJu0YykCmVC23qzRBe07Z8oaVEnAhmY7+DQtelh6txWph7ksO8gM7Qi
	6bxFErfVJ9ubFWv0Uuu6E1kiLg==
X-Google-Smtp-Source: AGHT+IG5GaoltkaSnPoIGiS46RWBV3F2tskphsVOJLvNIjlOmoXNR8DJalLo+GUytEuPS1sXXvoPlA==
X-Received: by 2002:a05:6512:3d0f:b0:500:b9f3:1dc4 with SMTP id d15-20020a0565123d0f00b00500b9f31dc4mr3855419lfv.68.1693301497780;
        Tue, 29 Aug 2023 02:31:37 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id c3-20020ac244a3000000b0050087b72169sm1868261lfm.24.2023.08.29.02.31.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 02:31:37 -0700 (PDT)
Message-ID: <7ec87a0f-3404-46b3-be18-e7af870e6411@linaro.org>
Date: Tue, 29 Aug 2023 12:31:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/4] phy: qcom: m31: Fix indentation issues
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <cover.1693296360.git.quic_varada@quicinc.com>
 <6087788f2e2a8e88a0cf3df64d20abbada17cdd0.1693296360.git.quic_varada@quicinc.com>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <6087788f2e2a8e88a0cf3df64d20abbada17cdd0.1693296360.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_023141_229559_9D748BA6 
X-CRM114-Status: GOOD (  14.78  )
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

On 29/08/2023 11:37, Varadarajan Narayanan wrote:
> Fix incorrect indentation
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v10:
> 	Restore register success print per Dmitry's comment
> v9:
> 	Fix line break alignment
> 	Remove register success print
> 	v8 version of the driver has been picked up for merge.
> 	(https://lore.kernel.org/linux-arm-msm/169226613917.81413.1200008047604336868.b4-ty@kernel.org/)
> v8:
> 	Change commit subject and message per review comments
> 	Don't include of_platform.h
> 	Change struct init coding style
> 	GENMASK -> BIT for one define
> v6:
> 	Kconfig:Add COMPILE_TEST and remove USB_GADGET from 'depends'
> 		Change 'selects' USB_PHY -> GENERIC_PHY
> 	Driver:	Use correct headers
> 		const int -> unsigned int for 'nregs' in private data
> 		Use generic names for clk, phy in m31 phy structure
> 		Init register details directly instead of using macro
> 		Use dev_err_probe in the error paths of driver probe
> v5:
> 	Kconfig and Makefile:- place snippet according to sorted order
> 	Use generic phy instead of usb-phy
> 	Use ARRAY_SIZE for reg init instead of blank last entry
> 	Fix copyright year
> 
> v4:
> 	Remove unused enum
> 	Error handling for devm_clk_get
> v1:
> 	Combine driver, makefile and kconfig into 1 patch
> 	Remove 'qscratch' region and its usage. The controller driver takes care
> 	of those settings
> 	Use compatible/data to handle ipq5332 init
> 	Drop the default case
> 	Get resources by index instead of name as there is only one resource
> 	Add clock
> 	Fix review comments in the driver
> ---
>   drivers/phy/qualcomm/phy-qcom-m31.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
