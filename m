Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36C53CA0FFE
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 14:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8qMtlGyx8wA59SOisTZeO95nxiTGLpFWZyD3POwvb4Q=; b=PXO4m4zq3p4qm85Y/A+WL/DIbA
	IvgbiBUvopHBaS75lvw1yCMcVYnLWAYk4kUiHGqrfQqRnFYzjiCyUQnLcxy8iApVBGP3pH/w33oDW
	V2xNdPx4/OT59oSflMtmy6L6uNks8lpke9cRUO5O3kTZhCcZPDfgtvdWeCA4N9190CkvuKkSsaTme
	qhnQpywwm6SylfygkkaMAbWewRFC3ShWFXwwfhASA/mMc7qT6O2csCsQLYtbFODPrz/IOT0LJ3p1J
	2qwadj5DmkwG2bqmhAgxFfsh6N3uoevddbv8NrkJt5GUQdfVN5QiD15f3a+l9K6rA/zGJyDkye7g+
	x0HlBPjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utSJz-00000000TGz-3lkR;
	Tue, 02 Sep 2025 14:49:19 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utPfH-0000000H47r-1rxJ
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 11:59:08 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45b627ea685so45013165e9.1
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 04:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756814346; x=1757419146; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cfozmRqc5klIxa3RyN85ghWY3Zq4Ji3LuVvxL8BJlR8=;
        b=MgNTF5FBhlWc8hrsoTldRHMo+cP5XW2UwEKNOgUaVyATV9Jfq/t03T9+SdHtjEMzAP
         oiu8w6M/KB2zGt3OmXqAPWRvKKPtOSQ3G/1g9RATbtc1quplaJ9yFaPn+Np9fNYIs0kq
         RsVzkf4KqYsRKg9X7kFaPSSzzalYl+vwzTP54WiOZrLL2RiaCjV6Ooa4174svNvYGDFK
         ASJZR1Mgelx+1Bttsr6seakHTiThaCs60Cqpd916L+5s4xIX4NbMBcE9PLIQodIjJ6YI
         u0ZmKmAD+wY6r2u8cI2Qv+KYAO8gFFs4rVDXpIgUsSlRweFSQIySfRFkaalTvpkH2C8R
         AIog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756814346; x=1757419146;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cfozmRqc5klIxa3RyN85ghWY3Zq4Ji3LuVvxL8BJlR8=;
        b=GnH8oPrhRkBfw5oYvLtmXCD5cVWJc+EtE2sjGrb8TZ5YIrK0GAAlKbqVBS9nGrKupm
         ouYUUxuDOB6L5n4R7gySm/SYJQm226X84jaefUwC/NlqXc29wobBKe+8ibo73XvV/6tu
         rKE/IhR/+KMqRWXHACX3BC9/ECY9Co5Uc4jSTozBxd80/QFFCKL20U4gSHh8dkC4RaTA
         SDCvm7WwkLwie5r7ZX7tB06I/YPu066PLgv0JwoPYgI2z+uJCcIf8XAD7ILDiIEGqcp0
         0kY7pdpRYE4DGa9df6IqCylPGJipnwqw+daE/iVEaon1veEM27KWMlQF0YNZClZURVTz
         9oHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdc3/krPYKZxaGB9QzuYJwBTuRfsejQHid5Vah2JtqP9jZn5TV3XVHBoZNPw0fCZuW0MCEa8ebbuA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyjeaqy/JunM23WrdJRDHeq4pXvECCC8vTAZrqO2ntapBRxPGv3
	gtR3KjBEZrQZlN7tlBKclYsX7o1M5eJEaU4t/5BJ2HQFdJoz+M5bkGmwgr8awPYC864=
X-Gm-Gg: ASbGncvNKMA4TYqGobaSyMQABo8+fG7DtcvIhOx2/GMfo4viawQwhIdsYxpMe0mxqmW
	zcOOJ4iEGcPlzrI7LYUtPtKPfYSdl6uEPFh/cC5VVDiiRElGfJU65+PvjOAFHe8uQd5lLb53kta
	rsxoOwCnkZ8WrLobU1zC+42tmnvfft3lsJDZHtc3jAraD85g/OIQj+uAHCPhJfW5DV5S94IPlAK
	Nx/m/irXtBd8e8mjSVXvXhGuzkZ6bb1una5s0rg7fNGrdXivgeGgTjAN/xNlcrUpHl9g5mh9T5y
	N+GhCYbsGT779xnGZnPu2W7W5/kXyXflN33zmwIWvhJe+uRZeZ9N5923kvJqw7/7XFL5f50mlCx
	757VgELwvfE/TcXP2Vw1CiAwy5eholHFeNVqYk+N+EG8pXc9v8RdYccQ4W397W6PXkm4LiBqtUS
	o=
