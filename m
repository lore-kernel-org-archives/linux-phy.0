Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 030B8C87FCA
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 08:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9XSEnEGigyGxkuBXzcESl39rQaFvoTdpg2eGdFUpUm0=; b=jYD6eJdiWzlO2by5XkVXVZyl6/
	L3r4r5LTqPQoSLsziCJY54T2qyaqxstW+fBwSal+XUBCjMPg0IhFz+vqbHGRHyzmrvrGLllR52t+k
	zxn6B86bbuZuPd2JHIkVq/5n2G11oorpFnCRTx2qH3kSC7CA3QIZnAo1Drc3/znWC95WiOdOB3Cif
	sc3d9RAEfG9puzWDe3fz4AGZe7HpLOSoAkLQy7XNoGz88Gv98Jgf5iM7f7SRBAn0X2ptkxNQBriO6
	RPD/kewCS+FwoDd5eULDTVeHCRdLSGXzSzF9X/Gyb58JMQSmk5ytfcF/Q5DPY93mt0X8X7o3Ox360
	aqsn2SBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvnt-0000000HZeE-3EN0;
	Thu, 07 Aug 2025 08:16:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvnr-0000000HZdh-1dsB
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 08:16:48 +0000
Received: by mail-wm1-x342.google.com with SMTP id 5b1f17b1804b1-4589b3e3820so7431695e9.3
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 01:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754554606; x=1755159406; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:autocrypt:in-reply-to
         :content-language:references:cc:to:reply-to:subject:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H5IyuxQqHejRxrIntChIgL7/V1gkWqVgKsSi/w4O9eY=;
        b=uqWMj0Aa8VX9fyqKAsKqH2UvSrUSt2D99CnDMzg1dCNA8OgUjgv/Q8o3LmM64oymdc
         zz6LSwHW+0Um8ggcGYuarBTAqdqem+b1S7bAnLk/DO/QNYSM4sYN22S0aAt2gylRj+8O
         XtQpFgi/PCBAPZ+rQckf4PXYBgM1BMV7FTR3ODvolZR7y6L7zdPdoFNG7SIcl1fgOKmN
         tB5sS4tEKVu2JzFwAS+kH4PcTBLiNaQnlngvXBVk53BlnOjYlhi63NbxAnRh7FsWzF31
         vxSP4BA5zH5FfZ9nv7isIWKDewCwYWBMtvd/VktIzbhdT+KhRl0ykyINl+yOHu/XvI/A
         +Kxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754554606; x=1755159406;
        h=content-transfer-encoding:organization:autocrypt:in-reply-to
         :content-language:references:cc:to:reply-to:subject:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H5IyuxQqHejRxrIntChIgL7/V1gkWqVgKsSi/w4O9eY=;
        b=AgQDlIzDmbGqjWRwC/yU7/ePkBPet8Zc1PzXir3E31011MfqCG0JyY7zJ6rUAmai+y
         zUVNM9Wyc6CA+C8Z+OAYwHAKjvfuGOWk41ODd+u7khxldNg7pAKvk7oE8iWKcqhlR8Du
         ylqq3wYWryQLb827iNuzc8c2zvQLvsMePvmqA0SqBGnDdzFC0ZUHehJmqYio0dlSF1Nm
         tbWY4p3rGXXPfo9SLsSvUGw4Bvr8PIrtVfApt9LPgUfLnAvaMoKvECseX9Wo5sNm5EWE
         ftrKfazSkdbLZj/dENHE4MUsGqIFX0oLfAn2efAwpgz485RvvO0GY5xXw8YkcO8d1Hw2
         hwFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqmkXBKHEcZidBIppOvIUKDiRmhl/NOFPpTzkCEFZEo/08oOcR1YQG4CYdSp3sxu2DG14pgweCDzk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwCu/Ag/dmLDobPn4cJTITzi/3KOd2R2w0q4JmJ/znWjq6tL9HQ
	tq1h0xUWAy+e1qDVMdcP/x+JLILOBKyGC7rZ0FcM3n6PqGzc7lbR0d+vCgsyR9HZqHRCZFOB73W
	Cpxqx6Js=
