Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CACDC36010
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 08:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=62t2S6lhYhiiYeIm7tB8GVKDjrYYsh7kpAKYp+11FrU=; b=2HmtjNDQTSFoOyrbz0xTOOjKTH
	ro+1A4FnBYxyGpo+U6lLlxzBDMWeZST0ru7dPHsgfBnbr6oghhTd6taG0dBaipy4tHJOHOIdaQBV1
	vUwd8mH430Pyo+PvGokCDYibbeIxpJ+WdbjhGKTg3aUvJ9z37MZul3H00lmHAiWoFx7kiTHX148l1
	KNcBhwuV5ITm0jKNR/DfHaD6izjGGnUv1SnywlBWdK65qpGrtnBFHPb5Djvd4Xee1v8hfNCdE5lxl
	fsmhPW6Zi4RXDoABP8H4jFmpcWn5XJqKLqNP4LYcDNmPBfs+XOcIB623eZOdI3o5InCcTx5GjRauN
	tN6WErTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u39qD-0000000D28a-0Xuc;
	Fri, 11 Apr 2025 08:34:25 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u39oL-0000000D1jc-3s3Y
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 08:32:32 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-43cebe06e9eso12680865e9.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 01:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744360348; x=1744965148; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cor9vuOgNiqeiEkWyD/AmeGmMw7KQ8DearW0MSdlOaU=;
        b=dvu2N/Z7xddjjCHXdB6XK1rIsAqkmhd+QvhxXRFSSqbR+QOPOnwvZfkYjXUBp0/JO6
         VAhMIoWhRKa8YJgG7NGOAmZ6thS2Vaz4E0dItyTZvZx0Ir48Groxd9fvZsDCvRaeG/cC
         SDK+krSvRc44/ay/Dr8XZYvjSexyTWJ13zCremxxoOsAoPduDLge4mMpSKMjJZLM5gAW
         1kGG5B3ltpYvnRML1wSf4QxSdGHok0Qf5ddcox4feXbROHjbTBFdPNGOJMumyi+mM11c
         9KOzm12Rq55AuyFqGSUQ5Z3rzBnuLJnh9URNGMG2nmbeQGtU4t7pAb0mGJJsy063mfZR
         05QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744360348; x=1744965148;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cor9vuOgNiqeiEkWyD/AmeGmMw7KQ8DearW0MSdlOaU=;
        b=AbER4YLbhma3PCsr7fOCqte1xu4r/EeqBooul81CzizO6QmfUsGlKJ7UMQmBS2gtAz
         o5BcyfZiqwa+k2fTLkp76Bm7Pg/WZOl5fww5rNIP+sHN0sun2ChvDPFg5IVBnWzIaS1b
         iS0tinQkCZDgwneE6BFT3dKVQbZ7oOx6a/NT9cA005y6ajzkqPVMQUbEO2Vkj9fJUSmD
         17bHUfsm8pMQugv4BcJ8Ky1qsQh/snOASzLknYq4j5l7zPW81Zxys3RPamfC1CyKKnB7
         EepdUwSbyqW/aYcwkSJ3cR0RR2WcLHXAom/DTDucBuA5R8QtXkGck4NSB+oYc4Uw+u5S
         13kA==
X-Forwarded-Encrypted: i=1; AJvYcCVuJt+jDdZkhIU71y2Jd8MmOclLfBqfO9GyWC8m1Sg9ojjb6SivTYiNBB2xxrRu/WJrLyLl4D8f0Sg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwkWlhuNh61QvzlyDBDNDtWp4O1FwizMli+XMk1mCKXFSfOtX4i
	dam+iO0wjnbtNkXEMSVVBcYQGSNsPv8hKxtEgOJP2G71mFRWjxe7w3/pkk4YhdE=
