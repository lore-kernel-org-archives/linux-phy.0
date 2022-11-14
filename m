Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C67C6C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 14:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9V/ZSaLy50w+SNYSlvVYus4+P6IQcuOak3q/whTRac=; b=oW7ARjkkkLvjUu
	8w4h+T705p+P9mfKYIiiFMC9CzmMILV6PxewAJ4+qIVBquyuqocC05jOcoskJ0gLOloH9jwFS+Oi3
	u2t0ec7NSqEnGizhWfxjdS+y6ITg7KvNEAAM11LG3HdmuJFjnluaHH2PwbKpxdZvzpmeFhkHKMcXr
	e3aXlhW3eJwTlC9kSZnr1D/oopO82dVqJZC25tLK2AsnwTswl/MKqLGgGHZ7s4jcMd6yQDcvs+S6l
	bZihW1ytbzAOgYamJfg0mKvvrapJDltnvympUeHOvGrSUtxkEifcROOQtI1mdO2wvUgJ54LdIhZe8
	LzI5zb3LsxNRBNfgkE6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oua7s-001YcS-7r; Mon, 14 Nov 2022 14:07:52 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oua7p-001YYK-Rz
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 14:07:51 +0000
Received: by mail-lj1-x22f.google.com with SMTP id d20so13283207ljc.12
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 06:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6ccwwIW79Q1wp+RCdp9ccn6uwmegByz56nlURvMAyHY=;
        b=SpFp1v9ZAJjhp6EB36WNfg60TtbpBMj1tGYf5Trjvq7kSClFo+db38EYFIgBD2Jq05
         D4P9Qh7q4B8WRTZ/e3E4AJKz6VGjEZxwD8WkwLqeGLxD2LjCQ40glrzrejMQK5h38AD2
         7Sy1JUB/6EUHFoOcol9NfTZPJlBENQAlJH81oj7qIynD9iKfC3ErObZ+rQLYhXr/QiXE
         8gyEAD5Z/s2latNJxLt/nvqIs64H2da9UdD71RqV1XdMt7cPzBwM+FdxACq0bGE75TNs
         L/fmK7AeZXlhEHFNtNi2CXgXgeR+JT2dS4T4gR4Zhf0t+zOMdXbXaTfigipM84GYobcj
         ne9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6ccwwIW79Q1wp+RCdp9ccn6uwmegByz56nlURvMAyHY=;
        b=Dw410FJhgzDnDx+g00xegiiNJ3xWTI1hMQ+RoH8NH9nECoyRS71lWCKnpfLSZnjfPw
         FGGdpgPfGQCKIwgZLAdSM5SUkzKFb7UtXbt/2K1P87HdVBKKHKveWcv84ODVbzzdpK5M
         KMYyrTfzK9+X9ldVXlvSXIQCfassA2KTxY75LkrAu7/oo8To45cNoI7p/H8A9T5Rqcg5
         fj27A5/WtbSyP4euQh6HYti2+LMNIqnUwrZJ0KwwuRQsjMfP95cqtyl15goGZO20tRrx
         784aju4ZoQRsEK9IrCqanMq0dNkD4HfB6o/49AgP1ntrQBtBaRMg4NuUEyVzgq6/Y5Ns
         bUAg==
X-Gm-Message-State: ANoB5pkFpUdMoWaMHR9ka+/B/Pmvt5B6VGLXyDYeaYH2aEJTMgWTyWAa
	s0IzvQ8v1lkn1XRkP1J33Tuq3WkpdoURFx3z
X-Google-Smtp-Source: AA0mqf7LC1QOnDuEDlFCopCuZ50Oj0F1+LypAIKaZQov5Bfx4JKEL735MyUsWqrx6y2vkADZoL4cLg==
X-Received: by 2002:a2e:3216:0:b0:277:295:982e with SMTP id y22-20020a2e3216000000b002770295982emr3888991ljy.11.1668434863376;
        Mon, 14 Nov 2022 06:07:43 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id r22-20020ac24d16000000b0049944ab6895sm1830010lfi.260.2022.11.14.06.07.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 06:07:42 -0800 (PST)
