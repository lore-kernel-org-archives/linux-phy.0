Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4A7BCD11C2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Apr 2024 19:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyFMSbSR5h1pa0XrP2dWSPoELD0uyOSneeGIMaxqaZM=; b=1b3/fNwkGFGyTR
	lQJnByzSpAVkuMIMTSkVdUnOrUkHuXzUdLAiw6S32UbPxcvBMZLpXnyYzqkT4wHZ9phTV11MrrDbf
	gkZUBo0dFMPBulpOi1de5XazagtTeNxBWnl0p5nwD60RB7upX8AGmNeYcw4mjXriRTVvCS7852Wc/
	NlSlI8xc3MzCmT5z/BFnEJZ/l2Nyju7yiqccuWThlekQ6TzY9b6L9AXmmLgHEprsV8SgN4kKCFiQw
	zjpGaL3ld9FDmBl2m9yWBYxn37G+k+LDvrvaYB4ySsIbFhG7hWoj4QiErXNFiVq7dga2I1nZO2vi7
	zV2nUmxDG582Xua0Fh6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rudkB-00000008i1X-1Bua;
	Wed, 10 Apr 2024 19:36:27 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rudk8-00000008i0n-12b8
	for linux-phy@lists.infradead.org;
	Wed, 10 Apr 2024 19:36:26 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-343cfa6faf0so5271585f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Apr 2024 12:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712777782; x=1713382582; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2x6xXhx5ta6qCNkF8JTjCy7KYrE7GzNg9QfPMjxG4Ho=;
        b=SVR8ZEgW6KJx9Iv2Bbxw2eSRIgZHYJcM6CBQ+9Lm5Q4PHq33xZv1vnRjp2+MPCe1kU
         PhAXTOuHP2+x6aFiuO6T2oDsMHJluO9b0015UNH+QvQ/dDvgsc+G+lVzOwVlaXlXXZCn
         SyKiU40RAjxVwZAYb9FvzKR9m+/q3VOV2qNIlo9MEGB42WiIyI0EeykU24OWoF96kIXH
         XTmrWLpopkYqEDyVQqYbNN9rLPHDBpUVnX9nQH4jpGMFZOl1c6beyJeziSgjxDc2XV5c
         HGDiRe6/ImpZv3NHcjYSdnXDoppOLUoGZ2veMsFDnTAsp84CQ32HNzftZYnxbRhdECo5
         HAhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712777782; x=1713382582;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2x6xXhx5ta6qCNkF8JTjCy7KYrE7GzNg9QfPMjxG4Ho=;
        b=VzJ5xUxWfpG+hdfwtCA0ppHY2bK2O7vjwbfhS67W6lGJbua//NgZ2ZdXkmeNUw5Qr7
         0gKL3ae/L3GHfoFz35WYtOjV6kNWFFz5pkjDubnwRlI/C2u/t4bYaAfsW67C0AFEXqfk
         iXtCsmI5d5s8w2lWyAEe7306HzudMSXNPFJt6BBJ/MNvnJSRhqRLMHdhNYkbaPGtWJ9q
         u0vdHUsjNbu3vvOJU/Wzy8tnfblPlQoDYeVEfURznZeWG+dfvvVj5gHg5/+9tlhpZ1Nu
         xq8XAjYVi9o8EJ+OigOvc2MZIyK5IyiDEY+KG80HEqpB8GnrPF0P40hE5QfWWnuWP1FS
         MAeQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/nnSVJdko1tyZpNkGzW/2tOIkSCqrp3A9Ue6CBmG5fcXG6LPO+TNnkyJ446qmGoj6fGaVHou8tzS3P08wzVb+qQoPVyanykE+38D5sg==
X-Gm-Message-State: AOJu0YzwVgRSOMiAsRdUbHPDO3sTdvjkEbI6ULqk2X4rtnW9xOppB8w8
	vn3Ro5p+vw8w+iXKBuNqdVlmGyLc8yKFhZfhvJ0f8f+1Qcux5rzOfm/vRAKSmy8=
