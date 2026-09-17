Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 244CFC982CF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 12:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dOnoIh+0quKu4IhQStRj6yYsZoHmMg2CuC7NzYmGFH0=; b=cnAi2tRyZmhlxP+B48h5vP2jCq
	SlWKAxFRl4Rx3TksQrZ+2CwVeR1j4QU9uU47tOLvP1vqA1vrtHguOQpEfEFSuP35pgFXLi3qb5bN1
	xWKZQIds50bHMQDTeP9PpTUCrZCk9nm3bgNEbXI2R86YaedsR1EILIXXAnwpcKmnFnfLUeKLGNdGC
	K6APlZu3QxW0EhmtPqq37evTfY5qfAztH0geuwbE3l8Z3+NtsqIQn1eCxAJa45ccyEZ2dcHSbcQAA
	SnS1Evf7Lv2bXhjAfngU9pSEQzM9aX6/TppQUL7b1DK6PZInQxsXxtVl3usKS9iXsqZ37A1Lkgp9N
	ORM+WAOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7BHl-0000000BIiD-3X9w;
	Thu, 17 Sep 2026 12:32:17 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7BHj-0000000BIh3-2Oc4
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 12:32:16 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912e2406so4114395e9.1
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 05:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789648334; x=1790253134; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=deDx8R0dQpJzll1o6lTznXoeUspJT2P/GlxcRpRgrb4=;
        b=XWr/fFTCd3hEvsQAJYx//d364gQD0ejV2blAUVjrmjW0OyMzrcQklAnGhDUhqFBGSV
         hNZ8bUfcjBOn1Pc2tICETkRxXMwKKK67l5T95B12ZJV5SlUfBeh42DnTWFA+GdpabPlL
         RuZXe9qVqkzNbIMl910N6G+kT00UkEJqI33fW8p3BUjrJ99kfmTSHWROdzMjBK4/SKNi
         eKPpDNh7+hBUmJtVwAl0NRldRgdvp47C7B/mFJsfvPOGEazhvVPgXLlqDUf8MdEvFpcV
         guKbtARbcrqnqWcVLDP9X8yvmgYMWYS8H5gwXV+rj7B2XHf3KamH/6nQ2tc3DoxJLwio
         pRgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789648334; x=1790253134;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=deDx8R0dQpJzll1o6lTznXoeUspJT2P/GlxcRpRgrb4=;
        b=Pvhcbichnp7ZYcHNz4uNfTW36fHzqJ303pQWnHoa6NIqLvCdNM3FuxSNzgx1M37fx4
         MN3+PmKbpSejugJzi3WazF/zvmqA7d+PJ84oJr6x+7pc7BlNsNflH4Pq4Nn31vkOlO3T
         aVwaPkMVdraKuWkE1eZEC6tQY8cTygRV5DDjNriQzin/anK/RQnI2tbLS6egB7skDmNN
         EYk4CogqTce4xraaeszmhfjrUs9pawfwgJ1fNbexz3cIR82M4L2fUiSu3oVGdXL0zbe3
         aNAsEoqdi32oI22/RdQ0ZZ46X3ppzT3ssBgZPFP0OeRyfCxSTswSVJktWwpFmKEpbfEF
         Vwqw==
X-Forwarded-Encrypted: i=1; AKwUvBy/UkWskCBb0uORYnnIdagsVm6TWWgOSV5n+Y38SaY67ss83IfQZQdhP3tX2gtsl+VYXk1aQBCNSYg=@lists.infradead.org
X-Gm-Message-State: AFuF++l3NuWjbfO07ico/20pxk4BrCJVd47hwuTJMpaLjtIE2m91Ioek
	x82KrrRlX2FKkhr3Np5tlq/pHl747ZEGqHmlBhE6o2d7A4GfnMQTih77440ncqGEtCI=
X-Gm-Gg: AYBFou2ipUXuOTXsNnu0LGvYtq68KDCvEyWGA4m8HKsZbSiCrfTjjJgtbiVUpffDVsw
	og9wSGzgk6DWckqg2dW/87M8fHk2/ZxyRyAknisoxVAdWqkdZq10xJgXn8g+WBP+T1dbgHLjC+e
	NMF0F8WT+KlnLoLWQVn7v9IVHCwTEC7a4T1TovCO0FSslhFUeXvG7hC8RwKMsFsTLJZkBLw0Xe8
	ZiOgOtmAiHvCrpBOtZryNc0xruOyaRiegq6A8yANwRafg1bInEpavrBBP75RBkUE3DeSEQT8+ky
	YntXWR7TeBgqPcUE9THUU12Y+IoiPaBAYt5zChcWeyjXHagWYVta1ZJX7Rq4k+3ymJCvu5fenqm
	nNuCcoJppdgxQmC65rhVEidb3ZkRZOIMBu5pJ0guym9WYNjVBAD5QqtmD4NnypwnyH4furDbw5s
	5m133v/eaBckrMzQ1NwzFqu/MmfX/NwVM5lhhb2/l5z6Oq4jnSKyOcb/jt0dGoSRq0301ml6ZhN
	iCBuUwvYEShd9JxmAZ91/3HFFD+xy5LhnocPAMt8WYKTflOnzaW3ig7t1rSS6ZDlw==
X-Received: by 2002:a05:600c:1554:b0:49f:c1fd:60e1 with SMTP id 5b1f17b1804b1-49fc1fd60e5mr11744815e9.15.1789648333763;
        Thu, 17 Sep 2026 05:32:13 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:b5f0:971e:8fd2:f1c9? ([2a01:e0a:106d:1080:b5f0:971e:8fd2:f1c9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fbd225898sm78339095e9.9.2026.09.17.05.32.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2026 05:32:13 -0700 (PDT)
Message-ID: <9e8ae55f-6d95-48a9-bef1-ab653d0f1c7d@linaro.org>
Date: Thu, 17 Sep 2026 14:32:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v18 3/5] phy: core: Add devm_phy_get_by_of_node()
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
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
 <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-3-f85c9103177e@linaro.org>
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
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-3-f85c9103177e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_053215_656889_A2C1D756 
X-CRM114-Status: GOOD (  19.59  )
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

On 9/17/26 13:07, Bryan O'Donoghue wrote:
> Add a devm variant of phy_get_by_of_node() to allow for the familiar
> pattern of having devres automatically release resources on the driver's
> exit path.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   drivers/phy/phy-core.c  | 36 +++++++++++++++++++++++++++++++++++-
>   include/linux/phy/phy.h |  7 +++++++
>   2 files changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 490a7cde6d40a..10e9323566803 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -833,7 +833,7 @@ struct phy *phy_get(struct device *dev, const char *string)
>   
>   	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
>   	if (!link)
> -		dev_dbg(dev, "failed to create device link to %s\n",
> +		dev_err(dev, "failed to create device link to %s\n",
>   			dev_name(phy->dev.parent));

This change belongs in another patch.

Neil>
>   out_unlock:
> @@ -1050,6 +1050,40 @@ struct phy *phy_get_by_of_node(struct device_node *np)
>   }
>   EXPORT_SYMBOL_GPL(phy_get_by_of_node);
>   
> +/**
> + * devm_phy_get_by_of_node() - devm managed lookup and obtain phy reference by device node
> + * @dev: device requesting the PHY
> + * @np: device_node of the PHY provider
> + *
> + * Returns phy associated with the device_node or ERR_PTR. devres manages
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


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
