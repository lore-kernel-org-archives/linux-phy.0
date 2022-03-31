Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E1ABC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 31 Mar 2022 05:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7vc5rvtz+OOeJgsnxYeYbJtQ1llknsQacZFat8W31c=; b=cy4XQc6JrnRwfC
	aAPVvo5w3aETvsqXQp3vXrPyjo8f7ltJCriyduPlyN+Flna+i/9ChgQ8s7yOXqyTXPfmWujiCt3JB
	4I7zmy3kRHIOSmz3EgjkWfQ+umDoBLFKGDZ3MfhbZaOClajAVIt56d1CjUW8hIXFz9hBs2d6irkie
	u29RFDorc1DXmu8qXDuf/PZ48qJWcUDwbZVQRUHnNb2/TDEMkhIo/VPthUJzWEx0P0e9h7cD7hQYj
	8XApNQvMkCh9lUhPinYSoDFQhPBXS58j5vTs6sHOqVdamZr7mWhLBwcgPNSmniu5cA85GixxH5NpQ
	lacnJb2V2LXChF8PspWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZnl9-000m1Y-Gp; Thu, 31 Mar 2022 05:54:15 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZnkn-000lrk-Pj
 for linux-phy@lists.infradead.org; Thu, 31 Mar 2022 05:53:58 +0000
Received: by mail-ej1-x631.google.com with SMTP id bg10so45790992ejb.4
 for <linux-phy@lists.infradead.org>; Wed, 30 Mar 2022 22:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=zzs+ZHibEnw+t1g8tg6/Dygsvg8Tq1tVYNwyuhr7FfU=;
 b=PwtYT3853d0ybAZujxH83isegbuSphn/uUyIcg2L7F8ik2CoDddiJAd4vFrj01oQpq
 ngjYoJpJK7Te6ACIQyLLz2gXfiDBfsTaTwdTJQXJKz5j61MhVeBWpOMbsbFL56Ywv/9u
 n0jJe68RTMVvvXWVBxqWA45gJvDLJBtz0NTR7cQr8sBRzJhKn7uWcv5VEDTS4zQuPObK
 kyrxW31am0Ly4RAI2Bes34LDjLEv5GZKbBVXtVkQQS3bxBUYI9urwL6yH1T5NrTmn/I/
 eEte9nspD5UqCe5MGEOeuw1Wj9Xbux232G5ltRocxRiHoAhFHnkCgFw7WQMEKKrHNHc0
 vwww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=zzs+ZHibEnw+t1g8tg6/Dygsvg8Tq1tVYNwyuhr7FfU=;
 b=m42oZdP8baSuquHaG0h+c6THmqxg/7KCQ6+80U5jqOHPt2qsCDN4kGjgsfcCm/yLi5
 yLR7v2lVBmzHgESjPFtUSpHN2KAughAnLXONS/+ngfMzyLMGXepGj1UirLqKDBMT4/Gb
 0l7VuUOczm/TEEEm/odRfHNDfyvNhFgmVw0ojG/O/Rj7Nt82tA0cWylAyE8WVdhKJ1c9
 zse5UKqh4FHKmuapTZTriK1GrbDONs7mcRcLrHTDIqIiRYwnkSqBxrCOUhkPkacReleQ
 GccsJhWTPJlrnMoajlyj33Q1FFSwGcoG9U65/r+sf7V33dhEJRRxFdffgCJTm3TwjZOR
 F3Cw==
X-Gm-Message-State: AOAM532EdL0F369OThJJ39j2SGaH62IjDPahEQCNGp+qTAnItGtHi/Bs
 MKSLpa6JAo2pdyE3kaZASX93GA==
X-Google-Smtp-Source: ABdhPJzkI8vj+Jq5KZdLH/R9bIGRMouax/d6lriJQXZwTgo7uUVSkqmvjIQT+GOZLxcFLw6ItXtNcQ==
X-Received: by 2002:a17:907:608c:b0:6e0:5204:7454 with SMTP id
 ht12-20020a170907608c00b006e052047454mr3425777ejc.225.1648706032108; 
 Wed, 30 Mar 2022 22:53:52 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 dm11-20020a170907948b00b006cf488e72e3sm9041961ejc.25.2022.03.30.22.53.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 22:53:51 -0700 (PDT)
Message-ID: <5fa843d2-f07c-3bc0-22f1-8a2ae234e9aa@linaro.org>
Date: Thu, 31 Mar 2022 07:53:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 5/5] dt-bindings: phy: uniphier: Clean up clocks,
 resets, and their names using compatible string
