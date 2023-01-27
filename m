Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 179F5C38142
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 16:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8d/dLB0SuhIwecpH7nEA/9yzcFMUMjvXaJaB6ZrJjBU=; b=RuCpMBzL5FOHcx
	BOw35zPsfNCZYDdRVr7uKIY2Kb8jNqbbubdUO2F5Sq+AWoNE7k+/m5PRw+8Lyo/rE5FHuBJUo/ZQ/
	55EAlMNPygZ0pou7nH6QZB+q7c7359I5GcTKBKqIgCZd62M2O4aFYYXrrspjfxkpR50tfKngg7Rd+
	TGylntjPIgPscAp2f2oNPB///AUAzxOLt2qPsIq07LEOcBz/TjCqp33mZ+vsHVw6MICMh02Cw9ykU
	qNH7UlKzZCsrIrncMPoPtfY6T0qc7FYTmCLWFRtmA1QyOVh3AhCjPE3Tw/acj4BNKK7Ct+1ULV5+j
	uv1V+4ElSOaEqqcxu0Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLRrE-00FmnU-Ur; Fri, 27 Jan 2023 16:45:44 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLRq5-00FmGW-Qf
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 16:44:35 +0000
Received: by mail-wm1-x331.google.com with SMTP id f12-20020a7bc8cc000000b003daf6b2f9b9so5802058wml.3
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 08:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BQnUCfXc82O/4NTtQlvKtH9yVhmvnskB7/bG1kNkrKg=;
        b=RD/xmSvJ1sq9e9iRJ2Eq7Caj1FIrJLpCZacmZqhB9F6KDvPSJSBOzBOi6pEW9MolvN
         DYT9vLdKzt9HtlgvRHMsyzXXBOZs1wBDGbjX9jEYbwRJqc/FuvgCLcYULBA8n0Wk9GhH
         iT84RjznvcHngWCNce0pwkzfmIs0e+pxtJO8YD9xTBIdvnZk9YjHAP50iFQ6URgDydsE
         6n054MmPJful+Q3BQXPy3hxqe1vNj83s1FHlpZIAgP6trxURNJwfH5aOGK3a1TREGKNn
         o/Ld6sNmQhi0ByFClutk8pBGQnw8JVxtp+f4pUdNf24oK7YYrR1QuZuigSbOkMBkvbo0
         +nOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BQnUCfXc82O/4NTtQlvKtH9yVhmvnskB7/bG1kNkrKg=;
        b=Zb6aWxRx++ML3ZO61G3yGjZSbOdfo/mb0qFNMYgQ2pVyxAafYfokA4p7Z2gTN5dNwC
         Ob7f8ZuS2T7zMzsrJ/E95A5JvVIaLsBQgbs8xg0+EA70BCkyu9IX2Ii+RCnsGRoskO/3
         HLL1IuXBb69nPzdD4yNbsWOA1gFcYfFePqOOgV4Un1LM7K15isnMnpByrFR+9+aXZFaR
         e9NGoc/xISS84zTOiJfKxBkNzS40Cz3BRuJe0kfBMerWaRDpV1cFKC9348qZgC5Zm4xM
         YHhjiwDifcj/P9M3bQotSP5mpXPYYFrf47gvDHSF5uqoWX0cCeAnWn5bO/Qq+8F/Hp+9
         w2nA==
X-Gm-Message-State: AFqh2ko+yZooYuHTSo1cHBmmfSy23zcP6TcVwCG2oLx+HuAV/gGxvh5l
	fDD2lzM/0x9bhXpQY4mDVM61mQ==
X-Google-Smtp-Source: AMrXdXvcQEZfNNPyQVfoVcVcWNCDRMM3G/7II6ByhoPzLOTiaCrmU8hE/GqJVSnyJVqkvz+ErasX6w==
X-Received: by 2002:a1c:ed0a:0:b0:3d3:4a47:52e9 with SMTP id l10-20020a1ced0a000000b003d34a4752e9mr40237621wmh.15.1674837872372;
        Fri, 27 Jan 2023 08:44:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t19-20020a1c7713000000b003c71358a42dsm9567680wmi.18.2023.01.27.08.44.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 08:44:32 -0800 (PST)
Message-ID: <9610c8be-2a9a-a93b-e417-fa376ad2e855@linaro.org>
Date: Fri, 27 Jan 2023 17:44:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v9 07/10] arm64: dts: ls1046ardb: Add serdes bindings
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>, Shawn Guo <shawnguo@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Madalin Bucur <madalin.bucur@nxp.com>, Bagas Sanjaya <bagasdotme@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Li Yang <leoyang.li@nxp.com>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-8-sean.anderson@seco.com>
 <20230125234335.GC20713@T480> <8074f0be-8a70-a937-49f2-123e0bfc6218@seco.com>
 <20230127075248.GL20713@T480> <20a9070f-9673-2f51-97df-68e78c37d894@seco.com>
 <a3c3603f-7401-aeb2-4b58-86c3ca778c6c@linaro.org>
 <6ad9bc2a-910a-357c-fd7a-cf4ffe13ddb0@seco.com>
 <8da6b154-f799-4a33-d455-f42e30ad8940@linaro.org>
 <01d344a6-5e54-9762-3737-05b930fc2fd7@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <01d344a6-5e54-9762-3737-05b930fc2fd7@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_084433_934961_AE884357 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 27/01/2023 17:42, Sean Anderson wrote:
> On 1/27/23 11:41, Krzysztof Kozlowski wrote:
>> On 27/01/2023 17:22, Sean Anderson wrote:
>>> On 1/27/23 11:15, Krzysztof Kozlowski wrote:
>>>> On 27/01/2023 17:11, Sean Anderson wrote:
>>>>>>>>>
>>>>>>>>>  .../boot/dts/freescale/fsl-ls1046a-rdb.dts    | 112 ++++++++++++++++++
>>>>>>>>>  drivers/phy/freescale/Kconfig                 |   1 +
>>>>>>>>
>>>>>>>> The phy driver Kconfig change shouldn't be part of this patch.
>>>>>>>
>>>>>>> I put it here for bisectability, since this is the point where we need
>>>>>>> to enable it. But I can do this in a separate patch if you want.
>>>>>>
>>>>>> From DT ABI perspective, it's already broken anyway if you need to change
>>>>>> kernel and DT atomically.
>>>>>
>>>>> AIUI new kernels must work with old device trees, but new device trees need not
>>>>> work with old kernels. So a change like this is fine, since the kernel won't
>>>>> touch the serdes if it isn't supplied.
>>>>
>>>> You used the argument "bisectability". If the patchset is not
>>>> bisectable, the ABI is broken.
>>>
>>> Well, because Shawn wants it in a separate patch I am just going to enable
>>> the driver by default on Layerscape before adding the device nodes. That way we have
>>>
>>> 1. Base state, driver not enabled and node is disabled
>>> 2. Driver enabled but not used because the node is disabled
>>> 3. Driver enabled and bound to node
>>>
>>> So there is never a case where the node is bound but the driver isn't enabled
>>> (which would cause the ethernet drivers to fail to probe).
>>
>> Then there is no bisectability issues and the Kconfig patch should have

"should have not been squashed", of course...

>> been squashed here... Mentioning bisectability and that squash just
>> confuses.
> 
> The Kconfig is currently squashed, but I am going to split it off as requested.

Yes, thanks.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
