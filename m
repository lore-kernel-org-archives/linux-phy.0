Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E52DEC4167B
	for <linux-phy@archiver.kernel.org>; Fri,  1 Dec 2023 21:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uD99GxyoDbP499WaV4THU6TnlfTPCjwMw2RiYlWvb7E=; b=3CSeP7ZNGYJxSV
	5xbGKErif5fqDgkPRUMpjlXK1DrrNU8a1UJZJYE7Kgq89dsgjsaGiaqAf0cdcUtYpPg3twGXc8LeB
	75nKeK3kVRjCWIVIuDNB1tocvEzMw4720obnGr9oir8lcVaVEyUq0EbBjg5J1+vWIDvIdSg1WIm5t
	eZCbd//NPzqbFvz/4wfzzAOJ+xgsQIXLZ/bTg46lQPh3yh+RtS+AM7uN7CU/Yieo9IaAZZbqwDqjj
	yLQC9RrpMdUruLBUmPKohRYVsnmx+TGP4FBzcNEHG+jl8fyojqsuTQwnlRNNqupsqiO0wurLr9RJX
	cGshfCdSa17fIoxb1reg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9B4d-00EfhL-1t;
	Fri, 01 Dec 2023 21:29:23 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9B4a-00EfgE-0F
	for linux-phy@lists.infradead.org;
	Fri, 01 Dec 2023 21:29:21 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a1a52aecc67so67790966b.2
        for <linux-phy@lists.infradead.org>; Fri, 01 Dec 2023 13:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701466155; x=1702070955; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=YIZWz2b2Vq9DgfuiUouVxe8cPkbxgGuEEX2xBhL0qSg=;
        b=BIRveqkbeYNOodrZBaSRQxBe1U2yMWU+r2is906F3X4Lin7lf4pgs/JyO4PZxlJkJr
         TRDnJetlPG+nr/q7ANPZTyHrytRWoesf23FbEEmz1nwhSau1nuYNoTcqoJrvbcsQnBki
         u42Cf6uoG7UF+SUoD4RK43N6N44qKGqBvOHXsAPflyaOc+pN6wnxmLuRGSG+B4WC2OkI
         OyttKtoTGOnhttoM4AhXqLMUKm5Mor/uAWMuSXncI2XH6VuFxGQvd0/iv9XHxO29BJIz
         NAq278e3AvLZO45VkT3/Whwx5Nz8HXIKRJOEVESmeFxq6fr8OUrK1a/PCUTqxPEVQpnQ
         V6Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701466155; x=1702070955;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YIZWz2b2Vq9DgfuiUouVxe8cPkbxgGuEEX2xBhL0qSg=;
        b=M/t7Rye5cwVZIhO7f8nQxOLUIwk5fdsKMoE+RiLCyhfs8j4tldgo9Ln0ySwlBRF1vK
         nzO0DQNz3Y7uc3byFqMz/uHW4Sl0lCcpiB6T3adS2R+56PJ9J5n8QQg9z50CWBBbFD9H
         jWG9OXKYPxUK5PwUSEg0PzedAnam4lmzCCuP2MGi8QV4zZnRBfqGMNJpBPvEhvv32YZZ
         25y/sDa76OIhiggvFwy05BDENVGhrDJp61xsaTmhlJX+hryIQVGhHxbYG6OamkenTgx8
         SaS8MleQiKsO65xeiZxQfc4lqKqJyBwYK3t0tbpriUnx3H3AAo6MEtYNG5doMJTx2+g9
         0/kw==
X-Gm-Message-State: AOJu0Yyh3rfMeWcYpHwkQ0XavgUUpjdRpySNrVmSqH3oMF5ODsT4bql7
	PISkdz8dfEynS+EZq9Y+xgJxlQ==
X-Google-Smtp-Source: AGHT+IFReLaF7aSUPj0Fz4Y0EG6FVc2kLIiigxFadKEoA1qL15D6YXg4kwQa11YA4EyZLy5RmltEdw==
X-Received: by 2002:a17:906:5357:b0:a19:a1ba:8cf3 with SMTP id j23-20020a170906535700b00a19a1ba8cf3mr1172228ejo.145.1701466154966;
        Fri, 01 Dec 2023 13:29:14 -0800 (PST)
Received: from [192.168.209.83] (178235187166.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.166])
        by smtp.gmail.com with ESMTPSA id c5-20020a170906d18500b00a1859bc527fsm2377783ejz.10.2023.12.01.13.29.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Dec 2023 13:29:14 -0800 (PST)
Message-ID: <c66a93fb-2729-4a86-a2db-f4692f6d0857@linaro.org>
Date: Fri, 1 Dec 2023 22:29:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
 quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
 quic_skananth@quicinc.com, quic_vpernami@quicinc.com, quic_parass@quicinc.com
References: <20231127-refclk_always_on-v3-0-26d969fa8f1d@quicinc.com>
 <20231127-refclk_always_on-v3-1-26d969fa8f1d@quicinc.com>
 <78815f1b-7390-40de-8afd-ac71806f4051@linaro.org>
 <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
 <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
 <20231201123054.GM4009@thinkpad>
 <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_132920_177321_1DB9EF0A 
X-CRM114-Status: GOOD (  12.30  )
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

On 1.12.2023 14:25, Krzysztof Kozlowski wrote:
> On 01/12/2023 13:30, Manivannan Sadhasivam wrote:
>>> What I said before:
>>> "Again, third time (once from Bjorn, once from Dmitry), rephrase
>>> property name and description to describe the hardware issue. I see
>>> description improved, but not the property name. Again in the end of
>>> description you say what Linux should do. Bindings do not describe Linux
>>> OS."
>>>
>>
>> You didn't answer my question:
>>
>> "I see a plenty of properties similar to this one instructing the OS to keep some
>> resource ON to workaround hardware issues. So they are all wrong?"
> 
> They are not the best, but it all depends on the individual case.
> 
>>
>> If you say they are wrong, why are they approved in the first place?
> Because we don't have time to keep digging what the driver is doing and
> what is claimed in DT. Some people don't even CC us on the driver.
Not sure if I asked this before, but can this not be set in the config
struct inside the driver?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
