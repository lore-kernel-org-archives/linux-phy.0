Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55CF5CCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 18:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoXBx5aL7XClU3vmI3QfNJoAQ4N20/k3QhjxvW0+4gc=; b=y2vynj80I5/h5l
	ITy/BqEu6Pr095BUD82l1zlbtzYK+FpxxqnJ9vzQ5XchVC/Tg/RcMdu2e2APSGGXOFcUhY/4NRNNL
	oD0v5ezoc42Xsf+jrNYC6MbyD1Sz5ank2oc27R4m0N+0GuM9oLhNlDnKnG1fT2hjE0Q0fSntiszFD
	Wr61A4r771PRnAs0VbW4StGq3vIfB/z2pjRmz7Z0MED4LH9jiFdqv77sG4PQgOIaAwFhTn9tqhQVI
	PZLrMCew7DKlM+mV/P8zgzt1+3Od2RS82lAM8pXQQ313NIzTSpFDLHf80WwoGPnERiv/y7XbKXyhA
	UgIGwHjnCm++W7O0EtSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8nAm-0025RW-Og; Tue, 05 Jul 2022 18:21:20 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8nAk-0025Pi-6Z
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 18:21:19 +0000
Received: by mail-lj1-x233.google.com with SMTP id u14so15589269ljh.2
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 11:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lc/DllG7KxkZCTw83RcsvkqOa+Sy6VMTQfSxor2YCtQ=;
        b=Ax0aDgRv822aSTlNdy5MvBg+ySYUNHAmasbQp5ZDd/K59R3kb8I1Lylxqm9xvPABFt
         aUfkpB+aP2tzc4iGTTxgeV2L/KpNtHn52ZFVtcCusc+CAIm0Ve4SSefN/kTT52pfqFId
         3LkP0Yi7dK2ogvvSZHs27kjnc9F96hDyfvvK9+g4r9DSGPunPjWdYg2F22pCtHakW7p+
         Mejo1vpRuLbJQJ/EPSngTo8cTMn2PrJbBFegZzEKmA7h/ucnzMFw+99MAISwOmHNNWbI
         oM5SdWKWfN/GKJ2o433RiwNJS9kRTOxnSAalbY5qOI/cAqr/FC/7sgrJ7DWBeWK5gGr8
         DH+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lc/DllG7KxkZCTw83RcsvkqOa+Sy6VMTQfSxor2YCtQ=;
        b=nMqo+QBNZLLI6n5CZ8PJNztOHQnL4jd5lVGBK077F8a4KN9cfC5fgI/OfhMqOLb36O
         kK79FeHIQ6zucxKjibREC/PksFNsky5sUu2qB4YDsrMY9dyjDq4s0hcvJJF6QRqa7NiA
         NipgF71v+KRG2KUmLy2InjRdDpbNBUGIi8/6JQ2lwAbPYb+qOPBEfB6kCDSP0b226LbS
         xbjWPrtSB/a9eMnWqBgc3/5d6BBhUK+hGQ39Cbj90qWLkjfOVj4814HGE2jv3hT5LaZ/
         aFdBT/7o3f5DzWWo+VmOBpAq+FmOUhhsa0aRJ5R+seMK8TqdMM1Q0ClBJvhNnmqxjMMs
         8y2A==
X-Gm-Message-State: AJIora+3pZnuCULm9B93LxDMGg3lP/NxNfx98kYyrMbIUotzKQ+mssQS
	hSsjo495b4i6RJamXcWrmCjAyA==
X-Google-Smtp-Source: AGRyM1s/CyCMumswFxHBjhmwKYGhrAxlBUNIjyJQ+86kIiMm7Jtq6KG87aEVvjb0P9LKLUOppXTI3A==
X-Received: by 2002:a05:651c:322:b0:25d:3128:1842 with SMTP id b2-20020a05651c032200b0025d31281842mr3092722ljp.486.1657045274431;
        Tue, 05 Jul 2022 11:21:14 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id q4-20020a0565123a8400b004796e1555eesm5800575lfu.199.2022.07.05.11.21.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 11:21:13 -0700 (PDT)
Message-ID: <cf61b071-aa31-6f67-07f1-4f15e0fe7511@linaro.org>
Date: Tue, 5 Jul 2022 20:21:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 17/43] dt-bindings: phy: qcom,qmp-pcie: add missing child
 node schema
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-18-johan+linaro@kernel.org>
 <4bc79a1c-66b1-225d-5026-ddf3e6f7d22c@linaro.org>
 <YsQlzr6nyvz761Kz@hovoldconsulting.com>
 <963917cf-0f9d-600f-564e-9e687270b1af@linaro.org>
 <YsQqcKZAs1xAB9+S@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsQqcKZAs1xAB9+S@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_112118_279338_2CE4676A 
