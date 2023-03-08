Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF11CC74A4B
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 11:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tEbt7G83wCZyL7YICdK0SjIkQRm/CsJSEeaP3WXoaE=; b=iMH3zwxiBahr/V
	J8orNUy2Db25AGWQuSl1M2Yk7G81WhWI9aruRIEACyaQ6aNelvTsuDN7gePUrsWET0yoHE7VKVSn4
	6E4fH+dVxH0lvYOGkXieH6KrzUCcfhB5FJce6Og56OHNt2pv1HRmEyIrJKLZeYFKCh3LjK0HfyCLB
	1eeAR4a0wDiWXwP02ozaUSwVfTAx5T5OC0Jyjjo2rBfwVe/Z3RJKQJ7y4sAYAv6pEKxmhCiN9MxAW
	HJPpOkaqUh3scYAKFCZccvaf95tXxvoQpbFX6Q1lcEBM4CnwObadjM3iclTy6IfK93kRMa0DVd3U8
	ekRbvhwIGa7WyAIfIDAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZs3u-004d3Q-59; Wed, 08 Mar 2023 11:34:26 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZs3r-004d1P-2R
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 11:34:24 +0000
Received: by mail-lf1-x133.google.com with SMTP id g17so20941496lfv.4
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 03:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678275258;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qEIlAOLqJOUEga8jWhhCTfIkDeYpmS53nHyd5ftpdw4=;
        b=gzNuAFeHu67qA3jHUwFjwfCv3mmKuwAbDAkUqtUl4onK2bQyZOy0/x0IMyaY3yYxnF
         EvYOnuWXh7TSXJeIYsvxPHwIbgOCKNZQm/v5FCu5L+lRo3kAav4sZAPMSfgxF4uId3KD
         XhA1D4oE4okvpInh6KtwraZSdPynW5O898MwOuVmhGItAbwarj1ql4Xkp/GTklxP4SsN
         VsrST1Stm2lNllEIxgdXq2S9RVSyT0Gyyk/fv5fhX3OwFRTDdPXibLSLzeHgP1xEBtG0
         NQAEZCz3bTULePFpQLly8Nu3tbjFRsIgfX0l6TE82wMIQc0V8+KnfnrpArVoY4S0c5BT
         SrrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678275258;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qEIlAOLqJOUEga8jWhhCTfIkDeYpmS53nHyd5ftpdw4=;
        b=lI6tIkSpy6YalfCs4/DLyrg7cBuXClNJBWbvhic3RfjFnEhCh9ljW4nR/r9uzs7FH9
         n00RH/lxetPDmlKEkkTj1d4FmmieqZXaEIMhBCReklG+anyJQn7n1L0LeytG84xhByd/
         ZICSf6fb43LjW2OhaYSMULskZU/XWj7gvkogLEynGvFxnZ8kuWuTJFv7st7HumeoYSbq
         Ekj9pNJbY6rFvCBRHhqzjX2kt1/akdlzcd5gwZ2ZMI5UbeAmoTgr3CM3BZCXDMdHhONe
         B0aM03p6yixKJu8cZvZIWA9JNUlUNYK6S0lA3OKpoS8kaI6rZdNeyNI2Irs2TSwDzjMJ
         s+/Q==
X-Gm-Message-State: AO0yUKWGbN1aAUVuVsvN5IpO79JLDvpA7EiAGteNrfmha1/g1nMm7Lre
	MAy7DvCcnrP3y5Tuf6p2ZwtrpQ==
X-Google-Smtp-Source: AK7set+jHlT9ogIKu5mT4G8gT8OABan5198fY6k3RPqdGCoJd95XO36AFMf8+59KJJKUt4o8QUirvw==
X-Received: by 2002:a19:f508:0:b0:4dc:4bda:c26f with SMTP id j8-20020a19f508000000b004dc4bdac26fmr4630854lfb.23.1678275258643;
        Wed, 08 Mar 2023 03:34:18 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id t15-20020ac24c0f000000b004cb35b31b96sm2311175lfq.257.2023.03.08.03.34.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 03:34:18 -0800 (PST)
