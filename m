Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42657CAC583
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 16:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IXDllI/nFAw/0msYdu916S9hmjk/XRtak5WPutOCigw=; b=gCZPC8706Cp1LwDSD9YQX8Q08d
	Q5w8S6WxQdwZt4Z4x57+rcu2v9px0WxXhpXMpy0Cp7p++8kvo9iHi8v0VGz6in9VZUfLUTl9Kt3UM
	6idD4Z+fnP3rIx14MnaErbgU78rJ+sFW/xSqE+nbt3vqJWO7t6EMQ/Ous4Sxc9FAHb9Wr/FXTAOTq
	faNeyzLGswSHXpGRw+7aQNFraob7aicnnpQ4GXQffzcfoedHo84oU8IYKRJrFpW3Yeh+oyUv3XBka
	v0QYtulqJOVcqlaebJWFylEbAWzgAXV9m3W+eejlkvmCanJnfEeqBTYS1zzNAqcBd/BCet8+d8X4b
	Cebr2hLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0nL-00000008NPN-3MEE;
	Tue, 09 Sep 2025 16:02:11 +0000
Received: from mail-wr1-f42.google.com ([209.85.221.42])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvxRf-000000073zE-3ugy
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 12:27:37 +0000
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3dea538b826so4781437f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 05:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757420853; x=1758025653; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JMgQJrHR/R7kuH76u+Ory7LEmNQkrYiIPQJV3CNxb6g=;
        b=cVtY2YO9Ab9lGES5ZoHqbqTP38BMFXUYlmKGsmKBwXfsNv41NuWU6m2D8mPDYaQMXn
         3UFN87lc0xXgick9q8Yf4r5tzyZF6gJbeYw0VeAv2yeWcKNOEflsqR6+LsJk6WiNlGWK
         Hm3ctMI/E5ZlYmnjAt7PfJQ5f/NEbzL69vUvfM1sk/y6v2CBi44AlkKY4plwqcr6s9KP
         coim7pCRL6KcuEBHIOpCB9EkIoDoo0IqdtqeOY3Twx9XDqswazf2wm6rOimJBupgGEWm
         VKQeIT2mnw86AaB8JpAt2LoS9W0dAJsQkOMiQrL7OMrSDcIRLdnPKA73gilfbtm525pZ
         dNVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757420853; x=1758025653;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JMgQJrHR/R7kuH76u+Ory7LEmNQkrYiIPQJV3CNxb6g=;
        b=R7U0hO1IaaF2QvLwO38DgWuAJbEhyH7yqHSZUYQxoA5EuioemTyDuBbAt9mUYlQcz9
         f4z61n0erO3m1aHtFArbKFRmCJlAng3V/p+extH5QQdoZl/uwSZ2TmQn9i7kNt2Lf+ze
         zJYhY8ivf7YRWW06TF/rx1166rfcSkNznXyjhoNoSDhYCQoj0wJZ6XuHTa6xoRcmS56R
         eXRpaQitV/pmsv7Pn5P3mHmY45wDrc1AWhHY1VYYIYOt6UJwy1HjqOTcCJQkJUN3Qtug
         31ZmANHynXGNr9S+ugPA4ctmQtom7NgO050/jRR23OMc4s1u1CJukJu/z2klp04qsp2P
         z7qg==
X-Forwarded-Encrypted: i=1; AJvYcCWwofRrK7dwa6MUL5ITa23AWSKUZIjkBARABma5HOU9dmUjenYRAljyTAiyDvj8/Gr73uBe0XJia5Q=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCEHwLBGLiBa5v1KAnuKp9BRI491AQVBtJKLauGGuLXyOA1bPV
	Mx/1pZnrlIt8U5E4pmDlNSBN9H0ntTMynoTHRT84cliwzx3QSuEW85kzb326cYoXzSY=
X-Gm-Gg: ASbGnctw3Sv639SuxFDuzDLbVbd6MBddi8JSdkn2znuTnQfWhZVM1g5ThxYLmzBHOlm
	FQYWIBx4KYbLJXUS2pp0Lm7YXclmbE04eheWlBJaczozKT8uhiFWPJkvMrPeWUh1x1oULC9rF3v
	kmJ16udG7rFujvlGTov+IsCyg56SSMUrkMV7v+7UD4J0HJYhDyaQYWdSogdWrqHBJ/6gzWzq87s
	UqqkR5sGjoffa+umzhCOAEK/TjskP4sl3Ob3aUdNMhNAqa5xBVus+mEYMPDwD5zNspiNaPGga+k
	R3rTmQ7BJYauzD5zn3zxpyo2itvK1TixPNk7766mAq6C8KJvGELwQm72IQto/TIRV9yB+jcIC5N
	fZXPefiids+xN73RiSCs6raJTDh/ErGQsjNlvFwt8zs0932Vj2yfoZ0VKEX+sudQACCGndodOXy
	Yz0ctutYg=
