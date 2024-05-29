Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6456FC25B75
	for <linux-phy@archiver.kernel.org>; Wed, 29 May 2024 07:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pEAM0bagLDFaQEeGNmBmYSi3gehy1D+PfENoW/TI5nA=; b=dtM521i1doM1sR2q5aMZUfcZfp
	oh10cvmL+vJYgjjdh/96+cxHjIE37Qinbf3qFYo+bLO5Jf24iBPO1oKGTZh1fYm0U5iUro7sUiKd4
	d+ZJuM2kqnEl42yVnWLuU/N7sPkdFWUEP6rcVypkkgudAA+EpIJWp+enG0S58VW1J0Z+pwvg6NsTB
	bgtXBv1P6qn2nWRIDo8JMOilF5CpnBiWTPpLJJtbVmYTjHkYAKyx4GqrG7OAcbY6FsrijABMYNbTY
	eI3ygv7of8z62rJFcrNsfvJft/yeeVbVOTnFa08L9/1ZUptCI9ET+WowfFiPq9owdBWTE20AYRaP4
	Q67sMB4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEAE-00000003EWc-0AcD;
	Wed, 29 May 2024 07:56:02 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCEAB-00000003EWH-2kzW
	for linux-phy@lists.infradead.org;
	Wed, 29 May 2024 07:56:01 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-354de3c5c61so1444631f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 29 May 2024 00:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716969357; x=1717574157; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lQtYelb2zwqgADzWbfATSB8Y/SNXDqCycD8uNCYpBZ4=;
        b=wKUCqBqQ8cQh2c9nDks8hpL8vngESDspJJLUQcWA/d6KTp5FPKQB86+lqBQkpU+Qvw
         +qL7VEKSfOlyinseU/YtCdngu3XBXc1Owh4SEhrZiUixbsz6xJSJwroSew0Kl13FERwU
         PPYnMJqrhh/XF3DJXtEAZlYcH6529ZpFO6SqwRqileuFR06c98pS04I8q1sDOEKdmE07
         30na1nghJ1FCk6nr0djOEkl/XJ1sKXJYHsN0EVjjyju/+ODuFa5giZsAcBuV5LMoF6ie
         JBfeB55XCpVpd7dAWsUW88eYE3A2LxDwb8a33Qf2lgUAUS3fXFk1NiCCc1CHE/Gzb5mJ
         r8gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716969357; x=1717574157;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lQtYelb2zwqgADzWbfATSB8Y/SNXDqCycD8uNCYpBZ4=;
        b=Qh+RHutS0se9F/zuvA5iGospGD6M+wXjCKNBp0BrOstGg1KqNPtIdFxpLalAe9Bo24
         rYEbjTgrj8zb2vklFobbF4YMuZGss0JUHIFoGmGHK2CF1U+nGuVQnt2FQb3H/0/i74tS
         dT1pmwMn3NGLDy2AqVlJmBYB7TnfSlrBfpChuVLKn71bPweatbl3HMKJeMLC2iKUbv9O
         oU4rT3dcla9h40GxOUTMjDHQMCnDT0JD39mO6x/2c1yLRmI5lHHiBv3p685o3XVdwvdO
         yq4aMob551s06VBwZpmEUX7DcUVDROSmYT1x0dqCAA4XmY4ZRi3A8CntcnZ/Xz3o67+D
         LD6A==
X-Forwarded-Encrypted: i=1; AJvYcCWeiD+M5eBaO+cUPT/wYe1zlVC0RZMQn6CO28cXdhyWH/vgYRnXuSDRUsZbYcq1V6Jm3v2kYeIF1/hsHACU4Z2F3geZXkK90Q3vhaMzmw==
X-Gm-Message-State: AOJu0Yx19SKskzZPeVP9WZtDO26t4ZrGF19+SIoNWwIZx5lchf+NMt/D
	oqnrhoqgw/37VPSgt5rTeelZjV0B2JEq3vaJoneNv7oPxpILbrho7qmHLCV7/Xo=
X-Google-Smtp-Source: AGHT+IHXJ5DB2P3l4g9u4tulV9h4irckLqN3BFo5luDpJhEcunehw5dHxuogjqEI+yRmLXNyYHkgdA==
X-Received: by 2002:adf:e70b:0:b0:355:39d:f82 with SMTP id ffacd0b85a97d-3552fde184emr10910982f8f.53.1716969357068;
        Wed, 29 May 2024 00:55:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:8894:9a1b:5e81:c70? ([2a01:e0a:982:cbb0:8894:9a1b:5e81:c70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-357ad6c2fabsm10413366f8f.83.2024.05.29.00.55.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 May 2024 00:55:56 -0700 (PDT)
Message-ID: <b738eece-2169-44d8-a9dc-9031c6d9a175@linaro.org>
Date: Wed, 29 May 2024 09:55:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <wipu6tdqjbjlrv2sbljgzvoxvpjvkoaz6ic3keq24n3v4tap4j@entxhnd42rml>
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
In-Reply-To: <wipu6tdqjbjlrv2sbljgzvoxvpjvkoaz6ic3keq24n3v4tap4j@entxhnd42rml>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_005559_767381_E3400B7A 
X-CRM114-Status: GOOD (  14.88  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/05/2024 15:48, Bjorn Andersson wrote:
> On Mon, May 27, 2024 at 10:42:32AM GMT, Neil Armstrong wrote:
>> Register a typec mux in order to change the PHY mode on the Type-C
>> mux events depending on the mode and the svid when in Altmode setup.
>>
>> The DisplayPort phy should be left enabled if is still powered on
>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>> PHY is not powered off.
>>
>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>> will be set in between of USB-Only, Combo and DisplayPort Only so
>> this will leave enough time to the DRM DisplayPort controller to
>> turn of the DisplayPort PHY.
>>
>> The patchset also includes bindings changes and DT changes.
>>
>> This has been successfully tested on an SM8550 board, but the
>> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
>> PD USB Hubs and PD Altmode Dongles to make sure the switch works
>> as expected.
>>
>> The DisplayPort 4 lanes setup can be check with:
>> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
>> 	name = msm_dp
>> 	drm_dp_link
>> 		rate = 540000
>> 		num_lanes = 4
> 
> Has the issue with the USB controller dying on us been resolved?

No, this would require some changes in dwc3 & ucsi to support the USB_ROLE_NONE

I haven't looked into this yet.

Neil

> 
> Regards,
> Bjorn


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
