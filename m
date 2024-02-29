Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBAA7C54E41
	for <linux-phy@archiver.kernel.org>; Thu, 29 Feb 2024 15:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=88F73Fh95US+Uq3HQtm+kCGz1SBdhY7wDq8sc+odzrc=; b=3X3mCzWm3BVIvr9PotUUcWFBRZ
	xa9C2ocWuIsrAn3z+EP70DMWWNXJ6KGKSpBnzoegrX42PdBBvDhuJ5d4S+LTg7RNBgciXy8/3lwu9
	uLFuBu4fxA738wae4R1c1fYPJ9LI6gqL5nxZwKOWEWfobmvfJkmbhY9nf2fSaMmnFvgNfMN73N3pK
	WgzTBFa7EVEL+vZLDJhrE5eqBJLKtRx0+YKlFW5Dd6paS9zG8ccu9zSnjeehdiwKVQMXDFexWZw+e
	AtqWoEmxehZf4c2Iy3PICD49lnoRbpa6Tdc0vJ/onzsAMHtosQlICycqHCSFd8U8N8kWt9lBvFGg0
	JG+7dwbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfinA-0000000EAUj-278u;
	Thu, 29 Feb 2024 15:57:52 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfin5-0000000EARL-3vwn
	for linux-phy@lists.infradead.org;
	Thu, 29 Feb 2024 15:57:50 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2d27fef509eso13915411fa.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Feb 2024 07:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709222265; x=1709827065; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E+rwDvBHwaTiXgJTFlspTAy/0AO9GOtYg0t1vv+rPRo=;
        b=JWEppo/2Ll9Tcp/XB+ajgQB7DH8BMCsjfxsZuQ2zt0HA4kjZ0sSO9WDQlMVGR24TOF
         EmjtQYvWQvILpmmnd65XPYPvKXHGasA0Pqlvg/1sXbDSywWflYi6n6G/Ijsn1ORnscXG
         PZ3WVcRoWTb2PunXiBZRA1C7plk6zZp2JUIuqLE+ARriAGmQ7dKIo0G01PlC1EaSq6Np
         G5wz+xI+er1AP21rj68KxvGeITu7CIDJTfmbxWLjl4Kp8iDRK42ncVhG6ozuU/UHqe+d
         rCUVAaoIujcelT20kN/vy4M+9Jo6epBWdAgp4cOCX2aCQaM70xXOa1cl0zeBjNQ+iygW
         ZnBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709222265; x=1709827065;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=E+rwDvBHwaTiXgJTFlspTAy/0AO9GOtYg0t1vv+rPRo=;
        b=a5xcJSIWEOH9WcxzYO/9ktq2thKw07KqOFhwdE85CV9ZTLUgQMvotWevM9tJHsVCSC
         1EY0VHx2YT9YoySdwvWl/tx0fexUBWwN5Ksunc+2Se/667qFzR3opPD/lVZxd8mJA/uB
         v45dUGAP4ex4lUMywj7nomEIcCgKUbCSQT4fdzBiulwMLo9WXkCp9LqqHCKnoexK3p0c
         5j8QZCSvi+EaKi60Ya9YVi4CAia/Xxncn0gx4NE8w6jdSEAKtsQ7k3TFsMvom3s1hRNC
         U7025RTgg/ap6Pun98Ai/AVTm3VXrHMWwtnz6Ep/4MDsVtlAgw9yo5xCh6kbtYHdN/KJ
         s0cw==
X-Forwarded-Encrypted: i=1; AJvYcCWGXjswVTpdIK1AnOWmJwTTL84rJkBUKJ657jtR0Upjgu94L4XccO49U/OfIxHPIV/GQ/xOhYGsNSx7K1xaJqOaWgxsZMBSMZjaJW7q2g==
X-Gm-Message-State: AOJu0YxHR4hRGwcc3eff47jF94EmZD5LCjJpOGyjkld3+mz7Y1MrrAa0
	To8AVqGVGe6tjszId+6LgdyLHhkKqtnkNASgdvUuNnjlNruirrbqib518NKWMELnglVaFMirM7s
	73MY=
X-Google-Smtp-Source: AGHT+IGI2JH+zfnqb3Mv9icKAn7vZ+xHOoCRLh8m+XQgLc0NwrnMh2W2RRFh0niWjbPFKKVRZnJapw==
X-Received: by 2002:a05:651c:8c:b0:2d2:954e:aceb with SMTP id 12-20020a05651c008c00b002d2954eacebmr1627300ljq.53.1709222265542;
        Thu, 29 Feb 2024 07:57:45 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:651:5318:b12c:be82? ([2a01:e0a:982:cbb0:651:5318:b12c:be82])
        by smtp.gmail.com with ESMTPSA id u10-20020a05600c210a00b00410df4bf22esm5534462wml.38.2024.02.29.07.57.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 07:57:45 -0800 (PST)
Message-ID: <a0a082b6-7647-4fd9-b0da-db973ae09f27@linaro.org>
Date: Thu, 29 Feb 2024 16:57:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH RFT 4/7] phy: qcom: qmp-combo: register a typec mux to
 change the QPHY_MODE
Content-Language: en-US, fr
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-4-07e24a231840@linaro.org>
 <CAA8EJpoZn5V8N3=4x4AfYM91XBuCZx47vSS8tB-nCP=LvVsD6g@mail.gmail.com>
 <d50ca4c0-8954-4e4c-9ce9-2c40ebacf8b0@linaro.org>
 <CAA8EJpq0E_t6bi4TymtpxdX0ZHHNJgBU2gFEEZDWSUZg27pEvw@mail.gmail.com>
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
Organization: Linaro Developer Services
In-Reply-To: <CAA8EJpq0E_t6bi4TymtpxdX0ZHHNJgBU2gFEEZDWSUZg27pEvw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_075748_227273_C9F4A3B6 
X-CRM114-Status: GOOD (  15.00  )
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

On 29/02/2024 16:54, Dmitry Baryshkov wrote:
> On Thu, 29 Feb 2024 at 17:47, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> On 29/02/2024 16:25, Dmitry Baryshkov wrote:
>>> On Thu, 29 Feb 2024 at 15:08, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>>>
>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>
>>>> The DisplayPort phy should be left enabled if is still powered on
>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>> PHY is not powered off.
>>>>
>>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>>>> will be set in between of USB-Only, Combo and DisplayPort Only so
>>>> this will leave enough time to the DRM DisplayPort controller to
>>>> turn of the DisplayPort PHY.
>>>
>>> I think this is not fully correct. Please correct me if I'm wrong, but
>>> it is possible to switch between USB / USB+DP / DP-only at runtime.
>>> See the Status Update and Configure commands.
>>
>> Yes, but the current implementation is still valid because we need to
>> have the DP powered-off before changing the PHY mode.
> 
> Even for switching between 2 lane and 4 lane modes?

So the Altmode pin assignment says how much lanes you can get (2 or 4),
and AUX data will say how much the adapter/display supports.

My native DP monitor uses the 4 lanes, while my USB-C->HDMI dongles
declares the 4lanes pin assigment but DP controller only ever tries 2 lanes.

I don't have USB-C->HDMI with 4lanes DP, but it should work fine.

Neil

> 
> I'll check how my USB-A+DP dongles work with respect to the altmode
> configuration.
> 
>>
>> I never encountered such setup and I have no idea how to test this.
>>
>>>
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
