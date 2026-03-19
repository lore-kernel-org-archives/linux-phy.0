Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49C6C1091901
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 17:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5EMTz3e//SLc77opVZYUqK3tXF+sD8U1gOsu0Ku6HI8=; b=HwbyxFsSkFUhQ6pGBb8W4q1Sn/
	wwrNEnvIf0G+56QxsHjtqlUV7VMmmAJ7VFfXVG5lGujny3APbREX/6voxBb7PbumjbGnfFUByA7YQ
	Q1D1bJvjiQssYAa6wwwkl8VDvbSg2gG9HXVurfqRcIU3KHZ1UZp9els+XkBs6BjgkSfpnG4+Guh9x
	yd8BK+ZRQUyaiIyYUEIS/TC9Ck/aFBR1SJTLKfRKqebt7nb8OgysK/Pd4ZJMMtXQEH7IsJ5+6BLnJ
	mkCucArfRg87nQ9FhaQmjT6uuGUcmusuIh21xIXjJqgNbIp53uBVOcCODniU/NInG20Z6dh+SbbCZ
	qBpPk7sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3HLl-0000000BDxv-3knF;
	Thu, 19 Mar 2026 17:40:01 +0000
Received: from mail-wm1-f45.google.com ([209.85.128.45])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3HLk-0000000BDw9-0CEQ
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 17:40:01 +0000
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48540d21f7dso13454985e9.0
        for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 10:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773941998; x=1774546798; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4DcGpNehVMlOMwMq5jxWCnF0zEBU9hVO79S4un3Z6Go=;
        b=niLGANytlINbL1u9IYeD5BOUngOYGWJZmXAzyfqEzSpRnIA9uO2hiEAFtkqV9k7BKm
         xkPylzLlIQ6jd66l3k9zCJTsUmQNiGq4hiORSeEV0Q3f3GYEY+JDDgStAtLA8XYtcyFP
         t1koLgI81FSIGVvXTWGzm7H3gtiBQjO1xFq8z+u74Lx2FcuMkehyGek867HAgUL31nOP
         +NTGTvtKS1rCvIzOckyCqrKrtmUJ8eRFiR1QhxKBbouJIikFN8rIyy8OoG5IijFMttUx
         j0xYuJupejiWaPu4StW6Tw+9UIkaP2YS+V72TyjKkgSFvT8LvV62Cv1msXI30xkN2T+J
         4H/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773941998; x=1774546798;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4DcGpNehVMlOMwMq5jxWCnF0zEBU9hVO79S4un3Z6Go=;
        b=F9Tn+Zw+WH4i4pA5cINhRHjmOE9v+lS8m6IfgZbAaqUJIF+Xt8QQ2024gWXVjS5EgY
         5xFnHeXJ5bplTMwFXcyTrb84KQwvUxBuzXbHZsD8a5uzqz0DE5fgUIu/D785QdcW6DNq
         KraDBL2wc9iDppnYohNFyP8BggGWswaz2KMLifSAk1NhyH5A0mEW+8BExVZ7nPzHn9ca
         AeA7C4WypyEMrh+VC98FLNJOCSZ/WV5+FAr1Pr3pI9dWlDWSbtYA6ad1dywg4BgmYH/m
         iyb20PMscrNYzQNxyeYSK/WA+5yhDm76NYkjRgmYIEnAigabhSJ6vUtqbiVIEjM2b6xU
         pK1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUWqKRgWU0PXOxElgvl6Nj9hpD/B9knd3S9wXhU83b82NjzgLh9jxrnRqDn2y1n31DmJnONoboemew=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy075E1TJdEcfy5sSKy8QBBizw8RmJFiDGolZpX9QZ3LJJ98Qju
	v01RLeYccXNd2JKpOFXXVdEF0V4Zr1N9xvz6i+qyb2YmHesAVaKU1O4mUq4nJpnOITkwnKRcSug
	ZXHm3jV+EDg==
X-Gm-Gg: ATEYQzyTIyKH9kzxwW7OUu5foox/Fe/MNZxQl32+ULz6Kjgh6lQyi8XAbV1mIDdqkgV
	5F/NrY5wcHBQF2IVIgikKiCvvTm2JCg6PxDm2wsHfQ5qiLuM3cLy4baIC9rVnTtR7IW9sIxnLk6
	MriR/hnro5v7K6yLjjEydBb7/n2FsMyoyVS2XuIh+n2PszDIvfhVjeV5ikZFiaLMBcMr+JNlQqk
	2rKF3xn/nBsi7isgTRH/8QfTQEVrzsO7VFYyOh5y4JatfOsVnNrvjkjVeClCbzl/M6k/z/dF61I
	Hey6h7hq8rq50dlhg2VJyPsJBbRtRbLeXDxY0C/kbMeyOWhEiqrAy/s58BRwGTDzzVYHQouwV1h
	3BAHiFLa4faJrev8kdnw/lkU6Vp3IgoPBwRk6L+pS/7nRLHbRgGskEbudGiCrulCW/fXcLvQCDb
	pJtCyIeTFp2QmlfTfw4hTlcx+BoWm7sDuiUwxG5ptbuFe4D3iDGvkprlClKbvwNnPn+tXh3mhRf
	jra
