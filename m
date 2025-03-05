Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E01FAC282E5
	for <linux-phy@archiver.kernel.org>; Wed,  5 Mar 2025 17:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZneUz572lPthInBsHAHm2cqcTIb97vguIlB+VsiRRQ=; b=vOmfF1nZGE9YBm
	XylRSPhRUMqf+OdzXWJ1yqlmHj4Nkm1dL06G6Ve2c5/N2YUSGBVS/MKy6QJRfh6YyijyLM3Oo1JZB
	lV2FMjWnUOmecg//TnUedvYZfW1+VsAhMCAJJRJeIsL13HqYXGzPaA/qHyupcVkpCFCXVEapXJV3L
	4zCr65q/j+uDW+HUO5uBdOd1WXVIea1Fc7rYYzCxF7ds0KYFGgh/Yb0+6/odORXFy3+DeElJIo2LK
	mQa6P7IFNwsz2XVPUiQNot8pzMTbzHQBGYq8F1n1BvRtfeWTt0mBUJ7ZdJzut52su0LWqiTsG1rN7
	SmIb5HZCK5IC3PaxwmAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpsrM-00000008pv0-2pVZ;
	Wed, 05 Mar 2025 17:48:44 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tprsV-00000008iJ8-0V9Y
	for linux-phy@lists.infradead.org;
	Wed, 05 Mar 2025 16:45:52 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-43bc21f831bso3613765e9.1
        for <linux-phy@lists.infradead.org>; Wed, 05 Mar 2025 08:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741193149; x=1741797949; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=YyMHo9r/avYVNZnF91GE1nMhok+f5jBSDHoxhJJyk2k=;
        b=LZCNNBK3zbqQ6fvnX0Q7vi61L9fvTOnic8spZ1LkguDDO51MQDBam2rDOJhHAZ7bli
         RYHUBOVgWqpnjoECLHPuKXFZqFPUgkFheuzOXdHh7/x8kQNhZph7axzfsTqK4HhyJprj
         Vx754K41B4nFmXPW974F356mjW207ksQDNveJtRgnUbtsYO27Vy4YhbVF16aput1AX0w
         BdLUwgy3KUuELPgLEu0pkDHpV51t7SGlWmh+J+we4/K0JfAtm75c/KnrsPa2oDPFC8bs
         LBkt9AhEyY+DB1V8gw0uFAyT9+gp7TZOCEJdBAOVvwiiCK+xlm8CSX1QstHZ3nP7pLcN
         N9fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741193149; x=1741797949;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YyMHo9r/avYVNZnF91GE1nMhok+f5jBSDHoxhJJyk2k=;
        b=TKw7zuEDJe5VbatEfWcq66802t/sWoNhYr4Jdf5y/RcOiNkwqxwrx0ewukyFPJ5UNA
         kEGJXPqtb0myrqGKFOQzHxEHv6DK37bcMsk7P4G4Nwin0bdhvPQi4gl+551I5I6IC//n
         7+dQyjdDpFMqXJ1jmwX+QEh1GnIdykeJDb2nsdbdeMrzCL53FkBlqg/GZW13GiQ4HJEr
         AQUpUQJlrfUO7rK50NZdYEvXB1NZ+Iki8rvOc5XwPEnNC6+du0tZUnRoh5wCPtBhyt21
         tRKd2nPfO4I5khbyeets8HnTxEp3p8+jCZdHuU5a3adKuh9a6fvFheksz8U3j6yNFsbd
         SNAw==
X-Forwarded-Encrypted: i=1; AJvYcCVI03HVROTMKng2wQVEoOMV1WTFSHaLNztSfTYOQjfaXA3h7hhg3LKrY4BaRU4IT1I6lE3DIdEdxXw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxSXt1frFPLNjwf7ksqV2y1Bc9w6MziuIcZ8u/JFHEqX0X4c9cO
	1IIq0S8tFZrVz4o8Q9jJfu31p8noS6nbEXPfb8jN2KL1GUiflTw3zwO2X+SbX7A=
