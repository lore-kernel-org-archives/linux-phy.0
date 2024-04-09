Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FDBDC67861
	for <linux-phy@archiver.kernel.org>; Tue,  9 Apr 2024 20:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvXVQc9qEqOQUQ9ZMavRdQJenVhy6u+saY7MXXa2xgw=; b=Kby/MofMghgHha
	rih1nsrTOfbEEwtrjcrA7CjkMIztAjcO+o4d3XbMgsGWbvFpJdi6PxkSue0g0DPIcl7VO76Psu2rq
	qclBK0jPc06Z4sklcgdeIej8tbISCIx+TPuiRoVOiw6+9fbD7Z/8lq2IO//wuuMXhPimgcnsL134N
	f/5qFVy+oT1zNNUjP3a+y4eISu8Vzzr5tdfuEwOUwDrAExsEw1jqeSs9cztykch+O3eXkTvq6vDXT
	LMkfrxx6HM2id8Q7OfAWv1I73SHnmwUASHB5x7kRq/o3aCAzfFAQkiUivRlgTQwidA9SmHqWRsok5
	z+WAaHD4AkuCgHX6FQmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruHw5-00000003gbx-3bM3;
	Tue, 09 Apr 2024 20:19:17 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruHw2-00000003gbC-2jqf
	for linux-phy@lists.infradead.org;
	Tue, 09 Apr 2024 20:19:16 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3bbd6ea06f5so3154488b6e.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Apr 2024 13:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712693952; x=1713298752; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S/qH8NItVOVq4Bt+ZHLr1TJQobJtozwRWOASECxFFK4=;
        b=IAGbAGIP1RG4SpoJYmYy8yG1RI2mWOdiPlT0/G86NvJf3mo1h5Ff6UA1yRqEraaspj
         vG1fqllf6CXqSuYtcPyxBJg1Ukrc111YsrW6LznQgkasyeVsduMrTwcFpzEOP079DRnJ
         hcg4CsyK9nRCoob0uEid9A1YiPCnySklrOfZ8D6d41fuEZivWl4Fhfnb7LbsXodWHVqv
         2q+vq/5SL6iwjqlfvBDVzKa0SaWGKmkb/+86oE73zcdlOkJ+RNr/YYCoRcciKRtzutN7
         43XhwbwzZ35YvvDtl0yk05I9P3orScxhh+0iwG2jyCBm4APGchIeZwLIeQ+j+y+DkDwa
         u9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712693952; x=1713298752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S/qH8NItVOVq4Bt+ZHLr1TJQobJtozwRWOASECxFFK4=;
        b=lXe10PBHjfwb7lk2bwe+YFM1aOx7QDCa8LxfQA3Y/Et0bav+KaQLhPLcE9ea512Uxo
         ipYz4+zuJE3GAtaxy3RjcjSWd89fTGSD2LjUNXXqgGhCIT1u7V3bprcEBKcETSq1VZv9
         eQ8x9QS6cJPUENy48cSLntX/QRhO5ZSrPfg9hKmsYmMlBBHLzXRIcQM5nZIeKAxrzL9c
         yUKIpr2LX4qMTTlNht4gwDdRyw8RnL0NjpQUd/dhpn7xZz3xrsg+Lvjgz81TloVH2qMs
         xmaJrx722xs4zoZKteTZxANXjB19FtdGvIis0ZP6wI0XYxbsh0gyeb8uWKlLok2stYS/
         0LGw==
X-Forwarded-Encrypted: i=1; AJvYcCWhyhvB5lmj7KuSxOeM+xh7FbEDX6cXpUO8yNJVrjjfyFgqGTusG1HOKXZcHrOCwq1ivi+ludyhFBcGVUd36rOjKGzaaO5EEtrDoMaXrA==
X-Gm-Message-State: AOJu0YzcUHhpu/FM+bGNUxqdgMUYvVReYl4kvlR9jFsh6CNhZiCeg0r6
	w27vo0Icovr7IXaTxV6N96Ff1lQo9kwGbTpx+1NbWidSB0z8hPSq
X-Google-Smtp-Source: AGHT+IEaPDVryrV9ov98iA3AwPMOsXh9L8jN+mfbgZ96uWTQB5vVI9XX1DxRaywPeCcUYq4A7VCIaA==
X-Received: by 2002:a05:6808:bd2:b0:3c3:dcb9:118a with SMTP id o18-20020a0568080bd200b003c3dcb9118amr1519524oik.28.1712693951843;
        Tue, 09 Apr 2024 13:19:11 -0700 (PDT)
Received: from [192.168.7.169] (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id b14-20020a056808010e00b003c5edda8526sm1083722oie.31.2024.04.09.13.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 13:19:11 -0700 (PDT)
Message-ID: <33461c22-21a3-023b-4750-c69304471ea8@gmail.com>
Date: Tue, 9 Apr 2024 15:19:10 -0500
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
From: mr.nuke.me@gmail.com
In-Reply-To: <019180df-67b9-438b-a10d-f92fd4ddec03@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_131914_740394_1F2A9FCC 
X-CRM114-Status: GOOD (  13.58  )
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



On 4/9/24 15:09, Krzysztof Kozlowski wrote:
> On 09/04/2024 21:08, Alexandru Gagniuc wrote:
>> The IPQ9574 gen3x2 PHY is very similar to IPQ6018. It requires two
>> extra clocks named "anoc" and "snoc". Document this, and add a
>> new compatible string for this PHY.
>>
>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
>> ---
>>   .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 31 ++++++++++++++++++-
>>   1 file changed, 30 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
>> index 634cec5d57ea..017ad65a9a3c 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
>> @@ -19,19 +19,22 @@ properties:
>>         - qcom,ipq6018-qmp-pcie-phy
>>         - qcom,ipq8074-qmp-gen3-pcie-phy
>>         - qcom,ipq8074-qmp-pcie-phy
>> +      - qcom,ipq9574-qmp-gen3x2-pcie-phy
>>   
>>     reg:
>>       items:
>>         - description: serdes
>>   
>>     clocks:
>> -    maxItems: 3
>> +    minItems: 3
> 
> Which binding inspired you to such change? No, you need maxItems. See
> your previous patches here how it is done.
> 
> 
>>   
>>     clock-names:
>>       items:
>>         - const: aux
>>         - const: cfg_ahb
>>         - const: pipe
>> +      - const: anoc
>> +      - const: snoc
> 
> OK, you did not test it. Neither this, nor DTS. I stop review, please
> test first.

I ran both `checkpatch.pl` and `make dt_binding_check`. What in this 
patch makes you say I "did not test it", and what test or tests did I miss?

Alex

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
