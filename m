Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B54B7CAC582
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 08:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W+aWJ3NbX4VHjHlQL7Ia9jSbhbhoLq16xNGSgIQ8f4U=; b=ztkaEnD2jysMklSBMFBHIsBQrd
	t4Ca4eqpFz91IdsznJX4Dld+gNKH9WDLY7AdyYmwuFalB+c3ive2vZQsy934nR89SiSllAWqfrKLy
	eFLfUnLIuuQ1QJQ195AqPWanLqKXBN3N6DDSEfpxgzX2LumZh9OzQ7vn+rs7jBBwETNe4OYUeU+GF
	OkMPSXhvNGyYkVfaI9x5xGMUeRlC3kez3IKWSrI+BqeSrsb6gq+vg/ty7vXUCN7vafIEcAJ0r4rlO
	ZfTwkh9iim9JrIPbs679kHgvJEKeCGfxTtRX4URxnFKgOuAhiN+k7uYmFMAp4K/NW+LIkcny5kAVL
	a7uM7EUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuRg9-00000000JkA-1Knb;
	Fri, 05 Sep 2025 08:20:17 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuQga-0000000HXa0-1OtU
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 07:16:41 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-b02c719a117so343308266b.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Sep 2025 00:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757056597; x=1757661397; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2kp4JD2bZttGmbx+T4NyRquvfEBXW2E37LfUlYO3b1o=;
        b=NBTo0UyWSKaswCGC5nHSGPKbeIiEabn3T02EU8Q9XTUM2Or6tZcq8HQRW59y2NMJP1
         /f0+Ev+VGBrHAOuai9LlLDHD8JASJyhvrhoUvT1psrP65oE3rqqyeP8IQB1RZtnq8FJm
         j/CDPZAWOVc5vQBX4uUV5FCZXvvKSzBs+F9P9YwykGckbBBHzlM7hO4iZVU1ylxnZjDP
         K/RVRTiBqEOl5NldtKRepP1tFy7RJQnYYDGBH0S2VXs9UkJHHSLCMylDwL5R+c8eELCI
         kMkMzIhVx1mFOoL9OBvx7dVTU0z71Y/6kFNyuY/vzIipkJ08NFZdJ+XjaAF42G55E+aC
         xtSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757056597; x=1757661397;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2kp4JD2bZttGmbx+T4NyRquvfEBXW2E37LfUlYO3b1o=;
        b=kT02V3xsoKfpeQkH3XlSNoPNUUNgGmuPw0IRMnqCNSxMnv7cHgtwh3TigbPjUGVNHi
         KhaIQKhVXppBsc5TLWIL/TOaoeNPS9DJKGO/Bh3WBrWmatuRKJ6QfKyOk0Yd3e/TpGe1
         hZ6LDsYt/N1kihUex/y7m6ZVhC1YrM7zRgGYI41KYoW8yx3oHce+mc7b9F/RCsDt4Md3
         nD0i8D4mu55d+N+gv5YzMNxt0h2GBN1OcM2/uh0JM5N7/qJIa9oPzznStaBIjdh6s3mm
         E6UAnMwMBxYO4gvy/x5QigHplJfV5hlBtssos7OM8v9+h8Cs0eVNeh/fsrVmqM5fH2Gf
         fdJA==
X-Forwarded-Encrypted: i=1; AJvYcCWmus6FfqQLIx4jGz7zMLlS2Qb3WYya2Yu4ZxrkwPiUS8tsNp2JlEc31qs1CK34n3qflY32A6X9uM0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwUSVixybOWbytpEBsEmZG8ZekdOmOfuNJ74lXo60cRRoHA1RxK
	SxcORWgdfpBjjthqgk+ShDLzExbLLw6INhnoEcAANyQpIviJn2aqB4nhkB6k9lnIRks=
