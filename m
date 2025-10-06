Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A7C0CCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y8fd5yZaYxpzdAgpCVTt3WmWKOkL7GcXckml4ItIe64=; b=St4HhgOl04WQQnfYY7DvhE7e99
	aV6pqPc66wm0zH+VqnHzMnSXXZmSAfDqDb376C2+BfBD9nLO7mFCvuQvAMA4ZOT+GSP2CmWGFz6Li
	TWKFaURNMXKtieWTAxkJBPlOa3zpla/d4MlOEyblPR5xdGo9JdG+JHY7Tk8KfFMrjARdnXo4RHlb5
	UkBlW7/zvHd7+tfX9D3+wI/5adKjur6OJDu2k1LVrg7UvdWcziBVxXYNIrlHvNHXYeaVWgwrJd7D+
	oxeiOgKi21JQvXqHh5dC3zAPios1QSgCKcCsUZVswq/aN2YMc9jEPz4PH7QXJdl6qVQW/MpWtzE7Z
	TJN6dSMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5gmb-0000000HCFi-2cLF;
	Mon, 06 Oct 2025 08:41:26 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5gmW-0000000HCFL-2DVz
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 08:41:22 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-46e42fa08e4so43948725e9.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 01:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759740078; x=1760344878; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y63nOSKBOZb8Xi0WfMVSnEc0ViCBynY2ybYfLq11XEc=;
        b=yP30MN1Qqg2Lcj84TPi0jKZ9Ba9zY3nPMznSieB7lTOSpZ/JkHFOXtX+e8wzYkMO59
         7xzcklRkT3gY/Gr0tTOFQaVXjX3GpsDwn9hIK9TQXuBiOv++cIArR81FQoqnZzoKzeh2
         XPH0g2iLzXqqUnnQC8tQQ0swJrXK475H//FqglBYf6s+++y32/aMkwO+ZQ7A13rUiteV
         /+CvUHV3Z/5ZTUqJSLLqKEPQPht349V081OLTV70AubTiOsZPyW2LrRfiaR1LJsJEqXg
         SckfnB2ajVJFPZAQhloSuMowRSL0bl9ABWuMA3uQwZUYDlkQfQr4Ex/AuIKuWgyiqNdH
         JQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759740078; x=1760344878;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Y63nOSKBOZb8Xi0WfMVSnEc0ViCBynY2ybYfLq11XEc=;
        b=E9RN8y4nK7CberJ95gjgK2A1FbPySnie8hzzk7fVWJIervwzjDn9yeiRViPCm/vOiB
         2ewhKJk8Z+DAtiOzzmps5md0SgMCpsI43L7X2398ql158XhaL9vbKhDqhE6sh0eLq2uF
         YSQi3ZKYkJBdene9o7376WkhHi14HGVoA5Ab8WvyRv/HmbH48YADdrLAsy3VHAIELHNT
         vmBxUqVMDCEsa6A2LKN7FbIneBHA69B2RQqgOct3Kr1OASPK/pHsF3ZkbmSki+nNmh/J
         HaTyTgwbDQm6IlL+YPQoCAP1KAv8qgFPtLA7jQWYEPyv0ILwmDSv1gOvdJrg4YXoPabI
         iqRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmcCUbcaDCdiVFBuokaTkj1Igdfe/Lz6NyMe4sP/tm9LxnvOnHMZcWPN+LLI8Q6tdxQERZlwiEhyw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8ifqQSUh5AeMXqbHc6JSg2U9WJxYQC80Kv+mrJ/DKiu6H4jDt
	9MBpwbgW86Jr40EyQl5Ql8osCe7mEnRH+sTlK2ExSTTqPiMoDPQod69yqlPpE3FjqA0=
X-Gm-Gg: ASbGncucMIW0AdjkBckpZ6QJgDhRvNnMZtj9IMiNhFt1YK5RuINwZMDlw4qXvo8P7Zh
	nqn7tnClAD63b6pKeQ3qupfHbt9LIxbcdQzgSdzEAmj5WoN7nt/jN1H7Gnia2ZgugkQ/2iFwbxg
	RxmHYRAF74T9ueCHa5sUEYYDjR5y/afRIdCQfHOPrsu3lX0NBXewfrwG7vzQZ17Sv9020dn0nWK
	IbmNW4typl0RLpBJUH5xRBLD1dM360Ae0moC6nGUB2Ucn+zoAEVLUtVFLC96t3Z37SWhqlawSMw
	kcVXqCqx1rLUu53bSPqs7rATqnWuAA4cyzhmQD8cUrxNAHiDaPM82sClmyUxa5lOhyYlt/CRzMe
	tb1XdUDxLIufgjoSJeSWfNSmk0JN89+MagIKG1NRDDjnWcL4L1gZAmLSY6zjbZKncbb/KzEmHhF
	TpZWYQisc74ytoIyg9yC3ufQo4bz9LwquR816U4Q==
