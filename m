Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1462DC0218D
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jan 2025 13:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vq31A1v0NWxGrxbcusBnIalqa7+YkdBuzZngwE40Py8=; b=PVjFq/3pwr67jsaeKdnh//HnxT
	J7QxYRMNCuDh4ukt8dF8KKsIe1am+xBLJa7uLynV+9N/XtG/205p4rJgDIR0yyoZEjUDcpFs8o60s
	QDilGr6VgBAIv33v+zgt7/pknq3oXGzmwrDGHNXo/FLq3zQnot9mCbHQB9uTDZZ2YfVmXiuKTcDiF
	wvIu66s+CQFyTcVJbPqaO5+QrVs/h3XuU6cibbhhePv4tliLuU72N6mxGiSkvumBXIefyxushSzu2
	QMVoVRZmZsaDwyxl4pcflvXCICge9G5cfXnvuRfRNbqz+h8yO5yHtRS7HFs+zPzjJBK2oEwALAQYk
	+W9hmm9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td8KU-000000072Ch-0q0U;
	Wed, 29 Jan 2025 13:42:06 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td8KQ-000000072C5-13no
	for linux-phy@lists.infradead.org;
	Wed, 29 Jan 2025 13:42:04 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-43625c4a50dso46100125e9.0
        for <linux-phy@lists.infradead.org>; Wed, 29 Jan 2025 05:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738158120; x=1738762920; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AP7k7h9ea/UBkMvbKpIMPEYspWi5bqA4E3UuVud4pws=;
        b=oUylY1H1sehWVUK2/gZgrwWvW7r4Wu4IEAsojq1zU8v9HWTkpeJlbqcXnrb0iqPXil
         UmnqR7GhMwbuVq1GMozJt3WGlgvRxbA5Ki19uGdgw72bulRLJ2hrtZDbOiDs/8dgky7R
         nA+i6XfAok7jT8nWO3jvEhbM/RYh6ykahhf3XrOhH8rLiT9HhkyfJmTbderAG8UJpP7d
         bW68iF+h7f5cvSF43r+MYz3G/7b4b1+J3uoMKICL5xxCZGMhYwvrLBhXdKkBJ5H4VKfg
         emEzorP0II8xFjKwaky3JGLJHrkcrdH8uw+fapVtXO+Id/1nFWfeuUbD3tYE5SUKHKAf
         1J6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738158120; x=1738762920;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AP7k7h9ea/UBkMvbKpIMPEYspWi5bqA4E3UuVud4pws=;
        b=XLgobBt6IQ6bnK4xAXKdTbzHTyfGLCkoPCwNAiuXsdM300+HmdxIAlBDvB2hlQRLBf
         WyhrtL/1rbBDI7mYp3BV2DMir+SxF+3I7K/5mDx93rhiP0D5DvqrnK724lLrGMZvkrCa
         bWC9tYSMzFqwhhIrfdOcbXseDUOnLhaEdE/G4RH1zU4QSZJ5c9kSe7nhqMdSlPrzx63/
         iF3HVlu3xJYSYcbbs6buqJhP7kN4DA0eyCrOB20M7422am+HGoyBpkmkQCEo/63Ss47p
         W0uNFgWTXTqCvbtLOx1+3a4Yv/ms4nLMl/DepR0WuyJHM3Q8SdpflwQIt66sOrdCD8M6
         FRdQ==
X-Forwarded-Encrypted: i=1; AJvYcCV32r/QDEGQzaC42M7LtfTdsBPZCSpFaJPm6s0/Fo48dwjr9j8PsVpJ1QgVLwXu09BG1IsEQ303mwo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8sXEIAYpaUf/Ayz11dpvOEyfQUA7s/xqF3+OEopU4WGVbbGXa
	LdX46PL1ayGj/GwrKppC/Blyz8f7xK3OtiVlFvK3w3493QVbC6KkyYVxR7RrCe8=
