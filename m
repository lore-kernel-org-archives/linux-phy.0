Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67FEFC25B77
	for <linux-phy@archiver.kernel.org>; Wed, 22 May 2024 07:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JdU7KaF8LOzC1EcmRjCKxO03KvrcUPZYB1bx6PJD4uo=; b=jh29teaV9qqcFGo7kx+utUO66U
	MEFffgsvGYupYK9sbbEbZvYwGCS4MjPTnTm9lTm/EkicbBfsOX2zc0HaZme8aUTESjYZ0TTcQNcNj
	0JHKQx12WtaqST4dp2uEFwmPtfAr6f4+WO20NEV73HqKlZ97sIXmlsrFvvHyfDpwrOk/VUTSlYnSa
	9Jr7Qffpo4L+fYZRIIPOt/cJDskTbKW7JHtpGn2PS4zS1k0Zty+Uq7KoewAuayJZzP83IQ+2pcOYc
	RJ11uDltj+Nozf2MmmYFKzGpZgtIIc27hYZqGrEx/uA2JjvCpiHnItQIp4u/yeMexvbzXfOvRijva
	w1AVAhEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9gft-00000002GJo-0R2M;
	Wed, 22 May 2024 07:46:13 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9gfp-00000002GJ5-33Gj
	for linux-phy@lists.infradead.org;
	Wed, 22 May 2024 07:46:12 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-574bf7ab218so10393004a12.1
        for <linux-phy@lists.infradead.org>; Wed, 22 May 2024 00:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716363967; x=1716968767; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gBM+jZUTYiUUTV5gkY6H6ON+yEQkLd9WRxTkpxE1iOk=;
        b=XJmPlB+Pydc6evB8Pjg0qM5FvNJqJKpUZGbV0kcH5FNVofbSu/sfPUiCCiZJlizVf3
         ulD+BcDPQSiYEt+zckjvPprRuLJB7NOuXAAeoUAM768L0WwLrCMuW8lN6ec0SJmI6469
         Fn6YLqlzac+QQt91yVURnOY40uLTWQvHn7+ENVTLQCf7+VWAjIM/GnueStt90VIrXRhF
         k0JdBKcLbkGQfhqW0ryo8SAQvE95IwotwOnJvLfl1UXmXrlJReZyGuEaLdTn6r2kLVHX
         UzM9ReZOHJAO6b1twiF8cXzFkPidvGBPsQwdtOHL0yE/tYD+N7XQfNHiTJVzFAQN/vEU
         2G3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716363967; x=1716968767;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gBM+jZUTYiUUTV5gkY6H6ON+yEQkLd9WRxTkpxE1iOk=;
        b=cFS1g1Sl/nkLSDdNDpzRhxfJDCateSqiL1zPZL4M6zQS/XiUm6hu9L8fCM0iOF2dzG
         eic9XqKxk2C7ItJn96k4pWGASvPF2a4+eTujiLHbj8Sy9vPycgPMdNIvvHz0tZxwikWM
         3Nozo6HoacmmHVaOByKkoYGu87mlVbIJcvOr+tF1qmk6/rCikKl7LQG2Xi/0gam5z+sN
         ZyPdbLkcC5AyrE7VmfiqVfZWCFlz/md7W1iB8wwkMcw+j2fzqQITwtd/oB9HHM0hw7g+
         Chg1g1UPpC+oVH849WrVpjRRCWDjC/DGz+ps7qCho4RrkXsuzNTLuVkKP4fpxiH7zIOx
         lNxw==
X-Forwarded-Encrypted: i=1; AJvYcCXui7LtSQNAZNulnFE1B+5M2/IvkxG+H7r1WVphazoLoQl7Ip4/Ium7nT83PY9sh6k+rN0sFf9RXyMuj8Wp+lrijoFUYGmmSRIhv7Ah9w==
X-Gm-Message-State: AOJu0YwOt4Zy3tXWq0ffMrY+MSLQ1fQyp/y/0irmOTYyceniRxgQPqqI
	fySp34Egb1gNnP07R6Cm+gW12z3c9P4hIH3I9e9XMPZm9RmSl+wsFcl11E5YLSo=
X-Google-Smtp-Source: AGHT+IGZLSApaCXvQGxW0dsVfPo3k1iNOpL3wwK5gco9RO/JQwo8qJZoMUt8UyhYHnBdO5wDLTd9WQ==
X-Received: by 2002:a50:c355:0:b0:56c:5a12:ac53 with SMTP id 4fb4d7f45d1cf-57832bc92b0mr655224a12.24.1716363966909;
        Wed, 22 May 2024 00:46:06 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:8b9d:52bd:4757:6b10? ([2a01:e0a:982:cbb0:8b9d:52bd:4757:6b10])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5751ada828esm6950621a12.62.2024.05.22.00.46.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 May 2024 00:46:06 -0700 (PDT)
Message-ID: <0f784354-c5ca-4436-b5fd-b1744414bc3d@linaro.org>
Date: Wed, 22 May 2024 09:46:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/2] phy: qcom: qmp-pcie: restore compatibility with
 existing DTs
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 devicetree@vger.kernel.org
References: <20240521-fix-pcie-phy-compat-v1-0-8aa415b92308@linaro.org>
 <20240521-fix-pcie-phy-compat-v1-1-8aa415b92308@linaro.org>
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
In-Reply-To: <20240521-fix-pcie-phy-compat-v1-1-8aa415b92308@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_004609_834920_F4755C90 
X-CRM114-Status: GOOD (  15.28  )
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

On 21/05/2024 22:30, Dmitry Baryshkov wrote:
> Existing device trees specify only a single clock-output-name for the
> PCIe PHYs. The function phy_aux_clk_register() expects a second entry in
> that property. When it doesn't find it, it returns an error, thus
> failing the probe of the PHY and thus breaking support for the
> corresponding PCIe host.
> 
> Follow the approach of the combo USB+DT PHY and generate the name for
> the AUX clocks instead of requiring it in DT.
> 
> Fixes: 583ca9ccfa80 ("phy: qcom: qmp-pcie: register second optional PHY AUX clock")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++------
>   1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 6c796723c8f5..b4767b8cc014 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -3730,14 +3730,11 @@ static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
>   {
>   	struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
>   	struct clk_init_data init = { };
> -	int ret;
> +	char name[64];
>   
> -	ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
> -	if (ret) {
> -		dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
> -		return ret;
> -	}
> +	snprintf(name, sizeof(name), "%s::pipe_aux_clk", dev_name(qmp->dev));

Should be "::phy_aux_clk"

>   
> +	init.name = name;
>   	init.ops = &clk_fixed_rate_ops;
>   
>   	fixed->fixed_rate = qmp->cfg->aux_clock_rate;
> 

With that:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