X-Google-Smtp-Source: AGHT+IEWwWaYh44sv9Oqx0ZChqrUk1Sr1HBR21zDGZTRQfiGbC8OZi2rvU8z63aitXqs6CRfThx14w==
X-Received: by 2002:a05:600c:3f08:b0:45b:9a46:69e9 with SMTP id 5b1f17b1804b1-46e7114e92fmr82535805e9.31.1759740077891;
        Mon, 06 Oct 2025 01:41:17 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:2dd0:9118:d7f5:51d9? ([2a01:e0a:3d9:2080:2dd0:9118:d7f5:51d9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6c3esm19968974f8f.1.2025.10.06.01.41.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 01:41:17 -0700 (PDT)
Message-ID: <2914e235-9e6c-4b46-ba4a-3fd4758eadef@linaro.org>
Date: Mon, 6 Oct 2025 10:41:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
To: Rob Herring <robh@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
 <20250905175533.GA1000951-robh@kernel.org>
 <nwtt76n4t7tlf26ex47wrot7g7nldtmavbzgwmluls3egamjsi@mkomopb6fjh6>
 <20251001163139.GA1877961-robh@kernel.org>
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
In-Reply-To: <20251001163139.GA1877961-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_014120_628829_664521A4 
X-CRM114-Status: GOOD (  22.45  )
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

On 10/1/25 18:31, Rob Herring wrote:
> On Tue, Sep 30, 2025 at 10:10:25PM +0300, Dmitry Baryshkov wrote:
>> On Fri, Sep 05, 2025 at 12:55:33PM -0500, Rob Herring wrote:
>>> On Tue, Sep 02, 2025 at 06:10:05PM +0200, Neil Armstrong wrote:
>>>> Both bindings describe a different layout of the ports properties,
>>>> leading to errors when validating DT using this PHY bindings as
>>>> reported by Rob Herring.
>>>>
>>>> Reported-by: Rob Herring <robh@kernel.org>
>>>> Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
>>>> Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> ---
>>>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 8 +++++---
>>>>   1 file changed, 5 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> index c8bc512df08b5694c8599f475de78679a4438449..5005514d7c3a1e4a8893883497fd204bc04e12be 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>>> @@ -73,8 +73,11 @@ properties:
>>>>       description:
>>>>         See include/dt-bindings/phy/phy-qcom-qmp.h
>>>>   
>>>> -  mode-switch: true
>>>> -  orientation-switch: true
>>>> +  mode-switch:
>>>> +    $ref: /schemas/usb/usb-switch.yaml#properties/mode-switch
>>>> +
>>>> +  orientation-switch:
>>>> +    $ref: /schemas/usb/usb-switch.yaml#properties/orientation-switch
> 
> Looking at this again, this isn't even correct and I don't think it
> works. It's missing a '/' and  should be ...#/properties/... to be a
> valid json pointer.
> 
> I thought we checked this...
> 
>>>
>>> This is a pattern we try to avoid with references at a property level. I
>>> prefer you make port and ports not required in usb-switch.yaml.
>>
>> But this solution is also not perfect. E.g.
>> Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml should
>> only allow the orienttion-switch property, while using
>> allOf:$ref:usb-switch.yaml allows all three (orientation-switch,
>> mode-switch, retimer-switch).
> 
> That can be handled like this:
> 
> $ref: usb-switch.yaml
> properties:
>    orientation-switch: true
> additionalProperties: false
> 
> Though if you need unevaluatedProperties for some other reason, then
> that won't enforce it and it's just documentation. In that case, then
> perhaps usb-switch.yaml is not the right granularity and should be split
> up.

I tried :
    - $ref: /schemas/usb/usb-switch.yaml#
+      properties:
+        mode-switch: true
+        orientation-switch: true
+      additionalProperties: false

But it doesn't work:
phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml:108:17: [error] syntax error: mapping values are not allowed here (syntax)
phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml:108:17: mapping values are not allowed in this context
   DTEX    Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.example.dts
phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml:108:17: mapping values are not allowed in this context

> 
> I put this into the category of "this is the least of our problems". I'm
> not that interested in enforcing what common properties a device uses or
> not. It's undocumented properties I'm worried about or lack of
> constraints (on reg, clocks, interrupts, etc.).

I'll revert the patch until we find a proper solution.

Neil>
> Rob


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
