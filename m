Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDCC1C43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 10:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sghPfG7wGU+MbpznzYRfaDF1EPUOkq+iLwCn4BmbtAE=; b=ymLXmmE2vd0uIk
	J3EfCWb9lfK1qhburHl49ELb9NbOL8a312ZDE5q3EHBCupDPweskM5W1ZqlbBVYenWWOsG0Gj2KPI
	H44I1Smi/T37+C2YKVO1gvKvhU5Ch3jVhMY/WUhQ+GP7MiuSVQtQzamn/SJqdlSQg3kTRtNyzw4Qc
	uAhjnsW14gp7GWFGt+CgUXXZoQLOfqGASBnp9Uzdes6B5oogiwKG9sBdeg8yQYKBGvuLuwSB7l4Ze
	nLteznvhgr4LlC/iAMiBZobjM6vM1Tdwxvp8u6CUIG1ehuQrzhIvu8PzfitQk+ZYw6vPbTxQVMRKR
	hARZqMQ73LcRC0BbbMVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBwIU-00DR8v-AY; Thu, 14 Jul 2022 10:42:18 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBwIS-00DR5X-05
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 10:42:17 +0000
Received: by mail-lj1-x22b.google.com with SMTP id bx13so1700022ljb.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 03:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=s8VpnwHhFZWAVYlNIpH9kdWPTbLI6uI4nckrgHC8pmM=;
        b=w/T9awmLctnifdlcq+QcujLO7NnFl5WH8vXOpLTcy4qrV5vlHZnKOR1CMzdQcuaPgQ
         HBNJFHC7ZV4d9G3OVwfea+iRJf1w0kWXl93CD0JyTwukccUZiFkgBkdzc0ae6gfWFV6P
         A/E+Leq2hzYRI9/3vg2gWrmAhRoDRxMxLI5f1FonpBWVeVR8+Wqi323+boh/VD06g9Jo
         pMBw3mYS33cAygwv9iKCsymMQ7jhOrgY5anq3GrH5CBqAonr8SoRUm6syMTN2OMAj7Ti
         tOLkmLcwPFgpEfy6zdwhs0jzCl3TGJvV2Emgv/ZT5DwSDg75YoXnyVwqqE2syaIBVpTj
         WPxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=s8VpnwHhFZWAVYlNIpH9kdWPTbLI6uI4nckrgHC8pmM=;
        b=vxsEtKF9SL5E2b93K3AWfJhafuV+F7S78h0ChS2g9VUGsZ7nWy1P5eeV2mKnDR5ruU
         FagRIyUjQg8yKskuGyLDc2AVosVEYp6kRFS9NGB63NJwIZUxvGiE7vUuStOXn4IhzgCj
         KLftU1ZPEwJTvoaOxQ87ungwxOXVlyZbT1hh88KxuPLQxeLhxRJSzPCLgfnYStb3Yaxf
         vq52Y1Ir/mGtbH3zMuT8nPhgyG30XuWOVj3tAn3jvcS9D/fDFb12EPrQUA1gvalqGjO0
         OBwWyViTABz98lqSQtX2HHrV1wgWWwW+amPiQwWpklNVUjQ+/G8C5f+m2G+BOwyoyH9l
         apiA==
X-Gm-Message-State: AJIora9tjSOeXN9z5Fl6mT8jH8+TbwHibhYdLOH5Ayss1UOBhsSz+vrI
	lUTpZlg9OP6REDpS0Gp7HnLQVQ==
X-Google-Smtp-Source: AGRyM1vDS7gTXDdroBeSqdLza2aD+ghoINa7WVmkHLbyGd09X2av2JkhdGocs3fMe6JT2umowMWNuw==
X-Received: by 2002:a2e:8719:0:b0:25d:7650:6c06 with SMTP id m25-20020a2e8719000000b0025d76506c06mr4159705lji.330.1657795333568;
        Thu, 14 Jul 2022 03:42:13 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eba16000000b0025d87966100sm209373lja.140.2022.07.14.03.42.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 03:42:13 -0700 (PDT)
Message-ID: <f7d544eb-4e7f-29a9-815c-693d2369761f@linaro.org>
Date: Thu, 14 Jul 2022 12:42:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 03/30] dt-bindings: phy: qcom,qmp: drop redundant
 descriptions
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-4-johan+linaro@kernel.org>
 <26916d41-f398-8527-96f4-9a28f4f4e789@linaro.org>
 <Ys/pQw3e0HPhLZUg@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Ys/pQw3e0HPhLZUg@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_034216_083970_C7D0D446 
X-CRM114-Status: GOOD (  12.41  )
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

On 14/07/2022 12:00, Johan Hovold wrote:
> On Thu, Jul 14, 2022 at 11:07:21AM +0200, Krzysztof Kozlowski wrote:
>> On 07/07/2022 15:46, Johan Hovold wrote:
>>> Drop the redundant supply and clock descriptions which did not add much
>>> information beyond what can be inferred from the corresponding resource
>>> names.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>
>>
>> (...)
>>
>>>              - const: ref
>>>              - const: refgen
>>>          resets:
>>> -          items:
>>> -            - description: reset of phy block.
>>> +          maxItems: 1
>>>          reset-names:
>>>            items:
>>>              - const: phy
>>> @@ -376,11 +334,7 @@ allOf:
>>>      then:
>>>        properties:
>>>          clocks:
>>> -          items:
>>> -            - description: Phy aux clock.
>>> -            - description: 19.2 MHz ref clk source.
>>> -            - description: 19.2 MHz ref clk.
>>
>> Here and in other places - I think you loose information, because the
>> frequency is not mentioned in clock name.
> 
> Right, but it is also arguable redundant information for the binding
> (similar for the vdda-pll voltage).

True.

> 
> I can add a comment after the name if you prefer that?

Ah, skip it.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
