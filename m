Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98EF3C3ABDD
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 17:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/a3S7YDJUw5/ZAj7BVmqXS/Y8nFWKf/WUaESBcsP8t0=; b=TTK8Ck9IqwWIjymuOY/HpeDWl3
	tSkxCRor4VEcTDFrPSpFnW36dj+pzjBeCdHSDkg0vgdFTB0ob3RPJ4bnSXqLfuU2KmV9DS4aJUp/P
	cABTRPSkTVpy5sgDxT7P1rmVH+W5KmpTtnYHbvGLVmbqkBrUrXOz4usEnDwcXElQnAEEV8OEkezu/
	4u/xe+B+WjCKcZMgJmB3Hy+k/jrbkXSoDFXMVc+1vEp6gEIzG0Xdq5Mkp2Z59tg94FP4+UU/t4twO
	he5OhBqqe0GkGNqIq+/EYLPyHe+CptkG/v66zCLXgWRu7haUDuw4diOZkp8O8a0dxKWevlYcukKjz
	C+L1RvLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFGD6-0000000FwJh-38fP;
	Wed, 14 May 2025 17:48:04 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFF9L-0000000Fmah-2cr4
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 16:40:08 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3a1fb18420aso5155122f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 09:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747240806; x=1747845606; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z8WZ1b2439ywq9jfEuQpDBO1suID2dCRujieJMdn7yE=;
        b=FKhEtxmjJQmmZYVXdmBexICQ7Obcv3JsQ/NdhFK/G1w20+QlhTAxOjEpQk0NxmMFGV
         ol0l1Iutx56VBH9xByu0V7aEmrW0g3PUscvBAWNxli1gcc5ZVKTIXPJCpKhNv46Xeqtd
         7/vSUFAyzWvx4rTbyR9GdZHbOmYA9fe5yB24EIUYj429C9ZYFZDe1YkWdMe4Y+jDp5tO
         WNYKsey2oJi1mQyZBuJP7jYF26KimXVLQtO+xuJgz5F2BfdR60TXFUTt40CYd6JK81zk
         P2VSuRKj3BRlUSeMaIarSwJIa2lOzARkYqk67KCnB6eETQzyXFqlW+Gba7htalVp8Krp
         XdTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747240806; x=1747845606;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Z8WZ1b2439ywq9jfEuQpDBO1suID2dCRujieJMdn7yE=;
        b=ECnkxsvV9Zr6bmB3XwZBFFSle06AxIUEjEbNowXq7m43O5VtlqykaUxOMemj5c/AN4
         AyXfcgbyNWgs6OB0P+p9G2AqKYzJ7kq5On4ms94isVzNOaeY/rWYHOhG0LVUKenI/TEn
         ylRq/US4rlIW8nusr+d9LXn6CMP2uUzv+TwbtGc/dWlG/ZuRs9aZGv+caRCI2K1eZikM
         ndBFz9wTBRq0/bdf4+7EedlwOnrsHlec2T82jIZkD87LCrtho+8jOLePVU+noWTpp4sM
         CHB2jKInNSC6Y+ZX9reyY4tMqdCkqT1cQNoPiBL+gCK45knCAsvjUCReotiORbMfUfHs
         c7OQ==
X-Forwarded-Encrypted: i=1; AJvYcCWv1gMy9n/qT7y3touWPukY3k6iXdoYZPFitDov+QjNFAEoVWxKKGa41yLnM0NICwfCTa2UEFbR68Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/3oljkn2gqOeZK7NN1qLAoSLEl+0Vh1J/3Ry3QLOGIXd/W6J3
	EcVRDsxXCOLl/MU2VrnhmIbgurNNCe9pWNS1XEW7fz2YSHBbgsMrosmEcwECfos=
X-Gm-Gg: ASbGncvDLolbmTE/go5IWKuRMQ1CVGOSO9g3XBbanE+vOSQ+lUNRvGmTvdykXFoIE8q
	6LlaP0cnyS/I6O41qz31dYQe8pwXGc4JJTpRGW+OofG73y2/EgpLbiTIqjeBc2ar3A60MQrQ+Ou
	irXbuzpJghQhUa1hbL9zmpHhkuMiuwK+CCQ2tv2bxJ0uTPafZpdthFj5DYUIQp5WLd6uJNRga+3
	I0po5OuLEsrd8epe8Kaj04aeSorUPUz9X/vTLkiIZipdMYo09efnhqRwpywRsXDRZv/xxSjWew6
	eEiaIw86baJgx1JzKf2DcaQz4XaLfPyZ8EOkr7TpEHIBeZhb6IwrjhEskKeBguyj25H4xWgXJ3U
	qEvZ9AbzfTw42Xf6UoHACdaQ=
X-Google-Smtp-Source: AGHT+IEPbAF4Q3bMuaTmqRM9qQbhF4Gz5x0v56o5JMbzAafCu6BVNra2bXvw9299wzIEP0EieOV7oA==
X-Received: by 2002:a05:6000:2088:b0:3a1:f5c6:2bd with SMTP id ffacd0b85a97d-3a3496c36d5mr3666848f8f.31.1747240805928;
        Wed, 14 May 2025 09:40:05 -0700 (PDT)
Received: from [10.61.1.139] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a2ce36sm20542941f8f.71.2025.05.14.09.40.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 09:40:05 -0700 (PDT)
Message-ID: <43aac8b0-1fec-4b2a-8046-c26f96ca532e@linaro.org>
Date: Wed, 14 May 2025 18:40:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 1/2] phy: qcom: qmp-pcie: Update PHY settings for
 SA8775P
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
 quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
 quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-1-d4f319221474@quicinc.com>
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
In-Reply-To: <20250514-update_phy-v2-1-d4f319221474@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_094007_669755_FCE14AEF 
X-CRM114-Status: GOOD (  11.96  )
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

Hi,

On 14/05/2025 13:37, Mrinmay Sarkar wrote:
> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> 
> Make changes to update the PHY settings to align with the latest
> PCIe PHY Hardware Programming Guide for both PCIe controllers
> on the SA8775P platform.
> 
> Add the ln_shrd region for SA8775P, incorporating new register
> writes as specified in the updated Hardware Programming Guide.
> 
> Update pcs table for QCS8300, since both QCS8300 and SA8775P are
> closely related and share same pcs settings.
> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
>   .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
>   drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
>   5 files changed, 66 insertions(+), 41 deletions(-

I think the subject should be "Update PHY settings for QCS8300 & SA8775P".

As my comment on patch 2, what's the relationship ? does those PHY settings fix
the "Gen4 stability issues" or are needed for the Gen4 equalization ?

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
