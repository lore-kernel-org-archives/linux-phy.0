Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 313F9CF2597
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwwbjBYeOqmWJM1p3joD6313z9FCfNVY9YtlHWfeJII=; b=Jn6Xluzz9m6GMR
	qCbKzNVhczIuewdQ+mt/K+AXkjvsNSCSQFhrOEkVDcelJvne0ewg7xLC5gARIZTEyuAPwqdYYeOjE
	rjyUty0zNJHEevOduijTkvG5ZW1yXfgl8uQ3Q5mwto/PqcIbnT2FU2QvdHrcPOvTRZCxn4Oy/hkhR
	fGn9Q8xtCHAHWxY7y2LODZnGMpG0RmS8xxifAFiiw6/06hfmaBjBrlOhhI0WkJBGND9Gh8nmebN9x
	Xx4LsLEQU6tHJEWkEPzx8QcLfjY4rvh9zCq/UOTLAJc6pogQiOhEw0AGHDKaPsaDtuNAlu50CLZTZ
	Prj2a1e2l0g9kAflN3nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdds-00000002nj0-2ii3;
	Wed, 19 Nov 2025 08:34:20 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLddp-00000002nhT-35k9
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:34:19 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-477a1c28778so38885485e9.3
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763541256; x=1764146056; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w+/AlCqKHgv+5W9JRi5XzSllXLdQfh7XBTDVysKOlDI=;
        b=JhWCBQ5YNmBWDdBNxu4mo2uRIQrviibXcMKVlFtlbalwWd2fLQVaZuw/DD3XNiOWD8
         +KrGsYbj8E+n6or2YX4HZMs7hWYtloBrI09etSyQZnrfNHfTQaVYpcpcny//7hmnntdk
         F+vmX1dft+ffojS4zXSlQBfjbCciJLIBXLqnZOUSgLWbjpsXWqsFm9Uptrazm8Gj6iQB
         B5r+04S1sTt/BuQ1vvik3xeTWARov7vrQ0DYe0ePDtP9VEaLnobgCuL+jNNaiw5tAjhh
         gDPw13pb5d5vLhigbEKflFoKz4x9VSdnoQljNJy44wLI+wf0nn5fKXniQF3M/uSLBgJ9
         Ze1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541256; x=1764146056;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w+/AlCqKHgv+5W9JRi5XzSllXLdQfh7XBTDVysKOlDI=;
        b=tIc2+GjGmMn3wfIqijOpVCyzwPmwgHqftUCKuRYOJHPhyapYqcqYt1FRHE8RBKO9Ip
         hDUGfvru4Q/lyhXLayL1N1L9nq21F0DsAFnJRJs01zUUmJskI0llwVynGTEfgjAz+Fia
         7b7djvuKDpXyRMIwrXH6ldiaZRDffVhiGGYSoPKCYp+opPC3Tbv8A9Od6sWMOIodHTK5
         wXC9HGsVxdysY6p/HAh7NIqoFxbIacwqDq1oAR8xfdp3TSrUnAXgg9QbH9L9DffX0eI+
         kYKPVKmfrROnNhzwb8Sj8SwjmKT8P40homo0mfMdvRcTVQ7zSNpPT1Uma/u6P3/3S+yC
         HtnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZk67PIs8lN10QsIioL49Tv5neBNPK2+rxN2YVXoJWhvdzoKgGfJIvPBPTJnfp2I8p4u9tBXqbinI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxrT6gK2A8lcddhUi94ggTuRCyQCzlDTIJSBRMJAP9QouClJ8mG
	UWBksAjRdOwua0oNJPQsLrc5SuP9FLS3kmN6DxWF/vHFwyc0J4BX36OcUY4twj//bOQ=
X-Gm-Gg: ASbGncu910EQ4E6o/FAeHk7JzlzsuwsfJPWvEKhxoS2wdwv2QryBi3eCSF9gcRticHn
	iBN8A/XJ2DXDkT/9gk4owI0+AcHDZFWUj7wgK4gYTYFCS0qGY8WICZ0Wlcxe6JkfXEueMRUco25
	oRK+aDUHguIzm38GBrp2VXL6krNUz7p+7q8i8OyyaY9JsMkVNdvsp16ei59+C8g5eXDIN54Gub1
	uN1E0ceIQJMp8ymZ9vGjLhjEuWE4csmTVhh4DBstquWH6mUB22ko1v8IIdybOBlcOWt3ExOAf5V
	1yEbe/bTArdsdtGDuqeAzgIrQN9EG91N37qRebAZuNMgL7w1katJb3yFrCdiA1eGb2QFsdo5AWV
	bQBtT6PbN5CU4IqewXlDRjFy9oQx5yemyjmeRj5OXHkE/uHyxsjhoxk2SJSP66sy8lSCsGELvU+
	9J9UhUDu35Dvs3VmFof/IRrfBMDb+CH+Wb8QRsLa307sOVFpWRrhRwjDMeuVB/ZLppm1I7GfxKr
	w==
X-Google-Smtp-Source: AGHT+IHVp2PGi8oPNPdtYdqf3AmS609D+mT7/vePIQoYDCp+mgoVIZvn2Zu2WgFpzUuhzVS0VARa9A==
X-Received: by 2002:a05:600c:c177:b0:477:7975:30ea with SMTP id 5b1f17b1804b1-4778fea1336mr196095645e9.29.1763541255662;
        Wed, 19 Nov 2025 00:34:15 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad? ([2a01:e0a:3d9:2080:94e4:fa88:414d:e1ad])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477afb54774sm19335905e9.3.2025.11.19.00.34.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 00:34:15 -0800 (PST)
Message-ID: <ae29237b-6b72-4755-9816-8ea0f935aeb5@linaro.org>
Date: Wed, 19 Nov 2025 09:34:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: ti: gmii-sel: Add a sanity check on the phy_id
To: Dan Carpenter <dan.carpenter@linaro.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Michael Walle <mwalle@kernel.org>, Andrew Davis <afd@ti.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org
References: <aPJpB-QI8FMpFGOk@stanley.mountain>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <aPJpB-QI8FMpFGOk@stanley.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_003417_805485_94C00B66 
X-CRM114-Status: GOOD (  16.19  )
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

On 10/17/25 18:04, Dan Carpenter wrote:
> The "phy_id" comes from the device tree so it's going to be correct.
> But static checkers sometimes complain when we have an upper bounds
> check with no lower bounds check.  Also it's a bit unusual that the
> lowest valid number is 1 instead of 0 so adding a check could
> potentially help someone.
> 
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
>   drivers/phy/ti/phy-gmii-sel.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
> index 50adabb867cb..6cfe2538d15b 100644
> --- a/drivers/phy/ti/phy-gmii-sel.c
> +++ b/drivers/phy/ti/phy-gmii-sel.c
> @@ -341,7 +341,7 @@ static struct phy *phy_gmii_sel_of_xlate(struct device *dev,
>   	if (priv->soc_data->features & BIT(PHY_GMII_SEL_RMII_IO_CLK_EN) &&
>   	    args->args_count < 2)
>   		return ERR_PTR(-EINVAL);
> -	if (phy_id > priv->num_ports)
> +	if (phy_id < 1 || phy_id > priv->num_ports)
>   		return ERR_PTR(-EINVAL);
>   	if (phy_id != priv->if_phys[phy_id - 1].id)
>   		return ERR_PTR(-EINVAL);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