Content-Language: en-US
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648637715-19262-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648637715-19262-6-git-send-email-hayashi.kunihiko@socionext.com>
 <a784ed61-965a-5c68-c2dd-3340cf18c7b5@linaro.org>
 <d32191fc-1302-89e4-8b24-40fe33867b98@socionext.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d32191fc-1302-89e4-8b24-40fe33867b98@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_225353_901958_05CFC847 
X-CRM114-Status: GOOD (  18.10  )
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

On 31/03/2022 02:50, Kunihiko Hayashi wrote:
> Hi Krzysztof,
> 
> On 2022/03/31 2:40, Krzysztof Kozlowski wrote:
>> On 30/03/2022 12:55, Kunihiko Hayashi wrote:
>>> Instead of "oneOf:" choices, use "allOf:" and "if:" to define clocks,
>>> clock-names, resets, and reset-names that can be taken by the compatible
>>> string.
>>>
>>> The order of clock-names and reset-names doesn't change here.
>>>
>>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>> ---
>>>   .../phy/socionext,uniphier-ahci-phy.yaml      | 90 +++++++++++++-----
>>>   .../phy/socionext,uniphier-pcie-phy.yaml      | 47 ++++++---
>>>   .../phy/socionext,uniphier-usb3hs-phy.yaml    | 93 ++++++++++++++----
>>>   .../phy/socionext,uniphier-usb3ss-phy.yaml    | 95 +++++++++++++++----
>>>   4 files changed, 251 insertions(+), 74 deletions(-)
>>>
>>
>> (...)
>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
>>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
>>> index 1bbd164f2527..21e4414eea60 100644
>>> ---
>>> a/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
>>> +++
>>> b/Documentation/devicetree/bindings/phy/socionext,uniphier-usb3hs-phy.yaml
>>> @@ -34,30 +34,12 @@ properties:
>>>       minItems: 2
>>>       maxItems: 3
>>>
>>> -  clock-names:
>>> -    oneOf:
>>> -      - items:               # for Pro5
>>> -          - const: gio
>>> -          - const: link
>>> -      - items:               # for PXs3 with phy-ext
>>> -          - const: link
>>> -          - const: phy
>>> -          - const: phy-ext
>>> -      - items:               # for others
>>> -          - const: link
>>> -          - const: phy
>>> +  clock-names: true
>>>
>>>     resets:
>>>       maxItems: 2
>>>
>>> -  reset-names:
>>> -    oneOf:
>>> -      - items:               # for Pro5
>>> -          - const: gio
>>> -          - const: link
>>> -      - items:               # for others
>>> -          - const: link
>>> -          - const: phy
>>> +  reset-names: true
>>>
>>>     vbus-supply:
>>>       description: A phandle to the regulator for USB VBUS
>>> @@ -80,6 +62,77 @@ properties:
>>>         required for each port, if any one is omitted, the trimming data
>>>         of the port will not be set at all.
>>>
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: socionext,uniphier-pro5-usb3-hsphy
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          minItems: 2
>>> +          maxItems: 2
>>> +        clock-names:
>>> +          items:
>>> +            - const: gio
>>> +            - const: link
>>> +        resets:
>>> +          minItems: 2
>>> +          maxItems: 2
>>> +        reset-names:
>>> +          items:
>>> +            - const: gio
>>> +            - const: link
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - socionext,uniphier-pxs2-usb3-hsphy
>>> +              - socionext,uniphier-ld20-usb3-hsphy
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          minItems: 2
>>> +          maxItems: 2
>>> +        clock-names:
>>> +          items:
>>> +            - const: link
>>> +            - const: phy
>>> +        resets:
>>> +          minItems: 2
>>> +          maxItems: 2
>>> +        reset-names:
>>> +          items:
>>> +            - const: link
>>> +            - const: phy
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - socionext,uniphier-pxs3-usb3-hsphy
>>> +              - socionext,uniphier-nx1-usb3-hsphy
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          minItems: 2
>>
>> Why minItems:2? Is the last phy-ext clock optional?
> 
> In an SoC with two controllers, there is a controller that requires extra
> clock and a controller that does not. For example, PXs3 USB3 controller 1
> needs "phy-ext" clock, but the controller 0 doesn't.
> 
> This difference is related to the phy configuration, where the controller 1
> requires more clocks because it shares the phy with other subsystems.
> 
> So I think the last phy-ext clock should be optional.
> 

OK, thanks for explanation. I assume we talk about the hardware, not
about Linux driver needs. :)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
