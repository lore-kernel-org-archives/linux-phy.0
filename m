Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51BC1C369A8
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 08:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=84OIOrbE1i6clPoejr6VpTrfH47AYDpN/ygjvehl9Bg=; b=EPHxbnw9fdypBRLgXhHtKr4/Op
	Tszt5WsDjQ382pJkgahSuVYvuBPWv/kKbXD4oWhtUqHgcoxKSVvbpiXJxPhXY3JmJjWKpnMQIuR8i
	dQwdvZdmrr4f0o/bSbonXMAix1mMUSmPuIVoAH85nqsop/lvi6QeSQyIDjCUxi3b0xku/tyjwDM4p
	ImR8GF2EnPrbhL+TXDA4m21Xx8/UPNuMNhAzOsNr1ZzS88CJNGdDTNHFugK3xeBx+5doTVkVH7aTP
	yHUxKT1bevDawVmnBlX3s32FsQz6ALBx/eHU+EQOGPCfZeD6VXoK2n2gkw2CxgAQ/39yBDJTyx0LD
	m1AAe/Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u39z9-0000000D4Cq-0GmN;
	Fri, 11 Apr 2025 08:43:39 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u39ox-0000000D1xM-1MRr
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 08:33:08 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-39c1ef4acf2so998523f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Apr 2025 01:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744360386; x=1744965186; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EK9rCz5R2JGRLR/abCueMGVjM/KpF6kJW3tcRtlcRvM=;
        b=mMZ+nxhEHzzuUzhtvUijFVytlRuOaCcn33qpBf1IdRanBiP5CWziMyBZfbx1PLUMo6
         2NmGfLZ5RUDM9oi6RpEcmjNt7H1OTZ0blrhU9yjNWOYZa59V2KtBiLveEONFc21P78X7
         0QI61IwGpigP4ezahdigqTHdO1+pVPMvhz5iuFW+9FGUFw4muyHVFWpiwHGJQMWk8obb
         Em+wB2m1hbRKZag/e7BOM5kP2w8xhZlk6DuTFLHlW+Y+MlXudG1QkNIz9Z0U4G38oIcK
         Tr6j4ZUqd4dHrw7MzQNGCjAVbQ949HPe+Egw9Y4h3C6YorUD+L0E9hA1gOrZso6Owrj9
         P58A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744360386; x=1744965186;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EK9rCz5R2JGRLR/abCueMGVjM/KpF6kJW3tcRtlcRvM=;
        b=jOGIAQWe89d7AepbupqYhHLSzc4rqiBpRVHh8krnmko8M6kLyqGgTdrCixtlZwOFmg
         7wxcJ64SfuM9k0+1SsKL6HGw1BO+FwRwOxfrLum9HO6i5XXuy1NkUF5MntFa1ImvXtWs
         gE7jPFZSepxAaWRQEI+3vRrWK9aSTqMl6PQmOjU5aQADaq5dqlx3aNukTLHzhvwT8YGQ
         zOZ9TNPSubJyRhZSLngTiV9LgQ/RbsnJOR9qZa/jxClVVRnWfFF0C7BOSegBMxj/lmdZ
         JoHwIjAlnh/0D0cMTx18cWkL5EeHXyKbM+6WEUO8wx0YUoy2w2RG4y3941KUTGZ/ogAZ
         0wsg==
X-Forwarded-Encrypted: i=1; AJvYcCXhl3koEKkxYPJKQBJEXC8RyZzcsHEZyB+KhzOM95lTjwAUFNWnq1vqVC9thhe25Km4X7v2gVbKL9g=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHLOmzwYNDCOmzUeaGs07SSZS45e3ek9ROcQHAXOfeUHebKE+n
	YJmd2b6KFuKD6uFczDe+wpXrsMKjddgZmfkeNdsZ5jZWNiGQRg2WMseCGY4L7VM=