X-Gm-Gg: ASbGncsgl908dZUvKGqcrHx+7mpVaOY1uen+oUOP6CrUuHXWTQRxvD9sHFtRaPiq6LN
	461qrl5T9oMXqTNy91lBZRCESk8QSykd9AODVK9i8JH+V0uxeGJ3aKPU7+GVZTNfN9ly1MChInR
	Frzg1lpBj0tSdiXO3kKarNwpXRxSQeuF/PX0ShC9iDhKnZrl+RTea6rD3AV2KzzblwQ4XXN+st6
	HuV1XrgJOksrKLbbgXy1jhIroVD2tPwzVV8f/BI0z5bF+WGyVheK7y+m8M1bQjWwjXRKzPCqhkY
	2VlphDfdc6RBkLF3t9XUsoHsKaqSIGOciPGjNgXjUQjYN8YSf5f14livxk5j11xvnM41wEgIZkr
	FbuONix4PqKP/Ti3yCrUH2Ww9cPVkh+TTRJLPjd9T0MfD83ClRQPojAw=
X-Google-Smtp-Source: AGHT+IHN1s8kTSyfhSU5wHjajOFmjDbm1ZSDrIzxsUIy94QQNaiThEepAiCWlOP88EXeHFDYK6UbIw==
X-Received: by 2002:a17:907:7e85:b0:afe:9f26:5819 with SMTP id a640c23a62f3a-b01d8c83763mr1972815366b.28.1757056596546;
        Fri, 05 Sep 2025 00:16:36 -0700 (PDT)
Received: from [192.168.7.190] ([212.114.21.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04634dbd5csm647972566b.19.2025.09.05.00.16.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 00:16:36 -0700 (PDT)
Message-ID: <872cc8dd-4b9a-4cfd-9a52-eef040b52daf@linaro.org>
Date: Fri, 5 Sep 2025 09:16:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp:
 Reference usb-switch.yaml to allow mode-switch
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-1-43272d6eca92@oss.qualcomm.com>
 <20250822212043.GA475528-robh@kernel.org>
 <db5220ad-6153-4f04-89be-5d74838151b1@oss.qualcomm.com>
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
In-Reply-To: <db5220ad-6153-4f04-89be-5d74838151b1@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_001640_381412_7492A416 
X-CRM114-Status: GOOD (  14.35  )
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

On 04/09/2025 17:18, Konrad Dybcio wrote:
> On 8/22/25 11:20 PM, Rob Herring wrote:
>> On Thu, Aug 07, 2025 at 06:33:19PM +0200, Konrad Dybcio wrote:
>>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>>
>>> The QMP USB3/DP Combo PHY can work in 3 modes:
>>> - DisplayPort Only
>>> - USB3 Only
>>> - USB3 + DisplayPort Combo mode
>>>
>>> In order to switch between those modes, the PHY needs to receive
>>> Type-C events, allow marking to the phy with the mode-switch
>>> property in order to allow the PHY to Type-C events.
>>>
>>> Reference usb-switch.yaml as a simpler way to allow the mode-switch
>>> property instead of duplicating the property definition.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>> ---
>>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml     | 7 +++----
>>>   1 file changed, 3 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>> index 38ce04c35d945d0d8d319191c241920810ee9005..c8bc512df08b5694c8599f475de78679a4438449 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>> @@ -73,10 +73,8 @@ properties:
>>>       description:
>>>         See include/dt-bindings/phy/phy-qcom-qmp.h
>>>   
>>> -  orientation-switch:
>>> -    description:
>>> -      Flag the PHY as possible handler of USB Type-C orientation switching
>>> -    type: boolean
>>> +  mode-switch: true
>>> +  orientation-switch: true
>>>   
>>>     ports:
>>>       $ref: /schemas/graph.yaml#/properties/ports
>>> @@ -106,6 +104,7 @@ required:
>>>     - "#phy-cells"
>>>   
>>>   allOf:
>>> +  - $ref: /schemas/usb/usb-switch.yaml#
>>
>> As reported already in this thread, this adds a crap load of warnings as
>> it makes ports or port required. Sigh. Can QCom folks pay more attention
>> to this please. Every cycle the number goes up though that's often
>> temporary because there's no coordination of taking .dts files after
>> bindings. But generally, progress on QCom warnings has stalled.
>>
>> Here's the top (bottom?) platforms in arm64. The first number is
>> total warnings. The 2nd number is unique warnings (to remove inflated
>> numbers due to lots of boards per SoC).
> 
> I'm sorry this happened, Rob.
> 
> I assumed this was a solved problem as I picked up this series, but
> of course not testing always ends up biting..

My bad actually, I didn't figure out the ports definition would conflict,
I sent a fixup patch at https://lore.kernel.org/all/20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org/

Neil

> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
