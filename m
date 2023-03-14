Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46B00C74A44
	for <linux-phy@archiver.kernel.org>; Tue, 14 Mar 2023 18:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Y0Q6Gzof6rOjX1h7rQMNq8/WCHdcrIKm7xuTJ8Okmw=; b=DVeJnK1hTtODai
	CHnIXk7qJiur9ksxMhx0UV4CAP3fCst6DIOhtwSSevpxK1zX3aHk98LHNbmBMeCgIXuUePZ+ApY9m
	kKPhBvFbiwDlcFxdAlHc51qArH2OTuuhIQ3NNd8cGVFgPR5LiyXhDGL8EC7fD6VIposnBDlQd2xZ9
	5CoAvHwxSmhJsezpfLZvvwshXrJQ2VgPDYW6x5gxkyd/SQYsnS3nk13VsdNt+d12tfsY50YoKc0tg
	3RBBjfEh0PBXNiS6CB5xTORTWPP5GENFlPdP0Xa66pWjEI5N4M/cp6NOYMg9ksggVwfWlc67ZSvYl
	dtKNyGwSQwg8H3yapg+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc9SQ-00BCVU-2h;
	Tue, 14 Mar 2023 18:33:10 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc9SL-00BCSR-1i
	for linux-phy@lists.infradead.org;
	Tue, 14 Mar 2023 18:33:09 +0000
Received: by mail-ed1-x52d.google.com with SMTP id eh3so9954070edb.11
        for <linux-phy@lists.infradead.org>; Tue, 14 Mar 2023 11:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678818781;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LQb9xNYiO/iqB9yTe53F4I/BNv5rnpqkcJdJqgkN/yI=;
        b=HxjcSy4OLiuvU7KpwhzgoEB5+vnpfyRmdS7ArxIic+7EEC9GnyMN+AZM8pWM//Gpku
         LrAkjV0Z7FjaM7saOQNwicIBzLsbJqJRtEH6Zr6UszMMoWH7t6wax2RIan73ksECyQTq
         /B63PMOslJ9KVU/1NLlag3hImAh2lurBS7pLpwnLTBrQqLfCiLFTrIs7c9je1vOIJVar
         SxM7jSU8QxyLrpQm5qiTtsUiBNihlNTiMN9fmZi1ChcBzoujsVrGZslE8NeTwu/+KTBi
         fkUIynMfk6UeVG3sX92pa/z8Kv9+srHnnkAJcLc8KECyfy1kYPng7EGubiove5Xs0lEP
         6l9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678818781;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LQb9xNYiO/iqB9yTe53F4I/BNv5rnpqkcJdJqgkN/yI=;
        b=7E/ykiEGTBRW4PuTxsKCHkWx6gc6iWH1ivg02UShvUV6N/3DiOIKogDnvkXLrU7iTP
         im+IjjfJiTFvwjBw/wroUS6Bdfn2+rNqJldoGxkGYpPuDiCIK+q0/nR9IiBmIyLkGP59
         0JODqdKSkw0brAEayCaXfNBqS6EZMsPW8wp/PL0ZTAlZmfKl6gPQEdvdJL/AlAhpQ4ur
         gHc4ToB/mMDbMjsjrc7HPcC019U5bS4Lvq9NLQSKKLuRWvtiMP1JnbVVRgJK8M44cxeO
         HShpGtnAutmafz7WOggYKKY3Sv7y3dDegsLsYFigqC4PvjH4MKVfQ+TLLsatMimOUFbx
         HCOw==
X-Gm-Message-State: AO0yUKXhP8cqQtncvHgbHZ8/oJESTOWpnv1rJnhD3+4+VlwZdRsjjiz8
	+EO/Pu/JdQFDj1E5UXqM+vODuQ==
X-Google-Smtp-Source: AK7set8E16Uwl1ox24Ycdl24SNjfY/EOBbiAWVFUEt7rR6u2ZMYnWft2fxxQv0yKGXq/Uqerghj//A==
X-Received: by 2002:a17:906:fa15:b0:92b:a3fe:53ca with SMTP id lo21-20020a170906fa1500b0092ba3fe53camr3166775ejb.30.1678818770388;
        Tue, 14 Mar 2023 11:32:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id m10-20020a170906848a00b008def483cf79sm1442158ejx.168.2023.03.14.11.32.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 11:32:49 -0700 (PDT)
