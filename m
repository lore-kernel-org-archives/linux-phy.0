Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22EECC3DA6E
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jan 2024 10:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TV9BBJHBeaFrufoxRrmyFQTtZglUBAc7h8acKsTpZE=; b=2H27EDc/xFPO8P
	Q3q0AS9CwgLppf5OI03OBa9gteqTgE6Wo+bTYry5G6y3ksV4qB2zm8j3myRN63j1y0m2B8EgeMT0W
	pLSQECDzljwLpl8PNoJPjU0Yk8TNqyAKF9vxgYbiXFFYs6mD/5cATayDv62oGuakdMgB07vIGYBLe
	B4fMUJdcmQ4HbnCMyXls7Wh/UiQvD0Ry/mayuVDZ2me4Vhr7GRNhKbOILRMqxG4lZGRMvMLAGT1TZ
	vSMmXzUXHJcQobn8oNBpzLawWB2ciZQXTeJZ3NwspnUEto2njgAJfbw31sQfIbg+qC/RWo6VaJjGb
	zJIolVuGZp3FYFC2KAhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLh91-00GU50-2q;
	Fri, 05 Jan 2024 10:09:39 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLh8y-00GU4h-2K
	for linux-phy@lists.infradead.org;
	Fri, 05 Jan 2024 10:09:38 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a28bf46ea11so75432366b.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Jan 2024 02:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704449375; x=1705054175; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gTcEvk43Zi+UN7zzUBz/Hjg74Fz72ewwhYJTN4bjNtI=;
        b=yK80p4nNWODGnEzI9jBfcztosoNiwzUXcb5hWe3XyNzeXEzU8AFnQXtUuffNJxagHP
         XuiWOQImHTidp8wGeqh/IVwsRJ3GAvWg9x29V3AH4ZbgszkXw+1FIYBqRcSXwPLZC5U1
         qegfqkPSrnHs/TgRmlWTVTke7nwSfZ5TpnEks9I/JB53E4KWaOHo2jW+5CcWXcMe7bBq
         U4PF5qoIVLhE7TK+fByoCpc9VpbRltwl96NrT5zOUTi6/pHjFQ4R2WCsX0itnZKqm/X9
         bS66lfsSOo/sEPxXgxeGzHPCtro8Jx8LNq15lUgsV0L829mfVuPNub+BuBuiArkbSu3s
         LJsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704449375; x=1705054175;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gTcEvk43Zi+UN7zzUBz/Hjg74Fz72ewwhYJTN4bjNtI=;
        b=Yfw5/x2v6fGASDTjoVn8g2enQrk5vONtLY5GPaflpwAWMGR8qDHW1xxW/5yROE/iZU
         tudTB972OqHFuz7Sptt/qnKeShEaUvkFxE+bbqLr8ZVPH/qLXuXbjjCnEXkf+ks/0MOS
         EdL6VsMgg6NSUtjAQ3dpR8EcMshMJo1o9t7PiFG7IBSORr70YJtOZ/D9/eGjooKuf84h
         gnh6qcv+Pjj2Rjm2qvQY8hH0vZP1Y7zB4ueAzP7MAMGiSXT+08hsgQyheH86BAHylW7/
         lKPfbH7mGEBIiR/5igx79htIZddK/UrjC2POSw8t9H1lKHClPZ2/XRccc7DuoKuVUAKH
         oLKQ==
X-Gm-Message-State: AOJu0YyPev2kxBo+oSyo9RapSAVqkRk/klZieYTV8Na6/QW+aE0R4wZ3
	/8fqARYn36ulvYmeMCnrtW/waVTSD0ilvA==
X-Google-Smtp-Source: AGHT+IF8sfuHpaTxBxJG1gisQbpioyy4ova0pOxUKeHyMgZow4orIbEewEQEjK6no57uTAMRurEpDQ==
X-Received: by 2002:a17:906:c289:b0:a28:ac22:7575 with SMTP id r9-20020a170906c28900b00a28ac227575mr1746518ejz.4.1704449375170;
        Fri, 05 Jan 2024 02:09:35 -0800 (PST)
Received: from [192.168.199.125] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id ka8-20020a170907920800b00a1c7b20e9e6sm711718ejb.32.2024.01.05.02.09.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jan 2024 02:09:34 -0800 (PST)
Message-ID: <e216c027-dc23-415d-8d00-e6b1cbbd4248@linaro.org>
Date: Fri, 5 Jan 2024 11:09:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qualcomm: eusb2-repeater: Drop the redundant
 zeroing
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
 <20240104-phy-qcom-eusb2-repeater-fixes-v1-2-047b7b6b8333@linaro.org>
 <33b32e2b-fa35-448c-8b4c-c5c51a514922@linaro.org>
 <ZZfI66Mj6v/Qjp5X@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <ZZfI66Mj6v/Qjp5X@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_020936_768789_19C1297C 
X-CRM114-Status: GOOD (  16.57  )
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

On 5.01.2024 10:16, Abel Vesa wrote:
> On 24-01-04 23:50:48, Konrad Dybcio wrote:
>> On 4.01.2024 15:52, Abel Vesa wrote:
>>> The local init_tlb is already zero initialized, so the entire zeroing loop
>>> is useless in this case, since the initial values are copied over anyway,
>>> before being written.
>>>
>>> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>
>> That's another good spot.. partial struct initialization of
>> pm8550b_init_tbl zeroes out the uninitialized fields.
>>
>>
>>>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 10 ----------
>>>  1 file changed, 10 deletions(-)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>>> index 5f5862a68b73..3060c0749797 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>>> @@ -156,16 +156,6 @@ static int eusb2_repeater_init(struct phy *phy)
>>>  
>>>  	regmap_field_update_bits(rptr->regs[F_EN_CTL1], EUSB2_RPTR_EN, EUSB2_RPTR_EN);
>>>  
>>> -	for (i = 0; i < F_NUM_TUNE_FIELDS; i++) {
>>> -		if (init_tbl[i]) {
>>> -			regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
>>> -		} else {
>>> -			/* Write 0 if there's no value set */
>>> -			u32 mask = GENMASK(regfields[i].msb, regfields[i].lsb);
>>> -
>>> -			regmap_field_update_bits(rptr->regs[i], mask, 0);
>>> -		}
>>> -	}
>>>  	memcpy(init_tbl, rptr->cfg->init_tbl, sizeof(init_tbl));
>>
>> I think this patchset can be made even better, this memcpy is also
>> useless and we can simply initialize init_tbl=rptr->cfg->init_tbl.
> 
> Actually no. The init_tbl in cfg is a pointer to const. Plus, if you do
> that, you will end up with the same situation like in the other patch,
> as there are some overrides based on DT values below this.

Hm, you're right. Maybe we should simple store *base and stop
modifying these tables then. There's not a whole lot of regmap_rw
calls, so making the first argument "rptr->base + rptr->regs[ASDF]"
shouldn't add much fluff. Then we can make the cfg referernce const.

Konrad

> 
> But now that I've had another look, maybe doing the exact same thing as
> the other patch does (kmemdup) will probably look better anyway,
> specially if we do that on probe.
> 
>>
>> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
