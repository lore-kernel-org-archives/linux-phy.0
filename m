Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB215C7EE22
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 09:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HF3F5iRnUQ+KLrJURhL6teZay+A/fVmifIBSCcrKBaA=; b=PWl0d0Hqebm6kD
	3sPfiHGsOHkmJKlHYdabZs2oRFq0QO+DLNElw9It+XfPSudB5uRqVkcfmnEqQJvvDEZInajbak3Rm
	TI6+kOL3NbuHjVWo4Ix/9Y1a/8/H9bwY0/wuw9qV+5vZM5xZCZ0BU1G6WY0ENBfCG7fq/im76+w8z
	SzjlF5NRlVy4JowgZRMyZcujrsSFKMHtanPftsq6rV2eOu8vXZd6GT7UwRlqJ/Wx36PquWXec/Fnn
	thD34Anit8CA+b5uEu5ujJqrIB97UcO/oKpNOH+kEuFGdQKoPr9+4CBDq3LMqSLkvV5TDwglGTM/s
	kXRw1XQVcFWC8/aPjQfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puVNs-007IQU-1Q;
	Thu, 04 May 2023 09:36:20 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puVNp-007IP9-0q
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 09:36:18 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-50bc2feb320so334136a12.3
        for <linux-phy@lists.infradead.org>; Thu, 04 May 2023 02:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683192973; x=1685784973;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mRcoOC8fngP6Il2rAzvXIOhnaTFot/xB1pDV/8xXBhI=;
        b=MM3fLTuvY1THuF+Jes6bTaFgdLgelBxjG9Qs0YrJ62r2rXYT0XrFa3z3syIzosle/b
         ndQzUCfwxP0iURGIxMkTVDjBIChW3aQKQa5lej+0hWz/zOU+BYcZpLtkfqufI9lhZ7es
         qhlX/+ZSVEuTfyzLRaTd7wSuwjcjxrMHgq8WR24DyKR0x1kNqmw1BPJywXnPdZSaw/uQ
         v66XZknaiYzEr+EDAw3mGYpAzFgZ8hMx+Krhne2k4sav+gyjx359mGzZ3ot1qt34/94A
         ghRo/Cb+pg7QBb8ZQd8FiQIU4dfjKh2kVt6C+eOHJNmtQ6FMaiDDLxp2MrDt/PzbP4MN
         7bgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683192973; x=1685784973;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mRcoOC8fngP6Il2rAzvXIOhnaTFot/xB1pDV/8xXBhI=;
        b=PI4biguam6qJXiZFs8c0XVCh6H7/oglfXqWl9AYxHYkkbD7ltQwS2bf3q2DnbY5Xh0
         UJ19rmeZOe16qu4KZquxIDWQTiVvQIdhX5ndFOsPfWiZ0+VxIS4V98eE779sz5Smcmib
         yVieaykk5dIbTSU3eSEy5ZWi/AmmnN+uUqIrbdj7T2iqT/7BqlTAaeRp6TIDFgs3GQ/V
         esXUJ1KaLERwFDTMN0stxTTyweWOIk5vw2pkPhNiXx3fYIl7VAN4qCnpaKS2nIWv+q89
         +61iHqNsr661S/ygi0WmrFY1Pr8PDfv/kZk8cXMR+MnCc/fv0AcdeqJx3hw8xMhVjkQB
         ShLw==
X-Gm-Message-State: AC+VfDx1OYKRutlixcGhf+V+yoDXUkWJuSNgEMWoLYuz76/fn+CJjoaA
	zA9wgCko9PONjwNKgiS44p48Rg==
X-Google-Smtp-Source: ACHHUZ76/GLGEckds5wB/s6mHv5yN0exDgClTi+UZl555s4ZPAcE2DRB69WKyTxronDQzYc5TFp31A==
X-Received: by 2002:a17:907:1b08:b0:957:1df0:9cbf with SMTP id mp8-20020a1709071b0800b009571df09cbfmr6548125ejc.19.1683192973372;
        Thu, 04 May 2023 02:36:13 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id sb21-20020a170906edd500b0094f4d2d81d9sm18480946ejb.94.2023.05.04.02.36.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 02:36:12 -0700 (PDT)
Message-ID: <86693969-59bf-5bcc-42a3-b6e94a0d6f3e@linaro.org>
Date: Thu, 4 May 2023 11:36:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [RESEND v2 1/6] dt-bindings: power: Add JH7110 AON PMU support
Content-Language: en-US
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
 <1ac26c1a-1726-515d-6598-849a07ed0b86@linaro.org>
 <5adda0ad-965c-fbf0-878c-9d41d28b5c39@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5adda0ad-965c-fbf0-878c-9d41d28b5c39@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_023617_307558_B9405CC8 
X-CRM114-Status: GOOD (  11.35  )
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

On 04/05/2023 10:43, Changhuang Liang wrote:
> 
> 
> On 2023/5/4 15:26, Krzysztof Kozlowski wrote:
>> On 04/05/2023 09:20, Changhuang Liang wrote:
>>>>>
>>>>> Krzysztof,
>>>>>
>>>>> I am confused about what to do next. How to add this power-controller's
>>>>> node in device tree?
>>>>>
>>>>
>>>> You just move power-domain-cells up.
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>>
>>>
>>> Like this? 
>>>
>>> aon_syscon: syscon@17010000 {
>>> 	compatible = "starfive,jh7110-aon-syscon", "syscon", "starfive,jh7110-aon-pmu";
>>> 	reg = <0x0 0x17010000 0x0 0x1000>;
>>> 	#power-domain-cells = <1>;
>>> };
>>>
>>> If right? I will tell the syscon patch's owner delete the "simple-mfd" in aon_syscon node.
>>
>> Yes, but your compatibles are now wrong. Just compatible =
>> "starfive,jh7110-aon-syscon", "syscon".
>>
> 
> If compatible = "starfive,jh7110-aon-syscon", "syscon". My pmu drivers need use 
> "starfive,jh7110-aon-syscon" to match.

And how it would even work with your proposal
"starfive,jh7110-aon-syscon", "syscon", "starfive,jh7110-aon-pmu"?

Try...

>  And my pmu series will add this 
> aon_syscon in yaml and device tree, so the syscon patch's owner don't need 
> to add the aon_syscon in its yaml and device tree?

I don't understand. But if you need to drop syscon, sure, drop it.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