X-Gm-Gg: ASbGncuP74TE7jUTgNZ/0VCcWwMcbB5zIZpL+ZrWaRpd8GgHMChz5TsZiMRRwzXJNTJ
	v16/4qUiT4S7guz6HAbgPeqi0es1EXwQg8fn+Ro8iLKoSrt/VTy9GM68P6Y6KGgVDirJpOHNc2L
	gWhvbddn2SoEOF604C9ChaGLTJDoSx+cp/RnEM8PsIuVxQ+9jTTUmVkt/ZZB6jI8BoiNPb6ZW28
	nh4MFcyVuH6HDH34gN/Vps3eG2Vu+Vw+lxIu6+EJNpUDup4osjpfVInq0g+2UufqERPh055yXdm
	Rtgq4q5C9uVB4AHnEQQA1YLjWP3DfBldB8S4H7qQhBuD+LfBvgtyT3F4Aewkdd1HFIkLawS7urU
	VLkRw8jNfVh+Xo7ROrf45t30NtQBt0lvYsre3N1qbkO8eZzIO27T4V57NauOhDSmLVTGsW7avma
	k=
X-Google-Smtp-Source: AGHT+IE0JSDUhtZYJf+1hlq6gbKvK3R+qgk4DROtTWG7rlJ5CNJyG/EJ5m/YoUjrHW3xfQaY3SXBaA==
X-Received: by 2002:a05:600c:4586:b0:459:dfa8:b881 with SMTP id 5b1f17b1804b1-459e7078e62mr51416305e9.7.1754554605785;
        Thu, 07 Aug 2025 01:16:45 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:5bf9:b40c:d741:ea95? ([2a01:e0a:3d9:2080:5bf9:b40c:d741:ea95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459db13fc9fsm154959135e9.7.2025.08.07.01.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Aug 2025 01:16:45 -0700 (PDT)
Message-ID: <c2f2ba36-1a25-450e-99b9-79aa4fd4913d@linaro.org>
Date: Thu, 7 Aug 2025 10:16:43 +0200
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
 <75dde9a2-3c0d-481b-bc73-089ba89a77e0@linaro.org>
 <71196aad-6d80-4356-bbe5-3070f6b74bfe@oss.qualcomm.com>
 <fhzdhzxdwcoiuhx2eogpshwt5cxagjkrygrefqikmfbx3cfcov@awmhgrvurnfi>
 <f21b7d52-4c3f-4e5b-bee7-f8b2945b5b02@oss.qualcomm.com>
Content-Language: en-US, fr
In-Reply-To: <f21b7d52-4c3f-4e5b-bee7-f8b2945b5b02@oss.qualcomm.com>
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_011647_437245_AE3F2D35 
X-CRM114-Status: GOOD (  35.81  )
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

On 06/08/2025 17:48, Konrad Dybcio wrote:
> On 6/3/25 3:17 PM, Dmitry Baryshkov wrote:
>> On Tue, Jun 03, 2025 at 01:03:11PM +0200, Konrad Dybcio wrote:
>>> On 6/2/25 10:55 AM, Neil Armstrong wrote:
>>>> On 28/05/2025 18:56, Konrad Dybcio wrote:
>>>>> On 5/28/25 1:22 PM, Dmitry Baryshkov wrote:
>>>>>> On Wed, May 28, 2025 at 01:13:26PM +0200, Konrad Dybcio wrote:
>>>>>>> On 5/28/25 11:00 AM, Dmitry Baryshkov wrote:
>>>>>>>> On Wed, May 28, 2025 at 12:24:02AM +0200, Konrad Dybcio wrote:
>>>>>>>>> On 5/27/25 11:10 PM, Dmitry Baryshkov wrote:
>>>>>>>>>> On Tue, May 27, 2025 at 10:40:02PM +0200, Konrad Dybcio wrote:
>>>>>>>>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>>>>>>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>>>>>>>>
>>>>>>>>>>> The DisplayPort phy should be left enabled if is still powered on
>>>>>>>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>>>>>>>>> PHY is not powered off.
>>>>>>>>>>
>>>>>>>>>> This series doesn't seem to solve the USB side of a problem. When the
>>>>>>>>>> PHY is being switch to the 4-lane mode, USB controller looses PIPE
>>>>>>>>>> clock, so it needs to be switched to the USB-2 mode.
>>>>>>>>>
>>>>>>>>> I didn't find issues with that on X13s.. Not sure if it's related, but
>>>>>>>>> on the SL7, after plugging in a 4ln DP connection, I need to plug in
>>>>>>>>> the USB thumb drive twice for the first time (only in that sequence)
>>>>>>>>
>>>>>>>> Might be.
>>>>>>>>
>>>>>>>>> But there's nothing interesting in dmesg and the phy seems to be
>>>>>>>>> programmed with the same values on both the initial and the subsequent
>>>>>>>>> working plug-in
>>>>>>>>
>>>>>>>> Please try using a DP dongle with USB 2 passthrough (there are some).
>>>>>>>> Or just emulate this by enabling DP PHY / DP chain for plugged in USB3
>>>>>>>> devices. Would you be able to see the USB device on a bus?
>>>>>>>
>>>>>>> I only have a dongle with both display and usb that does 2ln dp
>>>>>>> (I tested 4ln dp on a type-c display that I don't think has a hub)
>>>>>>>
>>>>>>> USB3 - yes, USB2 - no (but it works after a replug)
>>>>>>>
>>>>>>> Are you talking about essentially doing qcom,select-utmi-as-pipe-clk
>>>>>>> at runtime?
>>>>>>
>>>>>> I think so.
>>>>>
>>>>> So after quite some time playing with that, I noticed that the USB2
>>>>> device was never actually kicked off the bus.. and works totally fine
>>>>> after connecting the display output (2ln DP)
>>>>>
>>>>> I was looking at dmesg, checking for discovery/disconnect messages,
>>>>> but the device was simply never disconnected (which makes sense given
>>>>> repurposing USB3 TX/RX lanes doesn't affect the D+/D- of USB2)
>>>>>
>>>>> I also read some docs and learnt that what we call
>>>>> qcom,select-utmi-as-pipe-clk is suppossed to be a debug feature
>>>>> and is unnecessary to set on USB2.0-only controllers
>>>>>
>>>>> The USB controller programming guide though doesn't talk about DP,
>>>>> but I'd expect that we may need to set that override for 4lnDP+USB2
>>>>> use cases (which I don't have a dongle for)
>>>>
>>>> Yeah basically we need to:
>>>> 1) power-off the USB3 PHY
>>>> 2) switch to UTMI clock
>>>>
>>>> In the following states:
>>>> - USB safe mode (USB2 lanes may still be connected)
>>>> - 4lanes DP mode
>>>> - DP-only mode
>>>>
>>>> But for this, the dwc3 should also get USB-C events with an addition mode-switch property.
>>>> The flatten DWC3 node now allows that !
>>>
>>> Yeah, I got even more confirmation this is intended..
>>>
>>> I hacked up something that boils down to:
>>>
>>> diff --git a/drivers/usb/dwc3/drd.c b/drivers/usb/dwc3/drd.c
>>> index 7977860932b1..e5a0a8ec624d 100644
>>> --- a/drivers/usb/dwc3/drd.c
>>> +++ b/drivers/usb/dwc3/drd.c
>>> @@ -464,6 +464,11 @@ static int dwc3_usb_role_switch_set(struct usb_role_switch *sw,
>>>   		break;
>>>   	}
>>>   
>>> +	if (dwc->mode_fn)
>>> +		dwc->mode_fn(dwc, mode);
>>>
>>> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
>>> index 7334de85ad10..ea56f5087ecb 100644
>>> --- a/drivers/usb/dwc3/dwc3-qcom.c
>>> +++ b/drivers/usb/dwc3/dwc3-qcom.c
>>> +static void mode_fn(struct dwc3 *dwc, enum usb_role role)
>>> +{
>>> +	struct dwc3_qcom *qcom = to_dwc3_qcom(dwc);
>>> +
>>> +	if (dwc->usb3_generic_phy[0])
>>> +		dwc3_qcom_select_utmi_clk(qcom, role == USB_ROLE_NONE);
>>
>> This part is a hack for devices with no USB-2 passthrough, isn't it?
>>
>>>   }
>>>
>>>
>>> It was easy to tap into because there's already mode switch handling..
>>> But obviously it's a hack - should I register a typec_mux in there?
>>
>> I think so, we should listen to mode changes, instead of host/device
>> changes.
>>
>>> Should it go to dwc3-common or dwc3-qcom?
>>
>> I'd say, dwc3-qcom. Not all dwc3 controllers are USB 3 capable, not
>> talking about the USB-C.
> 
> I did some coding and we can't switch clock sources at runtime (not a
> huge shocker), but the bigger issue is that, paraphrasing the HPG, the
> DWC3 controller must be programmed as if it was not SS-capable (probably
> skipping starting some subcores), which is not trivial
> 
> I also came up with a sneaky workaround of simply keeping the USB PLL
> always-on, but the hardware disagrees to do so if the PHY is configured
> in the DP_ONLY mode (which I suppose makes sense)
> 
> All in all, I was not able to find people with a device that actually
> does 4ln DP + USB2 and IIUC the only drawback would be that USB2 would
> not work (and not stall the system). Not sure if/how it recovers after
> you'd plug something else into that port later on, but again, I don't
> have anyone that could test it.
> 
> With that in mind, would you be okay with me resubmitting this series
> with just a rebase & taking care of the comment to patch 5 (pertaining
> to the default mode setting if svid != DP)?

Sure please do so, and I'll retest on the SM8550 & SM8650 platforms.

Thanks for looking !
Neil

> 
> Konrad



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
