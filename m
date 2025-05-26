Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3D0DC54FB3
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 07:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tb2Bay1R8RCrGAaxcE34ANXLE86Xzk87z3BDvQSH6dw=; b=p2fe1BVZ6jJTNHEC9WHiw88lEe
	0TaRP9KSUtxoKaKvQGtbKd5+9aSrFBruiPE2zMgpXV4NzNzgY5O7P6qE2mN96Sqw7vq2AIbrIBal0
	5hQ8KWr/4Yq9KUZg9CZhWa0pXktlXgHUMTnJafqM6cE1EKtZi1h3OEJmAZyIeHn1wPjaiNgYsRT8J
	vcV4oQILjYF4utkxIv39mjW4SwNjXZsJ5/NqwaNCeYBTeJjjvz/PA63nRZSJUlpiN+SQpXy+qidT9
	wYhuRQTyzb2cPrfl4RRtdHtbvvFQTZ2w9Fmm8nN8r1Th6d3BbL0Dyw5vYEqIvvpViqRbyi0wE5OCe
	1GoKBWYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJSap-00000008Jl6-2b4k;
	Mon, 26 May 2025 07:49:55 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJSan-00000008JkU-0p4N
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 07:49:54 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3a367ec7840so1401293f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 26 May 2025 00:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748245791; x=1748850591; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AOJrJ+WcHdALj8ZK6IlDndbV9NrPe74V0z2ftU80FfI=;
        b=V2ZVbOJ8S4ne7F34Xmls5c7vabso1WAzmrk6X91dKy4cFyGeiLEeWlY07UPNoYNYuL
         wfCkrWt+2TEUs0r+1n3UiTTtsBH8zY4Z9uIlyTueHueXwFnr2QFm1iEmh1xP900nyyTQ
         y70ew2Y/3RkO3/SXKsrw+7kRkVtB0O51IxrBQrxv4jTSoZfjg5y6TIC147nMX3cpQA9J
         zi1cpiTmyfX+LQ1KiRi9TDRfhiqIJ+R5pfg5c6mGrtDpwVxivHaiql7H/D5jcYFEk/89
         L0Be2UY0UDLrFHlJklCakSS6cZvEa/e8gp9tpVP1fk+ylWlbjdvC3PjddewMicC9ay2H
         nYqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748245791; x=1748850591;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AOJrJ+WcHdALj8ZK6IlDndbV9NrPe74V0z2ftU80FfI=;
        b=rw0cZAUz/5na5qN+phHMa6ZbgzyrgAoQVNmgmK8LsxQwf3AiumwW3t4B88lNghOVwh
         gJZvZAPE1wJ3Hej7QdUXY3byPa/AAzo45PYIJv8DPaG5nnbvMdmMRI0HKK0hrMgi+hrW
         b+m15SN37GKG9+mELExIZHij/r6AUMptv7vXqZWRNJr8qwZV+o0+NBHCm78vktuWtI8h
         7zxllgwEqjkCqD5Tyowea8Nh0cmD19gZ5vUL28qDnk7XgIgdb+SKsk5N2Q/gfzEZAXhG
         uzJDAqJJkiIBoscMPBRB2TEQk4/Jw42sNCl9sUzOSL5/NkNWoY99yyC3T/ivmqSJXtba
         KLEQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5/I4nKDE9Zm9j5CzSujVtcxKnpyVJAfpyucwbG+xcInyT3d69VfgH4LYLK3YqnuPY7a95NfwrvsQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwF7G6kl9tqddoxEpuzwMpY3AHwhXY2Q66jRoD+YA3sfK24Gpw0
	uUp+a5zJ59KUHV6ttNQiIVtDBVy2So4ZDfY4eMZFsqrNl0RuaYXl7/+q2Dw1fLHoAEo=
X-Gm-Gg: ASbGncvG0UIw2ivDZaRO1vhdtUQ8AI/jPIedEZoLlB2KCGFeMLRzvgy/P6NDpMKRzPI
	Lgo2knliC4veGNyJkYtkIcPbiTDlc9tNMSzP9vbz56iLYdm9rM/OFInuFwLNy4egKP0P6yvUKMM
	79FbovHxXFMO1AoRZKUhJbY+232cCePgbWgHwheNryNqvRC3j0t/enpTQh2ImLb+Pid95zGopF+
	GZfPNQH5nBdcgBHLaJCczFHdK8NEMwHm+WrITRKPFcXTd42Cn9lVNAcvaI1jMtkzRRPhDGQmE5Z
	LtlYbgAcqAsiEGPTZSIuDp9vAcBUWy1hgtSnFpmvRDLoOTtbexHKWwE3maNiAm6NLiHMrqV+zYq
	IDCrr+OCI3cw8V1JVeAVn7KEhzMoZ
X-Google-Smtp-Source: AGHT+IE2QRNyeWAqbbRxvo9gVKikVL04vtydrrHrGM1Z/4U24oHBwqOt7h8xJ1Ql9nYZOS5KSXuQDQ==
X-Received: by 2002:a05:6000:26ce:b0:3a4:db49:94ad with SMTP id ffacd0b85a97d-3a4db4996bemr1006829f8f.13.1748245791552;
        Mon, 26 May 2025 00:49:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4? ([2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f1ef0b20sm234954645e9.14.2025.05.26.00.49.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 May 2025 00:49:51 -0700 (PDT)
Message-ID: <6e2d7c7e-9464-4936-a738-5caf1a363125@linaro.org>
Date: Mon, 26 May 2025 09:49:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/7] phy: phy-snps-eusb2: rename phy_init() clock error
 label
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Abel Vesa <abel.vesa@linaro.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250523084839.11015-1-johan+linaro@kernel.org>
 <20250523084839.11015-4-johan+linaro@kernel.org>
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
In-Reply-To: <20250523084839.11015-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_004953_239284_00828AB2 
X-CRM114-Status: GOOD (  13.08  )
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
> Rename the clock error label which is now used to disable all clocks and
> not just the ref clock on phy_init() errors.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/phy-snps-eusb2.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index a799c3d2bcfb..c8f14f8fb9ac 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -474,7 +474,7 @@ static int snps_eusb2_hsphy_init(struct phy *p)
>   	ret = reset_control_assert(phy->phy_reset);
>   	if (ret) {
>   		dev_err(&p->dev, "failed to assert phy_reset, %d\n", ret);
> -		goto disable_ref_clk;
> +		goto disable_clks;
>   	}
>   
>   	usleep_range(100, 150);
> @@ -482,16 +482,16 @@ static int snps_eusb2_hsphy_init(struct phy *p)
>   	ret = reset_control_deassert(phy->phy_reset);
>   	if (ret) {
>   		dev_err(&p->dev, "failed to de-assert phy_reset, %d\n", ret);
> -		goto disable_ref_clk;
> +		goto disable_clks;
>   	}
>   
>   	ret = phy->data->phy_init(p);
>   	if (ret)
> -		goto disable_ref_clk;
> +		goto disable_clks;
>   
>   	return 0;
>   
> -disable_ref_clk:
> +disable_clks:
>   	clk_bulk_disable_unprepare(phy->data->num_clks, phy->clks);
>   exit_repeater:
>   	phy_exit(phy->repeater);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
