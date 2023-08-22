Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B43DEE49AC
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 11:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eb4DmFWidoQlXv95p5T4MiAJ2Eqb195X/z6QDu3VBlg=; b=nzAcR27kFmD4tJ
	z89WEuHiEwPFz73MN8xnRbZhdld094U81ssOlTLItj2iqEuBb9PWHZ1EcyTopfr62BM2EGzVVieNm
	rgMupL/s55Pfay5zejHJYQg3fBef0abTSSk7hFZQpaUXrtWyceYhKDkD/Xz96jxs20LXfccFb+Ny/
	wNe0xEybWRw1Acv51agdFspIF1KKAEABpmYXElgkn6oxG4g6ffVXVfvCaXYvf7doTevT3gSfUJerX
	X/EAC65CtBqbgwGxfRaRVF4UaU35UmsjLBw6GncSW1pCBfp1mkPLJOshnemOZuTMgVpaqrs3shnIc
	WuDSqlqXMgvFW73wiDiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYPdJ-00FpMR-3B;
	Tue, 22 Aug 2023 11:33:14 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYPdH-00FpLG-1R
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 11:33:13 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2bb99fbaebdso68510161fa.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Aug 2023 04:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692703987; x=1693308787;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O/NIHQP9t9FWAMyIX2X2xC1QDnFwKfnIeXzDlJpOVxc=;
        b=NkfDgIs0xM+FLJdLDfw4KK/GRICph4BIkNJxSMC638LN57Ix7iZrkMcZbKxBgokQac
         3VfXxtcswQ1UVTodF0qBpcOJtPJT72L6mHBPk6yJ/0uue6dc0apupy/rd82MX3gk0VDi
         Y90xxQokmujsaZ8ER152bvA+S70wu0tpi5wvLx3gjHD1XIcxdeQ79FSRcEIXRKDi289a
         flh/Sn99Zpwchwx2b17YvR29vYTEGlzwzODYWAYPF4qmoqdBi4GU0Tn8STS/gwMDf03t
         OQojfEO6uTf22wPNlNBD5zKIjzkyJ7CCEmf3NWdXLidLQ/jR4cUfZPSEmgQYI7JYesi7
         2UCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692703987; x=1693308787;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O/NIHQP9t9FWAMyIX2X2xC1QDnFwKfnIeXzDlJpOVxc=;
        b=jQbVMEBTWoRJCVcf0VLEyyYGGPitffHzcGcT+SXk4A7aC483ykayQZV5Y0ci1uvQI+
         rtVzGt2bNIGYETFH8/gtYr64RE23sIluJigX+hjoWO1gaYRhy6VH54WAGju3hJfGWrDH
         OJD7IaG8XtvjTVGctiONqHIi0ybvNvZX7y7+W1/yoWXvxmqVgfkhLJsyR/po4ae8FE78
         LUpc027ZzAWkj8fCV/v4CQzk+HXkCCIDZKSAKe2mqWJQ7uHAAVONNGeR/scUCNejgICT
         aJ4S3hoFk1DkRQqD3X/CYH9JwXNiS8RlI8569ivrXhOXd995ev0qit+3sCNozUSn52qO
         U4HA==
X-Gm-Message-State: AOJu0YwrLg0F/mmENZpgmawSMgm8T5UHszHCusSyIejpL9YGRu+0rx2P
	sxzKYElp3mwMDgctNl38bFHPbQ==
X-Google-Smtp-Source: AGHT+IF4BkC3dItCe8+LWY7rH+IOmTjUHBRnT8M+Yenfj6xxQDBw3yl0SAR1SoFVSjpnVIKOk0hH4g==
X-Received: by 2002:a05:6512:1584:b0:4fb:94c6:fd63 with SMTP id bp4-20020a056512158400b004fb94c6fd63mr8155443lfb.17.1692703987423;
        Tue, 22 Aug 2023 04:33:07 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id t11-20020ac24c0b000000b004ffa28ef3a4sm1202792lfq.100.2023.08.22.04.33.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 04:33:06 -0700 (PDT)
Message-ID: <a9aee232-7bf2-4f4d-b42a-1f7ec1434393@linaro.org>
Date: Tue, 22 Aug 2023 14:33:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/4] phy: qcom: m31: Fix indentation issues
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <cover.1692699472.git.quic_varada@quicinc.com>
 <6d1638daf9b0616816fdecb529df86a394db7942.1692699472.git.quic_varada@quicinc.com>
 <CAA8EJpryKOzGd42NjG470D9jGr1Huv5D-F-NqaTo-0EJeFUr+A@mail.gmail.com>
