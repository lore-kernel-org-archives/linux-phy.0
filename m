Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18ED7CD128A
	for <linux-phy@archiver.kernel.org>; Wed, 10 Apr 2024 16:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+KR4C2dUqt7tWZtg7v6Oo5+6vDKdDpgXs282tKNLIg=; b=O3CYzcEZIdjAT7
	oZAl3tHrQyBqL2GFVYfa2mlnKOA2XHwL8+yK+uxa8r8PJRUVZfJbSftsB5Iy7uXGFwWFUEoDMgg2C
	8hwWhuiFeFfdfblZ2A1JPt+/J2YuLiPzXMSJVIkirGKzfjtJzcq1Cwx3TwOpv5VEFtOY9XeQOikCh
	LS0ExtCbgMvl08k23N4PGq8VFQPEZeS19ohtrDCabPlkzOrcQP0AeAeW3jItHj2vKnW0nbskvLcpT
	1iqyVDmTzW7mMB5L/mcifniN2xnJn7zBR8J6eX3LguHxPQb19D+NrGlLJ4eyW3U3M36meg2wM5Eir
	mwdF7kLEraxm9FDqHGcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruapN-0000000816c-2hBB;
	Wed, 10 Apr 2024 16:29:37 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruapI-0000000813w-1xj3
	for linux-phy@lists.infradead.org;
	Wed, 10 Apr 2024 16:29:36 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-5a4f7a648dbso3796834eaf.3
        for <linux-phy@lists.infradead.org>; Wed, 10 Apr 2024 09:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712766570; x=1713371370; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KgDPsrKG9EevuxlKOblcDWf11bMcM6CUXzFHUYOd2k4=;
        b=Qr5YKHnu6Cah5TNnBt84eiOII8wgoK6E9oS4rQJPte5fNynKPujKSwjVKSPUFP7Wkz
         68L88Vv8T/sF2UPU3epbbcjAjzWC/J4zbFdFbTH1NvSUjd7kfI2cTXM38usG3q69KZmL
         5dP2pkDBHGD6RkAnMWwv0O8JJn8/mf8GWajyE8Dl/dTieXZh5SI3E9+x1SAowjKbf51D
         0aTaQGW3gb8KAyCQ9Hlh/1GKASALmQUCWwGMAWhR2PxDg7DCnEKrpibga+7xQ52NY0CS
         xtTI4+glQSeAB10LTsv90APmkRJLoz8ESfJ1aLIfO/OKWyFbmAPp8b58TTCuEoOCVtUk
         Q0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712766570; x=1713371370;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KgDPsrKG9EevuxlKOblcDWf11bMcM6CUXzFHUYOd2k4=;
        b=JFTkbIIP5I7+ozmX0/gAv5wM50wlZY4F47PEfxIH8Jknb2t7DVw6LCAIDTTwqP573N
         NiNlpRP/te8cJx8gJbZ7sPeZJfnLx0g6cGFgYOfoXsyMMIYartDq29KMl3XGKGSkreMj
         u+UDnf8qLbqqfHXYylt5B74IxOu47qbnaCegXnJhUCxSnB1arhKWwEF93p3ThSKkdOWf
         I+kc9Wx7Jpa/D2ErjKYuXSA/ghXWikciitvelCElyi0+fDXwaqWcceyln6ldYyV7GEYN
         3TK25djyWnrETzLsfr0hE3GsFKPzUrM4XteiI42jKKS/P7fcqVPdb4JF9yEo8UsIHioH
         bMLw==
X-Forwarded-Encrypted: i=1; AJvYcCVXFML+sP1TItTafAxIevI8u2o4TyB1L9t2Mi2oti1FPSYCGdWnHaGJdpb8L+y5LgangaP7yoHfwPAgdlMJ5ELSkPwTCeAXjOl5XEKotQ==
X-Gm-Message-State: AOJu0YxSwd2uQ58txGqFgsmEB1WXRKDetC8MHRpKs5VEpxa3kT++g5kK
	S+Oet92nxaVUh+DsJt2yKAkiK3UXbZGWJvfaxIjd+HqIrb20oVuU
X-Google-Smtp-Source: AGHT+IEPlZrsmJWFrIAvb9AUpyItAnZ4CMRc+H3s1py7MlHCUYPp89XFxN37H1gOS3LY7OpU6Ftj8g==
X-Received: by 2002:a05:6820:308d:b0:5a5:16e1:beb3 with SMTP id eu13-20020a056820308d00b005a516e1beb3mr3617702oob.0.1712766569914;
        Wed, 10 Apr 2024 09:29:29 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id v12-20020a4a8c4c000000b005a46c933653sm2480792ooj.1.2024.04.10.09.29.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 09:29:29 -0700 (PDT)
Message-ID: <d827ec3c-84fd-9352-b321-79bdc4bdcd40@gmail.com>
Date: Wed, 10 Apr 2024 11:29:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 5/7] dt-bindings: phy: qcom,ipq8074-qmp-pcie: add
 ipq9574 gen3x2 PHY
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
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
From: mr.nuke.me@gmail.com
In-Reply-To: <a23adb9c-6377-467b-ac3c-0ec51fc97253@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_092932_568959_A7FADD03 
X-CRM114-Status: GOOD (  16.36  )
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



On 4/10/24 02:02, Krzysztof Kozlowski wrote:
> On 10/04/2024 08:59, Krzysztof Kozlowski wrote:
>> On 09/04/2024 22:19, mr.nuke.me@gmail.com wrote:
>>>>
>>>>
>>>>>    
>>>>>      clock-names:
>>>>>        items:
>>>>>          - const: aux
>>>>>          - const: cfg_ahb
>>>>>          - const: pipe
>>>>> +      - const: anoc
>>>>> +      - const: snoc
>>>>
>>>> OK, you did not test it. Neither this, nor DTS. I stop review, please
>>>> test first.
>>>
>>> I ran both `checkpatch.pl` and `make dt_binding_check`. What in this
>>> patch makes you say I "did not test it", and what test or tests did I miss?
>>>
>>
>> ... and no, you did not. If you tested, you would easily see error:
>> 	clock-names: ['aux', 'cfg_ahb', 'pipe'] is too short
>>
>> When you receive comment from reviewer, please investigate thoroughly
>> what could get wrong. Don't answer just to get rid of reviewer. It's
>> fine to make mistakes, but if reviewer points to issue and you
>> immediately respond "no issue", that's waste of my time.
> 
> To clarify: "no issue" response is waste of my time. If you responded
> "oh, I see the error, but I don't know how to fix it", it would be ok, I
> can clarify and help in this.

I apologize if I gave you this impression. I tried to follow the testing 
process, it did not turn out as expected. Obviously, I missed something. 
I tried to ask what I missed, and in order for that question to make 
sense, I need to describe what I tried.

It turns out what I missed was "make check_dtbs". I only found that out 
after an automated email from Rob describing some troubleshooting steps.

If I may have a few sentences to rant, I see the dt-schema as a hurdle 
to making an otherwise useful change. I am told I can ask for help when 
I get stuck, yet I manage to insult the maintainer by aking for help. I 
find this very intimidating.

Alex

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
