Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C0A9CA0FED
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 07:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBTtvxZ70nRefgGVA2pmKYyebzYpdU7acSlLqHAmDCU=; b=pBCFGfA1Rz5goA
	v7W6w527gvwdpGVWC/rYwWq5+oe0yrWK9pQNvqwH/LyNqvzqhVvAN4hn1MlorVd8FgHZ+rv5St+Tq
	/B+SJGvtdohVzt6iHxeV7R+rG95z3J8ouM3X6k19VoTHfWkzVacgGHXZIfHpD5LabdsJ7D3zxjYF+
	MjKSzKyuH4li2LGVSmKJMC8zCDkMXutJCP3z7cmJx2fXVRCvhHN9L1EYC6KA5Vj/yOYDB3X7Z4Drl
	2IfYfsWuagIOJQPFVRXU4wVsFA4p6V+Mkbc4pZD1SIHxbT+kIktty1hyMZ4oG4eCrTBnSvz4fCU4V
	efRzoTx8T5KVHpKQBl/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwFRU-0000000Ccn6-4Bjg;
	Wed, 10 Sep 2025 07:40:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwFRT-0000000Cclj-2XC3
	for linux-phy@bombadil.infradead.org;
	Wed, 10 Sep 2025 07:40:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:Reply-To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description;
	bh=j3EKGSnBwHuNSIr2tmPSNOH8emkkaIX6JPZtG/ZhSqk=; b=mOY74vq2uRDmvAlGPTQIitqOpf
	sbynqZrFMfthLPeGlBHAGBfKhlVCE2suPPLlDh2dkDgARlhiCydTtH+UssaB+amJq2eTbx1zISq5O
	YzAfzzcGIpCkUrL0ZsQt08g+FC3iD4XB6CdYBy05updVNlUeitbJ7E2UfC+QfzXCbyaOTEtaKQVwz
	P/mAa+MDIJ07ICmyVYI6s4ej4slCBrlqjAdjvMhdj1WCUz9xTwMcfHxl7VHMqh8LCmffQTaDKve/d
	YPyBEcTKqG8/9XC8bBmk1lsyXZznyCun0PxFA6rtLmdYSp9EYy1aMDjVRxfU5NyfMCn6bwhUZbc/q
	e1fwxXQQ==;
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwFRO-00000005m8R-15mP
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 07:40:32 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3b9edf4cf6cso5395916f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 10 Sep 2025 00:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757490028; x=1758094828; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j3EKGSnBwHuNSIr2tmPSNOH8emkkaIX6JPZtG/ZhSqk=;
        b=xCZsKBKcZ4rJkgqAgmj7SEoH5UlP2ugRZvVDCd4gUXfaPSWb8QH22aSaNIBqnSquh1
         R/NNqxH+JtLmMHBcq/vz8BVukTKj4iMRCciVTeZXgzZ7Oo57Z5k+BHstN+/9jmUaMfTO
         sSxyOr3Q+g46pfzm5X9+t5/q/S58UE8IgdkRijdT16AtSpixefJhHwMZuS3iP8RF0zfd
         ejZfPwZ6loTkKiIQyZiRGsEpZkMqxT0YSUCrei4b1uD0K1/looT2b9dqvipfAnGq/mWI
         IVw6wG37KcdBy370HDnrY629XtK/bIXT9eCPzWxGeUxm0n8sKriC4LE7aDuaVX9E/8wt
         lWlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757490028; x=1758094828;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j3EKGSnBwHuNSIr2tmPSNOH8emkkaIX6JPZtG/ZhSqk=;
        b=hfgA2Nud8fkRy3Zn11auhVy3yA4ixt04dK5xDeGGzssHMJ9maua1WWe92pjftPuPT3
         ELDWcbqhns6hIScpr7znLI303p+hK1Rj/tLkXxk1kClp4gbWKw8Af3tMDPIMf/mlNGGU
         BTIerOr3en3wbPFnSCocM7Ts/WXj2g3GliW3P8UdHPxCPW6F7bI6jpnFtQkalZ/JiGtc
         wxGXxR30yoz4vmWY4MfNqjE3CRbjCd6PF+3n19ZQM2rELcdhhptzUx+aeoAB2C6gICw4
         VJodTR2VHu6XvdlDO6iF1VKTkROzskbNUVw2x1+ekS0mnpryDwzjdS/lhZ+T1Eh1dwzx
         P+ig==
X-Forwarded-Encrypted: i=1; AJvYcCWmA2CMRcMS2NGE6aRuDAQIWsCW7VFjKMiUD4vu+QbYfVNeD3cqE9IUH1SptozxoObVG357jOgzRAY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzLA06+ht8gaOe+zlfgzKc9aGznYh/dCeiC5z6mekhLWkjNRKet
	faVOHZXcA8UvZ8khw818Uw6XHKoeIRwix/JGnCdKgcyOZzRrTeKNOf6BZ4yWK0YAysw=
