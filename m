Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E9D0C6FA9E
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 10:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jad8BfyAQIUUMn4CKGbMqfA21D/BHF5US8V0IJTFTmw=; b=LP+je4uX+Hr7nq
	0hqqCjfsHBdoOiZWZOjz0TzQByj0t7ZyfMr/yFF1Ln6OkIKNjES3vDAZM1vxQqfANF/HoVvkzZlUS
	HSNvYU3CCXCOr2Nc7/1wHg9eR75Pt7lVO17G8IgawKpEsvhmVumcKEpsLz9EXu1/+3LBjjhA7N3n+
	PIej/1qaRwgWQ2Pya9NjLdTnHhl3pQptIu4Q1PQL06g7ydhCAQ4AxTUk6cCE7bSywIEy3kTfVW+t+
	NHYLCNrdRxhoBmLkzHNQujjM4uPf958jWHbFDvsCFFlzC+YZixRJYgBPXdgPRi2LKs6QHYXe1lYp5
	guyECw9aDHlRE+lNoQWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDqi-00BHF2-ML; Mon, 19 Sep 2022 10:18:01 +0000
Received: from mail-lf1-f43.google.com ([209.85.167.43])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaDq8-00BGZ3-5y
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 10:17:27 +0000
Received: by mail-lf1-f43.google.com with SMTP id j16so19097685lfg.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Sep 2022 03:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=XOtH2ITlshpecI6bnBjoAK2o/4UpsZgaomPe58WTFa0=;
        b=GwFABzsbegV66LxbaPP4YDrsxec94wyru8Hz9FS4rgvjS8oOOS858m8qxYp3aMSxnC
         VCu+vHzF3xlEnnlwmtjkWjY+lrkVKYGVwBVDLgqBVoYi/xwkMUf5+tHzj7F4Ecx8Kx4v
         H1l9byIZ3wYm6YoXcvgkDLoPJr6kia7fdUOpXgKWjcUJgUfCJuNwGHQOwTfkTKz977CJ
         PH6G8IeN8iIZ9pkSFILb/BrGWyPv2dhyMr7raDJztLo+oUeIGgN9hzmESOwJHfO9116S
         Cmm3gwS1dlFMYQAvHt0/97W73qQ6md0kHnBaE6ezK2NFV519DV1U53TwBkEfsFz9IT/T
         FAYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=XOtH2ITlshpecI6bnBjoAK2o/4UpsZgaomPe58WTFa0=;
        b=iyqdd1KIAyPH8Zlm9TTeSe32TC9v3+fI7TO0z7kQ2oZemfDZChYn5YA04CD8WtxrvS
         yoFsEBQ9ZbxTpSIPhKDvGMjZqh+QLnzGXX2AcQcimHKuK44oqvQb6l/gWBo+pkdHa+oO
         Xf4t8OXuikZY5xw8RJnVpSJTdb+KdfGpLaIBfUyNGLvhLymScfDRvivFIVfN1U2hapwK
         NyHF/kodgKRttCvrlZH2NMuB+wivp5A31lIbkfsE/LfwBZWOC6pGwWwK/9v5KySEhkr9
         Pxf9KhVttTKahdegvo/3+9NBvzL1T9j3L68YHgb9TcDGFxwi4mR23+VQh8lTq5i0E7JY
         WrJQ==
X-Gm-Message-State: ACrzQf0jCtEMqck/X4mwqyTGnABJ56vLZN97AnQhd+v1ELi8rqsHiW2n
	HNVYuYjXHRjkJV6TUGvFi2TBcg==
X-Google-Smtp-Source: AMsMyM6c/cgEmUbMwNS+ktAG5NYNyqQf7jmXokYFYJBjSFcX8SUSKTqHBQ0nwJnCUhV0rlKmUK8rUw==
X-Received: by 2002:a05:6512:1283:b0:499:d0a3:3ca8 with SMTP id u3-20020a056512128300b00499d0a33ca8mr5781548lfs.665.1663582636171;
        Mon, 19 Sep 2022 03:17:16 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o20-20020ac24bd4000000b0049c29292250sm3847835lfq.149.2022.09.19.03.17.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 03:17:15 -0700 (PDT)
Message-ID: <31028736-ba81-122e-b630-b66e9d9d491a@linaro.org>
Date: Mon, 19 Sep 2022 12:17:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/6] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for
 J721e
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, Rob Herring <robh@kernel.org>
Cc: lee.jones@linaro.org, krzysztof.kozlowski+dt@linaro.org, kishon@ti.com,
 vkoul@kernel.org, dan.carpenter@oracle.com, grygorii.strashko@ti.com,
 rogerq@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 sjakhade@cadence.com
References: <20220914093911.187764-1-s-vadapalli@ti.com>
 <20220914093911.187764-2-s-vadapalli@ti.com>
 <20220914161527.GA2269201-robh@kernel.org>
 <d48e5ef4-6d5b-0977-ed45-de810e42356c@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d48e5ef4-6d5b-0977-ed45-de810e42356c@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_031724_700798_9BDF8906 
X-CRM114-Status: GOOD (  16.61  )
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

On 15/09/2022 07:28, Siddharth Vadapalli wrote:
>>> @@ -65,12 +66,19 @@ properties:
>>>      description: |
>>>        Required only for QSGMII mode. Array to select the port for
>>>        QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
>>> -      ports automatically. Any one of the 4 CPSW5G ports can act as the
>>> -      main port with the rest of them being the QSGMII_SUB ports.
>>> -    maxItems: 1
>>> -    items:
>>> -      minimum: 1
>>> -      maximum: 4
>>> +      ports automatically. For J7200 CPSW5G with the compatible:
>>> +      ti,j7200-cpsw5g-phy-gmii-sel, ti,qsgmii-main-ports is an
>>> +      array of only one element, which is the port number ranging from
>>> +      1 to 4. For J721e CPSW9G with the compatible:
>>> +      ti,j721e-cpsw9g-phy-gmii-sel, ti,qsgmii-main-ports is an array
>>> +      of two elements, which corresponds to two potential QSGMII main
>>> +      ports. The first element and second element of the array can both
>>> +      range from 1 to 8 each, corresponding to two QSGMII main ports.
>>> +      For J721e CPSW9G, to configure port 2 as the first QSGMII main
>>> +      port and port 7 as the second QSGMII main port, we specify:
>>> +      ti,qsgmii-main-ports = <2>, <7>;
>>> +      If only one QSGMII main port is desired, mention the same main
>>> +      port twice.
>>
>> Two different forms for the same property name is not great. Just make a 
>> new property if you need something different.
> 
> Thank you for reviewing the patch. Based on the discussion for the
> previous series at [1], I had planned to reuse the same property
> "ti,qsgmii-main-ports" for TI's J721e device too. The reason for this is
> that the property represents the same feature on both devices which is
> that of the QSGMII main port. The only difference between the two of
> them is that J7200's CPSW5G has 4 external ports while J721e's CPSW9G
> has 8 external ports. Thus, J7200 can have at most one QSGMII main port
> while J721e can have up to two. Adding a new property which describes
> the same feature appears to be redundant to me. Please let me know.
> 

The trouble is that you wrote the description like it were two different
properties (for xx this is one element, for yy this is something else).
You need to describe the property in unified way.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
