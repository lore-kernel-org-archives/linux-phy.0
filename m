Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A75EC54FB3
	for <linux-phy@archiver.kernel.org>; Mon,  2 Jun 2025 08:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CRJ+Ky+X+JOlqvJ2qtNdu8/o9h3JctWfdqaROiEaKSU=; b=GQbiw1pPTKQu9iUYOF/JJeKZAz
	UZyBn63P8V7fKZ8N8b4TljzMizxCud4Qy64AZEahFdSdggyRVk/fflRpG33eYJKVsD3vwbbn4VpEq
	fhUs1/vklF7lDqcy1T1k/fdlwcyOunbNXT3fbT9rWcNWOgAxNzLGGeFrmI3Rhmnxry/dVVMU09wcr
	SEqqMEYkYTpTV0b06afzbbN/LR4ZysRTXfRpkmSRkjHu50zgAjU3G9n4dSGubVqMX9PNW4u2PeRta
	Ov810oou79ofGFv34D/QZBGg9EgQRJKN3tr1uvq6taLZyMGV+GBFIcpv3E2QwzusV+5DMKnl8wPcP
	+mWh0S/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0tX-0000000716u-41uv;
	Mon, 02 Jun 2025 08:51:47 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM0tV-0000000715K-3gwB
	for linux-phy@lists.infradead.org;
	Mon, 02 Jun 2025 08:51:47 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-450ccda1a6eso36570785e9.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Jun 2025 01:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748854304; x=1749459104; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RFJh+DuLiwxEu1n2YgqypgEN6GoFc9By/45N27OkGW0=;
        b=AjGgulNwr46+MpQz6q0/ROYzGfn5KJm0/UBklxfp8h0t1E5fnCqllMUmD4E3LBE61K
         TCRGXRubOZ9OBNMzwjzNLgOqwKy9GhKqQNyq15jmua+PlCJGGWMSEkycJ/RVZdir3Qpf
         LrSdXpDSSQxgzJZNKSkDO+rCAmQCK+OTXYBpD3lyA6HnDBa5yCgoRraHB58P24LovKJX
         dsX8KMWer2G84fn8DATHFPREI77U/FA4sMffEx9Y0/cBmIzo7abfHV5b1W3sRiQeJcVX
         JYtTxJUH5VQB3+N7XRDSR7mmqU8hF6KE0meOuX7QLEkG7g74Y7k0iOuTJ49beg5GiRXR
         n+Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748854304; x=1749459104;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RFJh+DuLiwxEu1n2YgqypgEN6GoFc9By/45N27OkGW0=;
        b=m8+qpWmYP2wfM6/xDCTNstWh8itRDXPJo18kFO4/WatAZk85BFFgWdbKrhpK9SVrwm
         OTSUrNRSE9SVrnH3ANq3AFlwFx0pnocUixKSmuC826rhpl6g5ifdNiXZ/gnTbbRqLyF3
         aekyjYhmj//0TBJlUOteyA3fK56QjT+AeP7o1yxxHGHe6ZULXDf8Cqgc1W16hqblVBBu
         zwACKoudhvBAzfn2Wu+TNR13dGq1sXV8A4CUEv1G6djyO+6GX3xpx7Z1Lv/YIuJJx2cv
         /6iI47sBFOao8lNbJAW+TyFO3YTBh5mg33aKjhVCHKQZBBscCB/wOcua/gGd3ajA4dyw
         vxTw==
X-Forwarded-Encrypted: i=1; AJvYcCWf8LqMuCg8aWcoXm4L/94ZbkdaQIhV/mU4VxqamMxn4DFMTTZmY16oq/ivMPmx7VZVa4rVvGN3QYA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyOKgZxEY7kc4m2VNBufTsf3OSX+6zeq4EOFMFJ/0gz5+Eb4z7t
	z5NDb3W7YINMcbN/1AjnSWBi2HEtp5Cu9oWBNUVW+sVJjd7yBcX7m9FR1aUClUqZVAc=
X-Gm-Gg: ASbGncvwtqLD/uii4fHN5fCOz+wbsK8vmMYcl0FfqqApXYLLVLqwqz/3LjDGIzgPG8o
	ekA+/GvAgQ1xs4jenPSkp5241rt2ylok1p+0/s5ad0amDYrLIzU1XsJ2X1h1vH7FFvjyMeu01DQ
	Ps6H5H0y2VThFHJJSjl7Tx3tnQxR2c/Cq0/3cZwrIC5GQ1A1jrudyhn4bPR3Wu/jAMRazPw1DrP
	ZQ7cmYgldAEoXIk6f6xj8MYLKgA0Ur0bShf6OueghapnEacMeX1S9lLsN+CjM8GBE3ydeqQ7QVm
	cEjvgiEz4tlgJPwXaMW8IDxobjs8u+jJmk5K/t9Nl+57IL/477AUpqlwqhpo5WSlpYoxQJMbEM7
	EjvZkQYmhXnOpP8Ex4+Wl8mbC8Q==