Content-Language: en-GB
In-Reply-To: <CAA8EJpryKOzGd42NjG470D9jGr1Huv5D-F-NqaTo-0EJeFUr+A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_043311_479178_DDD0EEEE 
X-CRM114-Status: GOOD (  18.65  )
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

On 22/08/2023 13:55, Dmitry Baryshkov wrote:
> On Tue, 22 Aug 2023 at 13:31, Varadarajan Narayanan
> <quic_varada@quicinc.com> wrote:
>>
>> * Fix indentation
>> * Drop simple success messages
>>
>> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>> ---
>> v9:
>>          Fix line break alignment
>>          Remove register success print
>>          v8 version of the driver has been picked up for merge.
>>          (https://lore.kernel.org/linux-arm-msm/169226613917.81413.1200008047604336868.b4-ty@kernel.org/)
>> v8:
>>          Change commit subject and message per review comments
>>          Don't include of_platform.h
>>          Change struct init coding style
>>          GENMASK -> BIT for one define
>> v6:
>>          Kconfig:Add COMPILE_TEST and remove USB_GADGET from 'depends'
>>                  Change 'selects' USB_PHY -> GENERIC_PHY
>>          Driver: Use correct headers
>>                  const int -> unsigned int for 'nregs' in private data
>>                  Use generic names for clk, phy in m31 phy structure
>>                  Init register details directly instead of using macro
>>                  Use dev_err_probe in the error paths of driver probe
>> v5:
>>          Kconfig and Makefile:- place snippet according to sorted order
>>          Use generic phy instead of usb-phy
>>          Use ARRAY_SIZE for reg init instead of blank last entry
>>          Fix copyright year
>>
>> v4:
>>          Remove unused enum
>>          Error handling for devm_clk_get
>> v1:
>>          Combine driver, makefile and kconfig into 1 patch
>>          Remove 'qscratch' region and its usage. The controller driver takes care
>>          of those settings
>>          Use compatible/data to handle ipq5332 init
>>          Drop the default case
>>          Get resources by index instead of name as there is only one resource
>>          Add clock
>>          Fix review comments in the driver
>> ---
>>   drivers/phy/qualcomm/phy-qcom-m31.c | 8 +++-----
>>   1 file changed, 3 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
>> index ed08072..ea79c18 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-m31.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-m31.c
>> @@ -242,7 +242,7 @@ static int m31usb_phy_probe(struct platform_device *pdev)
>>          qphy->clk = devm_clk_get(dev, NULL);
>>          if (IS_ERR(qphy->clk))
>>                  return dev_err_probe(dev, PTR_ERR(qphy->clk),
>> -                                               "failed to get clk\n");
>> +                                    "failed to get clk\n");
> 
> But why are you trying to fix this? aligning next line to the opening
> bracket is perfectly fine (and is one of the endorsed styles).

Ugh, excuse me. My mailer displayed alignment in a wrong way.

This LGTM except the last chunk (removal of the info message).

> 
>>
>>          data = of_device_get_match_data(dev);
>>          qphy->regs              = data->regs;
>> @@ -252,18 +252,16 @@ static int m31usb_phy_probe(struct platform_device *pdev)
>>          qphy->phy = devm_phy_create(dev, NULL, &m31usb_phy_gen_ops);
>>          if (IS_ERR(qphy->phy))
>>                  return dev_err_probe(dev, PTR_ERR(qphy->phy),
>> -                                               "failed to create phy\n");
>> +                                    "failed to create phy\n");
>>
>>          qphy->vreg = devm_regulator_get(dev, "vdda-phy");
>>          if (IS_ERR(qphy->vreg))
>>                  return dev_err_probe(dev, PTR_ERR(qphy->phy),
>> -                                               "failed to get vreg\n");
>> +                                    "failed to get vreg\n");
>>
>>          phy_set_drvdata(qphy->phy, qphy);
>>
>>          phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>> -       if (!IS_ERR(phy_provider))
>> -               dev_info(dev, "Registered M31 USB phy\n");
> 
> This is irrelevant to the indentation.
> 
>>
>>          return PTR_ERR_OR_ZERO(phy_provider);
>>   }
>> --
>> 2.7.4
>>
> 
> 

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
