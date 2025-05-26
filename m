Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0207C54FB3
	for <linux-phy@archiver.kernel.org>; Mon, 26 May 2025 08:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y2dbptkcewMPNEHBbvFNa24L4AX+SIyliDvVdEQfQZ4=; b=c/p9gIciHZIlxvFj99mCpH9d1Y
	hevGQVhkmePaLdZI60dNOCul5rcnX2NY2YQYNrcFgDezUd2yD0JrnymrBRbbeYE0FEoGUH91gqBK4
	W+glwGT5axfAyVdVD6B29sK2pfmByYkKOstEBfNIKQqA19qwnmo5o+zlCa20CtwII525rHpx4IIfO
	1subKv06/NhGllWBPPI5aEK2dPKhtgznv8t8dBO38n7WYmdBWkAMV/S+hwqg8E8fE0tJQopgiY7cO
	VYBDNcpn7eeUyrXJ6Gk7njSkmdD0cfVHoSMjCxJoQvZbuZL5wlB/IUVyJqNzu5cs6Mv0aAk6IfrpL
	VVCXCbXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJTBg-00000008OIj-1iwQ;
	Mon, 26 May 2025 08:28:00 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJTBd-00000008OHc-2f5a
	for linux-phy@lists.infradead.org;
	Mon, 26 May 2025 08:27:58 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3a36748920cso2035534f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 26 May 2025 01:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748248076; x=1748852876; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5G6tpDiyouJsVacd8rEiVDib8LJf2JZCq2348YM5t4Y=;
        b=ONr+0GRT/m7+D3m/Ob2dBs0AUddVNbUrI9y4XFj06PtuItIgIUyWN71Zk1W+6KAVqn
         Ug1vVQ/CWflwPtsuPVT7YTqajJ45EjQ2K16R2cOtW55c9aPyynSDxzJVFKpscq9Ax+jZ
         P1zrNTlj0m67GSO7jX4c1SLWxa2jk8jQ/HrWA5DJ1a/8vYIWxRsoyRKidku6BSHvF8yF
         oUgzDOYLs/VGqMOSPMyeGO76dIwa0nyiURbNf1xBiuyC6jpx9cpdIImqEgelG38Q315V
         StjeZiK/Evq/L8G7IjPUUvJjmgRPnciNWh+uxZoKScQ0/ZRLfMJuT/aqM/pZff0oxz7M
         Ex8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748248076; x=1748852876;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5G6tpDiyouJsVacd8rEiVDib8LJf2JZCq2348YM5t4Y=;
        b=eVkrhdWlEY4q5RHe3gqLX1VffEuP0zpqvOvd6T/edxjKDUF/sYGU1paTDuubiW7J1X
         D2weKFDwHoeGu6957xsErrXVZoFFDhsC+s/UgnO+vQQHJ7PjO3TKmWYanDP/U1J0e2wN
         COkd8JUsuWscFhXuSGLU6IF4sl7N36EsTUPisvt8EG2P1mvpvKOxvOzN3a6VU1rvIv98
         tbCo8FE3sal96dLtha9rHOX8XTmURLooLeqIxhZ6d7QzpEmSpilayzVAT+AB5Lrj3DuX
         3d5z+BBmehw2A5XLnClB41dVnA1voy2bogI8Q4uwicwn9cCyMXFIHenLVMSlxydAgxPg
         YsLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGh+wOKrdPcZuNlDsOJnHdkWVtsZHhF1MYpCcTRk1BoDFvCUk6A4KwHrtDzf6gR/giPv0fQpO7hAs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzOuXWlSs9mii+djPd/id3DdsN51huc0qV2Ut5YzpVHJC1wJgn
	pezeu/WR/1U/uotUWXsPY6u57K4s9KRGXo6NbrDfP8OJFg6oRuWDxlVgsyEA+onduTs=
X-Gm-Gg: ASbGncv73WF9vDs/zOtLccsiuVUa7QoRcjZh1OsO9QNYtlOpZJ4Fw6AkCj/uUPz3V5g
	gnlBJrMrbklw4pDB9o4gBr1rPGNGKihh/CMHGgZIvwfaXOxXM0ZTjfYIJAyi5jvxueRKLn7k+vg
	8d29CgwTjP8O8kXVdVBNUoafSJzbTJwD1Msgh5yzHK4R7RvGrwXMb7/SM/KCl7doXfDxAvgNTDR
	Myc200fhvVfHzMZjk4s2dmVxp7oZPpUn3MgyyNYlNhFZgUXj/N7cMS8zLST5qs47wK6OxzUsw1Q
	lM4bU3EXNhM3oAlNECkMp9159UhKeX1APGQgFqYJNYqxpIfmuQ8AAhEcjBaNLFHhwyc+fH1RgvM
	aWOWPV/s36Y+mt7QYw2ioiz5HCAiL
X-Google-Smtp-Source: AGHT+IFywaZ7WQt9f4W28PM6YKq+YZunMKGH51H/mKJNCRL7k6NgtNSZnnr6EgePKY0RqirHPggd6w==
X-Received: by 2002:a05:6000:18ad:b0:3a4:d994:be4b with SMTP id ffacd0b85a97d-3a4d994bfa2mr1808284f8f.1.1748248075922;
        Mon, 26 May 2025 01:27:55 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4? ([2a01:e0a:3d9:2080:485c:38a6:3d01:f4a4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4c5360a13sm9086499f8f.96.2025.05.26.01.27.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 May 2025 01:27:55 -0700 (PDT)
Message-ID: <178d1344-6c0e-4500-b26f-151e57ae9a34@linaro.org>
Date: Mon, 26 May 2025 10:27:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 6/7] phy: phy-snps-eusb2: drop unnecessary loop index
 declarations
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Abel Vesa <abel.vesa@linaro.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250523084839.11015-1-johan+linaro@kernel.org>
 <20250523084839.11015-7-johan+linaro@kernel.org>
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
In-Reply-To: <20250523084839.11015-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_012757_689249_1481BA28 
X-CRM114-Status: GOOD (  14.13  )
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
> There is already a loop index variable declared at function scope so
> drop the unnecessary overloaded loop declarations.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/phy-snps-eusb2.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index 328e67ebfe03..c67712bd8bba 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -552,7 +552,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>   	if (!phy->clks)
>   		return -ENOMEM;
>   
> -	for (int i = 0; i < phy->data->num_clks; ++i)
> +	for (i = 0; i < phy->data->num_clks; ++i)
>   		phy->clks[i].id = phy->data->clk_names[i];
>   
>   	ret = devm_clk_bulk_get(dev, phy->data->num_clks, phy->clks);
> @@ -561,7 +561,7 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
>   				     "failed to get phy clock(s)\n");
>   
>   	phy->ref_clk = NULL;
> -	for (int i = 0; i < phy->data->num_clks; ++i) {
> +	for (i = 0; i < phy->data->num_clks; ++i) {
>   		if (!strcmp(phy->clks[i].id, "ref")) {
>   			phy->ref_clk = phy->clks[i].clk;
>   			break;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