X-Gm-Gg: ASbGncv0nein1/aDqOWiwuxNIgCBFo5RDFKucwZimSLatRBSrYSEqPK3AxvzApeWMRb
	VFai2/0G2Ry/FUgHmuGB+Me9fW4kg+H2jrv6xO2UAvcFdltr/tmuH+2G1VR5KOjX7BDxh0MhECC
	nJRunalsv06cDxmRcrMgLGCaSlFV4P1pVKPVwJQa3O7/n91ZwtapA3TzWvKfiwvKSfZlKbUuOfH
	b8R9/xEPVcnEksOA07pA5OxpyUPM3vsztin3xIubSdM1R3N5je9EY4Pqh4VNa4ubg025NDARv1z
	NsyWhDMsVY5TbOxfJAz7qs8usiQQwpRednB8olsPpW94utD6cvf/WiDna5cH8sqjJN7cs28qmc/
	7v19SmFYmlUleqxdDEQ==
X-Google-Smtp-Source: AGHT+IHlLQ8VnWkMNxW6NJ/2XfY1PSwDp+GZZTngXF4ukLUEAUWIscJaYqmOWxV7FEHDv1xafn6WCA==
X-Received: by 2002:a05:6000:144b:b0:390:f2f1:2a17 with SMTP id ffacd0b85a97d-39eaaed2b6fmr1302713f8f.53.1744360385924;
        Fri, 11 Apr 2025 01:33:05 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f77b:949e:1d61:69a8? ([2a01:e0a:3d9:2080:f77b:949e:1d61:69a8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96c074sm1290725f8f.28.2025.04.11.01.33.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 01:33:05 -0700 (PDT)
Message-ID: <8e8aff0f-36cf-42cf-88a4-a9e3a646b73b@linaro.org>
Date: Fri, 11 Apr 2025 10:33:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v1 6/6] phy: amlogic: phy-meson-axg-pcie: Fix PHY creation
 order in axg-pcie probe
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
 <20250410133332.294556-7-linux.amoon@gmail.com>
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
In-Reply-To: <20250410133332.294556-7-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_013307_374289_7D670108 
X-CRM114-Status: GOOD (  13.80  )
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
> Reorder the PHY creation in the axg-pcie probe function to ensure all
> the resource is mapped before creating the PHY. This change addresses
> the issue where the PHY creation was attempted before
> mapping the necessary resources, potentially causing failures.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>   drivers/phy/amlogic/phy-meson-axg-pcie.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/amlogic/phy-meson-axg-pcie.c b/drivers/phy/amlogic/phy-meson-axg-pcie.c
> index 54baf7b8930e1..14dee73f9cb57 100644
> --- a/drivers/phy/amlogic/phy-meson-axg-pcie.c
> +++ b/drivers/phy/amlogic/phy-meson-axg-pcie.c
> @@ -136,11 +136,6 @@ static int phy_axg_pcie_probe(struct platform_device *pdev)
>   	if (!priv)
>   		return -ENOMEM;
>   
> -	priv->phy = devm_phy_create(dev, np, &phy_axg_pcie_ops);
> -	if (IS_ERR(priv->phy))
> -		return dev_err_probe(dev, PTR_ERR(priv->phy),
> -				     "failed to create PHY\n");
> -
>   	base = devm_platform_ioremap_resource(pdev, 0);
>   	if (IS_ERR(base))
>   		return PTR_ERR(base);
> @@ -158,6 +153,11 @@ static int phy_axg_pcie_probe(struct platform_device *pdev)
>   	if (IS_ERR(priv->analog))
>   		return PTR_ERR(priv->analog);
>   
> +	priv->phy = devm_phy_create(dev, np, &phy_axg_pcie_ops);
> +	if (IS_ERR(priv->phy))
> +		return dev_err_probe(dev, PTR_ERR(priv->phy),
> +				     "failed to create PHY\n");
> +
>   	phy_set_drvdata(priv->phy, priv);
>   	dev_set_drvdata(dev, priv);
>   	pphy = devm_of_phy_provider_register(dev, of_phy_simple_xlate);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