X-Gm-Gg: ASbGncvcz1mwIqgEZ9IgD9zMhZCWVmAnM/+TUp/V1E8pXvWhPE5B5t4idEdr6e8O1RD
	Yev6S36Ulx2lnj/VC2VyozCZ4V7JcikjoRdA0WsOfdZBbC0WLaQNG8sEOqai4uf1/TKrKZz2IO1
	sv97eb3JPORdP1n2EIOiB5MPRhoJ1Ij72/NENXBYYooqwopg3N1RJVJJYA4CNoceNkUjbmY6rV7
	rnc0vA5wwsWvF5hFC/LplgQT72pr4X8nYuFrQBFIzYMdTPCzlHf+VukDhz/C7009UkYgdDMUGrX
	Q/gsoE7iDhven+SeNuilUygxpjCstBX31ufRFjDZyGr+Bcf9NvDHfWWY1CVgXCZxpTAt
X-Google-Smtp-Source: AGHT+IFoLab9y7f/hkK62VeIWpo1/kGfbHUwJJYn20zRpDxsOGLqCH4IoYNW0DtIYMDLAzAlSW1dSw==
X-Received: by 2002:a05:600c:870a:b0:434:a7b6:10e9 with SMTP id 5b1f17b1804b1-438dc3cbadcmr27767255e9.17.1738158120248;
        Wed, 29 Jan 2025 05:42:00 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:b25e:a614:863b:566e? ([2a01:e0a:982:cbb0:b25e:a614:863b:566e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc24cefsm23474375e9.15.2025.01.29.05.41.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2025 05:41:59 -0800 (PST)
Message-ID: <9d489930-9d2d-4b71-9b21-9c7918257b7c@linaro.org>
Date: Wed, 29 Jan 2025 14:41:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Qiang Yu <quic_qianyu@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org, p.zabel@pengutronix.de, abel.vesa@linaro.org,
 manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250121094140.4006801-1-quic_wenbyao@quicinc.com>
 <20250121094140.4006801-3-quic_wenbyao@quicinc.com>
 <CAA8EJppXQpDrdXzJsTE7HWs=POt7yFAw0JVZFabN6Ks3fhZiWQ@mail.gmail.com>
 <a2cc5a5a-6cbd-7564-a8df-8af2a652de2f@quicinc.com>
 <ya27ma6iah7ts6sj35payj6ek4z7m6y5v4pnxd6wtqrp3cbyta@ypvrzwa4bnfv>
 <188a9efd-718e-4ac5-b89a-29f2713e1dba@quicinc.com>
 <20250124070829.oar3hlkshkpam57d@thinkpad>
 <88c29161-17a8-40c6-a94b-c894de15ca37@oss.qualcomm.com>
 <df1f825f-66a4-4bab-9ca4-90d594f2cb36@linaro.org>
 <d928e662-07ac-4255-8d6f-adeaefb3db46@oss.qualcomm.com>
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
In-Reply-To: <d928e662-07ac-4255-8d6f-adeaefb3db46@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_054202_305255_69424686 
X-CRM114-Status: GOOD (  25.79  )
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

On 29/01/2025 12:29, Konrad Dybcio wrote:
> On 29.01.2025 9:29 AM, neil.armstrong@linaro.org wrote:
>> On 25/01/2025 14:10, Konrad Dybcio wrote:
>>> On 24.01.2025 8:08 AM, Manivannan Sadhasivam wrote:
>>>> + Mayank (with whom I discussed this topic internally)
>>>>
>>>> On Fri, Jan 24, 2025 at 02:22:01PM +0800, Qiang Yu wrote:
>>>>>
>>>>> On 1/22/2025 5:43 PM, Dmitry Baryshkov wrote:
>>>>>> On Wed, Jan 22, 2025 at 03:17:39PM +0800, Wenbin Yao (Consultant) wrote:
>>>>>>> On 1/21/2025 6:36 PM, Dmitry Baryshkov wrote:
>>>>>>>> On Tue, 21 Jan 2025 at 11:43, Wenbin Yao <quic_wenbyao@quicinc.com> wrote:
>>>>>>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>>>>>>
>>>>>>>>> Currently, BCR reset and PHY register setting are mandatory for every port
>>>>>>>>> before link training. However, some QCOM PCIe PHYs support no_csr reset.
>>>>>>>>> Different than BCR reset that is used to reset entire PHY including
>>>>>>>>> hardware and register, once no_csr reset is toggled, only PHY hardware will
>>>>>>>>> be reset but PHY registers will be retained,
>>>>>>>> I'm sorry, I can't parse this.
>>>>>>> The difference between no_csr reset and bcr reset is that no_csr reset
>>>>>>> doesn't reset the phy registers. If a phy is enabled in UEFI, its registers
>>>>>>> are programed. After Linux boot up, the registers will not be reset but
>>>>>>> keep the value programmed by UEFI if we only do no_csr reset, so we can
>>>>>>> skip phy setting.
>>>>>> Please fix capitalization of the abbreviations (PHY, BCR) and add
>>>>>> similar text to the commit message.
>>>>>>
>>>>>>>>> which means PHY setting can
>>>>>>>>> be skipped during PHY init if PCIe link was enabled in booltloader and only
>>>>>>>>> no_csr is toggled after that.
>>>>>>>>>
>>>>>>>>> Hence, determine whether the PHY has been enabled in bootloader by
>>>>>>>>> verifying QPHY_START_CTRL register. If it is programmed and no_csr reset is
>>>>>>>>> present, skip BCR reset and PHY register setting, so that PCIe link can be
>>>>>>>>> established with no_csr reset only.
>>>>>>>> This doesn't tell us why we want to do so. The general rule is not to
>>>>>>>> depend on the bootloaders at all. The reason is pretty simple: it is
>>>>>>>> hard to update bootloaders, while it is relatively easy to update the
>>>>>>>> kernel. If the hardware team issues any kind of changes to the
>>>>>>>> programming tables, the kernel will get them earlier than the
>>>>>>>> bootloader.
>>>
>>> We're assuming that if a product has shipped, the sequences used to power up
>>> the PHY in the bootloader (e.g. for NVMe) are already good.
>>>
>>> If some tragedy happens and an erratum is needed, we can always introduce a
>>> small override with the existing driver infrastructure (i.e. adding a new
>>> entry with a couple registers worth of programming sequence, leaving the other
>>> values in tact)
>>
>> Assuming Linux will be always ran directly after the bootloader is a wild assumption.
> 
> Situations like
> 
> [normal boot chain] -> [... (resets the PHY and doesn't reprogram it)] -> Linux
> 
> are both so unlikely and so intentional-by-the-user that it doesn't seem
> worth considering really.

In embedded/mobile/edge world, definitely, in compute/PC-like market, not really.

You'll have people add some custom bootloaders, hypervisors, who knows what...

> 
> If whatever sits in the middle *must* hard-reset the phy, it can save the
> register state beforehand and restore them after the reset
> 
>> Yes, we should make use the noscr if the PHY is always programmed, but we should be
>> always able to reprogram the PHY entirely to recover a faulty programmation.
> 
> We aren't considering any possibility of faulty programming - it's either
> programmed, or not. And if the values configured by the bootloader are wrong,
> the device's firmware is considered faulty.
> 
> Most devices probably follow the exact same magic values as our reference
> boards (though these values relate to analog characteristics, so perhaps not
> *all* of them, which is another argument for keeping the BL state) and these
> are extensively tested internally before any production devices make it out
> the door. Any updates deep into the product life are most likely just "nice
> to have"s and not anything critical, and as I've mentioned, we can still have
> overrides with the current logic inside this driver.
> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
