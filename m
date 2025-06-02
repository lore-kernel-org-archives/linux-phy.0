Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D2C3C54FB3
	for <linux-phy@archiver.kernel.org>; Mon,  2 Jun 2025 08:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CXZjY2f3/mEwDNcqmf10kLIECYqB/zwC2DZzzz6QBDY=; b=MRnoTQlFb9WRBi923UNm+A8IU9
	baWmTT5ebKTq6Oqlf3Zjqehy00kfdV/WLSf73BsvyKJi/05f+96G5NVYIZfaf0uGNr5hmYwRzy5DT
	bVJBGDnTDY32iqZtfBoJPpqGlStLhJ28vU/HyeWZwCBiX+i2uVBpXqnR4xgjvFp1vJbMcPfcT2U7b
	QLRpgwUTV/Y28/XE+3GvEuKiK4TovvTrTousikx2G/04PCoz0ynsaiLS+44ijAhJHqQ1Ocixjqb9D
	NdmlDqxbm4BEos9fRtZIXMOm4AjWpKbJg0Li0kCIdFaVnyudqbHdSxyP4YS7CgPdwYvVthCrEiMji
	3DW8WpfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0xf-000000071dv-0bhP;
	Mon, 02 Jun 2025 08:56:03 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0xc-000000071dY-38Wo
	for linux-phy@lists.infradead.org;
	Mon, 02 Jun 2025 08:56:01 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-450d668c2a1so18445675e9.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Jun 2025 01:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748854559; x=1749459359; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7QYD6lw/8riHbGeOafpIw3lxHQ0yDfZV96sQp+2PqGY=;
        b=kDcnXbSnpPm/oM8DR3SVR4awzlgGFbjJuXd6M/NntIt/bgygowvEr6F71mVEq+6y+L
         wD/yy1tt0n2/ynqVSYgCP7qs8rwbvcMhhA82EUN62pyo1KkYcfMX2VLjg+2yOaeSfpMz
         dj38Jjox/lslhh6qZf4xlizKMiG18O7P8N5GlwciddWKDEmCLcIpuCLnqVcWNqF5FZgv
         oUKSgF0LhZdXeceRhsmMP2D+OOWBzNv5qGnHq6IN3vFVjRv9DNgDouJsCQkqcJWCWGFT
         z3/7ndkyO9PHBiUW7Bn7nzLXA61tV58PGKVuPIv8vh4aijKc1co5nC4tA4rb+ouCpmNm
         W8Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748854559; x=1749459359;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7QYD6lw/8riHbGeOafpIw3lxHQ0yDfZV96sQp+2PqGY=;
        b=Xl5L6TMYS2CTwvJN+r5WUy7bm2T45R7giNPIE93BhXJaYd1Ar8E3mhMnweN/xiL0eD
         E4LZxbXD0DM4bbV1s4fRnY5HM15X9/1ikXazRLxcKbTYl3Hi2PpD9QFJjKq2DWvqhiEs
         EeIgzqjpfoBjfyN32Qm0laIAT1gpNTlXT6NLuHvz3LVvzjcCAXd2nQ7uj7L48rkv2U4e
         lOElax+mUpo18vF8x2OeJlho+kJ/EsJuCnpGfvU+Q6bxVUa3cC57ELfX15O1Vyeb4r6+
         sC8a2TH2nNr3Y9zvsQJ60h8T3uoZ7HCUE79SrcZvR5kPJ2UNV4Y1pEPUjuPP8Q19I8Ai
         XAug==
X-Forwarded-Encrypted: i=1; AJvYcCVeUsWfU6/VYBF3UIIxpfYBA8TDaJCndHyZo068Esol5ajDYcv4quZt7TtX/HSsuePfJxaqcPHbr3Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmNSicCt76zbjFGpO7vhEoWmiQGmLxvEFAoRDNeq8CXITi7lmA
	MjfV67aOIV0MYgk9Ij43mGM4oJp0FG8t+Tqw+SlzxFp8ZUyNwLQj51YeQUsdos+JfAo=
X-Gm-Gg: ASbGncurbt4xTovqiV9MaItrMMyXizWOuXQTUb8Ah9sxXo7ul3MSYL67VTk9PLXhBdG
	er2rUuALJVTxcQZdPSJFSbOpJ3fo2GgmmlgRxnAeqOo/eJdNSbH/ooVkt9zoYmFCjuyNiirY/J3
	OIk4r1sempqUiVAw2TMF8s5IsdWT48EJxJZ0LeSdUU8divqVRC19goRFAlxSmuTOQerv3duZuYk
	3vOolutbyDPwT2zCs5mhyxw3T3RYkx1yzS7UjgdhndUvJoXS2KLPCOhEj7rz1YklYvxltPxuM+4
	QibzCl75I7+yBZETa/OmXan/ipVrVjlFKyUgY56Hjr/9AdzZOSanNmqdP1KIltL4AamehWjJ7Tt
	sjqFequ1lbuBFFrSOkurdQTfstA==
