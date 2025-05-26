Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24FD9C5AD49
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 07:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4PMmwU8Mi/79qY1cSCCRUWjBlJzpuM5mfYHsy+Yfu+Y=; b=jsE79O2DFhFebTJj42Tr+K6KSY
	opR2naxz98Jt9bozkCSH5/T+fnKXJ4r8cZo56BD993zHDoMjOWoYm1pBV7dkHD1EYGaf27GS5BedW
	Iq0OOfMZ+UX5afg4iMOgcAH6UOtqsBWyZZstU01BOHCyRdlc6/BT2pxKv7+tF+7+CJt+aKwzc3wvf
	qmuNIkRyXTbGHgP3WfCrEVKm/XYcMIQba9lDfyiAjtbHRDg7DYUo16gWrlWDJGob/58HQbmRtjz2m
	oGrzuDfRh5pnIxTT/G5uxNjz1vnk1MQafB76HdOaRvfW7azJfkGxGSeZPai9LXdWhn2G1rYMIDn99
	bJ32WBpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJSb7-00000008Jp7-3nRQ;
	Mon, 26 May 2025 07:50:13 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJSb5-00000008Jod-2sbF
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 07:50:12 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3a3758b122cso1155114f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 26 May 2025 00:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748245810; x=1748850610; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7s2TD6bDYSb15QeqSffpz33dcHGJGRttLHbdrFUHcio=;
        b=er6iGo4PcaaanXRfwQH5m0uqC3iRC9GJ0lxL2MHwEj3R9zGmpJC6BXBDPTT8MFweWN
         I7uZjFRE0SQzVjGPeC3O03iuWNX4z3wNM8JMIjDKCEKT+tCECONyv+p/C28FFQGy/1v7
         93W1fzelq68SibwBI7e633d2a6m1n5QkoKUHrB33n0NcIHbGvzpQgw+jzVXrE/yBgDwr
         IkWHxQAGInzJ/xqMh63kqAMMmOFil/CV/dJgSWoeBgwJ6RSYXnLFWYJN8N9UxlX10DDp
         LoMyfjqk2JlxGNLwxOx0Y5dMCFLitoccoVNdkpfl99ytsbG+4kmjb/Div+nmnnwfz7XR
         WfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748245810; x=1748850610;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7s2TD6bDYSb15QeqSffpz33dcHGJGRttLHbdrFUHcio=;
        b=QrpakB+4A2DvJjzP4lSac7pUk0Idh3MvSMDc2yUZu0U/wa9m0fdK/A3hrwrg7aSydH
         DQa0IF1eUCajHvJ5cP7OZaoB3KpN+PlFrHI5OhmdqsRwTMmf8ao9U/q9AIL6Dfm0R/oU
         vMlndrLdHmyyFu0KA+wePw/ocCC88s7D++M5FTkcJmfhulHr/8Nb9ooIWbeYCu54E90O
         i0SBZOWgPjPGZ8iClpOu/l3twXyspMzsItWBhmaKRXlNMNU4ABBX3KyevMjwRnRcD2oJ
         pCFwyhwarGXB6I3+pARoDfLrEeGxSzlGC02iTi0YCuytef0W6+0l+QlTdrfWY5hS7Tw/
         8VTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTgQVSkr+clwgNe9Mjo5cHrJ8bRDfALnZc0EsWxQADcAuLE9fOj+2xCVz4bCX5n82BU9P9s27mu6E=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZfuvlLJ2DgEndcURRJ4yRNb2uC0w0r31QizXvmcIy5rm+LTiB
	uuwF1GxZ01/5iFJqQR19cG4u4DWOQwiT1lVohE5QTisFk7oKkeUwAzqHYr9m7Sf+VhI=
X-Gm-Gg: ASbGncvU/o5lIC8Yfj5cFY6DHpUEZvGf1DySdKJSj6dV/by7GC09rxC1+2g50Zu/cVQ
	pbiIDlPEttCsDt3ZxqFHsw7rSY4TRHYYeEnqjZrd3b8h4vrpZnbHP4wxT1qdHkBjrsmWXJowPTZ
	kCSTBsB8oFjELyfyH5DZT6A656hw1KAWdEqC5t9ZPEHLKstBegwVxKVEnJmgrCY2GdB5YrAU7lo
	Zkn+8Jdlcd79Tr983shD1rf5SIYR3lhnpcyOLR9iXECyZpX8GRQCJQ0JuDdBzDa2X1Ia9ocD/8q
	w6Nc3Wwzw8Qn+HUe2oM2hBDfVpc6JhvGfvt7LGKGb89XiSJaJim7uiWg7q61o2ms2m3p81ebiyR
	kDo7X61+WwkTOKfn5Hgkm7kee7CzYl21rwgFh/IE=