Message-ID: <ad56ca5e-03f7-5e3d-6547-91c64fdb08d3@linaro.org>
Date: Tue, 14 Mar 2023 19:32:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v11 03/13] dt-bindings: Convert gpio-mmio to yaml
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Madalin Bucur <madalin.bucur@nxp.com>, Bagas Sanjaya <bagasdotme@gmail.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, =?UTF-8?Q?Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-gpio@vger.kernel.org
References: <20230313161138.3598068-1-sean.anderson@seco.com>
 <20230313161138.3598068-4-sean.anderson@seco.com>
 <684eb04d-aeaa-07e1-34d6-783e85e379f0@linaro.org>
 <3c19e6d2-4df2-6187-36d5-98ceef07235a@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3c19e6d2-4df2-6187-36d5-98ceef07235a@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_113305_579665_FCA2EF8D 
X-CRM114-Status: GOOD (  39.05  )
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

On 14/03/2023 19:09, Sean Anderson wrote:
> On 3/14/23 13:56, Krzysztof Kozlowski wrote:
>> On 13/03/2023 17:11, Sean Anderson wrote:
>>> This is a generic binding for simple MMIO GPIO controllers. Although we
>>> have a single driver for these controllers, they were previously spread
>>> over several files. Consolidate them. The register descriptions are
>>> adapted from the comments in the source. There is no set order for the
>>> registers, so I have not specified one.
>>>
>>> Rename brcm,bcm6345-gpio to brcm,bcm63xx-gpio to reflect that bcm6345
>>> has moved.
>>>
>>> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
>>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>> ---
>>> Linus or Bartosz, feel free to pick this up as the rest of this series
>>> may not be merged any time soon.
>>>
>>> Changes in v11:
>>> - Keep empty (or almost-empty) properties on a single line
>>> - Don't use | unnecessarily
>>> - Use gpio as the node name for examples
>>> - Rename brcm,bcm6345-gpio.yaml to brcm,bcm63xx-gpio.yaml
>>>
>>> Changes in v10:
>>> - New
>>>
>>>  ...m6345-gpio.yaml => brcm,bcm63xx-gpio.yaml} |  16 +--
>>>  .../devicetree/bindings/gpio/gpio-mmio.yaml   | 134 ++++++++++++++++++
>>>  .../bindings/gpio/ni,169445-nand-gpio.txt     |  38 -----
>>>  .../devicetree/bindings/gpio/wd,mbl-gpio.txt  |  38 -----
>>>  4 files changed, 135 insertions(+), 91 deletions(-)
>>>  rename Documentation/devicetree/bindings/gpio/{brcm,bcm6345-gpio.yaml => brcm,bcm63xx-gpio.yaml} (78%)
>>>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
>>>  delete mode 100644 Documentation/devicetree/bindings/gpio/ni,169445-nand-gpio.txt
>>>  delete mode 100644 Documentation/devicetree/bindings/gpio/wd,mbl-gpio.txt
>>>
>>> diff --git a/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml b/Documentation/devicetree/bindings/gpio/brcm,bcm63xx-gpio.yaml
>>> similarity index 78%
>>> rename from Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
>>> rename to Documentation/devicetree/bindings/gpio/brcm,bcm63xx-gpio.yaml
>>> index 4d69f79df859..e11f4af49c52 100644
>>> --- a/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
>>> +++ b/Documentation/devicetree/bindings/gpio/brcm,bcm63xx-gpio.yaml
>>
>>
>>> +
>>> +description:
>>> +  Some simple GPIO controllers may consist of a single data register or a pair
>>> +  of set/clear-bit registers. Such controllers are common for glue logic in
>>> +  FPGAs or ASICs. Commonly, these controllers are accessed over memory-mapped
>>> +  NAND-style parallel busses.
>>> +
>>> +properties:
>>> +  big-endian: true
>>> +
>>> +  compatible:
>>
>> Keep compatible as first property.
> 
> I thought it was alphabetical.

There is no clear rule, except that compatible is always first. In the
DTS reg is second, in bindings usually as well but not always.

> 
>>> +    enum:
>>> +      - brcm,bcm6345-gpio # Broadcom BCM6345 GPIO controller
>>> +      - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
>>> +      - ni,169445-nand-gpio # National Instruments 169445 GPIO NAND controller
>>
>> I think you got comment that these comments are making things
>> unreadable. I don't see here improvement.
> 
> That was not the comment I got.

OK

> 
> | I think you can inline description: statements in the enum instead of
> | the # hash comments, however IIRC you have to use oneOf and
> | const: to do it, like I do in
> | Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml
> | but don't overinvest in this if it is cumbersome.
> 
> I investigated this and determined it was cumbersome.