Message-ID: <cf6af928-78a9-7990-71d4-9f17daf718d8@linaro.org>
Date: Wed, 8 Mar 2023 12:34:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v7 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Lux Aliaga <they@mint.lgbt>, agross@kernel.org, andersson@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
 bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
 gpiccoli@igalia.com, ~postmarketos/upstreaming@lists.sr.ht,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
 phone-devel@vger.kernel.org, martin.botka@somainline.org,
 marijn.suijten@somainline.org
References: <20230306170817.3806-1-they@mint.lgbt>
 <20230306170817.3806-4-they@mint.lgbt>
 <25c17af5-8f6b-a2c3-dab3-f9bc69711db7@linaro.org>
 <ZAhrT1ICTQjfdeGq@hovoldconsulting.com>
 <64ab4061-6a8b-662e-1c7a-99b0da26751c@linaro.org>
 <ZAhwTcMZoCQVULQe@hovoldconsulting.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZAhwTcMZoCQVULQe@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_033423_155928_D56C1484 
X-CRM114-Status: GOOD (  20.00  )
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



On 8.03.2023 12:23, Johan Hovold wrote:
> On Wed, Mar 08, 2023 at 12:15:39PM +0100, Konrad Dybcio wrote:
>>
>>
>> On 8.03.2023 12:02, Johan Hovold wrote:
>>> On Wed, Mar 08, 2023 at 11:09:48AM +0100, Konrad Dybcio wrote:
>>>>
>>>>
>>>> On 6.03.2023 18:08, Lux Aliaga wrote:
>>>>> The SM6125 UFS PHY is compatible with the one from SM6115. Add a
>>>>> compatible for it and modify the config from SM6115 to make them
>>>>> compatible with the SC8280XP binding
>>>>>
>>>>> Signed-off-by: Lux Aliaga <they@mint.lgbt>
>>>>> Reviewed-by: Martin Botka <martin.botka@somainline.org>
>>>>> ---
>>>>>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 12 ++++++++++++
>>>>>  1 file changed, 12 insertions(+)
>>>>>
>>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>>> index 318eea35b972..44c29fdfc551 100644
>>>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>>>> @@ -620,6 +620,13 @@ static const char * const qmp_phy_vreg_l[] = {
>>>>>  	"vdda-phy", "vdda-pll",
>>>>>  };
>>>>>  
>>>>> +static const struct qmp_ufs_offsets qmp_ufs_offsets_v3_660 = {
>>>>> +	.serdes		= 0,
>>>>> +	.pcs		= 0xc00,
>>>>> +	.tx		= 0x400,
>>>>> +	.rx		= 0x600,
>>>>> +};
>>>>> +
>>>>>  static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
>>>>>  	.serdes		= 0,
>>>>>  	.pcs		= 0xc00,
>>>>> @@ -693,6 +700,8 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
>>>>>  static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
>>>>>  	.lanes			= 1,
>>>>>  
>>>>> +	.offsets		= &qmp_ufs_offsets_v3_660,
>>>> Will this not trigger OOB r/w for the users of qcom,sm6115-smp-ufs-phy
>>>> which specify the regions separately (old binding style)?
>>>
>>> No, that should work fine.
>> So do you think the SM6115 binding could be updated too? Or should
>> we keep it as-is for ABI purposes?..
> 
> They could be and the possibility has been raised. I think it may be
> more important to convert the old combo-phy binding (it's on my list,
> but I keep getting preempted), but at some point we can get rid of the
> legacy UFS binding as well.
Okay sounds good!

> 
>>> But looks like this series needs to be rebased on 6.3-rc1 as these
>>> offsets are now already set in mainline.
>> ..Or did you do that already and I can't find it?
> 
> It seems a previous version of this patch was merged almost two months
> ago.
> 
> 	9b9e29af984c ("phy: qcom-qmp: Add SM6125 UFS PHY support")
> 
> Not sure what failed here.
My eyes :)

Konrad
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
