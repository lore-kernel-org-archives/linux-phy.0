Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ACC1C021B3
	for <linux-phy@archiver.kernel.org>; Mon, 24 Feb 2025 10:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tDjYgIsShWAE1zqJywoCbd7CnHVg5ozb6g1Zsnx3LGU=; b=NQIv1/y0Hz0XdjJYnQK/SPEgy5
	O72f3cpJVCClYbN7XwXswJO+leTt3ZDKg/awB8bEgTl459pKQBsZnseHsb+UIUopYA8JhZ6tzxVCf
	bPr/UQVXzqoihXVxDXmSy2nNwTrzVVH1w8SeSU/9AjiW3LiX7EUu6I/G3wgVafC1kpcG9TerXs6Hw
	um1Re5eWaff4jpuYZXE6mf3iVzFMpDojK3+2DfgnPULffnrBU40uTaYWQBV9DzxJTKa08AUcCpEb6
	GLjzsSkn+fRF/8ZITxCTO1eZpJICrLKWSAyjCdsFGIV124C5iPVm54ihTPoy6RWj9N8cV0m2oU4QR
	9h6QIcIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmW8P-0000000DEc3-45c7;
	Mon, 24 Feb 2025 10:56:25 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmW79-0000000DERH-2YEs
	for linux-phy@lists.infradead.org;
	Mon, 24 Feb 2025 10:55:08 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-38f3ee8a119so2036713f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 24 Feb 2025 02:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740394506; x=1740999306; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Iot9I4h4jJMqZbR9/3Iio7a6IBbtlOgx6s1kh41LTE=;
        b=G9vLz291+MbV5m79zK/Z/LM2XGYG1k67apBNmSgVz6xpCzY7vwBQyTcUKE8f7m+uw6
         FL68DP/QZVTXFEVIIpof1kps56EaEPb8uoqjc2wBeWfotOJNprAnlXKCKsd3IGymvZqJ
         MeZIgvwM2qORfBi3Z7c8cPz1jCKjPNmmM3OPuAmH1V+leqPAKGOCBmzUZbp2ipXPNVIq
         hO2vl/Qe8p6Ju2TMTxpGNHTUSAwsj83qdppUC3mGRNaFCLF2udFuofXcC3WX18UqxjID
         DFp0HSf4J+BPf9RU9AzSmfrcShb0S9CrA5agZ4UClFZAJ2mBNbbS71SJ7APdsez2mjUE
         KttA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740394506; x=1740999306;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4Iot9I4h4jJMqZbR9/3Iio7a6IBbtlOgx6s1kh41LTE=;
        b=Z3+cJJmYg0z6cnWYJasuZ5p+ySRRpC0kJygQJxlL8G/qGlGERy+cDYjUP4Zvvo2hfy
         q7MPD3EunrMt/DtFWOoym5hhRCiX5tKrqs5XV36kXsWdW2bmcDmIUnWj5EEjiUVIKw1m
         C02cxE8K0aBLRj2pSYJa2G8S3PbEis2Jx1qGqQX9xWYcvVwKikR5DAeWcklUiivdZ8pd
         VYqcVc9ADMjL85R2dJhDR+8y4Dn+7vidj0GnMwMXw01l2F9gmsgSDPEq3T2AOfHRPFM2
         243mzWbP0w/BzU+EtVjDn4xek4RvUUvPL1a5caE5zhBlz6cDWnbJdfp+EDl+sz0P7LKZ
         8wXQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2JVw5gAPub5x3J8pcqvgQS9xtgdikAxAN4FkUi/eRwgifXZ8wTQFavdKC5n7rIShnZQkj3MoPzKU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKQnrvlJBZjCCfn52bV6PBeVRikL1qPuXG3sfClOHHI+ZC3Xr9
	ipmvtkJSLFGr+RHL51yy2pkl02T5T7G5Sof1ahdLZFP56oVNHqoHSHPnfR2hbsA=
X-Gm-Gg: ASbGncssPDtRrFEjvXibs3dsfh6uJAHGFuyus8QfhgkThbdjdBmnOMtkWJKSLcZvnhE
	PyNw8PknStSQFzLtnhCKzL0rXNgyV3jddeVWekkpXPI9nDSOqsL8PvA9Oke6sv8qyJ9xiQOr5e6
	WyimPCLbxgO2td153Hw5yTq4qXFGEHoGvAQ4d+sEgK4AYYeV/ggMPnM3dC17yUiGdere8LOdtnz
	T6p2b4lFOlxC8rfaTqRK5kcKllxDaxfbzVCK3VNv0kV6LBLSr5zO9wTZIt5+eR7VBrJ3ZMPpmAo
	QZYqSM3vmN33vmaRYsY4p9GFYgDK9kAHUK8aaKSXfJ51LT6iVV8JxhP3HE+uj13GK3HkWSwAE40
	REXs=
X-Google-Smtp-Source: AGHT+IE4j4S+EDiD5wh2IMuUEhCY86d7JCH8Dc3GdjFV6vdXtjgVdXLV1ClcAd5tybFFKQM3S7o/Bw==
X-Received: by 2002:a5d:5985:0:b0:38f:4808:b9f with SMTP id ffacd0b85a97d-38f7085c617mr10519652f8f.47.1740394505896;
        Mon, 24 Feb 2025 02:55:05 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:825b:5392:ef70:cc0b? ([2a01:e0a:982:cbb0:825b:5392:ef70:cc0b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259f7979sm30904426f8f.83.2025.02.24.02.55.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 02:55:05 -0800 (PST)
Message-ID: <d3067b8e-38fe-48b0-b031-8aacd1aedca4@linaro.org>
Date: Mon, 24 Feb 2025 11:55:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 5/8] phy: phy-snps-eusb2: make repeater optional
To: Abel Vesa <abel.vesa@linaro.org>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250223122227.725233-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223122227.725233-6-ivo.ivanov.ivanov1@gmail.com>
 <Z7xF66TctF2wuoGj@linaro.org>
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
In-Reply-To: <Z7xF66TctF2wuoGj@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_025507_804014_943B5164 
X-CRM114-Status: GOOD (  11.73  )
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

On 24/02/2025 11:11, Abel Vesa wrote:
> On 25-02-23 14:22:24, Ivaylo Ivanov wrote:
>> Some platforms initialize their eUSB2 to USB repeater in the previous
>> stage bootloader and leave it in a working state for linux. Make the
>> repeater optional in order to allow for reusing that state until
>> proper repeater drivers are introduced.
>>
>> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>> ---
>>   drivers/phy/phy-snps-eusb2.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
>> index 4e5914a76..dcc69c00a 100644
>> --- a/drivers/phy/phy-snps-eusb2.c
>> +++ b/drivers/phy/phy-snps-eusb2.c
>> @@ -461,7 +461,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>>   		return dev_err_probe(dev, ret,
>>   				     "failed to get regulator supplies\n");
>>   
>> -	phy->repeater = devm_of_phy_get_by_index(dev, np, 0);
>> +	phy->repeater = devm_of_phy_optional_get(dev, np, 0);
> 
> Maybe make it optional based on compatible or something?

It's already optional in the bindings:
Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml

So it's:
Acked-by: Neil Armstrong <neil.armstrong@linaro.org>

> 
>>   	if (IS_ERR(phy->repeater))
>>   		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>>   				     "failed to get repeater\n");
>> -- 
>> 2.43.0
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