X-Google-Smtp-Source: AGHT+IERLKrJn1bEwrp3LKtii6LGu0HD8bbK3tSawKryKIi92EyAnI21DVniaXqIS0xT91UU9mDP+Q==
X-Received: by 2002:adf:f604:0:b0:3a4:f7ae:77c9 with SMTP id ffacd0b85a97d-3a4f7ae783bmr8182583f8f.5.1748854559244;
        Mon, 02 Jun 2025 01:55:59 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:cb6:30c6:d7ab:d145? ([2a01:e0a:3d9:2080:cb6:30c6:d7ab:d145])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4f00972c1sm14297282f8f.68.2025.06.02.01.55.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 01:55:58 -0700 (PDT)
Message-ID: <75dde9a2-3c0d-481b-bc73-089ba89a77e0@linaro.org>
Date: Mon, 2 Jun 2025 10:55:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <styd5gjksbsqt7efylpfn6bgwgyvt6zexxiooihjsnmp25yigp@unq7dor6gso2>
 <447c3b13-8d6d-4bcb-83c1-9456b915a77e@oss.qualcomm.com>
 <inpfuxskvmrebxitqtqwzvpnpicibo6zakgk4ujpcrqrpef2vw@nhclj5rg7axr>
 <9037fefe-aa40-4884-97ee-b81ff8346944@oss.qualcomm.com>
 <htufwjvfgdtav2gtgrytc356py6xqhrffbwjg42sgo7k4zzxof@z4xaf35qz7kq>
 <aa17d7d4-b77d-4a0a-88c3-86255dfbc29d@oss.qualcomm.com>
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
In-Reply-To: <aa17d7d4-b77d-4a0a-88c3-86255dfbc29d@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_015600_796384_CC07431B 
X-CRM114-Status: GOOD (  24.45  )
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

On 28/05/2025 18:56, Konrad Dybcio wrote:
> On 5/28/25 1:22 PM, Dmitry Baryshkov wrote:
>> On Wed, May 28, 2025 at 01:13:26PM +0200, Konrad Dybcio wrote:
>>> On 5/28/25 11:00 AM, Dmitry Baryshkov wrote:
>>>> On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
>>>>> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
>>>>>> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
>>>>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>>>>
>>>>>>> The DisplayPort phy should be left enabled if is still powered on
>>>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>>>>> PHY is not powered off.
>>>>>>
>>>>>> This series doesn't seem to solve the USB side of a problem. When the
>>>>>> PHY is being switch to the 4-lane mode, USB controller looses PIPE
>>>>>> clock, so it needs to be switched to the USB-2 mode.
>>>>>
>>>>> I didn't find issues with that on X13s.. Not sure if it's related, but
>>>>> on the SL7, after plugging in a 4ln DP connection, I need to plug in
>>>>> the USB thumb drive twice for the first time (only in that sequence)
>>>>
>>>> Might be.
>>>>
>>>>> But there's nothing interesting in dmesg and the phy seems to be
>>>>> programmed with the same values on both the initial and the subsequent
>>>>> working plug-in
>>>>
>>>> Please try using a DP dongle with USB 2 passthrough (there are some).
>>>> Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
>>>> devices. Would you be able to see the USB device on a bus?
>>>
>>> I only have a dongle with both display and usb that does 2ln dp
>>> (I tested 4ln dp on a type-c display that I don't think has a hub)
>>>
>>> USB3 - yes, USB2 - no (but it works after a replug)
>>>
>>> Are you talking about essentially doing qcom,select-utmi-as-pipe-clk
>>> at runtime?
>>
>> I think so.
> 
> So after quite some time playing with that, I noticed that the USB2
> device was never actually kicked off the bus.. and works totally fine
> after connecting the display output (2ln DP)
> 
> I was looking at dmesg, checking for discovery/disconnect messages,
> but the device was simply never disconnected (which makes sense given
> repurposing USB3 TX/RX lanes doesn't affect the D+/D- of USB2)
> 
> I also read some docs and learnt that what we call
> qcom,select-utmi-as-pipe-clk is suppossed to be a debug feature
> and is unnecessary to set on USB2.0-only controllers
> 
> The USB controller programming guide though doesn't talk about DP,
> but I'd expect that we may need to set that override for 4lnDP+USB2
> use cases (which I don't have a dongle for)

Yeah basically we need to:
1) power-off the USB3 PHY
2) switch to UTMI clock

In the following states:
- USB safe mode (USB2 lanes may still be connected)
- 4lanes DP mode
- DP-only mode

But for this, the dwc3 should also get USB-C events with an addition mode-switch property.
The flatten DWC3 node now allows that !

Neil

> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
