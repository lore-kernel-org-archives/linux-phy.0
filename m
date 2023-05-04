Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B945C77B7C
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 06:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6VJf+Tuq0NKw1rB6IfIXIY5wWvomn12fl9b69mOqBs=; b=1/LyhMPWDvMvh2
	pVQnJTPqSCjDEsBKgEuBwZ4SxpiqkN2tQsdfevMkiBKe7w07KijBezmCEKgRl2mrgqbKHzdA1012v
	J03nXRChk5cuS0grE35uCLufmlFPYYW1cbTH59W+mDUKEy0PNakbKZOrUr5qaQ107OYO9nwrCvJ/I
	SB9FifauUiH/R/nNUKtJJSp1YOgPh5BIiHy069rmriD0kOQh2eE7N4tQY4jNFfgJnfsyvkkfplYJz
	sUFuu4LR0jdl2LPY/KZI0+9b+wmogmB6bP3jj2THk93OgHlDMJtiDHMqgogzE8Fmsd5oOEsBg9Mqg
	VC/qeW/EuDZz3qQS0vng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puSDt-006jLn-2L;
	Thu, 04 May 2023 06:13:49 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puSDq-006jJQ-2F
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 06:13:48 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-95369921f8eso9545166b.0
        for <linux-phy@lists.infradead.org>; Wed, 03 May 2023 23:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683180820; x=1685772820;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LR67W3cu8TbdbHHvCQSzQmbTfNOrONMNhQlzXKF5QhY=;
        b=C/inxBvjHBKX6ieqG1SKbI5iXHvEGIAYZJ81VWBub4NdV61svnrIu0nxr3RpLn0swe
         rjArbctnnIy5zRRZt98Mr6T9r/Km0X8LgbmGISWJJWl7MgdobOkBLexzz7MZcggE57iw
         kd8uRxX2gxAXP6u2fQtsg7eshSojRfGyIBYQXi6VQwf/ZHIh/5/BXAAm5eCZHmun+Ypc
         K8glI3FPoZTp0lKA5KEB4j+Xu8WZp2EPfkNi3NAssh89TXL9u4olIzEZXpIuEbfKYN5c
         aoHVqEA7Ju8fvu8c0WE0CnlkJ3RQbFKlov+yUuQGAHQBJBOfEU5Cm+3yRZf/FYqvP/Gp
         LZdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683180820; x=1685772820;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LR67W3cu8TbdbHHvCQSzQmbTfNOrONMNhQlzXKF5QhY=;
        b=T5Dfkc0QeUbNIw5sXiv0OZu/PjKRx7mAnPsWcdfGLr/7KMJrqmL03kOF0LC7JOCt+w
         iPT4BuZtqbIq25rtlHpFjFJvWsRS+eXsQ1NjLSOIx8VEgySxE0J4w/bsDdPvWCMJ7Hk8
         720wOiVW/gMHY496mFZheR67E5oswokwNf8HI5PfhVR+esmbc2TulgD1RDiT8yJ4RYsB
         ehS0bqV2eIuOJ0zFe/gkOAGAM0Zwj+AKe0iTAioc94nMyLKYZ5i5tzLluJB6oDnRVh9n
         iQKqlSfUbwfIyQhI32p2JFaHqDk7esQIdhaWEAoAcBqM1IEDR4rm0IXnJ1d+9AmeIZyi
         Od0Q==
X-Gm-Message-State: AC+VfDy+Gc6N7WZ3C+gd7Hf/Z1+4cORorZh23WVCCSM+MbQxRkYNC+M6
	uKsbIraYEbaIAY7cN5TQSQmMOA==
X-Google-Smtp-Source: ACHHUZ7wIe5zVEzox2wc5lT4hvgbIaXMMXZaqdRJTNEz0rZ6QHnHEVd2ucDuXrE6/fW5nkbcl0TBzQ==
X-Received: by 2002:a17:907:60d6:b0:960:c5fe:a35a with SMTP id hv22-20020a17090760d600b00960c5fea35amr6542406ejc.64.1683180819754;
        Wed, 03 May 2023 23:13:39 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id o19-20020a1709062e9300b0094f281bd279sm18333085eji.198.2023.05.03.23.13.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 23:13:38 -0700 (PDT)
