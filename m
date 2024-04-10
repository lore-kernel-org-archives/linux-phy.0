Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF7E9CD1296
	for <linux-phy@archiver.kernel.org>; Wed, 10 Apr 2024 06:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KpZYGFR1me8mScXku0NUioDxdvb4WNoudzgSvgZN/s=; b=03kbbMtv6ews0s
	HII2X1SVk2Ii1jHp34mxEKljyqpgXdpW10JVLRVuns72MQnsG4BZc5ESqcvfdBNxdTXIE91CM6xYI
	SH9dB3rOR0y30btwBXb0Y/3xuVufV/LEC1pC4V/JbBjfcFDy5QC7sNtZtphdCkB/VzKc3K/rO6YQi
	2VTr9gsZ9fZNhYvazbWeFWoBJuEQg+5X0wDc8C9USnLRDYr0mXiKz38P8G3d8/ZK7mEOy66nZ9ec1
	rj5CdUWB2/alzP36mBHNgwIWLl4H///YwxzD/vPLJjZzQNcEYvRoh4Z7Qep+d91GpXmTdqhPh3264
	27pGJbuowdz7W47UZsdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruRvn-00000005VSI-1T3t;
	Wed, 10 Apr 2024 06:59:39 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruRvk-00000005VQp-2zL7
	for linux-phy@lists.infradead.org;
	Wed, 10 Apr 2024 06:59:38 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-516d727074eso5866867e87.0
        for <linux-phy@lists.infradead.org>; Tue, 09 Apr 2024 23:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712732374; x=1713337174; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=irqlEKOEBz9zVTX5ET6ObBZ9mYMAyzmpT3TvBmoLetU=;
        b=c4Expa9jnbgLMI3dhQCLsk8wDb0W0sOH08YjWpAwLBmFrSTPDpgXzdzcMkXJ040Pl9
         AvOY4tHnXvejZ936pZSVwWNujyYIUI1Nc1YX+UktHOfKEk72Q5IzXELBfUCbwwMkzru7
         OE7fScBZYSRpdOauBDLlJ5aG/J1B7WcLpOF6h7NVVwUszRUBjq3FSKoSoPlPThZKzgfp
         uZ6uQUf57eAFF35E0WCqXaRLbJZ+o0n7VRKPnFXFIQ31TcFY6TgZikZLZz6FcAYYSR7x
         5CFjFhjCfl+WBfV/e8ExUFoldRruOhPrtrSk86fJvp/mEf4uR+mPQEQR4NGq2AVdl8sn
         9EBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712732374; x=1713337174;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=irqlEKOEBz9zVTX5ET6ObBZ9mYMAyzmpT3TvBmoLetU=;
        b=IeVAn/y+lO3Axrzo1fLgWxP2+diznafhsCCTtpYIB0CeWHxCv+H0SIOAlZzGNFxzG3
         bUhSCEbOVb2199AO/7iJjgtzfzCCIc9dr/H+2zGLuL8l9xfdHoeF8668NNQVD+tEZjOM
         6pglF8tCLAE4LFFHK77jNukfZdn3STF8tHmqr71VC6vq1cbuFTYmheYbHcU3BAqwFKVB
         XKcRsYkDIN+sHQJkHOiquIpv5WbXJMi+xUuRcW5WeTtJKYmPb9TgLTPlHJXOhFB326k/
         vP0yRPaxRJkKbmmRbGXvd8UYiggBOa1bawB92NBUdFffFS4UlQeez8OENrahvgdOL/DP
         nT1A==
X-Forwarded-Encrypted: i=1; AJvYcCUnniTqqgI9B5/f+z+E09fsJn3ddWYU54/TCHbm1kEUSH52h0i3p+gt8tkkzHrKeNoPKE8M3zuf8fp06l6bUyiqOrXGR6TVWiM/Y5uTjQ==
X-Gm-Message-State: AOJu0Yzx/SJh2kEyQl5OhQH4rqMyagE5UFcc9FMQTbIyF4LCZTly2Fb6
	iRtURRqehvzuIXdsri+/Vb/r1hstoQq0RjwdVNosa6nv+BG1Hy3Ep3Sf3aRGSJ8=
X-Google-Smtp-Source: AGHT+IGX1VybfQx4v0n2SjzPZaw4LLa2aaM+zIOhXNtj4FiZDVC5lT0TustbyCOt269jFUtelMiq0A==
X-Received: by 2002:a2e:9bc6:0:b0:2d6:c0d5:b96e with SMTP id w6-20020a2e9bc6000000b002d6c0d5b96emr1208003ljj.24.1712732373780;
        Tue, 09 Apr 2024 23:59:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id l23-20020a05600c1d1700b0041663c75ef1sm1323990wms.32.2024.04.09.23.59.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 23:59:33 -0700 (PDT)
Message-ID: <2379377e-ca1c-453f-bb74-186ab738ce39@linaro.org>
Date: Wed, 10 Apr 2024 08:59:31 +0200
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
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <33461c22-21a3-023b-4750-c69304471ea8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_235936_968467_8D1E978B 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
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

On 09/04/2024 22:19, mr.nuke.me@gmail.com wrote:
>>
>>
>>>   
>>>     clock-names:
>>>       items:
>>>         - const: aux
>>>         - const: cfg_ahb
>>>         - const: pipe
>>> +      - const: anoc
>>> +      - const: snoc
>>
>> OK, you did not test it. Neither this, nor DTS. I stop review, please
>> test first.
> 
> I ran both `checkpatch.pl` and `make dt_binding_check`. What in this 
> patch makes you say I "did not test it", and what test or tests did I miss?
> 

... and no, you did not. If you tested, you would easily see error:
	clock-names: ['aux', 'cfg_ahb', 'pipe'] is too short

When you receive comment from reviewer, please investigate thoroughly
what could get wrong. Don't answer just to get rid of reviewer. It's
fine to make mistakes, but if reviewer points to issue and you
immediately respond "no issue", that's waste of my time.

Look at entire code of qcom,pcie how it is organized. Or:
https://elixir.bootlin.com/linux/v6.8/source/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml#L132


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
