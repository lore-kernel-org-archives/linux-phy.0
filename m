Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17AB7CA0FED
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 08:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lJ6t7zchMoJcyKEH+FxTe++T/jNNWAU02WmJvr18Q08=; b=FptM3uI+KQNpdS3kgrzBGfCrQZ
	2pM29iTQPacV07k7GWaHn8vFCl2zCrC4TCplFzXua8TOlz20TidOB30pBnkPWHSaz7eoRJoEQgCg1
	UPsMLLjMvNZxJd8VT+f8ic/XCfISsapCczIxWTBq/HBiZnEcVqxCsmgsEnzzJ/2+ki87coLUskCu7
	hwhc0MSm9DoyO4l3+wl6hFlDGDEFo1aDlNAEmmmJ3MP/eag/Byoka1kBLW49/YR8mw0A7KccKmd4X
	16xDF12vQCfjFowD50vh+kgcN+Fdsfk2vD3s89Wpp02klmYVR8Q0OU82HW27Bx4q7AI8inhA4hm11
	cIQMFuGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvtsl-00000005cx1-21aC;
	Tue, 09 Sep 2025 08:39:19 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvsZ2-000000055jF-29uJ
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 07:14:54 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45cb5492350so33456015e9.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 00:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757402091; x=1758006891; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u43LsNqSG6uTnlGTyebiOi+xWFLG+LJs5tbBGdtkIVo=;
        b=rDtqHOP5GZhM+7PTjTz973LN6J1TsnOGZHDfOPi46odpABgUenT+EAv4XEil2qUv9s
         xyd/nntiRPTSkbwpqxGT3rv4ASRQaRgIAo2ZX/WN24GJNA2KOQh3m9cTWb9S3UttADWp
         DLYolWrHMNtqCspPKZL9EaBlD2Ox/QJCY3EKNVz+88SjK84FR8maDgdiNZMX0dE7HqEZ
         ULp56SM+5QoZQ2p/FVHV9YP5e3io2fWdsraQxNXKtCwJE0SjfibXnoKwVAWKAEmLpIEh
         n1YPXheCmCof56eL9mRJgMv9MBlNBvNK1izBXaeknv4PGWrMpcynhrWCa+SOXNt5BRVU
         w/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757402091; x=1758006891;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=u43LsNqSG6uTnlGTyebiOi+xWFLG+LJs5tbBGdtkIVo=;
        b=aCFdKt3bX9I2+i35NUVrbHAxNwsrQIfaX8lM+n8PVEv3nPHzWu6qNaDX0vYF8MljK7
         NMgpvlG6kMWfYtnEMXmOheAF7q0/s22wC/89NK8g4i5mwvK888pjWWl3CxIFJvWRHWXP
         QEfEc46QRwIYiKICeERKWAglumqDiinhQT4tbQrrY+3Qdau1VDPhP7DZj3Dox/48ZJKO
         2oJe2BRdTMpWMlz+9HznDqwTGLoPVtorOwyAay4hs1VhU3LY8uvUyX5MqLZb+OCQ9ely
         PZ3HAD58n2YQ0+YzMU8QEejlYflhRySYr0z5qG22A1+rjTgLfEgR4jC0VYDkOT/9CMn0
         8v3A==
X-Forwarded-Encrypted: i=1; AJvYcCVWq53ljhKjlJTL4Iqay6z29wvh0HOazdBSThOuzXLSeCHTdS62Y1vYDim9hnlfNrrG3mZKEIKbtcY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzIvuzEG2Tb3dXhO4WJmDAxwobxSmiyMCThtXv/+ZYIMM15uFP
	gc3MVDOVjJCD+1j/T41PfpYHX3VmQGo09hDPJF38oqoSqP63JgJN+ec3afF5ACnBYOg=
X-Gm-Gg: ASbGncsFXlgJmm2Ybw5rISqnk0TtfKery5hTnJXiarNMgcDVHvBhy813lU8EG1e39Zv
	5wjj4ApaI+kRPNLw+LYEivsNG5NL2Q7mufFE0I+KBxZh0iEJ0xT0c+eG+x7AG5SVog0PJ34BtCL
	FzdHm8CHJdDYJxBzYseg4YS4DwskHOUXdoAMhFJqlR1kqcobasvWPLyjoNtRd8QGeC8bInhof4q
	hI/IAEwt8x+PlS+BCWODHWtMd2ejnO/DG3bJP2jlh2YhRYhxBqOr6JP/auUlgL+zPTo3itYgwpR
	mMIM7ETIQiA6G7YmrHyYVmlUPstkcz9Fvyk9ogE4YQ9f12k14hJqut+GPeMMpdOG6e83WgVqeOL
	N+xmu2zKMXMUkzXEsxmo++YJWaEH86AAYwtlwmTpq0EW1OHnVys6m2EeuoxS0ScAsSFBzbwpicm
	xoz+zMTtk=