Message-ID: <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
Date: Mon, 14 Nov 2022 15:07:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
 <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_060749_969521_B02D88E3 
X-CRM114-Status: GOOD (  24.69  )
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

On 14/11/2022 14:27, Johan Hovold wrote:
> On Fri, Nov 11, 2022 at 04:17:29PM +0100, Krzysztof Kozlowski wrote:
>> On 11/11/2022 10:24, Johan Hovold wrote:
>>> The current QMP USB3-DP PHY bindings are based on the original MSM8996
>>> binding which provided multiple PHYs per IP block and these in turn were
>>> described by child nodes.
>>>
>>
>> Thank you for your patch. There is something to discuss/improve.
>>
>>
>>> +
>>> +maintainers:
>>> +  - Vinod Koul <vkoul@kernel.org>
>>
>> Maybe you want to add also yourself?
> 
> Due to the lack of public documentation for these platforms and the
> amount of work involved in effectively reverse-engineering the
> corresponding details from random vendor-kernel trees, it's probably
> best to leave maintainence with Vinod who at least has access to some
> documentation.
> 
>>> +
>>> +description:
>>> +  The QMP PHY controller supports physical layer functionality for a number of
>>> +  controllers on Qualcomm chipsets, such as, PCIe, UFS and USB.
>>> +
>>> +  See also:
>>> +    - include/dt-bindings/dt-bindings/phy/phy.h
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - qcom,sc8280xp-qmp-usb43dp-phy
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  clocks:
>>> +    maxItems: 4
>>> +
>>> +  clock-names:
>>> +    items:
>>> +      - const: aux
>>> +      - const: ref
>>> +      - const: com_aux
>>> +      - const: usb3_pipe
>>> +
>>> +  power-domains:
>>> +    maxItems: 1
>>> +
>>> +  resets:
>>> +    maxItems: 2
>>> +
>>> +  reset-names:
>>> +    items:
>>> +      - const: phy
>>> +      - const: common
>>> +
>>> +  vdda-phy-supply: true
>>> +
>>> +  vdda-pll-supply: true
>>> +
>>> +  "#clock-cells":
>>> +    const: 1
>>> +
>>> +  clock-output-names:
>>> +    items:
>>> +      - const: usb3_pipe
>>> +      - const: dp_link
>>> +      - const: dp_vco_div
>>
>> Why defining here fixed names? The purpose of this field is to actually
>> allow customizing these - at least in most cases. If these have to be
>> fixed, then driver should just instantiate these clocks with such names,
>> right?
> 
> I'm only using these names as documentation of the indexes. The driver

What do you mean by documentation of indexes? You require these specific
entries and do not allow anything else.

> doesn't use these names, but that's a Linux-specific implementation
> detail.
> 
> I noticed that several bindings leave the clock indexes unspecified, or
> have header files defining some or all of them. I first added a QMP
> header but that seemed like overkill, especially if we'd end up with
> one header per SoC (cf. the GCC headers) due to (known and potential)
> platform differences.

Headers for the names? I do not recall such but that does not seem right.

> 
> On the other hand reproducing this list in each node is admittedly a bit
> redundant.
> 
> Shall I add back a shared header for all PHYs handled by this driver
> (another implementation detail) even if this could eventually lead to
> describing clocks not supported by a particular SoC (so such constraints
> would still need to be described by the binding somehow):
> 
> 	/* QMP clocks */
> 	#define QMP_USB3_PIPE_CLK	0
> 	#define QMP_DP_LINK_CLK		1
> 	#define QMP_DP_VCO_DIV_CLK	2

What are these about? To remind - we talk about names of clocks this
device creates. The output names. Whatever IDs you have are not related
to the names.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
