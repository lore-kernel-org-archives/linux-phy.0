Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D2ACC7619A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qV2YX/FWZwGCUT5mkHJgstUMf7p1pOIw/pnerqXlzIE=; b=KlsDy0W74K3RMo
	eFr14uANkaigWosCLj+CcoXTwFAGsMtkXIun8N/lc+HPLfsqNMfsy1JZXMsG7eXJhDuipqvrZkzL2
	Ii34ftWcB8pO9RJ69HxlviEbdsAcTJbZK7BVL9ULqgBYHfSji74ZXRwLLDiZgEBdt461upIeOWbQb
	aQQAVECM4fhm4KXfQJH09NE8ko1zO19rQoHfbXTEDv82TPQwuyO3TTqiIoG1oe2Rpvnlt1tV839ju
	v7K+c7qfM7WUgCv8QNK/PhXkP5KwiwEGLRiwbhyH16yIIHYMd3sYfTmTX3XIz0qUi619JgVx/u5RN
	ulvculgL6cLWZHRC8cSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdkw-003szC-2i;
	Wed, 12 Apr 2023 16:55:38 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdkt-003sxh-18
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 16:55:36 +0000
Received: by mail-ej1-x633.google.com with SMTP id dm2so30621378ejc.8
        for <linux-phy@lists.infradead.org>; Wed, 12 Apr 2023 09:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681318533;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mL1Dmw1t8cH96ZKM0Y0rJ8RmORlNySoRf2nYIAB9Jzo=;
        b=d28p+fne4GmzRaXHcfIxScgVDg2XtPaJGzWNaeaYsnNrQP/mFYMAIAV3JVbIhWDMbu
         Fa+/y0rOjrQPkLzfSI6ggc0jbtP9nYDqnOK077i5kTPh8kOdV3bpjER9aYcC8vx/sHXf
         HdT2ny8s6RCRLIUyjNv7y+Ibx+zZyzkG8t5szrFkZzvxweU3bHSpAcmn+pNldAXxUH8d
         p1ZhmAYs7zvjgQiOszonoIM3nAVZ/FLwjfVIHk9otAEY6sN0RaSz9SJ3uqwLgFyz5u8A
         wEZkcdzxtdnDXXTnp4vMPvK7zFjOCAV86N8J/5DyF+XoPB3yX3zTK3yYn/4clac6Z2gG
         bFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681318533;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mL1Dmw1t8cH96ZKM0Y0rJ8RmORlNySoRf2nYIAB9Jzo=;
        b=RoPqb/2TDShHTv910l4JkM3o2sFtpMzjrwBqutYN3sdE8nRTuz/wfRyT5TYAnU9LGf
         kpXg4NmmyDpaN+zQ3OSJss6snLKADI3FW66rQXHz3Pjc3tafhDaC4eOZgXm8wtpc50BB
         AbsLeFw+vpVixfOnYgwuVmdrvXRe8N5+S5MwoY+iWdLC6NHrk9y8xUej7rLRBG2VtOJC
         0y+3DVResm9DtgF2aWS0rd13k8V+Hubx3z2dTijBzoR5QjDcJfooK4ekHd8UuyxGxApx
         rfBzEtIXeHEsPE70vP30UzNGxT4iV4k1jFomXkyhk0pDnayueJU1XwfPZ9mXVFtyQor9
         3hzw==
X-Gm-Message-State: AAQBX9fcvtYnF4nhEbtJO0EZrltRHP+F8TLbtBBBP3dUuP6gFAyv2fPU
	x8H5DPWz8amWPN0c1PIkdO6qWA==
X-Google-Smtp-Source: AKy350Z1Gn9hA8XdncuSMlmsY8g62jmSran04JCDS9kQw1y/M/VsEQjsDf8807x9ocMfcFbFGA7tSQ==
X-Received: by 2002:a17:906:538d:b0:94a:582d:169f with SMTP id g13-20020a170906538d00b0094a582d169fmr12936153ejo.5.1681318532872;
        Wed, 12 Apr 2023 09:55:32 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:938a:b3db:7c59:795e? ([2a02:810d:15c0:828:938a:b3db:7c59:795e])
        by smtp.gmail.com with ESMTPSA id f9-20020aa7d849000000b00505034c27b9sm822863eds.28.2023.04.12.09.55.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 09:55:32 -0700 (PDT)
Message-ID: <f6a4fb28-d635-4d99-44bb-d929cb41eef2@linaro.org>
Date: Wed, 12 Apr 2023 18:55:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Content-Language: en-US
To: Changhuang Liang <changhuang.liang@starfivetech.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Jack Zhu <jack.zhu@starfivetech.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20230412084540.295411-1-changhuang.liang@starfivetech.com>
 <20230412084540.295411-2-changhuang.liang@starfivetech.com>
 <8dd0dc63-e0df-8764-f756-da032d9d671c@linaro.org>
 <eb47b7c7-bdbb-92d9-ba39-604ce487f297@starfivetech.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <eb47b7c7-bdbb-92d9-ba39-604ce487f297@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_095535_400273_EF12A3EC 
X-CRM114-Status: GOOD (  16.24  )
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

On 12/04/2023 14:42, Changhuang Liang wrote:
> 
> 
> On 2023/4/12 19:34, Krzysztof Kozlowski wrote:
>> On 12/04/2023 10:45, Changhuang Liang wrote:
>>> StarFive SoCs like the jh7110 use a MIPI D-PHY RX controller based on
>>> a M31 IP. Add a binding for it.
>>
>> So this is D-PHY? Or the other patch is D-PHY? The naming is quite
>> confusing and your commit msgs are not helping here.
>>
>> Also the power domain phandle here adds to the confusion.
>>
> 
> Yes, this is DPHY, DPHY has rx and tx, and last version we are discussing that 
> use power domain replace syscon:
> https://lore.kernel.org/all/5dc4ddc2-9d15-ebb2-38bc-8a544ca67e0d@starfivetech.com/

The other patch - DPHY PMU - is confusing. Instead of writing short
commits, explain more.

> 
>>>
>>> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
>>> ---
>>>  .../bindings/phy/starfive,jh7110-dphy-rx.yaml | 85 +++++++++++++++++++
>>>  1 file changed, 85 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
>>>
> [...]
>>> +
>>> +  power-domains:
>>> +    maxItems: 1
>>> +
>>> +  lane_maps:
>>
>> Why did this appear? Underscores are not allowed. It looks like you
>> re-implement some standard property.
>>
> 
> Will change to lane-maps.
> Yes, according to Vinod advice, lane mapping table use device tree
> to parse makes sense.

Hm, I have a feeling that I saw such property, so you should dig into
existing and in-flight bindings.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