X-Google-Smtp-Source: AGHT+IEiUd+2pdrNRG2SkooH6CfbYUmcRiXoBKNVsWbVXETjB3YdpcCJB24m0SOcXf7I7DkX77PWmw==
X-Received: by 2002:a05:600c:6488:b0:45d:e0c5:7850 with SMTP id 5b1f17b1804b1-45de0c57d85mr68897435e9.35.1757402090873;
        Tue, 09 Sep 2025 00:14:50 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:25ab:4e12:265b:4b6? ([2a01:e0a:3d9:2080:25ab:4e12:265b:4b6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dd5098292sm193009005e9.1.2025.09.09.00.14.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 00:14:50 -0700 (PDT)
Message-ID: <14d58c6d-ca20-4349-8031-9906a4539fef@linaro.org>
Date: Tue, 9 Sep 2025 09:14:49 +0200
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
In-Reply-To: <7dzfcuvr45h4iailtjutqjev7lofoqu7w6ob77gehgmy7mctpk@k7oob4wj3c7a>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_001452_566098_34D071EF 
X-CRM114-Status: GOOD (  19.46  )
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

On 08/09/2025 23:14, Dmitry Baryshkov wrote:
> On Mon, Sep 08, 2025 at 03:04:20PM +0200, Neil Armstrong wrote:
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
>> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
>> connector, DP->HDMI bridge, USB3 A Connector, etc... without
>> an USB-C connector and no PD events.
>>
>> Document the data-lanes on numbered port@0 out endpoints,
>> allowing us to document the lanes mapping to DisplayPort
>> and/or USB3 connectors/peripherals.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 59 +++++++++++++++++++++-
>>   1 file changed, 58 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> index 5005514d7c3a1e4a8893883497fd204bc04e12be..51e0d0983091af0b8a5170ac34a05ab0acc435a3 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
>> @@ -81,10 +81,67 @@ properties:
>>   
>>     ports:
>>       $ref: /schemas/graph.yaml#/properties/ports
>> +
>>       properties:
>>         port@0:
>> -        $ref: /schemas/graph.yaml#/properties/port
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>>           description: Output endpoint of the PHY
>> +        unevaluatedProperties: false
>> +
>> +        properties:
>> +          endpoint:
>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>> +            unevaluatedProperties: false
>> +
>> +          endpoint@0:
>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>> +            description: Display Port Output lanes of the PHY when used with static mapping
>> +            unevaluatedProperties: false
>> +
>> +            properties:
>> +              data-lanes:
>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>> +                minItems: 2
> 
> Nit: DP can work in a 1-lane mode. Do we nned to support that in the PHY?

So the PHY already supports 1-lane, but the QMP Combo only supports
mapping 2+2 or 4, but nevetheless we can still decscribe 1 lane in DT
int both in & out endpoint and still should work fine.

Do you think this should be done now ?

Neil

> 
>> +                maxItems: 4
>> +                oneOf:
>> +                  - items: # DisplayPort 2 lanes, normal orientation
>> +                      - const: 0
>> +                      - const: 1
>> +                  - items: # DisplayPort 2 lanes, flipped orientation
>> +                      - const: 3
>> +                      - const: 2
>> +                  - items: # DisplayPort 4 lanes, normal orientation
>> +                      - const: 0
>> +                      - const: 1
>> +                      - const: 2
>> +                      - const: 3
>> +                  - items: # DisplayPort 4 lanes, flipped orientation
>> +                      - const: 3
>> +                      - const: 2
>> +                      - const: 1
>> +                      - const: 0
>> +            required:
>> +              - data-lanes
>> +
>> +          endpoint@1:
>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>> +            description: USB Output lanes of the PHY when used with static mapping
>> +            unevaluatedProperties: false
>> +
>> +            properties:
>> +              data-lanes:
>> +                $ref: /schemas/types.yaml#/definitions/uint32-array
>> +                minItems: 2
>> +                oneOf:
>> +                  - items: # USB3, normal orientation
>> +                      - const: 1
>> +                      - const: 0
>> +                  - items: # USB3, flipped orientation
>> +                      - const: 2
>> +                      - const: 3
>> +
>> +            required:
>> +              - data-lanes
>>   
>>         port@1:
>>           $ref: /schemas/graph.yaml#/properties/port
>>
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
