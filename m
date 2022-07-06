Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B2A4CCA481
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 15:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcKWUIT6B5en46tlBtSuN0k0ogNP2xpN72pf1KaBCBI=; b=y7vKsi4y04gslv
	EN2WyiYmQeh5x8E2s2sP1avFhg300wQ2avgGmsj2yB2zEAbR9XFlrpc8gi4G0T7ujc1+4DJM9DhRv
	ORtYjfpP5o4rESkfwXMyR7tm6SktpNBjrc3Ia5mKt7DyHdtwvJNaQR8q6CjOrnkzDRUSsCzq6VqKS
	mbCpJNhyY3dmfnQN9ne/iNiYVhznDt24KHZoIeUo6g4jYfC4FiNMq9vBfNKoIJqczEOBhnRqxiBUK
	P5+3NpIjk2+2mJ6rcZXrXUJYfjcjBO4U/x3cmcayqjQngEwjCkVPKZMlB0w51wWG1xMvJPdNp8xSn
	jNCztnNp6wpjJ2cyMBmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o96bg-00AvR2-RE; Wed, 06 Jul 2022 15:06:24 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o96bd-00AvMy-OT
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 15:06:23 +0000
Received: by mail-lj1-x234.google.com with SMTP id bx13so18838500ljb.1
        for <linux-phy@lists.infradead.org>; Wed, 06 Jul 2022 08:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8AO+J2LE63gF/pEN0vFhWdC06z7hhSAJ2kzbzBHJQYc=;
        b=Yu53js0MAGepvew3Gnozocl206vgIuj1V+C5/ECHoEY/DsvpqGEjcqt9GF843uMUbq
         pQ+tva9G6ED+y3/e+AW1/Ps8GTtgDscD/JVWR9FPTXdrGy1qaglB5p2jZT/BklBtWKdB
         b4f3q9wxnYksxsCI/Qh1Nc2PvsultWSf+E75bmnz+hFZoQCKo93Bp7HMq6ol62rfOzvf
         Tny/uz1AzSMVNa5L5yvbYaLDLDKxZqQxJ6eRjmA45XDrLad4VXyCyv3ppg9S6vtL89UN
         0XPd9vLhnjdD+fLgTl4RgVSv19MpSZqBHxwd291COOaZp5Hv4g1Rz9Db2zssJiWuYbVl
         4XJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8AO+J2LE63gF/pEN0vFhWdC06z7hhSAJ2kzbzBHJQYc=;
        b=JlAg7IOqzSboflDvyTaUoiXDGhXM3FpoFtIWID8ftf55IDuE4dAJFiUCagz9GEtPec
         kWByneBCBbrslQFtpa9K2knRxbkKpsV7tW6gP2mdOCzJx55HGXeObjBlrxy/kQ+UBcHJ
         +pPb+j7fp2qkHZH3PnwWOMYdqLwFaPfrpZC06ufhXqsovXsbEuT7OQEwYJO6+7CyMwUl
         bqQdxQz3OSUXv8BmuOu32Vq51F0SVmtGq/7p9ofhRxOxgcNHbLF829UwgUZoSIHtyDxK
         pTOgwUMZ0SbWbzCr43T0nY8n/1cDUgWqQBaHChCHNAD7iHpzG7e9EC0RVJXr6L9w7HHM
         EgJg==
X-Gm-Message-State: AJIora8BftA2xRccyD7ijjiioJQWOBlMq2oUMEiYKz5Y4XYQC3LSy7Fn
	jV9OV2mwDKBzjl9UnHdTQja25g==
X-Google-Smtp-Source: AGRyM1vvRukpDW59hhuCkomJfS5xKDFgaLXYid6bqitubs0npzp+fQmvLDn1pZEU+L4JkcWZYMhIxA==
X-Received: by 2002:a2e:a26c:0:b0:25a:6dad:8bf5 with SMTP id k12-20020a2ea26c000000b0025a6dad8bf5mr23877254ljm.136.1657119979530;
        Wed, 06 Jul 2022 08:06:19 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id g1-20020a0565123b8100b0047f9d9a4186sm6330501lfv.165.2022.07.06.08.06.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 08:06:18 -0700 (PDT)
Message-ID: <bce8c598-9075-d643-59b5-c2397a55b52f@linaro.org>
Date: Wed, 6 Jul 2022 17:06:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH V3 02/11] dt-bindings: pci: tegra: Convert to json-schema
Content-Language: en-US
To: Vidya Sagar <vidyas@nvidia.com>, Rob Herring <robh@kernel.org>
Cc: bhelgaas@google.com, lorenzo.pieralisi@arm.com, thierry.reding@gmail.com,
 jonathanh@nvidia.com, kishon@ti.com, vkoul@kernel.org, kw@linux.com,
 p.zabel@pengutronix.de, mperttunen@nvidia.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com,
 Thierry Reding <treding@nvidia.com>
References: <20220629060435.25297-1-vidyas@nvidia.com>
 <20220629060435.25297-3-vidyas@nvidia.com>
 <20220630210449.GA3283899-robh@kernel.org>
 <e971a557-3387-efcf-87ec-983b998c5e93@nvidia.com>
 <2829e71b-1769-ce24-f810-d63e619aa5f0@linaro.org>
 <398a9370-6c2d-319c-2e23-038588fbf004@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <398a9370-6c2d-319c-2e23-038588fbf004@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_080621_850803_01CF5659 
X-CRM114-Status: GOOD (  12.53  )
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

On 06/07/2022 12:46, Vidya Sagar wrote:
> 
> 
> On 7/6/2022 3:36 PM, Krzysztof Kozlowski wrote:
>> External email: Use caution opening links or attachments
>>
>>
>> On 06/07/2022 11:53, Vidya Sagar wrote:
>>>>> +  nvidia,bpmp:
>>>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>>>> +    description: |
>>>>> +      Must contain a pair of phandle to BPMP controller node followed by controller ID. Following
>>>>> +      are the controller IDs for each controller:
>>>>> +
>>>>> +        0: C0
>>>>> +        1: C1
>>>>> +        2: C2
>>>>> +        3: C3
>>>>> +        4: C4
>>>>> +        5: C5
>>>>> +    items:
>>>>> +      - items:
>>>>> +          - minimum: 0
>>>>> +            maximum: 0xffffffff
>>>>
>>>> That's already the limit. Just a description is fine.
>>>>
>>>>> +          - enum: [ 0, 1, 2, 3, 4, 5 ]
>>>>
>>>> maximum: 5
>>>
>>> Setting the maximum to '5' is resulting in the following error.
>>>
>>> pcie-ep@141a0000: nvidia,bpmp:0:0: 4294967295 is greater than the
>>> maximum of 5
>>>
>>> Could you please help me understand why I'm seeing this error?
>>
>> Trim your replies.
>>
>> Why adding minimum:5 to the phandle? Rob said add a description. Nothing
>> about minimum.
> 
> I'm sorry I didn't understand the review comment clearly.
> There is one description added above already. Are you (and Rob) saying 
> that one more description is needed?

You have description of entire property. The property consists of
phandles ("items", with only one item) and each phandle of two items
(second nested "items"). The first item in phandle is actual phandle, so
it does not need any constraints/schema, just a description. This was
missing.

Something like this:
https://elixir.bootlin.com/linux/v5.18-rc1/source/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml#L42

except that in your case second item (in the nested items) have actual
schema, not description, which is good.



Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