X-Google-Smtp-Source: AGHT+IEpZ4uYY0OxpZRgywYsVbDjtZe7g9aPxe4qMbr12yKzPvbkxYVNJIXxVCur5zyKIsg1pF8akA==
X-Received: by 2002:a05:600c:1d0b:b0:450:d01f:de6f with SMTP id 5b1f17b1804b1-450d881dae9mr102185795e9.15.1748854303883;
        Mon, 02 Jun 2025 01:51:43 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:cb6:30c6:d7ab:d145? ([2a01:e0a:3d9:2080:cb6:30c6:d7ab:d145])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe5b79asm13831459f8f.2.2025.06.02.01.51.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 01:51:43 -0700 (PDT)
Message-ID: <ac476285-9ba0-48ba-87d5-416bed395948@linaro.org>
Date: Mon, 2 Jun 2025 10:51:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
 <20250527-topic-4ln_dp_respin-v3-5-f9a0763ec289@oss.qualcomm.com>
 <itmvwhcf37bmnpadcyc7kdt7wx3eljyjwyv64s24zwhbr2e45g@76uzcpjqzx22>
 <7f464eb7-469c-4350-a43a-3b99394ad689@oss.qualcomm.com>
 <7icpna4l7z63gs52oa5lqf35puib66wxxmqqul6ezdkhuziaqi@mvkf73zz2iyj>
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
In-Reply-To: <7icpna4l7z63gs52oa5lqf35puib66wxxmqqul6ezdkhuziaqi@mvkf73zz2iyj>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_015145_934649_C9B47052 
X-CRM114-Status: GOOD (  23.84  )
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

On 28/05/2025 10:58, Dmitry Baryshkov wrote:
> On Wed, May 28, 2025 at 12:22:01AM +0200, Konrad Dybcio wrote:
>> On 5/27/25 11:55 PM, Dmitry Baryshkov wrote:
>>> On Tue, May 27, 2025 at 10:40:07PM +0200, Konrad Dybcio wrote:
>>>> From: Neil Armstrong <neil.armstrong@linaro.org>
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
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> [konrad: renaming, rewording, bug fixes]
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> ---
>>
>> [...]
>>
>>>> +	} else {
>>>> +		/* Fall back to USB3+DP mode if we're not sure it's strictly USB3-only */
>>>
>>> Why? if the SID is not DP, then there can't be a DP stream.
>>>
>>>> +		if (state->mode == TYPEC_MODE_USB3 || state->mode == TYPEC_STATE_USB)
>>>> +			new_mode = QMPPHY_MODE_USB3_ONLY;
>>>> +		else
>>>> +			new_mode = QMPPHY_MODE_USB3DP;
>>
>> To be honest I don't really know.. Neil chose to do that, but I don't
>> think there's a strict requirement.. Should we default to 4ln-USB3?
> 
> Yes, QMPPHY_MODE_USB3_ONLY. Nit: there is no 4ln-USB3 (it is a special
> mode). We handle 2ln-USB3 only.
> 
>>
>> [...]
>>
>>> Consider the following scenario: connect DP dongle, use modetest to
>>> setup DP stream, disconnect dongle, connect USB3 device. What would be
>>> the actual state of the PHY? Modetest is still running, so DP stream is
>>> not going to be shut down from the driver.
>>>
>>> I think we might need a generic notifier from the PHY to the user,
>>> telling that the PHY is going away (or just that the PHY is changing the
>>> state). Then it would be usable by both the DP and USB drivers to let
>>> them know that they should toggle the state.
>>
>>
>> If modetest won't stop running even though there was a DP unplug
>> (and therefore presumably a destruction of the display), I don't
>> think things are designed very well
> 
> They are, but differently. Display settings are always controlled by
> DRM clients (typically, a userspace compositor). They can decide to
> send data to unconnected display, they can decide to ignore HPD events,
> etc. Even if userspace responds to the event, there always will be some
> delay. I choose modetest, because it's a particularly good example of a
> delay going to the infinity.
> 

DP link state is handled separately from the DRM state, if you look at the
MSM/DP, you get the following calls on an hdp event:
dp_bridge_hpd_notify
hpd_event_thread
dp_hpd_unplug_handle
dp_ctrl_off_link
phy_power_off
dp_display_host_phy_exit
phy_exit

independently of any DRM state change, DRM will be notified at the end of
a disconnect with dp_display_notify_disconnect().

So even with a modeset running, phy will disabled following an UCSI disconnect
event.

Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
