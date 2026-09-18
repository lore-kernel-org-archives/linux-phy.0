Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CEF9C982DA
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 14:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GhVWrQEEJwtZpJc+yl6+blpBuyrcczJjX0YX7RTQcZE=; b=WgyvlFIAAVmFcV3P+1/SjjGj9F
	RDi5AelKZ+lxjE03FLmExgsRvdEV/pbtGJdplPy0hj4mBbtmhPO90qMpWninLKjLjh4XMP2Jpb9gr
	YQ059zdFKPgc8a2YnOHNh1I58H9X44ExwSfSzNVw2mL1yJwlBkVUyEsjXtO7jivTmwhUumXg4S15Y
	zKWhR2bmLIDRhvd3JyIhq6anhCUVdsXsfZ8qqHQ+3V1TxkvPDmDBcViYsNRr36US81YX+WZ4VFber
	pBkjLmuQwNxik6EQrU5dDGS0O2QoHGTvC+G+q09z7plRYsJkXAmWh9lpmiS86Ago1ZOtm1G7LmPic
	lwo52Fiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ZIX-0000000EfYm-3jpd;
	Fri, 18 Sep 2026 14:10:41 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ZIV-0000000EfXm-3z22
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 14:10:41 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843c3ea1f6so395314f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 07:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789740638; x=1790345438; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ag22kdu60S2tiS+0TDNZ2UzgJJwu6JX3v9tYF3dxCv8=;
        b=IYV9Cd2XwIL43A3JMaSzCM7WTy28k6Yes+foa96tlA+uYkvMvF4lyAOf194nthbmXt
         QpxxEHSIhVtNvYfds5kmA4DdV/4OtXvfn6oHlwsU5YYoI8hpjSpGAMNhSOuOfh2T/F+W
         JJktjiq1MrObcN2KalmX8Us/PI22zKrVCibnNq4GQ0A+r5PtUXIsVdH2FGPygN3SsILm
         OITVSB3p3/uXeKnVUtLc/apyXs1YReubvaoS7wGidTiSDKwYw3BsuPDZ9lWd0USCwPZg
         3Hom3+pT1bWTIu+Wa6PoYdOVkcZzPIXhbn8H5XtwIkkGxYkQ0FI4SsqD/fuNXxa1Rbiv
         f/FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789740638; x=1790345438;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ag22kdu60S2tiS+0TDNZ2UzgJJwu6JX3v9tYF3dxCv8=;
        b=fn4EoJ2M3bcfDQgtrpDKqyd6AzfvrStKHeYT5TwV2A9w/CbybHustjCcIyRmKmMrC8
         ph0GsWmTbID43BlDLlXXBb8jWuMPrVFfFB+sONuguYDW7YpYuyMMb2+/Wae09xCX1Ac9
         l+QJ7gxCEgupSbRj9OmuUzDVYTyce4zyP5RmzK+Zt1a3tPaC/7oQm+dQhYfGn9cFP0b6
         5lOcJUw483Wl3mhqCMmsg8xQlke779XTh8R/1RUlfVsOW75qZsAmuT+ZQ4RofVeCJT40
         2QN+jWTwgrhi3qnAij7sBvboMVHGidTTPV+M2QEe54vxw7ZSjE1X7gntO+cT61C/mo0J
         xZtQ==
X-Forwarded-Encrypted: i=1; AKwUvBzJk2/F0aS+fTCmLjHBk21MDAF+77wRWdFMNylC29PTujHg9/da5ZmBTamiYJz8vMmkuIojXkyQlko=@lists.infradead.org
X-Gm-Message-State: AFuF++nicvlmXOCGK6Vr/mP3Ppwe/inkST6UqoYKRzmF+CAsRwAFaiyf
	L2Kv5yKNhIP+f7Xi+EauQAgOV4mJ3Hi9fb3ny1aCFNl9JB5BE8A+uXaoxYz9BzQro4I=