So just :

     # Western Digital MyBook Live memory-mapped GPIO controller
     - wd,mbl-gpio

> 
>> For example first comment is useless - you say the same as compatible.
>> Same with last one. So only remaining WD comment should be made in new
>> line so everything is nicely readable.
> 
> I don't understand what you mean by "made in new line". Anyway, I will
> leave just the WD comment.
> 
>> BTW, order the enum by name.
> 
> OK
> 
>>> +
>>> +  '#gpio-cells':
>>> +    const: 2
>>> +
>>> +  gpio-controller:
>>> +    true
>>
>> I am sure I saw comments here...
>>
>> https://lore.kernel.org/all/20230308231018.GA4039466-robh@kernel.org/
> 
> OK
> 
>>> +
>>> +  reg:
>>> +    minItems: 1
>>> +    description:
>>> +      A list of registers in the controller. The width of each register is
>>> +      determined by its size.
>>
>> I don't understand this comment. Aren't you describing now what 'reg' is
>> in DT spec? If so, drop. If not, please share more.
> 
> Each register describes exactly one hardware register. In some other
> device, when you see `regs = <0x8000000 0x100>`, then you may have 64
> 32-bit registers. But for this device, it would be one 2048-bit
> register.

Ah, so you do not mean here address space size? OK then, thanks for
clarification.

> 
>>>  All registers must have the same width. The number
>>> +      of GPIOs is set by the width, with bit 0 corresponding to GPIO 0.
>>> +    items:
>>> +      - description:
>>> +          Register to READ the value of the GPIO lines. If GPIO line is high,
>>> +          the bit will be set. If the GPIO line is low, the bit will be cleared.
>>> +          This register may also be used to drive GPIOs if the SET register is
>>> +          omitted.
>>> +      - description:
>>> +          Register to SET the value of the GPIO lines. Setting a bit in this
>>> +          register will drive the GPIO line high.
>>> +      - description:
>>> +          Register to CLEAR the value of the GPIO lines. Setting a bit in this
>>> +          register will drive the GPIO line low. If this register is omitted,
>>> +          the SET register will be used to clear the GPIO lines as well, by
>>> +          actively writing the line with 0.
>>> +      - description:
>>> +          Register to set the line as OUTPUT. Setting a bit in this register
>>> +          will turn that line into an output line. Conversely, clearing a bit
>>> +          will turn that line into an input.
>>> +      - description:
>>> +          Register to set this line as INPUT. Setting a bit in this register
>>> +          will turn that line into an input line. Conversely, clearing a bit
>>> +          will turn that line into an output.
>>> +
>>> +  reg-names:
>>> +    minItems: 1
>>> +    maxItems: 5
>>> +    items:
>>> +      enum:
>>
>> Why this is in any order? Other bindings were here specific, your 'reg'
>> is also specific/fixed.
> 
> Some devicetrees have dirout first, and other have dat first. There is no
> mandatory order, and some registers can be included or left out as is
> convenient to the devicetree author.
> 
> reg is not specific/fixed either. It is just done that way for
> convenience (and to match the names here).

The items have order and usually we require strict order from DTS,
unless there is a reason. If there is no reason, use fixed order and
then fix the DTS.

> 
>>> +        - dat
>>> +        - set
>>> +        - clr
>>> +        - dirout
>>> +        - dirin
>>> +
>>> +  native-endian: true
>>> +
>>> +  no-output:
>>> +    $ref: /schemas/types.yaml#/definitions/flag
>>> +    description:
>>> +      If this property is present, the controller cannot drive the GPIO lines.
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - reg-names
>>> +  - '#gpio-cells'
>>> +  - gpio-controller
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    gpio@1f300010 {
>>> +      compatible = "ni,169445-nand-gpio";
>>> +      reg = <0x1f300010 0x4>;
>>> +      reg-names = "dat";
>>> +      gpio-controller;
>>> +      #gpio-cells = <2>;
>>> +    };
>>> +
>>> +    gpio@1f300014 {
>>> +      compatible = "ni,169445-nand-gpio";
>>> +      reg = <0x1f300014 0x4>;
>>> +      reg-names = "dat";
>>> +      gpio-controller;
>>> +      #gpio-cells = <2>;
>>> +      no-output;
>>> +    };
>>
>> No need to duplicate examples. Keep only one.
> 
> OK
> 
>> Everything is the same.
> 
> Except no-output.

I would argue that even one example with no-output is enough, but sure,
can be two in total.



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
