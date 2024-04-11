Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0171EC4345F
	for <linux-phy@archiver.kernel.org>; Thu, 11 Apr 2024 17:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ZIvVzwcnz9ezVS1EIlyoaBxWsKR1uBVGezVVYJIZTQ=; b=y60q9mWEjsp5ro
	34KqXyWiGxIybB99uHseqGrXokpnCIwo0zOvmSMh4pNDCsYWcR4+eWVL7DG5W4u5jRE177cFMdENC
	wTlrARBfs75v/AMpbKPj2Xt8qTtu1KKhqpE9WXBqQVvb3Lsr6XXRUeUgvXnXAjgZpapstqSM8un8n
	I+k5Xx6mT0AvL368lehwG17gzPm2HnyGCexcm36Kjd3EProXpxXLqbhTIaJ7IgUfYn8otZ/z9CY/L
	bZwk0V2FHzkYbKnFtWVa1cAee5cSzMJ1d2ga+nrRy2uvBXiVEiFbCgFU797ITLx0vy8oRSVBoq1I7
	4z6Q2rBbY2i2lGsbrGJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruyAI-0000000DMvR-2arT;
	Thu, 11 Apr 2024 17:24:46 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruyAG-0000000DMu5-3SsE
	for linux-phy@lists.infradead.org;
	Thu, 11 Apr 2024 17:24:46 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-dcc73148611so41918276.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Apr 2024 10:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712856280; x=1713461080; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3aU+VDcnxdJAiLiKhNqs0MWODsXShfL8imzNJx8uWYI=;
        b=heJst3IrqdKHRIzmhUYRjuOVodhmCHrrbYHbhHeSF8L0Y8YEva35Tpu4bBMaBhwGTN
         h6nvmHV5TxAGCEgAI7wT71z7qKYUnYESAKN7HxE92TJSZAJTUS834fEBPUIKuB+Y+8uR
         42VantYW1kA/Is1KF2QE66dHm2Si1X3wLgfZyIuebPgkQdrcYtt9+KUy+UVEoeBiFBgZ
         gUGue56cciwKM6DIGnOWPEL/o9vA1S7mXXn45Kcwxqpj3O6KBpmJ8YIBuDt1DYzP7kr9
         RzTvYQ2udQjigOTjiaUG7ycp5paPZ+fg/j1XJrVT0bjYJBaLr7Rigf3xGAiOtUno5Vuc
         PMBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712856280; x=1713461080;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3aU+VDcnxdJAiLiKhNqs0MWODsXShfL8imzNJx8uWYI=;
        b=wU+vfYHMEkDvM4wLAoQursTwCAfDiSMvRbEk9Rc8TcHVGdYylsmXOhz9Umi+4y0Jcw
         bi4bQ5RT/YH99MRsi4ZLA/lGvHEj4KawAps/nLjEq869zENOOVvNlXtjrNcbg3c4HYzL
         zA+2mvhAOUUhQjW7xFYjtDLJYEZLewnw4Fky08tVYjx+MVdgkgpCYofzCfFg8kdRAYMZ
         LlMtN9uBZQj0O9c0VyfaijW1U4KbDZPuHQtbh6QX/+TkHoj/S+wpxYsNEJhgde2qYOG3
         w16+Xe4bjTsUUBtCDUQ1x599Hl790EoBdFDKTyzEqhXv5ElGLpT6m3rzqQu0SVkKF0P5
         dZ6w==
X-Forwarded-Encrypted: i=1; AJvYcCUhmuJBlcvaq8HXYa3sWuxN2uOwISycjz68E7WvTdHs2vz+5MODnYAt35DWSzJCppdu2ex2iqylvJaLSOeY8gu7WBgV0St2PDkT9lnGQQ==
X-Gm-Message-State: AOJu0YwmBfKxB3JhtKo3GLIfgsFTz3dAnfuBVUYrzkSDwljbzT7doT4H
	/tsUCHtcICE5MnpXPzyAHjSm3xCH39LnhKJ/lZN0f4l9S9n4Y+WRRmNffS9o1Vc=