X-Google-Smtp-Source: AGHT+IHVWT68ZiYLEJCf/N+WMc0R3baXtGAcc1HRtOWNhQ5KgUM9rath+/pJxLrpBJVB1YAClPqo2w==
X-Received: by 2002:a05:6000:3111:b0:391:2f2f:818 with SMTP id ffacd0b85a97d-3a4cb445323mr6181832f8f.9.1748245810012;
        Mon, 26 May 2025 00:50:10 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4? ([2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4ce458830sm6439665f8f.14.2025.05.26.00.50.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 May 2025 00:50:09 -0700 (PDT)
Message-ID: <00f6b550-d5e0-498e-82a1-68b0925efb02@linaro.org>
Date: Mon, 26 May 2025 09:50:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 4/7] phy: phy-snps-eusb2: clean up error messages
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Abel Vesa <abel.vesa@linaro.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250523084839.11015-1-johan+linaro@kernel.org>
 <20250523084839.11015-5-johan+linaro@kernel.org>
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
In-Reply-To: <20250523084839.11015-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_005011_733357_D83B9FA3 
X-CRM114-Status: GOOD (  13.29  )
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
> Clean up the error messages by using a consistent format with a colon
> followed by a space and an errno (or unsupported frequency).
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/phy-snps-eusb2.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index c8f14f8fb9ac..232c5e8a554f 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -256,7 +256,7 @@ static int exynos_eusb2_ref_clk_init(struct snps_eusb2_hsphy *phy)
>   	}
>   
>   	if (!config) {
> -		dev_err(&phy->phy->dev, "unsupported ref_clk_freq:%lu\n", ref_clk_freq);
> +		dev_err(&phy->phy->dev, "unsupported ref_clk_freq: %lu\n", ref_clk_freq);
>   		return -EINVAL;
>   	}
>   
> @@ -293,7 +293,7 @@ static int qcom_eusb2_ref_clk_init(struct snps_eusb2_hsphy *phy)
>   	}
>   
>   	if (!config) {
> -		dev_err(&phy->phy->dev, "unsupported ref_clk_freq:%lu\n", ref_clk_freq);
> +		dev_err(&phy->phy->dev, "unsupported ref_clk_freq: %lu\n", ref_clk_freq);
>   		return -EINVAL;
>   	}
>   
> @@ -461,19 +461,19 @@ static int snps_eusb2_hsphy_init(struct phy *p)
>   
>   	ret = phy_init(phy->repeater);
>   	if (ret) {
> -		dev_err(&p->dev, "repeater init failed. %d\n", ret);
> +		dev_err(&p->dev, "repeater init failed: %d\n", ret);
>   		goto disable_vreg;
>   	}
>   
>   	ret = clk_bulk_prepare_enable(phy->data->num_clks, phy->clks);
>   	if (ret) {
> -		dev_err(&p->dev, "failed to enable ref clock, %d\n", ret);
> +		dev_err(&p->dev, "failed to enable ref clock: %d\n", ret);
>   		goto exit_repeater;
>   	}
>   
>   	ret = reset_control_assert(phy->phy_reset);
>   	if (ret) {
> -		dev_err(&p->dev, "failed to assert phy_reset, %d\n", ret);
> +		dev_err(&p->dev, "failed to assert phy_reset: %d\n", ret);
>   		goto disable_clks;
>   	}
>   
> @@ -481,7 +481,7 @@ static int snps_eusb2_hsphy_init(struct phy *p)
>   
>   	ret = reset_control_deassert(phy->phy_reset);
>   	if (ret) {
> -		dev_err(&p->dev, "failed to de-assert phy_reset, %d\n", ret);
> +		dev_err(&p->dev, "failed to de-assert phy_reset: %d\n", ret);
>   		goto disable_clks;
>   	}
>   
> @@ -588,7 +588,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>   
>   	generic_phy = devm_phy_create(dev, NULL, &snps_eusb2_hsphy_ops);
>   	if (IS_ERR(generic_phy)) {
> -		dev_err(dev, "failed to create phy %d\n", ret);
> +		dev_err(dev, "failed to create phy: %d\n", ret);
>   		return PTR_ERR(generic_phy);
>   	}
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
