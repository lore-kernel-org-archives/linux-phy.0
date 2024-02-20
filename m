Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4413C48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 11:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eP2KE8G0F5dY1JD7b3BBQB07oJgKw5l/YUtClL+e/K0=; b=El4MHpM4zjq5+3
	STiyfcP7bHQULmelKGaCWQgiuYcIOzQvHJdDliagh+pQPNj5xtehobaR+UUY4dk6VYeVf03j1y6bQ
	u9ulco2VDUQfFOgcGaZeKnedKqgTR/6tCsD/fKF2tX6EfGSX10H+uqM2wH9HkfthGJQiJzA7c1iGs
	7/o2voEhdIXF+3dkjT/uBWF7yxxX9YXDUwRX1nuPPGAyMoiWRUj4r/D/eEbvZIeI4inPQnIwkl87J
	7U5zZKmOu5ZA2+clVNix0yXl77oRMoPuK4StpDqukneSrKq4RgYqaNgeL912c9zjF5Fx5LkaY9K54
	EeWigDMifps+PU2OaXQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOXW-0000000EVOV-2TBU;
	Tue, 20 Feb 2024 11:43:58 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOXU-0000000EVMU-1hcI
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 11:43:58 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-512be9194b7so1577364e87.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 03:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708429435; x=1709034235; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=3WB8nJ0ANh5/S89R2NJWyma4JryWfBwWIGoZsHtEYts=;
        b=cgDej/B65vUiBnqFVGfk7SqpLm3PSEkszCpSuCF5NvvueClpBwaBYyywCYvYDsWYVK
         48rFsDCsia2957OdqSh90poluyVToFcab2wz/VkXgsxCyXvErgUpNReOt0kV1POY8JF+
         WZ2kkoSFX/VSRFWc1fz2Wkh9bonnfpfaghJ9G0EBFsre+52wmn9+jIwjb1icP8cyMRzq
         Flah0ZGqOKBgS3TK8gtlCFNI+TpwD8tmd3NlDNMjOkpgQLjqNW042NXlthb4sNAmOx/4
         ySw/rzUEYN1h7sRJ3i5aFtHZUEF/Ft5eLIHAi/OnUm+FyEDIDK8IzsJtrzGdR8EzV9N7
         xdLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708429435; x=1709034235;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3WB8nJ0ANh5/S89R2NJWyma4JryWfBwWIGoZsHtEYts=;
        b=b0mQr7ctZibDzLpO4ZdBuRlY5jq1CGDRaS2qfxkJZVUhVH0SAKlTZgTX9kmmGlswnB
         5Oh0vsqIUExxanhlmcvl4lwdqNQhIKsJep3WhpN/GGpVKHW17LWbdgYMTv94zhrprIlC
         UeDOCIJ+N70NDMtRNk2QZ7p6kOuWcnUv4IAQGpIXy5jBqsyBJS4goIBmFb4OXp8u7dDo
         MRacIdYOVI+N5uqYPLt+kNFmVjIw27Q6AXuhVZPsqB0sv+LHRW3yO55vol+GJ1gyyFJP
         Mudiunhm2CIx+1g7NrNz5fT+XZUeNWlgs2pwhQBwZ4yuwRQJZYesWr6JK4NKZM3kdfBY
         Tixw==
X-Gm-Message-State: AOJu0Ywuia6qDX9Gr2zb99XRpZDRFC4tXOAq+iBijiDl/3bImgpMrA85
	FvIosaENRnoBf2rEXnjNGWa0wCXPQwbx+ycHnHNr2Rjhz8sP1YEOIGsd+C/gy4w=
X-Google-Smtp-Source: AGHT+IHc9hjoE2WPKUCli5b6ilv8V304tk7I2FhBXp0JPabrp3Rvqxtce9GJa0qWfjk3k+jmysjx9A==
X-Received: by 2002:ac2:59dd:0:b0:512:a95a:8308 with SMTP id x29-20020ac259dd000000b00512a95a8308mr4671660lfn.2.1708429434778;
        Tue, 20 Feb 2024 03:43:54 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id e26-20020a50d4da000000b00564024b7845sm3836613edj.38.2024.02.20.03.43.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Feb 2024 03:43:54 -0800 (PST)
Message-ID: <b4fe5565-9378-4786-8c55-113f9088f34a@linaro.org>
Date: Tue, 20 Feb 2024 12:43:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 1/5] dt-bindings: phy: hisi-inno-usb2: convert to
 YAML
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Yang Xiwen <forbidden405@outlook.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>, Shawn Guo
 <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
 <20240220-inno-phy-v3-1-893cdf8633b4@outlook.com>
 <62221084-247c-4a0b-a030-e12cb2931411@linaro.org>
 <SEZPR06MB6959AAB6B43F3E1F5E1C526596512@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <6f3f22f6-f659-494d-963c-544cf5f44adc@linaro.org>
 <SEZPR06MB69592FACB1EF1B9FEDA89E5996512@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <9a5e9363-79eb-416c-89ae-c826062350b5@linaro.org>
 <SEZPR06MB69594A5036F122CE6C14043C96502@SEZPR06MB6959.apcprd06.prod.outlook.com>
 <bf4ce87a-51ab-49e1-ac70-c463d8008a62@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <bf4ce87a-51ab-49e1-ac70-c463d8008a62@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_034356_527409_2E379832 