X-CRM114-Status: GOOD (  24.77  )
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

On 05/07/2022 14:11, Johan Hovold wrote:
> On Tue, Jul 05, 2022 at 01:56:32PM +0200, Krzysztof Kozlowski wrote:
>> On 05/07/2022 13:51, Johan Hovold wrote:
>>> On Tue, Jul 05, 2022 at 12:18:37PM +0200, Krzysztof Kozlowski wrote:
>>>> On 05/07/2022 11:42, Johan Hovold wrote:
>>>>> Add the missing the description of the PHY-provider child node which was
>>>>> ignored when converting to DT schema.
>>>>>
>>>>> Also fix up the incorrect description that claimed that one child node
>>>>> per lane was required.
>>>>>
>>>>> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
>>>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>>>> ---
>>>>>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 88 ++++++++++++++++++-
>>>>>  1 file changed, 85 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
>>>>> index ff1577f68a00..5a1ebf874559 100644
>>>>> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
>>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
>>>>> @@ -69,9 +69,37 @@ properties:
>>>
>>>>> +  - if:
>>>>> +      properties:
>>>>> +        compatible:
>>>>> +          contains:
>>>>> +            enum:
>>>>> +              - qcom,sm8250-qmp-gen3x2-pcie-phy
>>>>> +              - qcom,sm8250-qmp-modem-pcie-phy
>>>>> +              - qcom,sm8450-qmp-gen4x2-pcie-phy
>>>>> +    then:
>>>>> +      patternProperties:
>>>>> +        "^phy@[0-9a-f]+$":
>>>>> +          properties:
>>>>> +            reg:
>>>>> +              items:
>>>>> +                - description: TX lane 1
>>>>> +                - description: RX lane 1
>>>>> +                - description: PCS
>>>>> +                - description: TX lane 2
>>>>> +                - description: RX lane 2
>>>>> +                - description: PCS_MISC
>>>>> +    else:
>>>>> +      patternProperties:
>>>>> +        "^phy@[0-9a-f]+$":
>>>>> +          properties:
>>>>> +            reg:
>>>>> +              minItems: 3
>>>>> +              maxItems: 4
>>>>> +              items:
>>>>> +                - description: TX
>>>>> +                - description: RX
>>>>> +                - description: PCS
>>>>> +                - description: PCS_MISC
>>>>> +      if:
>>>>
>>>> Do not include if within other if. Just split the entire section to its
>>>> own if:.
>>>
>>> That sounds like it would just obfuscate the logic. The else clause
>>> specified 3-4 registers and the nested if determines which compatibles
>>> use which by further narrowing the range.
>>>
>>> If you move it out to the else: this would be really hard understand and
>>> verify.
>>
>> Every bindings are expected to do that way and most of them are doing
>> it: define broad constraints in properties:, then define strict
>> constraints per each variant. Easy to follow code. This binding is not
>> particularly special to make it different than other ones. Doing
>> semi-strict constraints in if: and then additional constrain in nested
>> if: is not easy to understand and verify.
> 
> Ok, so you want to flatten this by repeating also the register
> descriptions?
> 
> That wouldn't hurt readability as much, but doing so would be more error
> prone as it's easy to miss adding a new compatible in every group of
> conditionals and there's no else clause to catch the mistake.
> 
> Right know the logic is
> 
> 	if dual-lane
> 		items = 6
> 	else
> 		items = 3 or 4
> 		if single-lane-exception
> 			items = 3
> 		else
> 			items = 4
> 
> Flattening this gives
> 
> 	if dual-lane
> 		items = 6
> 	if single-lane-normal
> 		items = 4
> 	if single-lane-exception
> 		items = 3
> 
> Which means that every compatible must now be listed in one of the
> conditionals.

Yes, because it's explicit and easy to read. Handling compatibles in
'else' makes it opposite - one cannot use grep and cannot easily find
what is actually covered by maxItems:4 (you need to check all 7
compatibles to find what is not covered here).

> 
> Fine with me, but please confirm that I understood you correctly.

You have already flattened if-if-if for clocks and resets, so this
should follow similar approach. I don't think it could be squashed with
that previous if-if-if, though.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