Message-ID: <3ed72340-accc-4ad1-098f-4a2eb6448828@linaro.org>
Date: Thu, 4 May 2023 08:13:37 +0200
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0b0f9187-ad6b-a1d9-6ec4-beb8989ca731@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_231346_738970_4E8B12D1 
X-CRM114-Status: GOOD (  19.67  )
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

On 04/05/2023 03:34, Changhuang Liang wrote:
> 
> 
> On 2023/4/26 0:56, Conor Dooley wrote:
>> On Tue, Apr 25, 2023 at 08:26:35PM +0800, Changhuang Liang wrote:
>>> On 2023/4/25 17:35, Conor Dooley wrote:
>>>> On Tue, Apr 25, 2023 at 05:18:10PM +0800, Changhuang Liang wrote:
>>>>> On 2023/4/25 16:19, Krzysztof Kozlowski wrote:
>>>>>> On 25/04/2023 09:57, Changhuang Liang wrote:
>>>>>>> Yes, "starfive,jh7110-aon-pmu" is a child-node of "starfive,jh7110-aon-syscon".
>>>>>>> In my opinion, "0x17010000" is "aon-syscon" on JH7110 SoC, and this "aon-pmu" is just 
>>>>>>> a part of "aon-syscon" function, so I think it is inappropriate to make "aon-syscon"
>>>>>>> to a power domain controller. I think using the child-node description is closer to
>>>>>>> JH7110 SoC. 
>>>>>>
>>>>>> Unfortunately, I do not see the correlation between these, any
>>>>>> connection. Why being a child of syscon block would mean that this
>>>>>> should no be power domain controller? Really, why? These are two
>>>>>> unrelated things.
>>>>>
>>>>> Let me summarize what has been discussed above. 
>>>>>
>>>>> There has two ways to describe this "starfive,jh7110-aon-syscon"(0x17010000).
>>>>> 1. (0x17010000) is power-controller node:
>>>>>
>>>>> 	aon_pwrc: power-controller@17010000 {
>>>>> 		compatible = "starfive,jh7110-aon-pmu", "syscon";
>>>>> 		reg = <0x0 0x17010000 0x0 0x1000>;
>>>>> 		#power-domain-cells = <1>;
>>>>> 	};
>>>>>
>>>>>
>>>>> 2. (0x17010000) is syscon node, power-controller is child-node of syscon:
>>>>>
>>>>> 	aon_syscon: syscon@17010000 {
>>>>> 		compatible = "starfive,jh7110-aon-syscon", "syscon", "simple-mfd";
>>>>> 		reg = <0x0 0x17010000 0x0 0x1000>;
>>>>>
>>>>> 		aon_pwrc: power-controller {
>>>>> 			compatible = "starfive,jh7110-aon-pmu";
>>>>> 			#power-domain-cells = <1>;
>>>>> 		};
>>>>> 	};
>>>>
>>>> I thought that Rob was suggesting something like this:
>>>> 	aon_syscon: syscon@17010000 {
>>>> 		compatible = "starfive,jh7110-aon-syscon", ...
>>>> 		reg = <0x0 0x17010000 0x0 0x1000>;
>>>> 		#power-domain-cells = <1>;
>>>> 	};
>>
>>> I see the kernel:
>>> https://elixir.bootlin.com/linux/latest/source/arch/arm64/boot/dts/mediatek/mt8167.dtsi
>>> this file line 42:
>>> it's power-controller also has no meaningful properties.
>>> What do you think?
>>
>> I'm not sure that I follow. It has a bunch of child-nodes does it not,
>> each of which is a domain?
>>
>> I didn't see such domains in your dts patch, they're defined directly in
>> the driver instead AFAIU. Assuming I have understood that correctly,
>> your situation is different to that mediatek one?
>>
>> Cheers,
>> Conor.
> 
> Conor and Rob, 
> 
> How about this way:
> 
> aon_syscon: syscon@17010000 {
> 	compatible = "starfive,jh7110-aon-syscon", "syscon", "simple-mfd";
> 	reg = <0x0 0x17010000 0x0 0x1000>;
> 	
> 	aon_pwrc: power-controller {
> 		compatible = "starfive,jh7110-aon-pmu";
> 		regmap = <&aon_syscon>;
> 		#power-domain-cells = <1>;
> 	};
> };
> 
> Add a "regmap" property which is phandle. And it can keep the present child-node
> structure. This is more consistent with our soc design.

Adding property from child to parent does not make any sense. Didn't you
already receive comment on this?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