X-Google-Smtp-Source: AGHT+IHwtXI6RPcAx6JYyAqjw9V9RWwxVxik8CVr64O0+hIJzbXQ+BRGV5uoANxfOjFaDBQ5uvvq2Q==
X-Received: by 2002:a05:6902:150b:b0:dc6:4d0c:e9de with SMTP id q11-20020a056902150b00b00dc64d0ce9demr210219ybu.0.1712856280449;
        Thu, 11 Apr 2024 10:24:40 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id j127-20020a255585000000b00dcc7b9115fcsm383512ybb.3.2024.04.11.10.24.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 10:24:39 -0700 (PDT)
Message-ID: <144398ae-42ae-b816-62d6-a90738544ca4@gmail.com>
Date: Thu, 11 Apr 2024 12:24:38 -0500
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
 <d827ec3c-84fd-9352-b321-79bdc4bdcd40@gmail.com>
 <27b4b37b-c736-4d6b-98f0-0856e09ec5b6@linaro.org>
From: mr.nuke.me@gmail.com
In-Reply-To: <27b4b37b-c736-4d6b-98f0-0856e09ec5b6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_102444_913669_79651C31 
X-CRM114-Status: GOOD (  23.52  )
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



On 4/10/24 14:36, Krzysztof Kozlowski wrote:
> On 10/04/2024 18:29, mr.nuke.me@gmail.com wrote:
>>
>>
>> On 4/10/24 02:02, Krzysztof Kozlowski wrote:
>>> On 10/04/2024 08:59, Krzysztof Kozlowski wrote:
>>>> On 09/04/2024 22:19, mr.nuke.me@gmail.com wrote:
>>>>>>
>>>>>>
>>>>>>>     
>>>>>>>       clock-names:
>>>>>>>         items:
>>>>>>>           - const: aux
>>>>>>>           - const: cfg_ahb
>>>>>>>           - const: pipe
>>>>>>> +      - const: anoc
>>>>>>> +      - const: snoc
>>>>>>
>>>>>> OK, you did not test it. Neither this, nor DTS. I stop review, please
>>>>>> test first.
>>>>>
>>>>> I ran both `checkpatch.pl` and `make dt_binding_check`. What in this
>>>>> patch makes you say I "did not test it", and what test or tests did I miss?
>>>>>
>>>>
>>>> ... and no, you did not. If you tested, you would easily see error:
>>>> 	clock-names: ['aux', 'cfg_ahb', 'pipe'] is too short
>>>>
>>>> When you receive comment from reviewer, please investigate thoroughly
>>>> what could get wrong. Don't answer just to get rid of reviewer. It's
>>>> fine to make mistakes, but if reviewer points to issue and you
>>>> immediately respond "no issue", that's waste of my time.
>>>
>>> To clarify: "no issue" response is waste of my time. If you responded
>>> "oh, I see the error, but I don't know how to fix it", it would be ok, I
>>> can clarify and help in this.
>>
>> I apologize if I gave you this impression. I tried to follow the testing
>> process, it did not turn out as expected. Obviously, I missed something.
>> I tried to ask what I missed, and in order for that question to make
>> sense, I need to describe what I tried.
>>
>> It turns out what I missed was "make check_dtbs". I only found that out
>> after an automated email from Rob describing some troubleshooting steps.
> 
> No, the dt_binding_check fails. You don't need to go to dtbs_check even,
> because the binding already has a failure.
> 
>>
>> If I may have a few sentences to rant, I see the dt-schema as a hurdle
>> to making an otherwise useful change. I am told I can ask for help when
>> I get stuck, yet I manage to insult the maintainer by aking for help. I
>> find this very intimidating.
> 
> I don't feel insulted but I feel my time is wasted if I tell you to test
> your binding and you immediately within few minutes respond "I tested",
> but then:
> 1. Bot confirms it was not tested,
> 2. I apply your patch and test it and see the failure.

Thank you for double checking, and I am sorry this escalated in this 
manner. I believed you the first time that something is wrong, and I had 
a hard time figuring out what.

I am now able to repro the errors, and the below changes appear to work. 
Is that sufficient?

    clocks:
      minItems: 3
      maxItems: 5

    clock-names:
      minItems: 3
      items:
        - ... (5 clock names here)

For ipq6018/ipq8074:

       properties:
         clocks:
           maxItems: 3
         clock-names:
           maxItems: 3

For ipq9574:

       properties:
         clocks:
           minItems: 5
         clock-names:
           minItems: 5



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
