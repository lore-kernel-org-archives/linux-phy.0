Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CD3BC54E90
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 13:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w3XogQTMHReYED2eF36FcGykNl39fGa80k5vxQyXAeg=; b=B3LWJbRYW4Wt0zyVhPQ/Oy4TUJ
	K8yPTiwDOOaRdMRw2GmdtctPIKt0YhrnK1Xm/hKsECl4H4y0xu95WQpzJhNpBJfL+vVpitt0W10sG
	V3dN5Scix42nVzwEZdMXe6855qJLZGK1p3S898JbcQgFJxipofguQN9rdeFl5lW4nHS+ri3I76Dus
	riRvv2aIg1z10Z36Pdzq/fwYDGMeYnXhBW91qAkK56QOtsTztm3nodPCo+iXWb97Co31ALMLM7YqT
	s+7V0QBlCkv8KSpdC2qpuNFSlNiMm7GBdselFomPwbn0q+gTuwJE+dQg+tiXwvsXQMQDVo/GvyuTw
	uo5raRAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI5YZ-000000013Xn-1Jbb;
	Thu, 22 May 2025 13:01:55 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI5YV-000000013Wp-3PaE
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 13:01:53 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3a374f727dbso3259419f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 06:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747918909; x=1748523709; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=85ibc1rkewyOEAiRREZNyXGvEN9PNRSpUSRlKODUCCI=;
        b=Z6m6uXxgLxmDuW9baasJHOA9qJdh605X7EffGXoNX3bV+JWnEoLaWYrmzX7HoxnRq3
         oyY8X6A1qMZPkxKhmYQkAiZH/dda64G75j+Y64A0zAymMgqYbxx8IDE4DaUjsw+zSllU
         J9dI+EaQsky73LHhflLwoqAfbbETQ9XRZ3QqxVZ66NGXLvBKpBYFQUVEEK555NNbTYKK
         vhph9+bqnS0DXnweHu7vJ81Tofx6tx7pg1SRdfYdSzMgc/A1xUs4V2T93ztxnkP4qC7Y
         lL1eMDixP2qFN5zHr1NS6UytmQq/ScTfmo5q51IUbbpmBLIiWKLHqun8s/NvwjUxQFX8
         t7uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747918909; x=1748523709;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=85ibc1rkewyOEAiRREZNyXGvEN9PNRSpUSRlKODUCCI=;
        b=wJ/UP8an2bJOiVt56VWiH2Gu9NRxXjvincbwJ9KAnW4iOJ7tnfUG2vQlLojS7C9qNo
         yKcuBnRUoClcktq9yIR0y3sZKmycof7yQAfztBXLtXnWPLU11jUdRf+hQlGYzJ9wmuAN
         4p/QiscEmEdntFAGO3nN/dI75r5TAmGXTXvoItKGM4kNEHMUOT4U46y1OgOhgj2usd6B
         mrjVUYtZZhpYaMXTGLm2P2eeRNqJAiWcxk9YnvYaZoS8WnP833jTIb6FXl3oUO4XI27c
         YFhd3E4rzrneXtZwWDCD3gP4hUmQ50g6HmoE+jp9yKEMJPyAf2VtZNhiEYbUyUSYFhQk
         pxXw==
X-Forwarded-Encrypted: i=1; AJvYcCXZUb77cVMpX9SMFvp7gHF/WuPZuBRFHDNuGoFF88Wqm9sFPRh3nsUbb1UAXoHPyA1UFPRLqmGgjRE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzwfQF9CTgWBChiADmuwYLxw8C8v7VMi7LDZgdRsBcJWkGzjjtd
	UNN5X2kMWKE6VNdzBA/DRATnux/t2N2yKNsD1P02F+0iby/QWYiUguAVIDPJIxRrViY=
X-Gm-Gg: ASbGncvcl4gKaNM9UpMt2qeETNvf2iG+hDqJyin72SRI2htYO938qQWoi7B4EwOjCNO
	3Cho3SnDPq0+b8HDtVucrCwuw4H/+7Ab5HVlpYTi17RHYxTrV0YAOkJfsj35VJhjDBBI5mBN0Jf
	1qRHFWtqZfaBO29319a5x9MeBGipf4Aukkshaic3F7l5davApelyfjW4/jypoGLZIaeEMVeTVu9
	Z8ufwg6fJfERORZLv5hJVOJ+EffoXVuWiq+tGsxNUrmllPEw9xXGH3CiuXJqL1tZ62mWUEew1cF
	k+lQCRYVKPFWtIJhNbkcgUsVMPUEVE7X0Iz8D3c9SNkY1tXrKpf1NKmgwW3U5cc0oONPmDPyE2G
	i0skTeTjx+aNFBSr3TEQg8Pw++xlh
X-Google-Smtp-Source: AGHT+IHDLzp25O1ERi2RnsBspAgj744QxUzZ/p26j4iE+yXlctI30IYPkhdc03KeFWm8NECKoIveHg==
X-Received: by 2002:a05:6000:2407:b0:3a3:4baa:3ea3 with SMTP id ffacd0b85a97d-3a35ffd2ae4mr21161771f8f.41.1747918908611;
        Thu, 22 May 2025 06:01:48 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5? ([2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca88a34sm22855531f8f.70.2025.05.22.06.01.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 06:01:48 -0700 (PDT)
Message-ID: <94245ae6-a28c-4a37-a3dd-9828bd95c094@linaro.org>
Date: Thu, 22 May 2025 15:01:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>,
 Melody Olvera <melody.olvera@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
 <20250421-sm8750_usb_master-v5-6-25c79ed01d02@oss.qualcomm.com>
 <aAswZg9s41s/m/se@linaro.org>
 <f7de2bbc-4925-430c-b263-226a633e4bfb@kernel.org>
 <CAO9ioeXzzSBy+wYFATeckKZ2641GaTA1dB_1HOb238DdB7ACoQ@mail.gmail.com>
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
In-Reply-To: <CAO9ioeXzzSBy+wYFATeckKZ2641GaTA1dB_1HOb238DdB7ACoQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_060151_884882_FE9577C8 
X-CRM114-Status: UNSURE (   7.20  )
X-CRM114-Notice: Please train this message.
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

On 22/05/2025 14:18, Dmitry Baryshkov wrote:
> On Thu, 22 May 2025 at 14:05, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On 25/04/2025 08:49, Abel Vesa wrote:
>>> On 25-04-21 15:00:13, Melody Olvera wrote:
>>>> From: Wesley Cheng <quic_wcheng@quicinc.com>
>>>>
>>>> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
>>>
>>> Nitpick: Drop the double space from the beginning of each phrase.
>>
>> Sorry, but why? That's a correct grammar.
> 
> 
> Being absolutely nitpicky, this depends on the country. In some cases
> (US) typography settled on using double space after full-stop. In
> other cases it's a normal space.

Ok just discovered it's a thing:
https://en.wikipedia.org/wiki/Sentence_spacing

```
Magazines, newspapers, and books began to adopt the single-space convention in the United States in the 1940s and in the United Kingdom in the 1950s.
```

Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
