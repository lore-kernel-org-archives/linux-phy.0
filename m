Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD074CD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 08:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o7E/oJMBbBz9fzpeXQfa8HkodoKhGORnIjyOiH24JlI=; b=PinHDSSoPJQA3HSXQlGncy20Uh
	+vjiahRR68ea9v0jxyAVVsuTllqOb2cMAzyj8NpErAL6oF6Suw6Jt55/2gz4zuic20BtNoKd/oWTD
	1P9UOscrAMguoSSzw6TLtNVmWkdgklhPf9kG7K5gV6mlO4xV0JrSUeK8ZIv7Uwu+XRaEibxfaqmQW
	ZayNAB4Aq67m+nesVTxSAKno6zjKSuwNFQ1ZUVkcMCcKJoOdubnFJuuvB0sxCFvEKRD5MmyXdaayC
	jomkdvdLrUtKTqVAQ4u4IhwMiBAiog6GQahClpskLrJpi8hhcP6CdWc3y4e+PLj7TJGYyrq5a8eKm
	55I96bsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsecr-00000005rvG-1fMt;
	Fri, 05 Apr 2024 08:08:41 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rseco-00000005ruN-1FoL
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 08:08:39 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-343c2f5b50fso819317f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 05 Apr 2024 01:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712304516; x=1712909316; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XKD8BaAHAssKw+PUHd2Z4z8cWKgnf5llahvQD+6ai2Q=;
        b=v6qkfB/d2wsj9oZgoJjkfkP8oHvFaY8CxKHLNIJ67A3nN027f6JmjAA75vUkGeIx28
         43P7iNroKTiXVpzp0eSyc2mk1jw4SY1gLClbeWFsdIQQuUhqAM/S02vQ7of1Q7Y4g5Vh
         nBORTzu/gybN+KXSXtF7YE7NBiPwEnJtAO87cGW5bxBNK4RuLRMS8nctRinDVHQ3xNfT
         /+Z3rQVDdpe7nSrOgVJXuUGEXdDVPistyaqn8Cqkh8/9a4ebKSqTe1zbqhO1cmH5fHIB
         uLvwitDX0dIY+TLYNOL5ZJ3YHVy0HmanOP6iSQajmfgFHXAN9OlOdy/1OEXLam7vFtcN
         6/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712304516; x=1712909316;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XKD8BaAHAssKw+PUHd2Z4z8cWKgnf5llahvQD+6ai2Q=;
        b=HXOUZprRf3i1VL0MCyz7bJihalzRc0htBU0R0HCe//xQSmFGZurZjylh8DPzVKAWKf
         4YgVIgyEhhDLnw82UiDTcFhPGktogPuFPAsyxmkLWKHUK4U0UMZUYb5I1bq9C6Vk0rqS
         CVhZgtocMNPtrtYk8TRARuRdUAzzbqoZdHxN46MLMNZTcHOK2DL9DLp364GZtz9p6VCu
         QCUdiYkfOVVWMeECQtmXPoxK32PJdX6q8qF5KweDYU+Sz1HiUUpmY2rt7XsDBV4o3mHj
         TLrb21GoT1/zByD3fr2vFzdf9YvDDTC0oRU1FSU72nF9uagemPq+BpkskNS5tmRoC3iT
         kM8w==
X-Forwarded-Encrypted: i=1; AJvYcCVIKgQMRXVGowCZiX37HDjA0k991ERqhjg2bbGyDbPAAferkCVpogw2Ip/wHO2I9hMTsZ+96wWATsb62E/OtM3etiSNtK8YVHWZASDZ9w==
X-Gm-Message-State: AOJu0Ywe5Hva2YiwK8WVCB7tDGO7uf9Yc1EnixZrUAvWekdf3ncLKZd5
	MXy5OAYS0D82yHtfjKBERrX0jMqHJ+UKKLN5EzlxM/oze4A5utBeRs4fLYWshMI=
X-Google-Smtp-Source: AGHT+IGCYonXWNW2QXF58efe0CE6cj35ba33hqMvkUS9lVwhwinq1Kc3dShOEWhRIfp6VDSZZFGrLA==
X-Received: by 2002:a5d:4f0e:0:b0:343:b9e4:9b78 with SMTP id c14-20020a5d4f0e000000b00343b9e49b78mr510527wru.22.1712304516265;
        Fri, 05 Apr 2024 01:08:36 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:8e64:fc77:aa3a:87a? ([2a01:e0a:982:cbb0:8e64:fc77:aa3a:87a])
        by smtp.gmail.com with ESMTPSA id p13-20020a5d638d000000b00343ad4bca7dsm1380364wru.85.2024.04.05.01.08.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Apr 2024 01:08:35 -0700 (PDT)
