Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21F49C83F25
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 08:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MAIyPiX5bV64AVSLo2klqYWehmPfxw60zDUn8I5fxcY=; b=vsWYTP7+Sr9b0/Ah3fPXULZYy1
	LXVfhJJqhS+kHNBSjMgqRfiRK/wRDPLfGlRPvKr+VoKATMF/txiPWffOjsKe2zJmQZLczVhxMnqxg
	q5l5n0UyIp0tFCb0FsUhUQblxXrr6IUMfEjljXNbul77qQ6ROQngOf58FHk8S94OpfvUPbBJL6E3P
	OI2xq1pOs5M4SL4L8+2cWjq0e1lWcNwk6gTwrR/zdRLWqHHqAQk5zPfu2ZrtbBP6XyiWFJUv1JqgQ
	Xf7yzG9QL5vGdA5Fhw51bWa4pDjKVaYynVH+RW7T/EskcTEUlVsRzaD5x6+y/cwp/R0biIsnst66d
	RdwApHdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueUZY-00000004LHb-3bA8;
	Wed, 23 Jul 2025 08:11:32 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueUHD-00000004IPJ-01iq
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 07:52:36 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3b49ffbb31bso4112426f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Jul 2025 00:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753257153; x=1753861953; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wJr/hw1dHQH58OkL2qscj1xdCFrGFtnGhH2Sn1vmVSA=;
        b=rSGb/I4I+FGTbNKMTldcZ4YlghhzJwbc4DTyBtYbVxnNxwfquWpopBCmli04U+G6dM
         x4akROnnGjbs4Un7BU1vc3Y/2RFiOacnm/1RofSgk/4uGMZg26qpnlVVr7GD3iaTXs2z
         hbaabcgumK3SDdAMryzI7q5RBXXv4QTRLu5uCFbJZ10jjebMmU1GYlWWJ6w5T6ND2nbs
         tY/xkK2spSQ0HRXUHngt2a7IYNO3n+1AT1dJPx4M/FaNWVXWwlyLoylERpcgDcN7eWKr
         ZbBe+6AR8Z+qD1qQmNPh4SwTIKOKgrs4nrZ8fT1kM5x7JNmbOww3pYzGNqgfiqrg8EJL
         I6MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753257153; x=1753861953;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wJr/hw1dHQH58OkL2qscj1xdCFrGFtnGhH2Sn1vmVSA=;
        b=BeVxkzFSAEnMRZ+yCGAkHvLWATAzV5Jah9WCIjgAR+5TCmc1yOHatRauX+u47XbSID
         EckrCjZnbc7pinqolO2HzaAmRCAYESbHj62J+34bRExgv5tKiHt2RbpB9lZ+4ffvW6P/
         A9TD2WS4qNj5wR6aP+NZfALhHKGDijlGpL7tX/9a7CfZo21xH3ziLeXXmdFoiLNelcL1
         DYYXkWtenxjZ0SPT30dMtZaIA0TR7TGRmSg6NGSxvMzSJ3pQjvXe4Cw3+MEJGphUv/RM
         d8gvlrgv2Rlx/ReV3soOJ5GzuopMbduuZmEbJo5bP8vWVFVmsOEjbA/9BywV6yGSrCV8
         Z5jQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmN/1X8ltNlIKgAvdTNXF3MsJbtvQI3FJAFifHScostpzi4JqKJfYLPpiAVlWOUIocrV8vBJzXxFA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPMCeUG8HWQd3Cysg75fSlDhN5pAaLjLcAxsiSJXmDepf+oqxs
	zDtXiwcBjwOdHXAn9GUCINEOCR1xgwNxgZ9L55AlXX2qdx7mVK1N6Z0lIsqitc0xSX4=
X-Gm-Gg: ASbGncvo2Wg9feaxwx4MKyzu7mG36YJQXHugRGcFhXTraO+itZ8JVRSJXJEqFr193jC
	iEEQFM8dr5KPJOs5pF43bN5FZwSQ8S/XUVB8cdFslHtGvkBxU4ofbXxFwgglVNAIO1VxOcOvPKW
	0meHJV5qul6xAFf4MFiBZLB3VhB0pvGkvds1qgOZniVOOKWbryrhFbSqknadwN0Cqnt27LIRcdV
	VIXbnx4pfjHKdom5/9BS8LTELIUjmxKvGiNVQkSbiKkgOrgCt7cKxN68NNCxehTivwvcC9Ts0jW
	FI+SsJvmvrAgPjVjo+iD5nTt6bxS+Q3I9QHOBhPjC+nQH8Q6UrvnK+6d/dX+viUq3xIcqvy79Lw
	Ms29TvU+TsijNh1XdNI3UtYSvNbdI5skIaLFSDhAxSRuAQHjXpJjan8Wb8/HwjOlmFPBrNGSpOw
	0=