X-Gm-Gg: ASbGncsdNAq3rA9P+4OkQkFH7meIIx/6OrlBQo0zPoGD9b++VqfTXoL/eArnFJcTWRv
	aS+qUcmhFX6Tzaa3Eul/hxTHxpMiMLjrG/e7Kor7n7GMZSL168DClQSogWUToZyAcGxayMYew8Z
	P0Sr81iowcI5G4Lc7i/RqTmK7RIcWQlrEUqCRpBjWDGdytcM/Yxbejd+VPjby1haA//34LZ3q3U
	AKJIz/lX9bwcYjryt85wHliCfrQBEMtSr9ROHhLBCNsGU8tVsrwDY5bQv6u5oqrSy5DP0iutqnI
	UW5QFgH4ZkKtLFM73l4uRNSh53X/So0hAefLoaKEXgM3N3EzFpaMIpXiaMk62aq2
X-Google-Smtp-Source: AGHT+IGP+5v75DlRia7McsAOS6Jlq6ajxiav4cAZDeDMWWlNZIzDp59fn3LSTwXBVF4ILwZRv+NrGA==
X-Received: by 2002:a05:600c:1f07:b0:439:a30f:2e49 with SMTP id 5b1f17b1804b1-43bd2ad9b96mr10818245e9.5.1741193149430;
        Wed, 05 Mar 2025 08:45:49 -0800 (PST)
Received: from [192.168.1.20] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bd431070dsm22515525e9.34.2025.03.05.08.45.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Mar 2025 08:45:48 -0800 (PST)
Message-ID: <1c7b05a6-c139-4b68-a723-651de559dc73@linaro.org>
Date: Wed, 5 Mar 2025 17:45:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/6] dt-bindings: PCI: qcom: Add IPQ5018 SoC
To: George Moussalem <george.moussalem@outlook.com>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 andersson@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org, kishon@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, kw@linux.com,
 lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org,
 p.zabel@pengutronix.de, quic_nsekar@quicinc.com, robh@kernel.org,
 robimarko@gmail.com, vkoul@kernel.org
Cc: quic_srichara@quicinc.com
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883E7167E44F92DBC29FF3C9DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
 <a95b4c01-9d8c-49eb-8242-93ae411caec0@linaro.org>
 <DS7PR19MB888309B506D25ABA03F218EB9DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <DS7PR19MB888309B506D25ABA03F218EB9DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_084551_167117_4C6E9180 
X-CRM114-Status: GOOD (  14.44  )
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

On 05/03/2025 17:41, George Moussalem wrote:
> 
> 
> On 3/5/25 19:51, Krzysztof Kozlowski wrote:
>> On 05/03/2025 14:41, George Moussalem wrote:
>>> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>>
>>> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
>> Nope, that's not a correct chain. Apply it yourself and check results.
> this series is dependent on the series to add support for IPQ5332:
> https://lore.kernel.org/all/20250220094251.230936-1-quic_varada@quicinc.com/
> which was applied to dt-bindings
>>
>>> Add support for the PCIe controller on the Qualcomm
>>> IPQ5108 SoC to the bindings.
>>>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Also not really correct. I did not provide tag to Nitheesh patch. How
>> the tag was added there? b4?
> the RB tag was passed on from here:
> https://lore.kernel.org/all/20240830081132.4016860-3-quic_srichara@quicinc.com/
> but I'll drop it as it changed quite a bit since.


You linked v3, but this is v3!

I think I was stating it, but just to recap: please keep versioning the
patchsets, so if you ever do any change, it is next version. If you do
not make changes and keep the version but send again something, then
this should be RESEND PATCH.

>>
>>> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
>>> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
>>> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
>>> ---
>>>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 49 +++++++++++++++++++
>>>  1 file changed, 49 insertions(+)
>>>
>> ...
>>
>>> +        reset-names:
>>> +          items:
>>> +            - const: pipe # PIPE reset
>>> +            - const: sleep # Sleep reset
>>> +            - const: sticky # Core sticky reset
>>> +            - const: axi_m # AXI master reset
>>> +            - const: axi_s # AXI slave reset
>>> +            - const: ahb # AHB reset
>>> +            - const: axi_m_sticky # AXI master sticky reset
>>> +            - const: axi_s_sticky # AXI slave sticky reset
>>> +        interrupts:
>>> +          minItems: 8
>>> +        interrupt-names:
>>> +          minItems: 8
>> Why is this flexible?
> I'll restrict it with maxItems in next version, thanks


This was not in v3, so is this resend of v3 or v4?

You are making this process unnecessary difficult and confusing.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