Message-ID: <963b60e5-6ab7-4d9f-885a-ba744c2b7991@linaro.org>
Date: Fri, 5 Apr 2024 10:08:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Luca Weiss <luca.weiss@fairphone.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com>
 <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org>
 <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt>
 <236a104c-fc16-4b3d-9a00-e16517c00e3a@linaro.org>
 <D064242SMIVM.1GUC1I9GE9IGC@fairphone.com>
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
In-Reply-To: <D064242SMIVM.1GUC1I9GE9IGC@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_010838_388101_181EE9DA 
X-CRM114-Status: GOOD (  19.70  )
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

Hi Luca,

On 29/03/2024 10:02, Luca Weiss wrote:
> On Tue Mar 26, 2024 at 10:02 PM CET, Konrad Dybcio wrote:
>> On 16.03.2024 5:01 PM, Bjorn Andersson wrote:
>>> On Fri, Mar 15, 2024 at 06:35:15PM +0100, Neil Armstrong wrote:
>>>> On 15/03/2024 18:19, Luca Weiss wrote:
>>>>> On Thu Feb 29, 2024 at 2:07 PM CET, Neil Armstrong wrote:
>>>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>>>
>>>>>> The DisplayPort phy should be left enabled if is still powered on
>>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>>>> PHY is not powered off.
>>>>>>
>>>>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>>>>>> will be set in between of USB-Only, Combo and DisplayPort Only so
>>>>>> this will leave enough time to the DRM DisplayPort controller to
>>>>>> turn of the DisplayPort PHY.
>>>>>>
>>>>>> The patchset also includes bindings changes and DT changes.
>>>>>>
>>>>>> This has been successfully tested on an SM8550 board, but the
>>>>>> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
>>>>>> PD USB Hubs and PD Altmode Dongles to make sure the switch works
>>>>>> as expected.
>>>>>>
>>>>>> The DisplayPort 4 lanes setup can be check with:
>>>>>> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
>>>>>> 	name = msm_dp
>>>>>> 	drm_dp_link
>>>>>> 		rate = 540000
>>>>>> 		num_lanes = 4
>>>>>
>>>>> Hi Neil,
>>>>>
>>>>> I tried this on QCM6490/SC7280 which should also support 4-lane DP but I
>>>>> haven't had any success so far.
>>>>>
>>> [..]
>>>>> [ 1775.563969] [drm:dp_ctrl_link_train] *ERROR* max v_level reached
>>>>> [ 1775.564031] [drm:dp_ctrl_link_train] *ERROR* link training #1 failed. ret=-11
>>>>
>>>> Interesting #1 means the 4 lanes are not physically connected to the other side,
>>>> perhaps QCM6490/SC7280 requires a specific way to enable the 4 lanes in the PHY,
>>>> or some fixups in the init tables.
>>>>
>>>
>>> I tested the same on rb3gen2 (qcs6490) a couple of weeks ago, with the
>>> same outcome. Looking at the AUX reads, after switching to 4-lane the
>>> link training is failing on all 4 lanes, in contrast to succeeding only
>>> on the first 2 if you e.g. forget to mux the other two.
>>>
>>> As such, my expectation is that there's something wrong in the QMP PHY
>>> (or possibly redriver) for this platform.
>>
>> Do we have any downstream tag where 4lane dp works? I'm willing to believe
>> the PHY story..
> 
> Just tested on Fairphone 5 downstream and 4 lane appears to work there.
> This is with an USB-C to HDMI adapter that only does HDMI.
> 
> FP5:/ # cat /sys/kernel/debug/drm_dp/dp_debug
>          state=0x20a5
>          link_rate=270000
>          num_lanes=4
>          resolution=2560x1440@60Hz
>          pclock=241500KHz
>          bpp=24
>          test_req=DP_LINK_STATUS_UPDATED
>          lane_count=4
>          bw_code=10
>          v_level=0
>          p_level=0
> 
> Sources are here:
> https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-5.4/+/refs/heads/odm/rc/target/13/fp5
> And probably more importantly techpack/display:
> https://gerrit-public.fairphone.software/plugins/gitiles/platform/vendor/opensource/display-drivers/+/refs/heads/odm/rc/target/13/fp5
> Dts if useful:
> https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-extra/devicetree/+/refs/heads/kernel/13/fp5

Could you retry with this applied ?

https://lore.kernel.org/all/20240405000111.1450598-1-swboyd@chromium.org/

Thanks,
Neil

> 
> Regards
> Luca
> 
>>
>> Konrad
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
