Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36555D29DE4
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 08:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bS/55tW+GCrNEY8RBFR0T3bLKwJknS0vqovQlGx8ieA=; b=Kqwaif149TCejp+Eumt9JVX5T+
	FsoH8Vmyhg5sH+c7UdrrweNr32iubwNdVLtATeOg4uTAqD/ZP+eEl3MnOjH0h1GW3hu9OvMGrsyJD
	ujdNbvDa/sNxr/U8ksXb1T8OFRx+TPPYLwUGKvEYP4WNT78n+6jcXHr9aCrWwmRyIEn//kPzx6Oyk
	jwu3oxwbDwMHs05Zr983dBZgmMq7v0/jFLwvavBrn4SlFg9/3kImai2e/8Onxw81o5dTl1UB90Ozd
	9arnD73lOkIl08XLvURx8q9HFMlVC26F79Ce2/EC+EmUsXctFydOfbBzrFoNysOS4XDar4JrWG+zB
	UKo33Spw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZWi-00000006iSl-40bv;
	Tue, 13 Jan 2026 08:13:20 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZWc-00000006iQK-3UNe
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 08:13:16 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-47774d3536dso52507965e9.0
        for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 00:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768291993; x=1768896793; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1mR25HREBGLu0uxiDk/Wk1hfEZP7iw5HJ5+Ly8j4Vgk=;
        b=VSNxDNx3nn2ogJ8N+baXacYpV27NMC6Re1aYfe0O/NormMFyWMGavINAkb6cWPVaAd
         7tlEJMnPYtxzRbf7H6WY48mGHcFvF9I9emLxy1X4X2xKgbFIHHDU8+wUOSssylXEMeBF
         E6CSqIqYRUWTfiXBanTggPFkUPrrXVujPjSLAEB+Zvp208V8WQ8NwYEneg253P+AW+mA
         Gi8hJHLd3NAwTHaZwBT2fE36DZzRMDGfJSidJ2SjwfmoIJLM/zmXv3uMOiCuFMkONsbF
         2SgbzH1on+7XxYGR/uRQCbG6QagS4PC/22wX0yzoC3VwDZLR9J+DfoR7Ib2o4TAh6M40
         zeFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291993; x=1768896793;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1mR25HREBGLu0uxiDk/Wk1hfEZP7iw5HJ5+Ly8j4Vgk=;
        b=P1rhqUdnSt3Bgy5k5Gu2hODugmZHFy3GVuDXxIgwbpbWX3IwpRxg/R6whI6Ye/9IEI
         gFrTH2O0cunmsyvZ8Ml2A8jtopT4wBkX1kWX6dCSwd6c1JjlLA7t/wWEbFoEaZJ/kcrH
         SmQQLxapjxo84UmQbwNebHaf/GW7FZ6pTOtPXMoC9zyZusLM9zp24/dJ3hip45V4XdkX
         rBxiteJgO4an5t8JQna1PWn8WjzVfOzg9tvIUEcy/v4MsHMWt1kCSugUlxKVPEvuqA8c
         p+cENnhOXCeKC+Xvpl+X5dzf4QcIjW+Q4uZTtbvXIQCFWIolMK3YOpAMgeUp51CxcWwA
         o6fw==
X-Forwarded-Encrypted: i=1; AJvYcCXfejYtIoa5Pyd7NvwTmwsqH0/MlOUKlYzFIPT8g9BR7zx32s5qe71aaJ8cYm4bNrLNB2SmMV+r+A4=@lists.infradead.org
X-Gm-Message-State: AOJu0YywWPh3dF7qH/rOijN3Q1yuiaKBY0pkAbM9qBSx7I1BU1WPcb8n
	Y/zYVyvihRT/p9PLVJ0rJ4In3th/KDq2fiPhCWoo9vgg6xwEIWWb4JKKYTPALlCxAbk=
X-Gm-Gg: AY/fxX6up1PwmSExi1KOKPnF+x7wVniH54dLu1VYKr9fyWago7N+C9y0MStr9AuVx5f
	cRQh63VR94uC/Aor0hyTolEOLZ0SvBsMzjGygZb1BXH1KF5+LxJSYSG6EdaYl94enriaGKX8lTt
	BUZhvbSCpbeZcGXxNKIEu5QKVZ2GodtZYR9dkhTebYtIyoxZLsmbD08xoyrB/zzzUmaA0DUPZzv
	oNpcm8263t2PCpPRUNS2uP9Rc1QA/xBtZv6CiIzQ/33XhCFT62FMXhtJ8/UC89dxBShDoT9wfLx
	ipgDyObRIfzbsh9Bkl+NVqBv8s2j4aHQx4/RGhznGKbglDouePTIWm9ZhUD9wWNNgQ/st+Z8ygh
	Ufl/bhlWIQlpzquuxCcI+xGqh6PBDLs5J3iCQnc27oDsJ48cE0T4Hj7RkqJmJWjjmqs6VHEjDr1
	uU1HgcpVqXlpYqvpXeiRIk2WKx6FvSk5PfnPObAb9qjz8Es5wIIQ==
X-Google-Smtp-Source: AGHT+IEgcmY72rCqI7X0/U8zwBCvN2BlRfRJApLQbN0adnG2w5XdOoMooZI08ASkrAExinOsOkzGNQ==
X-Received: by 2002:a05:600c:3103:b0:477:a289:d854 with SMTP id 5b1f17b1804b1-47ed7c061f5mr28881005e9.5.1768291992907;
        Tue, 13 Jan 2026 00:13:12 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47edee4cbc2sm574315e9.4.2026.01.13.00.13.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:13:11 -0800 (PST)
Message-ID: <ea0a9ee9-3cb1-4d08-aa6f-91bb91bda816@linaro.org>
Date: Tue, 13 Jan 2026 09:13:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v6 02/11] phy: rockchip: samsung-hdptx: Use usleep_range()
 instead of udelay()
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20260113-phy-hdptx-frl-v6-0-8d5f97419c0b@collabora.com>
 <20260113-phy-hdptx-frl-v6-2-8d5f97419c0b@collabora.com>
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
In-Reply-To: <20260113-phy-hdptx-frl-v6-2-8d5f97419c0b@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_001314_878397_25938FE6 
X-CRM114-Status: GOOD (  12.27  )
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

On 1/13/26 00:20, Cristian Ciocaltea wrote:
> rk_hdptx_dp_reset() is allowed to sleep, hence replace the busy waiting
> with usleep_range(), to allow other threads to run.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index a65e96694237..89710066d70c 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -1042,7 +1042,7 @@ static void rk_hdptx_dp_reset(struct rk_hdptx_phy *hdptx)
>   	reset_control_assert(hdptx->rsts[RST_INIT].rstc);
>   
>   	reset_control_assert(hdptx->rsts[RST_APB].rstc);
> -	udelay(10);
> +	usleep_range(10, 15);
>   	reset_control_deassert(hdptx->rsts[RST_APB].rstc);
>   
>   	regmap_update_bits(hdptx->regmap, LANE_REG(0301),
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
