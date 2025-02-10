Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EB8FC02198
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 09:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3kwjricfhjZBXR0VxO9cEBsZP8y0NicopqBYBw+c7ig=; b=cPJ5znU2NqOQJoCco+R6UQNsdE
	vo0KdwgWAsmZc889N43sYmi3dL9mmUAbGzMVMofQGiLvk+89CIeM1EwPtrLg9QpbZawqf1FZCWaaL
	cqDIPk8zrDBRwMjXsId9ptoNm7BWLqR6NAnH0YGpNFGcbxT+Cx9S36MfPAuOxE/kpNfhXmoReDUlG
	I9lTH2qitAz5jP3qitVZ9Xzov/L65OHeI6ePIBmMJwjqxsNFZVSucBBcz14X5Uuph6aZfbKMUTg+A
	TGd9wNsO67k68EahHMIJX7/PTUT0KnegODEJqJCjVH6yYeReBH70W0lQcNJ1XGEV1KEgy6I4WuZbi
	dk5M0+7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thQGw-0000000Gr9c-3SKa;
	Mon, 10 Feb 2025 09:40:10 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thQFv-0000000Gr1o-3sVg
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 09:39:09 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-38dd006a4e1so1858026f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Feb 2025 01:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739180346; x=1739785146; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=srrij2tofXvckDkWsV9cjxYMgt/c8bcDWt6f2Pgk2Ho=;
        b=nQKjN5vEOn8kwywRk06V0t5mMFsFuapaxgzVhWgZbnPvLn4qslU+orPcPRjHESF9V2
         F9uLPQAm9elb1yNHGIKEGRt7jYdj02oO5yehAL01vbBfvpGWvmuTI/XTJ7/Du8zwUqnO
         bwbpC1JGO6G/k4DFNUnVFayLA48s9GQXuW8p9utOkMpBNWDeh46BZ3PiyBwLjb+jMYjg
         4/gfZHgN7imKC3W6OdI/6xItJZWjPu8Rl39wxEz1SC04wEtxk8YQ5xEYh8FcHPrFW89D
         z5nvB0XbssOIT5hJ9jifUqgnPFvZXftbi/yO6eMB7fQLNcmehk0aWnC4Vy3WlPZRZ125
         lLUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739180346; x=1739785146;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=srrij2tofXvckDkWsV9cjxYMgt/c8bcDWt6f2Pgk2Ho=;
        b=pkVhgtr6FJRnFWx59qKyiOnlylwoHAaTRooW8uVhpUtjGyllYdU/GaxRxskEJK3VzL
         8bFn/aLNByhu2TSiy0LCmY5Ult58nX9koLFv9PuWx6l28jqnPT6JS0Mmm44dd83Ou3SZ
         P1Xez3ufNjrjUh9mq0vijyHe9sm817QlodGl9+e7+XR8xq19WLgFdzpHvXmO0g8kyG9Q
         3E+OVmqL3gzuETh5RMqpfuLQG4Uu31n/dFxnEw5vJfVtkMrbHarUlAT2jp13PN2mgK8H
         HMP2aHlYFW/BqDjuF0lGZc//ahTcwRsGCJqFw3RL3udpenHhJw7yjNdx+GaJbSA2M1On
         pgbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhKKXanBpurHzkxdajeuJFe02joczHr69dF8oQmHdV2iFXYNViZrDoYNO4z+wOd2OxzQlSI1NBJAk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzAorc1ExMHt5wGJvPvn0sg4ChHlVitFfAzT84mPhjAApxGg2Dv
	mmzzrQHSEVXLkMKpUrGIKZA5gSJfQQMFoQBXEoHe617EhoN+Z1j1XzUiQyHjXXE=
X-Gm-Gg: ASbGnctNt2g9PMF9KXPi2aY8fNgPoGXW8qQKdL2U8hBUKpIoNeeHJkLLk6Uw4VeFked
	PYL6oGWQ8hk8BPtypKqnJv80zZiA4Z5MEH7ejSXn1IjJXbYTuwWYx0oV+deXfBy2UUOhqJFuwaa
	ixlAOSfff70suHtuIc0wTga4Cx5ofgZg9g66qXS+loHzkEpEfL7C3rIFQWC8JMXq0zBd7a4sd1A
	q9KqyHBQuUKfpbnuE86KRqCl7nEt1ZWbRMwtqFKsWcdklL6C8gWnHoUe8sQG5s6fGLuTG8YVb8u
	6TPNk5rADclf3u7b7L19a9QDt7DLT6J4PRllSHDFAc2T9PgmV/cjO4vO2Js60S/o/+ga
X-Google-Smtp-Source: AGHT+IEHtY/xpnewLZHMrP5i7kiQ+idRtu5NbOM9k48vStwcKa1bF7nM6dGfWD5FqFw16XgafuQ3QA==
X-Received: by 2002:a05:6000:1448:b0:38d:b2e4:6d97 with SMTP id ffacd0b85a97d-38dc9343d93mr10722664f8f.41.1739180345812;
        Mon, 10 Feb 2025 01:39:05 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:8235:1ea0:1a75:c4d5? ([2a01:e0a:982:cbb0:8235:1ea0:1a75:c4d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390d896d70sm174462705e9.0.2025.02.10.01.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 01:39:05 -0800 (PST)
Message-ID: <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>
Date: Mon, 10 Feb 2025 10:39:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>,
 Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 Nitin Rawat <quic_nitirawa@quicinc.com>,
 Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
 <20250209152140.cyry6g7ltccxcmyj@thinkpad>
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
In-Reply-To: <20250209152140.cyry6g7ltccxcmyj@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_013907_969791_B4786FA3 
X-CRM114-Status: GOOD (  18.73  )
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

On 09/02/2025 16:21, Manivannan Sadhasivam wrote:
> On Fri, Feb 07, 2025 at 11:47:12PM +0100, Konrad Dybcio wrote:
>> On 13.01.2025 10:46 PM, Melody Olvera wrote:
>>> Add UFS support for SM8750 SoCs.
>>>
>>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>>> ---
>>> Nitin Rawat (5):
>>>        dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document the SM8750 QMP UFS PHY
>>>        phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
>>>        dt-bindings: ufs: qcom: Document the SM8750 UFS Controller
>>>        arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 SoC
>>>        arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 QRD and MTP boards
>>
>> You still need the same workaround 8550/8650 have in the UFS driver
>> (UFSHCD_QUIRK_BROKEN_LSDBS_CAP) for it to work reliably, or at least
>> that was the case for me on a 8750 QRD.
>>
>> Please check whether we can make that quirk apply based on ctrl
>> version or so, so that we don't have to keep growing the compatible
>> list in the driver.
>>
> 
> That would be a bizarre. When I added the quirk, I was told that it would affect
> only SM8550 and SM8650 (this one I learned later). I'm not against applying the
> quirk based on UFSHC version if the bug is carried forward, but that would be an
> indication of bad design.

Isn't 8750 capable of using MCQ now ? because this is the whole issue behind
this UFSHCD_QUIRK_BROKEN_LSDBS_CAP, it's supposed to use MCQ by default... but
we don't.

Is there any news about that ? It's a clear regression against downstream, not
having MCQ makes the UFS driver struggle to reach high bandwidth when the system
is busy because we can't spread the load over all CPUs and we have only single
queue to submit requests.

Neil

> 
> - Mani
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
