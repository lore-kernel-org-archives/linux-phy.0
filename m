Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F82CEBF92
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 08:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ji5J9vy1SADTuwY4FOmO7T5trNOvIABAwzDlK4Y8TK4=; b=Hygp2hFXTOI0iW
	raseDqaaUA5YaDqLWVV9YogmoM8FOEdDIyH1Xc7Hr7GDH4I9w+RgnWv3/Erpi6YRmhsq6hBvSsHKX
	TANdJQpssaMPRnC0ODPO26V2hty2w+CyI3g69fljz7aBUL+lwccZ/DF8uqnRaGhzP9j+gkKO9uIog
	FI7+X8XjsaFOi245kW/ij6/g+F7mZMgwfPFsdI6UZ1YHN52rJtFB01HrX9+jnwds5W7ommHXkUapY
	EtKWeInKVTKmw/8w9AgT3zVbb29Z/JyyN/tLXPIuM+jgLnty3RHrfOnhXVK/JimUeH6B2/KW+u3YR
	0ijwydj5gnRHiHTPemNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHX9-000000007dX-2uk4;
	Tue, 18 Nov 2025 08:57:55 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHX7-000000007d4-2t9r
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 08:57:54 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4775e891b5eso27222065e9.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Nov 2025 00:57:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763456272; x=1764061072; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rC8kpIg7n3IbnpWjH0XcjwgNz8ju2WF1/n1qfDY88RY=;
        b=F3Xcc6wgO7vDHqrn95Zx3ixGC8xz0CkoPyyYnZH3ohccK2ZoQqx+u98Cxns5qZR+kz
         JUNaD22xtH5XYEaYeMuott/LfhD6FZv7Zja2OlEehW06oQbxHz4j5BDtwhVdet/2IWpC
         OkoANcNKOUomHmA/UM1HZ8bcdWt/HaLd2RmMIx4eMTTWB1uyIJ19R3GzVQGWOlS6RYL4
         T/sYVH1vyn8P3yZprQZoMElWog0BfIWGj/tbUHh/zvzv6YtBmylSSjxlUGTVpSMNwW/S
         FlHL/jFaBSKXZ+6rpJUXzCJz802E3HJaDv6ovt3G7KL2KuMnCOeIIHTqIK4qdMpnHNQf
         T8pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763456272; x=1764061072;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rC8kpIg7n3IbnpWjH0XcjwgNz8ju2WF1/n1qfDY88RY=;
        b=EdqOpQWh8WCRDsbOuuorJPgLodD+ORoR+riHQh6xp5/YKAHs+6G/DIgCnLffnnXXNJ
         qnNQgMSCYgUOvOGWxA2Z4ZqzjSuMmVrcQIOAYCwxfWzc/sXU82VYNaU8UrcBTd87dShm
         n8kx9vLElBeAI+wdqtzyEk1Usd/duE7lKpMZfUr1gTeHDS2Ygo5EitOOE5cXuWj438t/
         KmX94gaJUJOUO7TXSahL3cc483nhvcEUZ3krY6ibhzzYKIiVbTqbDocW4sS+g+GUn5JI
         Z1JuMaQdn6A3+EHG0jvjV05hE3DFzCPHM9O6c3afCUrj2k9oY6ks8laN+gw3u5fRj+Oi
         UxqQ==
X-Gm-Message-State: AOJu0YwAtWUNAgyFGeAKY7oowyUpj9QNk8InBpU4idzZrE6Mvd5NieZl
	3Ur8Ztb1tEs/FxbyYFNv3Hx6jHqVGkOl+sDIy6bxjaNs3SPZCVRXmkdc8fJa+ah2ezY=
X-Gm-Gg: ASbGncsL7lwXNY4kTiQphaxwL1gQlHryX2M89yOSwy7Wqfp75+23JdT9W2P1vj0+XlI
	y1I+tV3HTXGAeqHLM5MQgnYAQ34nysE8qRLIMHvAwCGRn5+eq5v4OqiiYQXiU5UWjgtaJOZQPhF
	X8N3dT0lz37KCieLANc/hRG8K+AIJGv80g5Fzrlh9El03Ge4BxYXjDiiB8XxjnlMUZmONx5bPjJ
	7kLbAwLTg7jCQw453CwnPWNAf9eFGTv8gZG9xQgycvmVwMRe1NdgZ9J3XJ5+nSxWhgf2aNVrfFi
	n3HnQCipd2tYDtqhXpWLg5JRsp5T8yuVJctV8A3Sq0/gRxsweZ4ugOcAOAP8vT6HWHAQApIS/J7
	inKxyzHBulDimKiW4ihpR75+y2lb0uXqW6Yzd1SVVacmYLeEisd2+pNdIDfTik+Z0R/m51JSqp7
	+sDRmxI5LjpayBXJ3vGn+egP19npCIU1avBDMOEdiTddfrplqg3NwhWNeS6q7sOko=
X-Google-Smtp-Source: AGHT+IE8nmDt9gjoK7L165XWZWGzR+lbLS4TeXCh8A8tp8olz3j0G+VPiXQFyunIBjunNWGm29ES3A==
X-Received: by 2002:a05:600c:1382:b0:477:3e0b:c0e3 with SMTP id 5b1f17b1804b1-4778fea1743mr144063505e9.32.1763456271853;
        Tue, 18 Nov 2025 00:57:51 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:366e:5264:fffe:1c49? ([2a01:e0a:3d9:2080:366e:5264:fffe:1c49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4779fb67e73sm123932865e9.0.2025.11.18.00.57.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 00:57:51 -0800 (PST)
Message-ID: <feeb51c3-bc83-42aa-9c10-16aca1169afa@linaro.org>
Date: Tue, 18 Nov 2025 09:57:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: core: Remove extra space after '='
To: Claudiu <claudiu.beznea@tuxon.dev>, vkoul@kernel.org, kishon@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20251117103422.4041040-1-claudiu.beznea.uj@bp.renesas.com>
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
In-Reply-To: <20251117103422.4041040-1-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_005753_746995_817C81FC 
X-CRM114-Status: GOOD (  11.66  )
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

On 11/17/25 11:34, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Remove extra space after '=' to comply with coding style.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
>   drivers/phy/phy-core.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 04a5a34e7a95..8a1e8c15e688 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -361,7 +361,7 @@ int phy_power_off(struct phy *phy)
>   
>   	mutex_lock(&phy->mutex);
>   	if (phy->power_count == 1 && phy->ops->power_off) {
> -		ret =  phy->ops->power_off(phy);
> +		ret = phy->ops->power_off(phy);
>   		if (ret < 0) {
>   			dev_err(&phy->dev, "phy poweroff failed --> %d\n", ret);
>   			mutex_unlock(&phy->mutex);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
