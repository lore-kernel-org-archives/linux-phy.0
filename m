Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B0A7CAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 07:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YWcwfxk6HLV0OP7D1ncizsrFK0fXoNHHDyJ96R9sUnM=; b=y/kUi28JcRBDfwpD1aHMT131Hz
	Pvb2tA+lhs8hPqUyDsxcTsHHTZjJMlAK5zRR666MsX+7bSKHeWdp63JZp8adzcLjwLH2nU1Wc5YTy
	G8V6ahjlnaivuzCokOge3aE3oLzKMgV7I1NUeQ2X0uVMiqhajOS8FL0Wo5Ta7h5bulzTbElnq9+bI
	AfyJm6O0Ueh39D4DvjT8yHib/S6vmrVO69t/pmxOaniIMlkB4uPLsldC0+BiE9zL91WeaOAAz8uiK
	87DimtkIH6u6Qe7xESz+fsTl+UgfmUJ0fcp07Kat8+vGszs1CZGOrLHklJxp5P6XT9QlCbJYQDvFw
	aKLWqzZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3qvw-00000006sHt-11Ky;
	Wed, 01 Oct 2025 07:07:28 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3qvu-00000006sHT-1isb
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 07:07:27 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-46e47cca387so49850605e9.3
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 00:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759302444; x=1759907244; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6903O+T5kzlWuzZHa7QhKxp3lHsZbgO6JKoHA8UWXyk=;
        b=JxZrZrsG2BxhJ91i0JWGD+SjlwhGbaWwMYx/3iACxVev/g4x7nWgR7fQZ6tR1KOyVP
         ho05CwkfUDn+Z26I0iim7iSpIt7xLS2JCa9v+ziYSrpctJM/Nyc6nynezsYC79NJwqV0
         t6emR0XdUlNgcRh0tEWSFGrp+DUFenoBzboZot9pdb+jfh4TNhwm+P+4aw8+92myaXBi
         rAODit3Vdbw01hJv6dJCpm0RPHxIkfm+kEhrkaLnRnl36K1YabvkbxLgVvGvVPL8MHNW
         KEipqcFe847uV/31rlosY3ph01asodENd/EsumUVOxvdeGSGfZeDc2VC03eUPdQMhpgn
         oc4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759302444; x=1759907244;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6903O+T5kzlWuzZHa7QhKxp3lHsZbgO6JKoHA8UWXyk=;
        b=hnsCnwLCc88b4sjANxXrb+R30inCoXRMXS3KXEl7cM9K6NiWoydw408vDE/d99VlLa
         aVaOIYVZnN9blsr/SNpOrE70xdCSdiP3KO+ez78azL/hkb6aFG5ifwKIWs0c+EMTRbhB
         r7utaKT6mXZTD50jjinNOzQJjQOs5RwkXFQkEszaxo7+2eNlGb/TpGcURYuuUKPkJFh1
         Ie5BvqD5wG1N+k2M7gMQUQmUlY7OaL+lHocERkrV9rf2kqLTvXJbqdrtyhlBX60lSDqn
         DpeHNlvJ/6MiAd1UvAggwxu63JF6KbM79Q5sBY1tFw7zOs/U+hzHRyovDRN3R1rMP3AT
         h4qg==
X-Forwarded-Encrypted: i=1; AJvYcCVxIVWq5WcmMMfaChLifo30SOXDWdOw0PQfLsGDwWEr3nSX8X9+D68LVwuRcywaj3/eVBnimcCuRVQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNzOHKQRzWtL/VdYO9AjSikhWxTllUVjIYt/MDZN3DCyTlFv6G
	6LIY1Wo9ZZIHvfJrQsvOrECJmJVq6HqaGs/Bg2vsKfdV8Ow9L3/poVPaPak0k4bFzcI=
X-Gm-Gg: ASbGncuSr8LG/h1N/ty3FHSq8ZnqvAjKFa/dHyhc1i5ikWrdVJY3aPe1WbHOH8+VxOE
	PIciiC4I0tP9N4Dy3Afc5Erj+GYZwXOXDC+lM/WMTnIu40etSB3MROn2+oReMkWfhJENuJuMPis
	QPtK/MDxESKkEPUTo/7CP7YKhw9uhIoDkZG2GC+Bm2WUjWFu+nnk6eiwWNlcOFf/kH6UfDAoBbR
	QmwIbIuMmX5S1oh9CBglZ9tK0PCa4NWL1aldVdRvFstkd9Z3DX3eP+MDQZUc14ulFX8wia1xj0x
	fA5kEEHxq1nCx0W3m2HCv4L9eXgba/uiSVgOSwgPeoJGq+wCTSaBJaDrhiu4PALtSKwPrbxu2aa
	y8ShQkeLpmptEGtRoW6n0MX3WCExdGjbnNge69ZfSyjs+QNLUd7FsOjJNZRxfkw1OMGIjbsXyu/
	jriy61ySLiAKBxWbwkCQnYZMk=
X-Google-Smtp-Source: AGHT+IGBw7CxJ7qDcqycnbC3TnzJ/BlwqGMYHQoYN72vdTSBaOUGSkrrJvxGgqOYBs6co2ci25rVDw==
X-Received: by 2002:a05:600c:3b13:b0:46e:448a:1235 with SMTP id 5b1f17b1804b1-46e612861fcmr23527745e9.16.1759302444501;
        Wed, 01 Oct 2025 00:07:24 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f45f:c590:9006:d394? ([2a01:e0a:3d9:2080:f45f:c590:9006:d394])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e6199193dsm25464495e9.1.2025.10.01.00.07.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 00:07:24 -0700 (PDT)
Message-ID: <99eae1be-3067-4698-aa3f-a0ff565cb62e@linaro.org>
Date: Wed, 1 Oct 2025 09:07:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>
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
In-Reply-To: <nwtt76n4t7tlf26ex47wrot7g7nldtmavbzgwmluls3egamjsi@mkomopb6fjh6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_000726_487641_57EB3155 
X-CRM114-Status: GOOD (  15.22  )
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

On 9/30/25 21:10, Dmitry Baryshkov wrote:
> On Fri, Sep 05, 2025 at 12:55:33PM -0500, Rob Herring wrote:
>> On Tue, Sep 02, 2025 at 06:10:05PM +0200, Neil Armstrong wrote:
>>> Both bindings describe a different layout of the ports properties,
>>> leading to errors when validating DT using this PHY bindings as
>>> reported by Rob Herring.
>>>
>>> Reported-by: Rob Herring <robh@kernel.org>
>>> Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
>>> Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 8 +++++---
>>>   1 file changed, 5 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>> index c8bc512df08b5694c8599f475de78679a4438449..5005514d7c3a1e4a8893883497fd204bc04e12be 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>>> @@ -73,8 +73,11 @@ properties:
>>>       description:
>>>         See include/dt-bindings/phy/phy-qcom-qmp.h
>>>   
>>> -  mode-switch: true
>>> -  orientation-switch: true
>>> +  mode-switch:
>>> +    $ref: /schemas/usb/usb-switch.yaml#properties/mode-switch
>>> +
>>> +  orientation-switch:
>>> +    $ref: /schemas/usb/usb-switch.yaml#properties/orientation-switch
>>
>> This is a pattern we try to avoid with references at a property level. I
>> prefer you make port and ports not required in usb-switch.yaml.
> 
> But this solution is also not perfect. E.g.
> Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml should
> only allow the orienttion-switch property, while using
> allOf:$ref:usb-switch.yaml allows all three (orientation-switch,
> mode-switch, retimer-switch).
> 

I agree, but I'm not the original author of this change.

Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