X-Google-Smtp-Source: AGHT+IHfEjTcncJJziF6tVTU1GKIoXvzo/P7QV8DF5yvdpb8f9/w5wQ4b+oMozpd1P6m48QaIn2vYA==
X-Received: by 2002:a05:600c:1d07:b0:45b:6b57:5308 with SMTP id 5b1f17b1804b1-45b855508e0mr98283745e9.7.1756814345771;
        Tue, 02 Sep 2025 04:59:05 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939? ([2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e8879cesm194388675e9.12.2025.09.02.04.59.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 04:59:05 -0700 (PDT)
Message-ID: <455375d4-c558-4d0e-9284-23905c8d0bac@linaro.org>
Date: Tue, 2 Sep 2025 13:59:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
 <4dff9cc2-2152-48a0-b8ab-eea57ce2ace2@oss.qualcomm.com>
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
In-Reply-To: <4dff9cc2-2152-48a0-b8ab-eea57ce2ace2@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_045907_561463_0EF1D597 
X-CRM114-Status: GOOD (  17.29  )
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

On 02/09/2025 13:50, Konrad Dybcio wrote:
> On 9/2/25 11:00 AM, Neil Armstrong wrote:
>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>
>> The routing of the lanes can be:
>> - 2 DP + 2 USB3
>> - 4 DP
>> - 2 USB3
>>
>> The layout of the lanes was designed to be mapped and swapped
>> related to the USB-C Power Delivery negociation, so it supports
>> a finite set of mappings inherited by the USB-C Altmode layouts.
>>
>> Nevertheless those QMP Comby PHY can be statically used to
>> drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector,
>> etc... without an USB-C connector and no PD events.
>>
>> Add a property that documents the static lanes mapping to
>> each underlying PHY to allow supporting boards directly
>> connecting USB3 and DisplayPort lanes to the QMP Combo
>> lanes.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 29 ++++++++++++++++++++++
>>   1 file changed, 29 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> index c8bc512df08b5694c8599f475de78679a4438449..12511a462bc6245e0b82726d053d8605148c5047 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> @@ -76,6 +76,35 @@ properties:
>>     mode-switch: true
>>     orientation-switch: true
>>   
>> +  qcom,static-lanes-mapping:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    minItems: 4
>> +    items:
>> +      enum:
>> +        - 0 # Unconnected (PHY_NONE)
>> +        - 4 # USB3 (PHY_TYPE_USB3)
>> +        - 6 # DisplayPort (PHY_TYPE_DP)
>> +    description:
>> +      Describes the static mapping of the Combo PHY lanes, when not used
>> +      a in a Type-C dynamic setup using USB-C PD Events to change the mapping.
>> +      The 4 lanes can either routed to the underlying DP PHY or the USB3 PHY.
>> +      Only 2 of the lanes can be connected to the USB3 PHY, but the 4 lanes can
>> +      be connected to the DP PHY.
>> +      The numbers corresponds to the PHY Type the lanes are connected to.
>> +      The possible combinations are
>> +        <0 0 0 0> when none are connected
>> +        <4 4 0 6> USB3 and DP single lane
>> +        <4 4 6 6> USB3 and DP
>> +        <6 6 4 4> DP and USB3
>> +        <6 0 4 4> DP and USB3 single lane
>> +        <4 4 0 0> USB3 Only
>> +        <0 0 4 4> USB3 Only
>> +        <6 0 0 0> DP single lane
>> +        <0 0 0 6> DP single lane
>> +        <6 6 0 0> DP 2 lanes
>> +        <0 0 6 6> DP 2 lanes
>> +        <6 6 6 6> DP 4 lanes
> 
> Would
> 
> oneOf:
>    - [0, 0, 0, 0]
>    - ...
> 
> or something similar work here?

I need to check, but I may need to do that instead:
oneOf:
   - items:
       - 0
       - 0
       - 0
       - 0
   - items:
       - 4
       - 4
       - 6
       - 6
...

But I want to be extra sure this is the right path before

Neil

> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