X-Gm-Gg: AYBFou3PLeLvNesEYwDmjKoCnx1DUkP4WQqwb0WoTKtQUujTxDgFxQFTQA45tFeXX14
	u/VHKB7/HREbFD5NlRKfH/csyffeivwihMi6vjIp+CBVxx/VCtSsFo49D4C/ezP6xCecddCU9NE
	jdaBA4BRUuEWcBqoSji8vjJz7rbK7zOhEuDOZuV8y22j34ZwRjfpH7QEPpI76ZVOLug4Yzbdkam
	/xEiZZKP9uL6KawbX4NFJwiVfJ+poYWHrp3ecSIN/H6ZCCEr752JWj24duk6HQFQLSSfHOvN82L
	YMVQbKgp5oiJ4oJ6PIREa//hdTiqR3DjVuGwfqxic73wriPb6UvHYbs36MLBNqfESYx/2FIB3PI
	8OsJlho9HDP6rCtaR6rfF/TlIPA09ZBrkouht9zQK1mZRwBtuwFMasqRbVoXzr5q4vKcW9jf51M
	bEvro3pX/odE3YxI4wtVvh9y87Vp+7ymeDwA0C+uMzXt1fOs7y5xlM5uwhX8jWg2X+iT4FhSDRP
	WFBY31H1/974UGkJwXraaYZyfxJ21K0MVdnsF5X9NLN1aW7bglqDA==
X-Received: by 2002:a05:6000:2c06:b0:486:f767:8be0 with SMTP id ffacd0b85a97d-4871e216279mr3726790f8f.12.1789740637955;
        Fri, 18 Sep 2026 07:10:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:c55f:cb91:1ca5:54dc? ([2a01:e0a:106d:1080:c55f:cb91:1ca5:54dc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4872008118dsm5045419f8f.30.2026.09.18.07.10.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2026 07:10:37 -0700 (PDT)
Message-ID: <cc4074ff-8d49-4452-89e9-870e5514d969@linaro.org>
Date: Fri, 18 Sep 2026 16:10:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v20 3/6] phy: core: Add devm_phy_get_by_of_node()
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
 <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-3-dc244e124e71@linaro.org>
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
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-3-dc244e124e71@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_071040_036710_28D93A10 
X-CRM114-Status: GOOD (  17.92  )
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

On 9/18/26 15:56, Bryan O'Donoghue wrote:
> Add a devm variant of phy_get_by_of_node() to allow for the familiar
> pattern of having devres automatically release resources on the driver's
> exit path.
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   drivers/phy/phy-core.c  | 34 ++++++++++++++++++++++++++++++++++
>   include/linux/phy/phy.h |  7 +++++++
>   2 files changed, 41 insertions(+)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 42c27a2b45159..f0d2b50d1c76b 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -1048,6 +1048,40 @@ struct phy *phy_get_by_of_node(struct device_node *np)
>   }
>   EXPORT_SYMBOL_GPL(phy_get_by_of_node);
>   
> +/**
> + * devm_phy_get_by_of_node() - devm managed lookup and obtain phy reference by device node
> + * @dev: device requesting the PHY
> + * @np: device_node of the PHY provider
> + *
> + * Returns: phy associated with the device_node or ERR_PTR. devres manages
> + * releasing resources.
> + */
> +struct phy *devm_phy_get_by_of_node(struct device *dev, struct device_node *np)
> +{
> +	struct phy **ptr, *phy;
> +	struct device_link *link;
> +
> +	ptr = devres_alloc(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
> +	if (!ptr)
> +		return ERR_PTR(-ENOMEM);
> +
> +	phy = phy_get_by_of_node(np);
> +	if (IS_ERR(phy)) {
> +		devres_free(ptr);
> +		return phy;
> +	}
> +
> +	*ptr = phy;
> +	devres_add(dev, ptr);
> +	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
> +	if (!link)
> +		dev_dbg(dev, "failed to create device link to %s\n",
> +			dev_name(phy->dev.parent));
> +
> +	return phy;
> +}
> +EXPORT_SYMBOL_GPL(devm_phy_get_by_of_node);
> +
>   /**
>    * phy_create() - create a new phy
>    * @dev: device that is creating the new phy
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 71c2e16397130..14b924a88411f 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -285,6 +285,7 @@ struct phy *devm_of_phy_optional_get(struct device *dev, struct device_node *np,
>   struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
>   				     int index);
>   struct phy *phy_get_by_of_node(struct device_node *np);
> +struct phy *devm_phy_get_by_of_node(struct device *dev, struct device_node *np);
>   void of_phy_put(struct phy *phy);
>   void phy_put(struct device *dev, struct phy *phy);
>   void devm_phy_put(struct device *dev, struct phy *phy);
> @@ -499,6 +500,12 @@ static inline struct phy *phy_get_by_of_node(struct device_node *np)
>   	return ERR_PTR(-ENOSYS);
>   }
>   
> +static inline struct phy *devm_phy_get_by_of_node(struct device *dev,
> +						  struct device_node *np)
> +{
> +	return ERR_PTR(-ENOSYS);
> +}
> +
>   static inline void of_phy_put(struct phy *phy)
>   {
>   }
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