X-Google-Smtp-Source: AGHT+IGQ+ZXXuRcuNYXAv3QzvL2nb2ivdWBkz7NW8d8cmnUbnnTjaSqkVeWpgVuLIFfZAStNCHbj+g==
X-Received: by 2002:a5d:4a45:0:b0:343:955d:822d with SMTP id v5-20020a5d4a45000000b00343955d822dmr3186449wrs.7.1712777781987;
        Wed, 10 Apr 2024 12:36:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id i11-20020adfe48b000000b0034330c9eccasm14488284wrm.79.2024.04.10.12.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 12:36:21 -0700 (PDT)
Message-ID: <27b4b37b-c736-4d6b-98f0-0856e09ec5b6@linaro.org>
Date: Wed, 10 Apr 2024 21:36:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add
 ipq9574 gen3x2 PHY
To: mr.nuke.me@gmail.com, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240409190833.3485824-1-mr.nuke.me@gmail.com>
 <20240409190833.3485824-6-mr.nuke.me@gmail.com>
 <019180df-67b9-438b-a10d-f92fd4ddec03@linaro.org>
 <33461c22-21a3-023b-4750-c69304471ea8@gmail.com>
 <2379377e-ca1c-453f-bb74-186ab738ce39@linaro.org>
 <a23adb9c-6377-467b-ac3c-0ec51fc97253@linaro.org>
 <d827ec3c-84fd-9352-b321-79bdc4bdcd40@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <d827ec3c-84fd-9352-b321-79bdc4bdcd40@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_123624_423595_52A1B4E0 
X-CRM114-Status: GOOD (  20.78  )
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

On 10/04/2024 18:29, mr.nuke.me@gmail.com wrote:
> 
> 
> On 4/10/24 02:02, Krzysztof Kozlowski wrote:
>> On 10/04/2024 08:59, Krzysztof Kozlowski wrote:
>>> On 09/04/2024 22:19, mr.nuke.me@gmail.com wrote:
>>>>>
>>>>>
>>>>>>    
>>>>>>      clock-names:
>>>>>>        items:
>>>>>>          - const: aux
>>>>>>          - const: cfg_ahb
>>>>>>          - const: pipe
>>>>>> +      - const: anoc
>>>>>> +      - const: snoc
>>>>>
>>>>> OK, you did not test it. Neither this, nor DTS. I stop review, please
>>>>> test first.
>>>>
>>>> I ran both `checkpatch.pl` and `make dt_binding_check`. What in this
>>>> patch makes you say I "did not test it", and what test or tests did I miss?
>>>>
>>>
>>> ... and no, you did not. If you tested, you would easily see error:
>>> 	clock-names: ['aux', 'cfg_ahb', 'pipe'] is too short
>>>
>>> When you receive comment from reviewer, please investigate thoroughly
>>> what could get wrong. Don't answer just to get rid of reviewer. It's
>>> fine to make mistakes, but if reviewer points to issue and you
>>> immediately respond "no issue", that's waste of my time.
>>
>> To clarify: "no issue" response is waste of my time. If you responded
>> "oh, I see the error, but I don't know how to fix it", it would be ok, I
>> can clarify and help in this.
> 
> I apologize if I gave you this impression. I tried to follow the testing 
> process, it did not turn out as expected. Obviously, I missed something. 
> I tried to ask what I missed, and in order for that question to make 
> sense, I need to describe what I tried.
> 
> It turns out what I missed was "make check_dtbs". I only found that out 
> after an automated email from Rob describing some troubleshooting steps.

No, the dt_binding_check fails. You don't need to go to dtbs_check even,
because the binding already has a failure.

> 
> If I may have a few sentences to rant, I see the dt-schema as a hurdle 
> to making an otherwise useful change. I am told I can ask for help when 
> I get stuck, yet I manage to insult the maintainer by aking for help. I 
> find this very intimidating.

I don't feel insulted but I feel my time is wasted if I tell you to test
your binding and you immediately within few minutes respond "I tested",
but then:
1. Bot confirms it was not tested,
2. I apply your patch and test it and see the failure.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