X-Google-Smtp-Source: AGHT+IH1+KGiK7+CPpG7hfWiA/jq/1R1SSgKNRLgfm5//YxJ7f7pwzncw9zDFJZ9mt07q0lMm4XQyQ==
X-Received: by 2002:a05:6000:4024:b0:3b6:1630:9204 with SMTP id ffacd0b85a97d-3b768ec8a1bmr1439039f8f.19.1753257152837;
        Wed, 23 Jul 2025 00:52:32 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:8813:2f0d:f9e0:5294? ([2a01:e0a:3d9:2080:8813:2f0d:f9e0:5294])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45869199605sm14357735e9.14.2025.07.23.00.52.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 00:52:32 -0700 (PDT)
Message-ID: <d1c67441-85d6-42d7-9ace-c4884f767dc8@linaro.org>
Date: Wed, 23 Jul 2025 09:52:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 1/2] phy: add new phy_notify_pmstate() api
To: Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Krzysztof Kozlowski
 <krzk@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, kernel-team@android.com,
 William Mcvicker <willmcvicker@google.com>
References: <20250703-phy-notify-pmstate-v2-0-fc1690439117@linaro.org>
 <20250703-phy-notify-pmstate-v2-1-fc1690439117@linaro.org>
 <e2lhm237c3xtbdjux2wuesq5fwu7nky3w7oq2fnsgn2pqcg5kh@xhxktriooyes>
 <aICKM-ebp9SMAkZ_@vaman>
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
In-Reply-To: <aICKM-ebp9SMAkZ_@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_005235_038873_C4F81C07 
X-CRM114-Status: GOOD (  18.06  )
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

On 23/07/2025 09:07, Vinod Koul wrote:
> On 22-07-25, 22:04, Manivannan Sadhasivam wrote:
>> On Thu, Jul 03, 2025 at 02:03:22PM GMT, Peter Griffin wrote:
>>> Add a new phy_notify_pmstate() api that notifies and configures a phy for a
>>> given PM link state transition.
>>>
>>> This is intended to be by phy drivers which need to do some runtime
>>> configuration of parameters during the transition that can't be handled by
>>> phy_calibrate() or phy_power_{on|off}().
>>>
>>> The first usage of this API is in the Samsung UFS phy that needs to issue
>>> some register writes when entering and exiting the hibernate link state.
>>>
>>> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
>>> ---
>>>   drivers/phy/phy-core.c  | 25 +++++++++++++++++++++++++
>>>   include/linux/phy/phy.h | 25 +++++++++++++++++++++++++
>>>   2 files changed, 50 insertions(+)
>>>
>>> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
>>> index 04a5a34e7a950ae94fae915673c25d476fc071c1..0b29bc2c709890d7fc27d1480a35cda6a826fd30 100644
>>> --- a/drivers/phy/phy-core.c
>>> +++ b/drivers/phy/phy-core.c
>>> @@ -520,6 +520,31 @@ int phy_notify_disconnect(struct phy *phy, int port)
>>>   }
>>>   EXPORT_SYMBOL_GPL(phy_notify_disconnect);
>>>   
>>> +/**
>>> + * phy_notify_pmstate() - phy link state notification
>>
>> 'pmstate' doesn't correspond to 'link state'. So how about,
>> phy_notify_link_state()?
>>
>> s/phy/PHY (here and below)
>>
>>> + * @phy: the phy returned by phy_get()
>>> + * @state: the link state
>>> + *
>>> + * Notify the phy of some PM link state transition. Used to notify and
>>
>> Link state change is common for the PHY. So remove 'PM'.
> 
> Is it really link or phy state?

It seems to be a link state, and I think adding a way to force
a link state to a phy, which is basically the role of a phy,
more coherent.

Neil

> 
>>
>>> + * configure the phy accordingly.
>>> + *
>>> + * Returns: %0 if successful, a negative error code otherwise
>>> + */
>>> +int phy_notify_pmstate(struct phy *phy, enum phy_linkstate state)
>>
>> I think you need to use 'int state' and let drivers pass their own link state
>> values. You cannot have generic link states across all peripherals.
> 
> I would avoid that, people start overloading this if we let it keep
> open! I would like to avoid the api -(ab)use
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