X-Gm-Gg: ASbGnctyz68msTV34rj3CBu0AfPaiwFPgopwR75MR17LbVx3PMe+srjHO94n4Oved4j
	L4auk4yUxGtLW+9eQPeR/DwA7ClaDnMSRMk+c+KIDGTe1+dd6k2vvu7qKpWuk5CcJMkGwWWeESE
	HecXfc5BtWSDT9ueiswFlVrrk1UFtI6HRLmNLDPKP4srjOrzc27BwfRDIjZ+qEcU+M1V0XpXVP6
	+BDKFaFcZCIR8lj+nQkHuymOgfWbtQYrcmBAhscWLjXwQ8LSPk3dep3h0RPYzb4SCzprx80N9TX
	PpGB5GGrxrlk+xR1RUz7fwNRL4kz7fXvh9MHyi7o46951oqo0Cmx6T23jfj5RjU+JfauybtqBPn
	FqTIuT6CLC1M5JlMCsA==
X-Google-Smtp-Source: AGHT+IFy7DI7w+bf+TzbwYeaeMvt+UTEl9M52U5ZWizMhQesvmiV7Mq5Ube+HjPUMbBTeDkCz3uXvw==
X-Received: by 2002:a5d:648e:0:b0:39c:30d8:a67 with SMTP id ffacd0b85a97d-39eaaecd91emr1259666f8f.55.1744360347745;
        Fri, 11 Apr 2025 01:32:27 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f77b:949e:1d61:69a8? ([2a01:e0a:3d9:2080:f77b:949e:1d61:69a8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f23572b5bsm75951255e9.28.2025.04.11.01.32.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 01:32:27 -0700 (PDT)
Message-ID: <7f6910a0-c56c-4284-b928-eb7ae7fb7e92@linaro.org>
Date: Fri, 11 Apr 2025 10:32:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v1 1/6] phy: amlogic: phy-meson-gxl-usb2: Simplify error
 handling with dev_err_probe()
To: Anand Moon <linux.amoon@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "moderated list:ARM/Amlogic Meson SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson SoC support"
 <linux-amlogic@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
References: <20250410133332.294556-1-linux.amoon@gmail.com>
 <20250410133332.294556-2-linux.amoon@gmail.com>
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
In-Reply-To: <20250410133332.294556-2-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_013229_958415_BB9C711A 
X-CRM114-Status: GOOD (  13.47  )
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

On 10/04/2025 15:33, Anand Moon wrote:
> Use dev_err_probe() for phy resources to indicate the deferral
> reason when waiting for the resource to come up.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>   drivers/phy/amlogic/phy-meson-gxl-usb2.c | 11 +++--------
>   1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/amlogic/phy-meson-gxl-usb2.c b/drivers/phy/amlogic/phy-meson-gxl-usb2.c
> index 14ea89927ab14..6b390304f723c 100644
> --- a/drivers/phy/amlogic/phy-meson-gxl-usb2.c
> +++ b/drivers/phy/amlogic/phy-meson-gxl-usb2.c
> @@ -237,7 +237,6 @@ static int phy_meson_gxl_usb2_probe(struct platform_device *pdev)
>   	struct phy_meson_gxl_usb2_priv *priv;
>   	struct phy *phy;
>   	void __iomem *base;
> -	int ret;
>   
>   	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>   	if (!priv)
> @@ -266,13 +265,9 @@ static int phy_meson_gxl_usb2_probe(struct platform_device *pdev)
>   		return PTR_ERR(priv->reset);
>   
>   	phy = devm_phy_create(dev, NULL, &phy_meson_gxl_usb2_ops);
> -	if (IS_ERR(phy)) {
> -		ret = PTR_ERR(phy);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(dev, "failed to create PHY\n");
> -
> -		return ret;
> -	}
> +	if (IS_ERR(phy))
> +		return dev_err_probe(dev, PTR_ERR(phy),
> +				     "failed to create PHY\n");
>   
>   	phy_set_drvdata(phy, priv);
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
