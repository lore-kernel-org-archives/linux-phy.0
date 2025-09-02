Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F457CA1005
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 12:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gw4FVzAggCjWoeNvdWWb6DUtrCJ+nVlCD7W3jACxrWs=; b=uFFclUhtIWTpqdUtL78liDaISZ
	gId6i7tKFd7zJ2Cdqlw+Tf9AoJdkbQmx7M1uaGhroK9xO6TkcM743f8L3q07P98XwZqqw4TzdFV7N
	lalm/AViFE/Hi1OHgIa8QpTRWcndQGT6dunuprNw7i43ldF1ifJ0707tM64xDKJDHPEObVhbP8p8b
	t9KA0REsnPIE43yihY5mlXh+hsrUler4nP40bXXspO1LwWbzgid6vHoTe+dyPMiSK2IRQPVPtK0Rc
	SowMhNNRKRaJF+FTqDriA/S4DOI/7vdv82NCHH6Z2Gh+kjMk/XicRqCaijM6UIpbMCWKCMygf/TYi
	3y2qQcPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utQ8n-0000000HGj4-3LZl;
	Tue, 02 Sep 2025 12:29:37 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNQG-0000000GPlL-0wGy
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 09:35:29 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3d4dcf3863dso1449763f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 02:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756805727; x=1757410527; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JfQ9yXz0+oSRPtU9PmUdrvjUA+5XmtY1AgQS1sTuvpE=;
        b=oOY6QCiqgSpfkoN3XSabbQeXqltgRU3glLteLqYRTloahZ7ICD4aCXxGyhCznZF1zD
         paAXObEe7BSAMtVwkSH2tiePr3vyaO3T+jBPKEQsQuKY+bmsEYZcqrs9EYEIw+3YsL7r
         XFuHb4zo3f4Khqn7uKkaRExsNE1xnX9IdT/NuWS/cc7BjY2CNhGCfHLRAdXcZzmM+T8+
         mQEmXvLFaR/G3YnneLEkLmLYZn33LiRaDgkHn3dZ3DmfwVzP27V6bpHtuElLzvfka/Cl
         GaJyJe2Cpsa/4efNU96Pr9R7c/aPEthxcjoKoXqpiudgM+S6bB41SFcsJyR092kibZza
         fErQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756805727; x=1757410527;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JfQ9yXz0+oSRPtU9PmUdrvjUA+5XmtY1AgQS1sTuvpE=;
        b=JHH6vs3Co3+NtwKV/F9+jOq6aQfN/2IOOjeoM/1VJsgxqX1xHKeGkRjkL8BWOLvOgb
         8p/Eknl3tFT0NY7DkQeCKvbNWbAuIroNhPDSbYzduB/3w6Hc25AhZDZdTREI3wPl+GJn
         iEYxG2VDjVuIcbAVjut7th7+IrYCAyVsfTQiSqq4NgIF5sbF3bicGFSVtkJwq25IQtP0
         tm2FO4nsQKEWYGqdOJ53XeUgCU75lH5h56d4yNuFkIRx2nKAQdgaIUfw6Y1khOpkBFGf
         HUrVcenaKunHorQiomiDtaZTifa8HM/hzm6WO0PzOQHe1zCMFt5C0812UB9hXPbUlgIN
         Ih5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVnNc4nYW+02DQdx1JS5nG1HzlxxoN4qWbnz3nidzqJJ6s4u48Y0AgXhIZ33ZwOKuTXbsB5jPMLSEA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyvJfD2bqErD6hQQC3rnOZbrt5+T/wwBEwTbgENSMpW3GxqA1lh
	BDD2Zq69Wj+HgikBnzssLgU6zHLVHJmnITyFg9bTRROhsw4IVohCrssjbSpImcueNY0=
X-Gm-Gg: ASbGncuZpsmu2THsG82iveU6PNRA78ZkSncOyJW+lN70stzZAkachfU74HXIZQTYIer
	7A0V15J2RsWcllXumw0n9gglxV5cqRo0UaHW1q4ozPTbtmjMcwEtPI7bYQ8C+yjjTC3kE0Uh5iT
	ypcU/ZyDO/HFjqjIPkzPv17s3/ovpHfPF4XPj1ZlG9eEsGuYBBRenKPbYE2sc/ZeXIVeHng/v6X
	DmIxsYWP0BZa/XafrQSHSDzAIPspsuLztj82Mc0cBy8IGNhsfbnsqjXV09CejrI36bGKsGq4bRF
	ZQz5R/3r+XmsZY+MLSW0PT99UBzReV/xGdINLLzQ6PAIxWN9C8qOeelI3FA9VzN4/xTtKhczN0y
	5/r5wk6YAk73pUAYo3jmC2cIvkF/vL5375AQsTF884TAaPICYEqxMGSXe3ig1Llq+Wl+1o38ObM
	4mZPl/390qTQ==
X-Google-Smtp-Source: AGHT+IFTaH/mMRhkJYGEXCVK35QbOq5nqwWE1gZMu+qzPMLt0vlGA93bzoqRpHlWQSzMmnjZtV5qew==
X-Received: by 2002:a05:6000:310d:b0:3d5:be0:153 with SMTP id ffacd0b85a97d-3d50be0029amr6688498f8f.7.1756805726636;
        Tue, 02 Sep 2025 02:35:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939? ([2a01:e0a:3d9:2080:5c8d:8a1e:ea2b:c939])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d520eada16sm10183491f8f.41.2025.09.02.02.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 02:35:26 -0700 (PDT)
Message-ID: <bf772209-2420-4794-a52a-1d5932146307@linaro.org>
Date: Tue, 2 Sep 2025 11:35:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document static lanes mapping
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
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-3-f4ccf0ef79ab@linaro.org>
 <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
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
In-Reply-To: <slgu2d4iv6ef76f43gvwaelcl5ymymsvhokyunalq7z3l2ht3j@t7pko4rtqvgm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_023528_285346_2F325272 
X-CRM114-Status: GOOD (  21.56  )
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

On 02/09/2025 11:30, Dmitry Baryshkov wrote:
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
> 
> It feels like this significantly duplicates existing data-lanes
> definitions. Can we use that property to express the same semantics?

Well yes it has the same semantics, but not really the same meaning. data-lanes is designed
to describes the lanes layout/ordering, not the type/mapping.

Here, we do not describe the ordering, i.e which source lane is connected to which endpoint splot,
but which lane is supposed to connect to which internal PHY.

Anyway, I'm open to suggestions.

Neil

> 
> 
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
>> +
>>     ports:
>>       $ref: /schemas/graph.yaml#/properties/ports
>>       properties:
>>
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
