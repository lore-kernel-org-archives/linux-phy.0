Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11273C77B7C
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 07:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jR1AH8AX5p0DUZ9UjR5lfXKwYr042oRhZgHGeIftfx0=; b=ZGuydY0JjpVe6o
	XekzLsu851ccKAD81GScoCUORFn4UaaXUobh9Q9z0l44+1zThN4Xl5ZrmC2eiGU6txmZoh8X1zt85
	ZgAC4W2ntTC8fYILXGGphB+LrHGGjDmnqyHx2c28SsXtj2m0zS4v6MNPj1dkUMrhFkJIhm/fajTyD
	nVWt+/CH/ycdRKyDVZQExGjXKvgK1f7Ra20WmIUXz2fDkPQNPQK2qvSeb9eWid/RdAXNsvQcwpFsx
	1TGQsYRlXTubhFiUB4dDfINeGw4k5dFsWdjiar4zpRyM331iB4QOeJVvLARqqpDFgwjs14O3NcUG9
	EL9/whUa6dhI70gUkmrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puT0r-006qHa-1h;
	Thu, 04 May 2023 07:04:25 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puT0p-006qFj-1N
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 07:04:24 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-95678d891d6so17044066b.1
        for <linux-phy@lists.infradead.org>; Thu, 04 May 2023 00:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683183858; x=1685775858;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MB0Lz0HLLVPcyaLPlp/1Tbli9T/ik+ZJJZYpGyPb19k=;
        b=rL+vjmWV+x8xgGj/qIy7674T56btUXPlco3nlEmTnvuJYXTNhf/H+69lan22MwZca1
         m+E2YG8S2ZUyACQEjVJ/CaIO47kTPOmLrSC8e7Y8r0JWHipTiAKV5NcoPBVyt4YOl+RR
         R5f1nVm3OAtuuA2XwtuwdDgODxIrVQ4C1m31uu0IpMbyhkoGUTgTuWhxLC6yBSfZlxM3
         PXrdjVl1Xcl6kLVL/yeZUrBP4UvADhw6v/XQXaBJPlR1D7HGS8pAO6RRgeRpSy65bP1z
         uEPQPNWb1VFqnq+dCulHUCpLvKQzJQvCeKMIGaZ/Cmfc6D0qTDRvbuCzaojBPVTeP6rT
         wqBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683183858; x=1685775858;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MB0Lz0HLLVPcyaLPlp/1Tbli9T/ik+ZJJZYpGyPb19k=;
        b=FnPxpVknRZubj/d+edWxhS9QkXrSLa7AkNrJpnd8r1MkxSruAybqCB9OxydntyCmxS
         2PDd1vC/hkxC/4GzWPfeY74BqexpBDrv1ADF+q12ThTQyurY9MO3+5dJz0FDrdw00U3h
         SngT/+aDHErvKjv6lU2Ldnezc3vgoutDmcTaQqV0Xi5nB27pC88EqwJx+gsZV1U/hyWg
         Zd3IKuELWk7JO4cMjpRZvHkIKflCuf7w5cF+4USshMKS39OODItapia8D2i4K2Z1+cVe
         pXzMkGqZJS267nvFGjCNNg2dGtJRQxU/9lvEen4ZrnjyZ3sHLP0wWFcEaSgvS54JdHje
         e/Jg==
X-Gm-Message-State: AC+VfDxslIlKpujYkkuQQ0inFhVJYyqhdloDXUB0A6IK9SGmXidu+rRk
	2j+DYLiS5pTdgU9DfwngzQHeLQ==
X-Google-Smtp-Source: ACHHUZ7HdVC/fX6Z2X3qPH7Uwk0pK5Q9v2ZJv4B3xZuXGVlL9cIGnAlh+vDNm/3ibLcx4w5x/r4xEQ==
X-Received: by 2002:a17:906:4fc7:b0:862:c1d5:ea1b with SMTP id i7-20020a1709064fc700b00862c1d5ea1bmr5777903ejw.8.1683183858596;
        Thu, 04 May 2023 00:04:18 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id og36-20020a1709071de400b009600ce4fb53sm9449928ejc.37.2023.05.04.00.04.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 00:04:18 -0700 (PDT)
Message-ID: <089e24d1-588a-4a56-f00b-0b35d1d99295@linaro.org>
Date: Thu, 4 May 2023 09:04:16 +0200
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <482e812a-05dd-105c-189c-e926b4be9d28@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_000423_474044_D2355371 
X-CRM114-Status: UNSURE (   9.58  )
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

On 04/05/2023 08:53, Changhuang Liang wrote:
>>> 	};
>>> };
>>>
>>> Add a "regmap" property which is phandle. And it can keep the present child-node
>>> structure. This is more consistent with our soc design.
>>
>> Adding property from child to parent does not make any sense. Didn't you
>> already receive comment on this?
>>
>> Best regards,
>> Krzysztof
>>
> 
> Krzysztof,
> 
> I am confused about what to do next. How to add this power-controller's
> node in device tree?
> 

You just move power-domain-cells up.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