X-CRM114-Status: GOOD (  20.69  )
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

On 20/02/2024 12:41, Krzysztof Kozlowski wrote:
> On 20/02/2024 11:40, Yang Xiwen wrote:
>> On 2/20/2024 4:16 PM, Krzysztof Kozlowski wrote:
>>> On 19/02/2024 22:49, Yang Xiwen wrote:
>>>> On 2/20/2024 5:37 AM, Krzysztof Kozlowski wrote:
>>>>> On 19/02/2024 22:35, Yang Xiwen wrote:
>>>>>> On 2/20/2024 5:32 AM, Krzysztof Kozlowski wrote:
>>>>>>> On 19/02/2024 22:27, Yang Xiwen via B4 Relay wrote:
>>>>>>>> From: Yang Xiwen <forbidden405@outlook.com>
>>>>>>>>
>>>>>>>> Add missing compatible "hisilicon,hi3798mv100-usb2-phy" to compatible
>>>>>>>> list due to prior driver change.
>>>>>>>>
>>>>>>>> Also rename to hisilicon,inno-usb2-phy.yaml and add this name to
>>>>>>>> compatible lists.
>>>>>>>>
>>>>>>>> Fixes: 3940ffc65492 ("phy: hisilicon: Add inno-usb2-phy driver for Hi3798MV100")
>>>>>>>> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
>>>>>>>> ---
>>>>>>>>     .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 95 ++++++++++++++++++++++
>>>>>>>>     .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt | 71 ----------------
>>>>>>>>     2 files changed, 95 insertions(+), 71 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
>>>>>>>> new file mode 100644
>>>>>>>> index 000000000000..1b57e0396209
>>>>>>>> --- /dev/null
>>>>>>>> +++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
>>>>>>>> @@ -0,0 +1,95 @@
>>>>>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>>>>>> +%YAML 1.2
>>>>>>>> +---
>>>>>>>> +$id: http://devicetree.org/schemas/phy/hisilicon,inno-usb2-phy.yaml#
>>>>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>>>>>> +
>>>>>>>> +title: HiSilicon HiSTB SoCs INNO USB2 PHY device
>>>>>>>> +
>>>>>>>> +maintainers:
>>>>>>>> +  - Yang Xiwen <forbidden405@outlook.com>
>>>>>>>> +
>>>>>>>> +properties:
>>>>>>>> +  compatible:
>>>>>>>> +    items:
>>>>>>>> +      - enum:
>>>>>>>> +          - hisilicon,hi3798cv200-usb2-phy
>>>>>>>> +          - hisilicon,hi3798mv100-usb2-phy
>>>>>>>> +      - const: hisilicon,inno-usb2-phy
>>>>>>> According to your driver hisilicon,hi3798mv100-usb2-phy and
>>>>>>> hisilicon,inno-usb2-phy are not compatible.
>>>>>> Ah, i didn't pay too much attention to that. I should remove the entry
>>>>>> for hisilicon,inno-usb2-phy in the driver. Sorry for that.
>>>>> We don't talk here about driver, although I used the driver as proof or
>>>>> argument, because I don't have access to hardware datasheet (and no
>>>>> intention to look there).
>>>>>
>>>>> What I claim is these are not compatible, so respond to this argument,
>>>>> not some other one.
>>>> Why not? Of course they are compatible. All 3 SoCs are using
>>> Why? Because...
>>>
>>>> inno-usb2-phy. The only difference here is the method to access the
>>> ... here! Different programming interface means not compatible.
>>>
>>> Please provide instead any argument that they are compatible, in the
>>> meaning of Devicetree of course. You are claiming inno-usb2-phy  can be
>>> used for hi3798mv100 and it will work fine?
>>>
>>>> registers. They are all enabled by `writing BIT(2) to address 0x6`. In
>>>> the cover letter, I said the driver is actually doing things wrong.
>>> Cover letter does not matter, I don't even read them. Your commits matter.
>>>
>>>> Especially the commit adding PHY_TYPE enums, the name is confusing and
>>>> conveys the wrong info. It's not PHY which are not compatible, it's the
>>>> bus. I'll fix the driver, but still the PHY hardwares are compatible
>>>> between these 3 SoCs.
>>> Provide any argument.
>>
>> Just take a look at the driver. hisi_inno_phy_write_reg() is the 
>> function that differs between different models. But for all of them, 
>> hisi_inno_phy_setup() is the same.
>>
>>
>> hisi_inno_phy_write_reg() should be moved to a separate bus driver. It's 
>> bus-related, not phy. PHY driver should not care how to access the bus, 
> 
> So drivers are compatible or hardware? We talk about hardware, not
> drivers...
> 
>> but the bus driver should. The PHY driver only needs to use regmap_* 
>> APIs to "write BIT(2) to addr 6".
> 
> Different programming interface, so not compatible.

Although maybe I jumped to conclusions too fast. Do you claim that all
registers are the same? All the values, offsets, fields and masks?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