X-Gm-Gg: ASbGncu7vj7rL3kcM9CVMSm1NhqJy9GgOPX+V4L0uJ8qK+3Layit4Ksby92kF0g+on4
	LaF2y6eH0WWhqQa6n/UbWrK1x/rMdrxloxktzqpDufsx9ZvvAIcnr8RTAK/MJ60k4y6EwDoQG5u
	M77ebJAmEWv/SFu+/UL7Whxq7Lp2mKp56mAn9cM+OOYLDfaV/pav+XzTmAngpgIkJUdo0IlsIWW
	cYoPqnzuXCGwthPFJWFpKDBUlei0mYVkxhYR6eiIC0Tk9cLk0qNMrKcV4su2CO4wPKXuHDcSNS1
	2sTnaziNyvjEwCocsOX+6EBtsUpObWCX/FY6gT4NZjeIQl+gd7i3zYGOHfawvB8JureyBS+6qRl
	35lo11AcxbHfYcxo7/Fu+g7c1MoCAxZIUmWV8WM/esHvg4X4b7JOblVlGwAGziC95u+XXljBnzo
	A=
X-Google-Smtp-Source: AGHT+IH8laMHpoyfQVOQDRqhoJ/JQf0Axz3FnNURrZxQhkLXqA9IdJUrOWmbZDNZE52Izb8qgOZN9Q==
X-Received: by 2002:adf:b1d6:0:b0:3e7:451f:3a6b with SMTP id ffacd0b85a97d-3e7451f3e56mr7984664f8f.42.1757490027811;
        Wed, 10 Sep 2025 00:40:27 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:29d1:7c56:69a9:30b2? ([2a01:e0a:3d9:2080:29d1:7c56:69a9:30b2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75594a271sm2735771f8f.30.2025.09.10.00.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Sep 2025 00:40:27 -0700 (PDT)
Message-ID: <99525a03-4a92-4bd0-b4b7-dfcd35a523c5@linaro.org>
Date: Wed, 10 Sep 2025 09:40:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/2] dt-bindings: phy: rockchip-usbdp: add improved
 ports scheme
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Frank Wang <frank.wang@rock-chips.com>,
 Zhang Yubing <yubing.zhang@rock-chips.com>, Andy Yan <andyshrk@163.com>,
 Maud Spierings <maud_spierings@hotmail.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250904-rock5b-dp-alt-mode-v1-0-23df726b31ce@collabora.com>
 <20250904-rock5b-dp-alt-mode-v1-1-23df726b31ce@collabora.com>
 <aLyKhngeksG2SKdq@umbar.lan>
 <jzooq6qg3y7nee2nz6lujustdf4z7vtn6t2slikw43dann5sbk@2telraae26tl>
 <aLyo4N59o4CIYm-6@umbar.lan>
 <xyya5zy52mx4o76s6rr5h7lrfkhbri6bvmp7a5mn7cifpbpqlc@ca3zhclu6u3y>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <xyya5zy52mx4o76s6rr5h7lrfkhbri6bvmp7a5mn7cifpbpqlc@ca3zhclu6u3y>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_084030_520933_9B54BE24 
X-CRM114-Status: GOOD (  36.50  )
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

On 10/09/2025 01:52, Sebastian Reichel wrote:
> Hi,
> 
> On Sun, Sep 07, 2025 at 12:34:24AM +0300, Dmitry Baryshkov wrote:
>> On Sat, Sep 06, 2025 at 10:42:22PM +0200, Sebastian Reichel wrote:
>>> On Sat, Sep 06, 2025 at 10:24:54PM +0300, Dmitry Baryshkov wrote:
>>>> On Thu, Sep 04, 2025 at 08:26:02PM +0200, Sebastian Reichel wrote:
>>>>> Currently the Rockchip USBDP PHY as a very simply port scheme: It just
>>>>> offers a single port, which is supposed to point towards the connector.
>>>>> Usually with 2 endpoints, one for the USB-C superspeed port and one for
>>>>> the USB-C SBU port.
>>>>>
>>>>> This scheme is not good enough to properly handle DP AltMode, so add
>>>>> a new scheme, which has separate ports for everything. This has been
>>>>> modelled after the Qualcomm QMP USB4-USB3-DP PHY controller binding
>>>>> with a slight difference that there is an additional port for the
>>>>> USB-C SBU port as the Rockchip USB-DP PHY also contains the mux.
>>>>>
>>>>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>>>>> ---
>>>>>   .../bindings/phy/phy-rockchip-usbdp.yaml           | 23 ++++++++++++++++++++++
>>>>>   1 file changed, 23 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
>>>>> index 8b7059d5b1826fdec5170cf78d6e27f2bd6766bb..f728acf057e4046a4d254ee687af3451f17bcd01 100644
>>>>> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
>>>>> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
>>>>> @@ -114,6 +114,29 @@ properties:
>>>>>         A port node to link the PHY to a TypeC controller for the purpose of
>>>>>         handling orientation switching.
>>>>>   
>>>>> +  ports:
>>>>> +    $ref: /schemas/graph.yaml#/properties/ports
>>>>> +    properties:
>>>>> +      port@0:
>>>>> +        $ref: /schemas/graph.yaml#/properties/port
>>>>> +        description:
>>>>> +          Output endpoint of the PHY for USB (or DP when configured into 4 lane
>>>>> +          mode), which should point to the superspeed port of a USB connector.
>>>>
>>>> What abourt USB+DP mode, where each one gets 2 lanes?
>>>
>>> Right, I guess we would need one port more and have one port for
>>> lane 0 + 1 and one port for 1 + 2. For USB-C both ports are
>>> connected to the USB-C superspeed port. For DP 4-lane mode the
>>> same is done for the input port of the connector. Last but not
>>> least for 2 lanes USB + 2 lanes DP, one port can be connected
>>> to the USB connector and one port can be connected to the DP
>>> connector.
>>
>> Hmm. I'm not sure what do you mean here. Basically, it should be:
>>
>> - Normal USB-C case with DP AltMode:
>>    + port@0 routed to connector's port@1 (through mux or retimer if any)
>>    + port@4 routed to connector's port@2 (through mux or retimer if any)
>>
>> - Actual DP or mini-DP connector:
>>    + port@0 routed to connector's sole port (most likely direcrly)
>>    + port@4 most likely unconnected (at least for now, dp-connector
>>      doesn't have AUX lines described)
>>
>> - Weird mode of having both USB-A or -C and actual DisplayPort
>>    + port@0 should get two endpoints, each having data-lines properties,
>>      one endpoint being connected to the USB port, another endpoint being
>>      connected to DP connector.
>>    + port@4 unconnected (yep, we should extend DP properties, maybe I'll
>>      send a patch)
> 
> That's a bit different from what I described, but sounds more
> sensible. Effectively the Rockchip USBDP PHY binding would need
> to deprecate rockchip,dp-lane-mux and switch to using data-lines
> on the endpoint instead, just like it is currently proposed for
> Qualcomm (I follow the T14S HDMI thread).
> 
> AFAIK the Rockchip PHY hardware does not support 1-lane DP, so the
> binding will have to forbid that. Shouldn't be a problem, though :)
> 
>> I'd say, the first two options are the most important ones. Unless you
>> have actual hardware that uses the USB + separate DP, I'd say, we can
>> ignore that part.
> 
> The RK3588 evaluation board routes the first two lanes to a USB-A
> connector and the second two lanes + AUX to a RTD2166 bridge, which
> converts it to VGA and then terminates on a VGA connector. I have
> that on my desk and can do some tests. But I don't have enough time
> for preparing patches right now - especially since the RTD2166 is
> not yet supported upstream.
> 
> Greetings,
> 
> -- Sebastian
> 
>>>>> +      port@1:
>>>>> +        $ref: /schemas/graph.yaml#/properties/port
>>>>> +        description: Incoming endpoint from the USB controller
>>>>> +
>>>>> +      port@2:
>>>>> +        $ref: /schemas/graph.yaml#/properties/port
>>>>> +        description: Incoming endpoint from the DisplayPort controller
>>>>> +
>>>>> +      port@3:
>>>>> +        $ref: /schemas/graph.yaml#/properties/port
>>>>> +        description:
>>>>> +          Output endpoint of the PHY for DP, which should either point to the
>>>>> +          SBU port of a USB-C connector or a DisplayPort connector input port.
>>>>
>>>> I would suggest describing this port as 'DisplayPort AUX signals to be
>>>> connected to the SBU port of a USB-C connector (maybe through the
>>>> additinal mux, switch or retimer)'. It should not be confused with the
>>>> actual DisplayPort signals (as those go through the port@0).

This is the use-case we're trying to support aswell on the Radxa Dragon Q6A.

Neil

>>>>
>>>> In the Qualcomm world we currently do not describe this link from the
>>>> PHY to the gpio-mux or retimer, but I think we will have to do that
>>>> soon.
>>>
>>> It does looks like no upstream platform does a proper description of
>>> USB-C setups :(
>>>
>>> Thanks for having a look,
>>>
>>> -- Sebastian
>>
>>
>>
>>> _______________________________________________
>>> Linux-rockchip mailing list
>>> Linux-rockchip@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>>
>>
>> -- 
>> With best wishes
>> Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