X-Received: by 2002:a05:600c:3d90:b0:485:4535:73d with SMTP id 5b1f17b1804b1-486f442e607mr132291005e9.2.1773941997619;
        Thu, 19 Mar 2026 10:39:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:55fd:bfb9:c88:691c? ([2a01:e0a:106d:1080:55fd:bfb9:c88:691c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486fc4d90f4sm49410245e9.1.2026.03.19.10.39.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 10:39:57 -0700 (PDT)
Message-ID: <117d9294-87ce-4060-9c8b-71190b649e64@linaro.org>
Date: Thu, 19 Mar 2026 18:39:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
 <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
 <26XTdUyQTB41Oc4D5HnMtSm_QpZRjlkljQRJVw-u1Zp3Ltn9s4LVU-LQkP6drdl3Z3GGssLCCbsVYPFEqssHcQ==@protonmail.internalid>
 <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
 <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
 <d6616fc0-75fb-47e2-96cd-ae81fa1a8e82@linaro.org>
 <f3c62284-ac78-42c6-a4f0-cd984b7124cd@linaro.org>
 <7eda931a-f30e-4e01-a130-996ec7f450d1@linaro.org>
 <a42f837c-4b90-4e0f-a98f-793fbd20a140@kernel.org>
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
In-Reply-To: <a42f837c-4b90-4e0f-a98f-793fbd20a140@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_104000_133048_1023DDE6 
X-CRM114-Status: GOOD (  21.88  )
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

On 3/19/26 17:56, Bryan O'Donoghue wrote:
> On 19/03/2026 16:08, Neil Armstrong wrote:
>> On 3/19/26 16:18, Bryan O'Donoghue wrote:
>>> On 19/03/2026 14:56, Vladimir Zapolskiy wrote:
>>>>> There's no reason to remove that from CAMSS - it would be an ABI break
>>>>> in user-space anyway.
>>>>
>>>> If technically CAMSS CSIPHY could be excluded from the list of CAMSS media
>>>> subdevices, then for the sake of simplification it should be done for all
>>>> supported platforms in advance, such a change will be independent from this
>>>> particular phy series, and vice versa, this CAMSS only driver change will
>>>> prepare a ground for media-less CAMSS CSIPHY device drivers, hence it shall
>>>> precede this particular CAMSS CSIPHY series.
>>>>
>>>> For backward compatibility with userspace a noop stub will be good enough,
>>>> it's not an issue at all.
>>>
>>> The standalone PHY driver doesn't require removing the CSIPHY media
>>> entity from CAMSS. They serve different purposes and coexist - its important to have a NOP from user-space perspective for legacy and indeed for new implementations.
>>>
>>> How the PHY gets represented in the kernel is of zero interest to user-sapce.
>>>
>>> That said, stubbing out the media entity is independent work that can happen in any order and IMO is a separate debate. Whether or not CSIPHY init sequences live inside of a monolithic CAMSS driver or live inside off a discrete csiphy driver is not related to the media graph.
>>>
>>> Happy to have that debate - and if indicated, carefully apply patches separately.
>>
>> So what does this actually solves ?
>>
>> Neil
> Per-PHY voltage rails, per-PHY power domains and per-PHY OPP scaling.
> 
> Using the PHY API instead of rolling our own, as well as separate nodes in the DT.
> 
> We've been getting away with power-domains, opp scaling etc by sheer luck. The feedback from the list alone now addressed in this driver makes the conversion worthwhile.

The PHY API doesn't solve that, having proper nodes solves that, you could add a separate csiphy node, add a port/endpoint between camss and the csiphy and attach a camss aux driver to the node, and it would have the same effect with little code change.
And this could be done for all the CAMSS hardware elements incrementally, and if you wish the move the electrical phy part under the phy API then you just spin a PHY aux driver controlled by the csiphy media element.

I understand you find it simpler to use the phys property in camss, but it has plenty of drawbacks like not be able to describe data link properties specific to the CSIPHY properties or easily describe new hardware layouts without having a fixed association table between phy-names and whatever CAMSS media elements interconnections.

My question would be that if we were to completely split out the CAMSS into several separate nodes linked with port/endpoint graph, to which hardware element the phys would be associated to ? is there a fixed connection between a CSID and a CSIPHY ? is seems the CSID gen2 & gen3 can actually connect to different CSIPHY meaning a CSIPHY is a not simple electrical PHY but can be dynamically connected to different consumers.
There's no way we can handle that with the PHY API.

Neil

> 
> ---
> bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
