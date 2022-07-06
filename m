Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B6D5C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 10:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPZjbodYZx5e5OmeXL0en7mSAO1b9Xgq4xeWRck6uHo=; b=b3VLyT8Q/vaHy/
	/3H6743MA/eUSxBvTKzCr3n35hJEwlyQLmoAN/wI0ZYN8dvKkhs6WpzOPUyrq95tuaIUGjvwUmCGq
	A9mlMQS7+Qfrk8iBdX9Wkwn0oqT6qwKJ2ioL15ZiLqiXSoo0kEZrbX0guD2QXDA+Hu4HiwIWdGQF5
	aon5aaGGOgn4+Uib7Cmw8TCqu7Ny70A1HyUo2VaIuMkRSDMmNh2A7vWa8S5naoI4rq8C34rpxghz1
	KdFe26TIVqwCSk6M4UoVR4kLQAs46a463gG9CKAXKNJCIUIhRMwt6WEICHBo82d6F8KGA2bx7OhL7
	cSyKs/EsHoTq+VHLmheg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o924J-008Hml-C5; Wed, 06 Jul 2022 10:15:39 +0000
Received: from mail-lf1-f47.google.com ([209.85.167.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91vv-0089e6-I4
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 10:07:02 +0000
Received: by mail-lf1-f47.google.com with SMTP id m18so6608300lfg.10
        for <linux-phy@lists.infradead.org>; Wed, 06 Jul 2022 03:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=o/JI08us7vL24f4s2bZjdnzknLcJKDlQAeiE558KAis=;
        b=KN0X8kX9WhJxJK4/kKMKHEZoc2zJhbOciZhqDlTpiqOahrwQy59NBTHG3BxxidxG7m
         67bhQWO1Fs7NcpSyyBgrGPymXr5wZkwBcziPGklMAb5E3NBvx/p9g/iqCxn6x/VJkm1A
         PmzjaLP3ZqbE1EVYUS8Lrv8UI1sopmhz7jP7IQxJBEaI2lleD6FRmwhphOaOICEJkKn2
         7zNsDlY4gdRINoYkfsphM3/92q3sySrWB+Av6pPfwsAKt/pc5IEOttCtubLBfbg3wE0O
         q1zWJU3oGo7cirC74MKe9oyKGNSnE4CmNIaHU+X4niYJ6RYwWySoawAQM2K9XMfWBAL8
         N88A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=o/JI08us7vL24f4s2bZjdnzknLcJKDlQAeiE558KAis=;
        b=xyV+A5rbX5TSTGwTsJ7whfXmiRsceE2sy4dcFa3BsDHYjDcWAy3vsa33VraB2tk1O7
         orpN2W2OFnheN+R367voScyqoo0PWtFje7LVJLdK3sy+2H4K+AeK+nGzmONfWZnkjxUA
         HHTas16JL7nz7gvLUBAjNpw0qTcrMDE5nEPJSAQu63ic0WNtOcVsmzH6uLMKJmkYz1SV
         Hd9hQtdXrdTVG6cDpoMgYIK9vxKVR4vgXnzpoRjsuoF/Ds5x2SZARktAuZn0af5cIErr
         4uo35Z+YgvNuhKVbVhKzpdKZeTeMTe4FEZwKM6O7M7nbSmUnEF8VKSuS14y895rWIFRS
         M0oQ==
X-Gm-Message-State: AJIora+TqEuMfB4oy3VC7EVD4+ZhfglMj/nibgBOGmptNIath3gQLE2r
	ItI/n0Ys3bdbFgRILpNbZ9PPZw==
X-Google-Smtp-Source: AGRyM1uRSIf3VLsyNglEEsS5S8MByTBNN1VD5w4WP3bbUucHWwXC/emiIf6KMm+pT6aFgJzFoOJ9cw==
X-Received: by 2002:a05:6512:31d1:b0:47f:5d39:1d9d with SMTP id j17-20020a05651231d100b0047f5d391d9dmr25517702lfe.140.1657102015414;
        Wed, 06 Jul 2022 03:06:55 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id h4-20020ac250c4000000b00483e5f0192esm769001lfm.87.2022.07.06.03.06.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 03:06:54 -0700 (PDT)
Message-ID: <2829e71b-1769-ce24-f810-d63e619aa5f0@linaro.org>
Date: Wed, 6 Jul 2022 12:06:53 +0200
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e971a557-3387-efcf-87ec-983b998c5e93@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_030659_709743_EF555805 
X-CRM114-Status: GOOD (  10.22  )
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

On 06/07/2022 11:53, Vidya Sagar wrote:
>>> +  nvidia,bpmp:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>>> +    description: |
>>> +      Must contain a pair of phandle to BPMP controller node followed by controller ID. Following
>>> +      are the controller IDs for each controller:
>>> +
>>> +        0: C0
>>> +        1: C1
>>> +        2: C2
>>> +        3: C3
>>> +        4: C4
>>> +        5: C5
>>> +    items:
>>> +      - items:
>>> +          - minimum: 0
>>> +            maximum: 0xffffffff
>>
>> That's already the limit. Just a description is fine.
>>
>>> +          - enum: [ 0, 1, 2, 3, 4, 5 ]
>>
>> maximum: 5
> 
> Setting the maximum to '5' is resulting in the following error.
> 
> pcie-ep@141a0000: nvidia,bpmp:0:0: 4294967295 is greater than the 
> maximum of 5
> 
> Could you please help me understand why I'm seeing this error?

Trim your replies.

Why adding minimum:5 to the phandle? Rob said add a description. Nothing
about minimum.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
