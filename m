Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 100F2CA1009
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 08:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y1IpFOLdFJE87hy2OL1jbonNbSECBSOY8qlfZMEVN4U=; b=Pj1zZ+o/XoUEZ7tTIjb/duK21Q
	vvZBur011Jj4X3JLDCtlte0jfiRTdvrUr8vw4YDjUOPvT3yDQXKlD/FyCvpLYgZ+Ug67YwD8CKEA0
	x0XeAr5aty2jRftE5tMeE39wYQ7XM81wk2h703EwgeO48v/eDDo+SQDQ2qr1pkeu/M4GCRg5y0iis
	1DXCs7x0iRRuVPRG/qbWYeopuPKOR8V2YP6FAGUhBuY0I18F5n8BnUdCn+QgeIgd5SsiHfBz1Z/aj
	pr5GE+pnHTYIrZua7XNm+tNll8hHEHCbE4IvFR+wpLtGa6Y+YwSXrIg+SjE6O4OddNFwp40CA+nZU
	7ZrPksZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utj1e-00000005enI-34Kb;
	Wed, 03 Sep 2025 08:39:30 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utiFe-00000005GCC-3iNT
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 07:49:56 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-45b883aa3c9so22586925e9.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 00:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756885793; x=1757490593; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PioyJaDS8ksrS/yIYTZans1q2zfR8i6mk/EV1gul67A=;
        b=N4zpP+xjXnNyvbym4uuMwpGzucalOKjyNIrzDYVHEi4Fih1bCheue/qEKETqvHOvB4
         eCZSXCBUy0Sucsj6C6Old2B/skO0QNGN/s46gg1WPP/mJkuvoZotEaTq78OX292YVHq+
         qW8uctW6NJ5bpwVYnmIWikQ82dYRMgbcPa2TR/PXf4aLfr/uYAK2oOkReLslLexSrgX4
         CSvr1zWpMvWiQlR6sqrvL+5zVzRihnHcKmQ1hJ4kOx/+II2mUP0gMWA2b7xtroakn30X
         73EHQ6eoGD4c4H9seqlo6bjGTH3NjfEm5bxBDj0+lMokGgs6deNivoLJzFxvdyubH+4V
         9DDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756885793; x=1757490593;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PioyJaDS8ksrS/yIYTZans1q2zfR8i6mk/EV1gul67A=;
        b=sWIgQd4P2cNUFzRJoC/cHZxE3IREb4onxvwjGEaOrSj40tcBxBDs0cDHV6Q3MQ26gx
         CfjLSpfLT9F69/QKHmgnI3UdejPD7W3/YRT2yUhxfszWIEf/AEz5mBHsB7gas6vcLLjx
         Py/C/0GAMyYCWaqltc9hT09joWk5FlZwMMvKz+rZbNpuqExp2U1nsi9eh7ebV9fB2VaF
         5tkgtMWkHCy9stYo1bA3RYK1cm69MCKV/4Lpv/FianrGAXWWUthBYnHagNCdpqnszb2S
         qKtAJWY4oGKFXQPsIJoRB3PEQoHbdcZ7duKAbruLVI/gqNCQe0b7+1DiepGyKAUMIBlv
         LvEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVt+kxHMRAWSM22imvTRmqJcsoxpQJe6xmXvbUQaDH2TzFbUC5UK/ZHDFt+8OCuGb4FgQ/o4XN0SO4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxY8tsdKCm8cqETYs+aTen6zrw8xkFxDAPSN/pP9H8fi5lzkL+n
	b1CmKxkM2eSmGiqlz+lumwYu1wl/BRuybtLcbk3uZtjQ6BXehh5tnQKBq3eDxKS7QyE=
X-Gm-Gg: ASbGncsqkfGy9q3rFbuoDB6Li1kW86xeLkviixcJGEqZRxN5t+ZGLSBkhj2vWoiVDGI
	njS8rZmZSMgSwKXMjwykdjNvgDuj0Xb8yBtW/gjApNwuz381aG9MNmSMCvpYTJUfGVMEbgq/euh
	ck4Im84LZmcINPe/QIsdMaS3Qm/Fys9aE7z6EjYYCsvZqLp67bIgMJcP5gOi6VcCDR7C2+QooLv
	iRrT2rEF7WUvoh4Cwdl3WPQpBjSQ+16vgKbDhJ4dijtEN/jG+HFbihVNfBXV8F/Hg2bus+g5f4M
	XMvf27qBR0okGCiEXLTefHOLOwUI/N45fRMt+oUfARt0XxdxH/thn8PK1MG38TBM+Wsco8SeoZM
	bRqq51c2GorWEnQlwRi+Q3zbMS2lybUGGa8ZJSvEsxGAze27K0ipWlRBuSP8d04HdldMCUopPpO
	PPUixW8zf6w+TVx9l+dA==
X-Google-Smtp-Source: AGHT+IGNcwf7dquah88p3kbUCZQzfg4W/YTjPdyhyrclopN+udAN3w1xt+8R2YdXZebjRcfFI3x01g==
X-Received: by 2002:a05:6000:2011:b0:3c9:3f46:70eb with SMTP id ffacd0b85a97d-3d1def69bc3mr8693458f8f.52.1756885793260;
        Wed, 03 Sep 2025 00:49:53 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:431c:dad5:266c:f97? ([2a01:e0a:3d9:2080:431c:dad5:266c:f97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b93fae643sm75085675e9.3.2025.09.03.00.49.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 00:49:52 -0700 (PDT)
Message-ID: <418ba924-7e3d-474f-ab1e-084ca8ad313d@linaro.org>
Date: Wed, 3 Sep 2025 09:49:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
To: Krzysztof Kozlowski <krzk@kernel.org>
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
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
 <20250903-amaranth-rhino-of-wind-3b8850@kuoka>
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
In-Reply-To: <20250903-amaranth-rhino-of-wind-3b8850@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_004954_940954_01B13BBC 
X-CRM114-Status: GOOD (  26.01  )
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

On 03/09/2025 09:07, Krzysztof Kozlowski wrote:
> On Tue, Sep 02, 2025 at 11:00:30AM +0200, Neil Armstrong wrote:
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
> 
> What is the use case for static mapping? Embedded HDMI port on T14s
> laptop?
> 
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
> 
>> +        <4 4 0 0> USB3 Only
>> +        <0 0 4 4> USB3 Only
> 
> Why do you need to handle here and in few other places mirrored case?
> Isn't enough to just say you only want USB3? Maybe my first question
> (what is usecase for this) answers this, though.

Usecase is larger than the HDMI on the T14s, we must handle boards directly
connected some USB-A and DP stuff directly on the combo lanes.

See https://lore.kernel.org/all/8A7C126C22789C9B+f30def47-302a-45ee-8f76-64ef277f773f@radxa.com/

> 
> This looks similar to rockchip,dp-lane-mux, from the objective point of
> view. Please look there and if it is really similar concept this would
> warrant having it as generic property in video-interfaces for example.

Yes it's quite the same

> 
> I also wonder if this should not be stored in the endpoint.

But I'm trying to store this in the endpoint as [1], the Bindings & DT part looks fine,
but the driver part looks horrible...

I'll probably post an RFC of that shortly

[1] https://lore.kernel.org/all/14f334fc-35de-4f21-8eb1-f6b41ac24704@linaro.org/

Neil

> 
> Best regards,
> Krzysztof
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