X-Google-Smtp-Source: AGHT+IEuiDiglPwmV1PehXcY70hodMwYIFyGOdsXoLipFNPjAGrinssVi1Zvi2KS3OSRzXamJ0+FXg==
X-Received: by 2002:a05:6000:2f87:b0:3d4:eac4:9db2 with SMTP id ffacd0b85a97d-3e63736d7c8mr11407057f8f.5.1757420853362;
        Tue, 09 Sep 2025 05:27:33 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:25ab:4e12:265b:4b6? ([2a01:e0a:3d9:2080:25ab:4e12:265b:4b6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dcff67787sm237340005e9.16.2025.09.09.05.27.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 05:27:33 -0700 (PDT)
Message-ID: <cdcc80aa-45b0-436f-99f9-b3f09999a0fe@linaro.org>
Date: Tue, 9 Sep 2025 14:27:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
 <20250908-topic-x1e80100-hdmi-v3-3-c53b0f2bc2fb@linaro.org>
 <7dzfcuvr45h4iailtjutqjev7lofoqu7w6ob77gehgmy7mctpk@k7oob4wj3c7a>
 <14d58c6d-ca20-4349-8031-9906a4539fef@linaro.org>
 <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <c25kbb65aijgolxjzunydvhupt774pfmbcz5lvfvl5f74rrxtr@vboh347gdvdp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_052735_994607_A9EEBAB2 
X-CRM114-Status: GOOD (  19.76  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 09/09/2025 13:16, Dmitry Baryshkov wrote:
> On Tue, Sep 09, 2025 at 09:14:49AM +0200, Neil Armstrong wrote:
>> On 08/09/2025 23:14, Dmitry Baryshkov wrote:
>>> On Mon, Sep 08, 2025 at 03:04:20PM +0200, Neil Armstrong wrote:
>>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>>>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>>>
>>>> The routing of the lanes can be:
>>>> - 2 DP + 2 USB3
>>>> - 4 DP
>>>> - 2 USB3
>>>>
>>>> The layout of the lanes was designed to be mapped and swapped
>>>> related to the USB-C Power Delivery negociation, so it supports
>>>> a finite set of mappings inherited by the USB-C Altmode layouts.
>>>>
>>>> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
>>>> connector, DP->HDMI bridge, USB3 A Connector, etc... without
>>>> an USB-C connector and no PD events.
>>>>
>>>> Document the data-lanes on numbered port@0 out endpoints,
>>>> allowing us to document the lanes mapping to DisplayPort
>>>> and/or USB3 connectors/peripherals.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>    .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 59 +++++++++++++++++++++-
>>>>    1 file changed, 58 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> index 5005514d7c3a1e4a8893883497fd204bc04e12be..51e0d0983091af0b8a5170ac34a05ab0acc435a3 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> @@ -81,10 +81,67 @@ properties:
>>>>      ports:
>>>>        $ref: /schemas/graph.yaml#/properties/ports
>>>> +
>>>>        properties:
>>>>          port@0:
>>>> -        $ref: /schemas/graph.yaml#/properties/port
>>>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>>>>            description: Output endpoint of the PHY
>>>> +        unevaluatedProperties: false
>>>> +
>>>> +        properties:
>>>> +          endpoint:
>>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>>> +            unevaluatedProperties: false
>>>> +
>>>> +          endpoint@0:
>>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>>> +            description: Display Port Output lanes of the PHY when used with static mapping
>>>> +            unevaluatedProperties: false
>>>> +
>>>> +            properties:
>>>> +              data-lanes:
>>>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +                minItems: 2
>>>
>>> Nit: DP can work in a 1-lane mode. Do we nned to support that in the PHY?
>>
>> So the PHY already supports 1-lane, but the QMP Combo only supports
>> mapping 2+2 or 4, but nevetheless we can still decscribe 1 lane in DT
>> int both in & out endpoint and still should work fine.
>>
>> Do you think this should be done now ?
> 
> Do we support it in the PHY hardware?

The PHY definitely supports 1 lanes, in fact DP the code will cycle over 4, 2 and 1 lane.

Neil

> 
>>
>> Neil
>>
>>>
>>>> +                maxItems: 4
>>>> +                oneOf:
>>>> +                  - items: # DisplayPort 2 lanes, normal orientation
>>>> +                      - const: 0
>>>> +                      - const: 1
>>>> +                  - items: # DisplayPort 2 lanes, flipped orientation
>>>> +                      - const: 3
>>>> +                      - const: 2
>>>> +                  - items: # DisplayPort 4 lanes, normal orientation
>>>> +                      - const: 0
>>>> +                      - const: 1
>>>> +                      - const: 2
>>>> +                      - const: 3
>>>> +                  - items: # DisplayPort 4 lanes, flipped orientation
>>>> +                      - const: 3
>>>> +                      - const: 2
>>>> +                      - const: 1
>>>> +                      - const: 0
>>>> +            required:
>>>> +              - data-lanes
>>>> +
>>>> +          endpoint@1:
>>>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>>>> +            description: USB Output lanes of the PHY when used with static mapping
>>>> +            unevaluatedProperties: false
>>>> +
>>>> +            properties:
>>>> +              data-lanes:
>>>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +                minItems: 2
>>>> +                oneOf:
>>>> +                  - items: # USB3, normal orientation
>>>> +                      - const: 1
>>>> +                      - const: 0
>>>> +                  - items: # USB3, flipped orientation
>>>> +                      - const: 2
>>>> +                      - const: 3
>>>> +
>>>> +            required:
>>>> +              - data-lanes
>>>>          port@1:
>>>>            $ref: /schemas/graph.yaml#/properties/port
>>>>
>>>> -- 
>>>> 2.34.1
>>>>
>>>
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
