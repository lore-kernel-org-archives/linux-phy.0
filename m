Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAC1D109024D
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 16:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0NeauFhj0aOyD9wE/5tag6IIkMVC9pcwvZXbR5KEpaQ=; b=Swqtayyv6v1LlqqZ0VEawYkow0
	6TIsKbuWpcyNpU/L54WDVvBPCZvkAT+R0N6Dx51jbnYlGzQzIb9q7NhaW8/c8itVNKSABDb5YuG/1
	h5xTWS45mJHNE++hmC11cGcYp5aowax+WvWHD+LNWCh7xwvy58iih3TlCK2CemmDmKTC+VEogcSNf
	22uEF0zMbT6P6w9j3xfa7vGMu/yan/7Gs/ekUM//gQXkS7buQSejcHvclFC7UWRdBZDc5QR/jQJmI
	lDLLpD1Vt2ftr3uC6Vrxp9W1od+YyEhc+HEyoZ0XgNKkvn7y8x9Tinl1csK/58WRbrM2i0wG2trLZ
	j3G4z5FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3FvW-0000000B27q-14CQ;
	Thu, 19 Mar 2026 16:08:50 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3FvT-0000000B27V-2tOC
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 16:08:48 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-439b9b190easo829947f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 09:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773936525; x=1774541325; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ICb79d2+sHzdxc1vylZi/q9n6G5oRRdWGzOcbuBbee0=;
        b=awbVkVaNYnsX0WjtlLOxcMzZyYAtlVCsIdPPVCGciG3Ps0nzBZkI1k+TdDmS8tmZzx
         3UPHJYkr795E02bMXCsa9kvNd1X8EFM6oFIc2b0UyvQIoB9GUPtiP5Pv0yhtwifOHVuM
         49HXFw3GqVE7xnfbxm0xgF07ujscd2/t8Ax/b6czKrTC4PIdeRKKaC3CnBpr5X/VRjme
         rlmM4xk2BqGF4VYGl7p0nAcjrmMiMuZCxyyi64OlnHaEhsE+m98GwafM65ZeAT/KC6th
         +yDgom6zeGJNfVRUFiHsW9BllpJ9DVvrgyxg8Z0EVwU5q8GUbMzF66eGZ7qcFz7xRnrA
         lDXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773936525; x=1774541325;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ICb79d2+sHzdxc1vylZi/q9n6G5oRRdWGzOcbuBbee0=;
        b=svrbi8Ee80NVTw2llva3CH3Zoys83/zWf3LcbYl/vviB47NW0UcHQee730EF3tvEyP
         e8TAKXCR/8/nGCEfTQT41xgwY6IsX+c0apCwZVMme0zelxsux5GSkUpo9PXxqEYUC/S9
         qBB7HKW6KhUi45Q/yb1b6nQwjT6STvoIUxO9hVLKItcka4pfkbInyQOk7Tr6gumatn8M
         gW3AkeKD73Z3Fcn1Ss4Di330Cd6XAoTY/OGQ4Wpp9CcNZncWb0jkWvVaKd5dXSjnoiCU
         Ye5vmjtVRoSyjtEbuK5E+QYJ8rvuZXyov80BJtEflyU+Ex4wMChBnkPsPDGDAqGbGdJG
         mtyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrMu8Aly/XK/Fh84u80iJb7y8HbLKrVaxafP7pxLaeGkaHt+DOI9n4oJt6EBF5bx2tyNbSK8pQfSM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsyvrjiX7mdOZMr3INOI4V3ZEoquvWphOEuvybJ9zQF0Cn3T5B
	yTXAkc5B7uui4jNbij4E+ED+xoe7yhPnJpd6JRDvALwaU1ckOsFZI68SInnn+FE1DfU=
X-Gm-Gg: ATEYQzx6RkbJj3VJCVy2QoRq9JDVZwPwQewONsoPLeBo1VG8tH4Ag4FC1QEoigRpWqo
	vP/cRtsf1TO4LqgPhf/ulq6iJ/lhVF0OIcJVFyIWRiNSzKF2qQDJca6mB5aIwnPOiBcmTuy6eDP
	r3Qib7N43m8M00ZAP3u94notqUMkmvq/MYLG1L7+hjPVcu/wZJfvegwyYkHu9GKcR27XFlQTrU3
	Md5NrEVken1IKzPelrb4I4GIkqAi/J+xylDZV/+8b9QoN3zDyEOgnJ0Owh32009h5ID+huGCtE2
	ONXITxb4rErWfH5xoKTlvmYkvWcxaEk7lwFuvgQtgOhpEkAULOz2rq6NAniq3Z2YynzZ2tvwBq5
	OJNj++5ne2lGOCD4UJuQIwS2wyznfLE68WxcBrzlAGNmYEJeuqds6Kf10YpfdJ92rH5FQfTO/Jk
	LYdQgJgfXyr7TjrhU7ZxDw+opZ4eO65aiEvDaOk1xKBY5m0BsDUd1rabVGjvFC+9zZ9p5UYLPvd
	k+YbDw=
X-Received: by 2002:a05:6000:2511:b0:43b:4faf:a49f with SMTP id ffacd0b85a97d-43b527cb31amr14507158f8f.50.1773936523323;
        Thu, 19 Mar 2026 09:08:43 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:8e54:fbaf:8cb6:e9f7? ([2a01:e0a:106d:1080:8e54:fbaf:8cb6:e9f7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51899617sm17403918f8f.31.2026.03.19.09.08.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 09:08:42 -0700 (PDT)
Message-ID: <7eda931a-f30e-4e01-a130-996ec7f450d1@linaro.org>
Date: Thu, 19 Mar 2026 17:08:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
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
In-Reply-To: <f3c62284-ac78-42c6-a4f0-cd984b7124cd@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_090847_785132_8283B8E9 
X-CRM114-Status: GOOD (  14.91  )
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

On 3/19/26 16:18, Bryan O'Donoghue wrote:
> On 19/03/2026 14:56, Vladimir Zapolskiy wrote:
>>> There's no reason to remove that from CAMSS - it would be an ABI break
>>> in user-space anyway.
>>
>> If technically CAMSS CSIPHY could be excluded from the list of CAMSS media
>> subdevices, then for the sake of simplification it should be done for all
>> supported platforms in advance, such a change will be independent from this
>> particular phy series, and vice versa, this CAMSS only driver change will
>> prepare a ground for media-less CAMSS CSIPHY device drivers, hence it shall
>> precede this particular CAMSS CSIPHY series.
>>
>> For backward compatibility with userspace a noop stub will be good enough,
>> it's not an issue at all.
> 
> The standalone PHY driver doesn't require removing the CSIPHY media
> entity from CAMSS. They serve different purposes and coexist - its important to have a NOP from user-space perspective for legacy and indeed for new implementations.
> 
> How the PHY gets represented in the kernel is of zero interest to user-sapce.
> 
> That said, stubbing out the media entity is independent work that can happen in any order and IMO is a separate debate. Whether or not CSIPHY init sequences live inside of a monolithic CAMSS driver or live inside off a discrete csiphy driver is not related to the media graph.
> 
> Happy to have that debate - and if indicated, carefully apply patches separately.

So what does this actually solves ?

Neil

> 
> ---
> bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
