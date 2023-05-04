Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1DFDC77B7C
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsqAtxAMzozy9Mjs81ANTfjjSDj5Q4nqaImcw5H9uU4=; b=MstVhum+TvoATs
	p8ifQjp7K0dvfGdpGlkJUlW19t5tGSrvQSKgLzq8sNCI3v8qy07SgRClt8LWgegfXn8t73i193nNt
	i+UUodQiah5n4BlDIrTSeo8ewLfYv+Noi+1Jna7aEwS1XLfho+Ehv8TE2foCtR+kjnwmGIgvgwMJq
	GM9KkerRJcy+GDUbxmrQ0V55N3708nUFs5C/FvRSyaqUJVZKNazLgZQVHfrRz1y5xUax8/RLZ/VVv
	tINCl94e670Haw1mG8lS2v0sNp+IUeAA+5H1xMOyrpNeLnr5iKBJIoD6C7Whs+vvEJX7vug0md4s+
	niJ1jKDG4btkpn++OXlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puTMH-006tBK-1a;
	Thu, 04 May 2023 07:26:33 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puTME-006t9H-2O
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 07:26:32 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-50bc34b98edso129794a12.3
        for <linux-phy@lists.infradead.org>; Thu, 04 May 2023 00:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683185186; x=1685777186;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Veea/UdjGX427jFOli9vB9D6CHqmWA/T+0M7h9xVaJE=;
        b=Cb16lGCLHN1QqCy5MTQ6fwtjmgT/VdffV3xWOGUsBe8guwFY8wzvsY6Q6QwA5GQ66t
         A3Jgg64o5Fbr8KT8F4BO7Tb2NxUPsgAtNSBUUQH1dPh51+R71M3TUbMLyYZJN5eNqqb9
         p2dwFabC7DG7jPueCR4PS+pXJZ3ZO92/t4lKijJqloJ5YTYJBzUBw0wjsUvDxCAjvLQe
         IWN+P5WA6Psary2jwEJ7ZWIAl6Xw3qp8iu4WY9xK606iUK3rEQzt1dn75cpES0EIKj1r
         dwV8e+GHmtEAmqLIDhLCnREyST9qFEErCz1yQAA2D6jy03Sn4ALsk267Wd/zJgLVs/k8
         0ktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683185186; x=1685777186;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Veea/UdjGX427jFOli9vB9D6CHqmWA/T+0M7h9xVaJE=;
        b=VJnRYQr9Ls3UcKdTU2QZtkagkS8RwszSu3SkUruTkfgo1JZmkwv/Fis143DDMMHcLb
         jilx7o79b7xELk3kHHj+c4aTt+n5O5NC6BOymUSz8GAR1cHQjxRfII0FNRsLxbA35Cep
         4enXcZmSX/kSPPZbCytPsRhA/FoG8VZz555YAYFeudtxk7Fd7HenaA8vSYbGrVepI96q
         8XtS/y2ZQt14OV36af5TmG3MN7E4mFITQ9aw/MnpdtzYZU+b+eErkTjQ3x5Kj9PTstlO
         HLomNMlPRhpCeTnw1NFpM3G7n5NYe0DEDMj18D5BvdtdYHMgoU0QnwP8siEj24NidcSZ
         4q8w==
X-Gm-Message-State: AC+VfDxlUrKWhEAJXKmoK6hTalx9MS5EEGO2A5BbNtMi0obq9F+pgb58
	INy5nuvMxzdIeBQStyOc0Og67Q==
X-Google-Smtp-Source: ACHHUZ6x7SMojw1hUma3+8M6WtWKOixbNJW5a+nedr/mf1YnHqtTnFcwCnsf9OGKAF/fwPEKoE65Lw==
X-Received: by 2002:a17:907:360a:b0:94f:c72:1ddf with SMTP id bk10-20020a170907360a00b0094f0c721ddfmr5234499ejc.41.1683185186192;
        Thu, 04 May 2023 00:26:26 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id gz9-20020a170907a04900b00965a52d2bf6sm598741ejc.88.2023.05.04.00.26.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 00:26:25 -0700 (PDT)
Message-ID: <1ac26c1a-1726-515d-6598-849a07ed0b86@linaro.org>
Date: Thu, 4 May 2023 09:26:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [RESEND v2 1/6] dt-bindings: power: Add JH7110 AON PMU support
To: Changhuang Liang <changhuang.liang@starfivetech.com>,
 Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Emil Renner Berthing <kernel@esmil.dk>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Walker Chen <walker.chen@starfivetech.com>,
 Hal Feng <hal.feng@starfivetech.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 vkoul@kernel.org, linux-phy@lists.infradead.org
References: <20230419-labored-camper-644d51a7ca96@spud>
 <1a5b15fa-4f20-51c2-2ba1-a04a2911a694@starfivetech.com>
 <20230424-baffle-punch-ec73098f2b6a@spud>
 <d685a1d4-c07d-7dfa-f1fb-b35ceb2aa0eb@starfivetech.com>
 <20230425-unquote-eligible-09f743d81981@wendy>
 <a7cdfabf-2312-eaf3-f462-5bda7f0a120d@starfivetech.com>
 <68cb565d-bf39-10b0-9e3e-35ba7f54b90b@linaro.org>
 <0988495f-b87a-7f69-f222-37c67d6eae23@starfivetech.com>
 <20230425-resale-footrest-de667778c4fe@wendy>
 <663e9933-b9b3-a48f-98b6-2207215a8ed7@starfivetech.com>
 <20230425-commotion-prewashed-876247bed4ab@spud>
 <0b0f9187-ad6b-a1d9-6ec4-beb8989ca731@starfivetech.com>
 <3ed72340-accc-4ad1-098f-4a2eb6448828@linaro.org>
 <482e812a-05dd-105c-189c-e926b4be9d28@starfivetech.com>
 <089e24d1-588a-4a56-f00b-0b35d1d99295@linaro.org>
 <ea5b5534-8fc2-7c84-a011-c1b42c6ed7a0@starfivetech.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ea5b5534-8fc2-7c84-a011-c1b42c6ed7a0@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_002630_801498_4E802F8A 
X-CRM114-Status: GOOD (  10.24  )
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

On 04/05/2023 09:20, Changhuang Liang wrote:
> 
> 
> On 2023/5/4 15:04, Krzysztof Kozlowski wrote:
>> On 04/05/2023 08:53, Changhuang Liang wrote:
>>>>> 	};
>>>>> };
>>>>>
>>>>> Add a "regmap" property which is phandle. And it can keep the present child-node
>>>>> structure. This is more consistent with our soc design.
>>>>
>>>> Adding property from child to parent does not make any sense. Didn't you
>>>> already receive comment on this?
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>>
>>>
>>> Krzysztof,
>>>
>>> I am confused about what to do next. How to add this power-controller's
>>> node in device tree?
>>>
>>
>> You just move power-domain-cells up.
>>
>> Best regards,
>> Krzysztof
>>
> 
> Like this? 
> 
> aon_syscon: syscon@17010000 {
> 	compatible = "starfive,jh7110-aon-syscon", "syscon", "starfive,jh7110-aon-pmu";
> 	reg = <0x0 0x17010000 0x0 0x1000>;
> 	#power-domain-cells = <1>;
> };
> 
> If right? I will tell the syscon patch's owner delete the "simple-mfd" in aon_syscon node.

Yes, but your compatibles are now wrong. Just compatible =
"starfive,jh7110-aon-syscon", "syscon".

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
