Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6911BC54FB3
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 08:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m+RZfW8dpsgCqOxXglhlT1Jo8SA6MRb7UGjWfoNH7E8=; b=WYcguzUhxzbeSvtsfxeuiKzJ/W
	okInB1r4CA63g6fvJP6RPHyXFfgIKG4KRWHs5++QjSDQ3rDJW1Zs51B6cOFlJbrW5INmeDDcoTv1E
	OcSSZ3CQvOssy4KF15rrXkDBetyeVdLhDUyccTj8C5TQW43JitBNOr37pfU6mdu1/c79nayxj1G9+
	s9LmL7zo+9cK8Tcfq8smyTzYa6NdzgNuzrKjsn6r9sDkTSDr+Gy/ZhG2v6N16J8f/tXtlEbU4JQIL
	aH+OWreDDxBOgtfATm/1sZU68uv0uRXlOHOsBVcnCYZ+AJjMxN2Ky1bEYqcKAoyZ47WvbJys7XWw5
	MFk0EKtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJTBZ-00000008OG3-0alt;
	Mon, 26 May 2025 08:27:53 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJTBW-00000008OFX-2Ggo
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 08:27:51 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so17981695e9.0
        for <linux-phy@lists.infradead.org>; Mon, 26 May 2025 01:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748248069; x=1748852869; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8TKtprFYJLtShjxUW1pvpLiLjpHD33B9E9u+DgjrELQ=;
        b=Wnufq2B3RX+WiJbh7pFoiAfcy4k+p1rJu/XokkOt+BeipVwvWYnyaGo1hqL22zHP7H
         YyqIME1bsV8Mevi+oBCy2Lz+SmcBkB9JLJvyhaujukItIdx1kAX4oQKyqYtkgS3qq3Jg
         M/+Hz4KiIeGxwjGIAte5wWczOMV7nBejEUuPuHGVufYwgOcY5jRt9Ifukf1g4QUffVre
         nsF1iwsAbcOn3Tq12qZ7GKPvb9SndjJZvbVhdxAmIsF7AJOhDuGha2XgFfR7R+dnp5yg
         ZPGtDqgvGPWCG14ioh5KOco9RkTRfZ8BTY/6mpsWuvDyrrMln/byr3j8V8GRd1mjpOpq
         OekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748248069; x=1748852869;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8TKtprFYJLtShjxUW1pvpLiLjpHD33B9E9u+DgjrELQ=;
        b=Y4mqaVlgVuHmbmtl45aw+2Di6QhyDzFHrz/wQg3/HUFDmak87EzUub9Q/RzbKuXyOn
         BMe0AhsNwbGoysKpfeu26gSbz4MH35GIJOoaTNlzMro0ne0vLm0RPAquSi4RbxmZ7ZEI
         NizzWIL4n2a592F9us5WirxddrSdp+BnDULAyvsOwb+sl7aTnzxDua4dSUAeAxriMonm
         WP2uro/MuYrUp7Hd7nyxOdRix/qOyOBB0AJltSSpKHgdq47LGmDyf5UV0IikLfva2CKP
         aTpHFrxVFZiSSlBLdZ2cWhBpgOq+dnI6ruTfRrnkDzLutPYxViMew6McHXU79225Q1Xf
         /9jw==
X-Forwarded-Encrypted: i=1; AJvYcCVL5KdjDVnZrVm/X1uQHQoXsCw6X/fpafeRC48RilFbvJQ67qZynvKEZ0DthUGGxQ0j+7gWWi3pNj4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwSeekYK6eiuhAdxwA9LdpaIGH7y8OEsg0zbH77Fwwild81ZZIy
	otT2XRnAJTw1x2KNYmvzH4Ezk2FsrxA4TAafm522IsM/4jzh9xUDniUpkAreAOSER28=
X-Gm-Gg: ASbGncvvJilDV1ZaQbCeHlzQOSd1vjU0NsxKkuGGmbI7tZ+rEm944MKVD6hblCR7zWs
	pI5xF7vAfu/mu4b9dSEyS/RMPyPHQq8McS2Tq/nQAlmwaSOQvitM0Acidj/1V/KsT3vYbDih8vg
	0UGw5r7BeBy9dpfTBu533YgvoevY/9WycdvvheTepoOPOYRCBEMhHcLcL9k8A8vAXSJIW7XzRWW
	Ob5gPpcxAKrIaGAwjRJrAeQmqg+3yTAiLTuMaZMv8m9KchiP0eoEPDp5DbHPIS6PjBIwrSF9NDO
	ETCY+5Sx8pxZ0O3ilcKuSYaGQpCBFTv0D8H8DTSfj8S0mT9bU9JtGdbLbegB3icdO0N2Rryu4Pj
	gq0fwEZF1XtpwxdhkO3K6vr9T3UnpkXjuKPd0OcE=
X-Google-Smtp-Source: AGHT+IEkmo3uWY34WkdQOOYglx90247HrshVamLntEVSTknqg2H23bK4BdCNPIcYmijHtsv1CC3prw==
X-Received: by 2002:a05:6000:2892:b0:3a4:cf76:b3b6 with SMTP id ffacd0b85a97d-3a4cf76b68dmr4961011f8f.13.1748248069083;
        Mon, 26 May 2025 01:27:49 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4? ([2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4cdde6415sm6620114f8f.60.2025.05.26.01.27.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 May 2025 01:27:48 -0700 (PDT)
Message-ID: <6de7286f-802a-4de2-9030-6937e85a5aee@linaro.org>
Date: Mon, 26 May 2025 10:27:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 5/7] phy: phy-snps-eusb2: fix optional phy lookup
 parameter
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Abel Vesa <abel.vesa@linaro.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250523084839.11015-1-johan+linaro@kernel.org>
 <20250523084839.11015-6-johan+linaro@kernel.org>
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
In-Reply-To: <20250523084839.11015-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_012750_583934_06F217A1 
X-CRM114-Status: GOOD (  13.81  )
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

On 23/05/2025 10:48, Johan Hovold wrote:
> The devm_of_phy_optional_get() takes an optional name argument as its
> third parameter and not an index like the recently replaced
> devm_of_phy_get_by_index().
> 
> Replace 0 with an explicit NULL for consistency and readability.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/phy-snps-eusb2.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index 232c5e8a554f..328e67ebfe03 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -581,7 +581,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>   		return dev_err_probe(dev, ret,
>   				     "failed to get regulator supplies\n");
>   
> -	phy->repeater = devm_of_phy_optional_get(dev, np, 0);
> +	phy->repeater = devm_of_phy_optional_get(dev, np, NULL);
>   	if (IS_ERR(phy->repeater))
>   		return dev_err_probe(dev, PTR_ERR(phy->repeater),
>   				     "failed to get repeater\n");

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
