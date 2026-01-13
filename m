Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03D5ED29DE4
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 08:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgVGst80ajscwZddEARS6mQoBytuiyTWknvo96Wwmyo=; b=jPAi2pz5tpfg4d
	g5/uMoXzct1IvMboQJKr8/az5Ch9h3BXqVKF1yoaf12qbnVUjc3uXtUiykxMJWFwqeh1xbVubDab+
	/MAGTYkwVRpkbyT9nlGNj244LrXs9yh9Mkj92ucHFDOVP/4IUHbaDiEZ2bOIzJQ/8XkZsuKbFEkOF
	JPRsVz9yHJwy8RIRyfU3MoLg4kmegH+7qqskIVB7g7AG8TGgwZBZaSC0ikcH/2dizJE4OvoaX28p/
	7nBtZlVQS8JO7WaRaqtkFS540ZCRve/8GD/AnWNpgeUNL1djxPpvVVBPhiXyTfnTA8mAkXV+ZbZt5
	h0OJ6+0NGZgmAO21Yjdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZQu-00000006hlw-29s5;
	Tue, 13 Jan 2026 08:07:20 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZQr-00000006hks-2uVq
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 08:07:18 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-4308d81fdf6so3734797f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 00:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768291636; x=1768896436; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0kBiGdnwoKI9eDWcWQTGe4djU3SzpP0pSq/NoI+kjks=;
        b=PX9lqE+6/Eic2peFKr8JIKcgNrEnGBlU16dJquBDrktSEA01VCpf4vRAwAoQljNwL7
         fxQTXa/hbzJUyjYbJ+iASuzu2+Qjrgj3gORd0pg+cPujAN8Bprci6jVlpk5Z1hBCA1wK
         xq0SWh3yCNGGmRcPzMwYiub6kgSiYYM6T55dKVo9KrEcw1whOU/aMWcxS4ff7VV6LzLc
         hnB2TE6DzkXcIqvRkph2MPdCwdwXS4geqcza6lTrPFUam9BewiJyWAorkt3O/mm8C/ld
         ZTcOEKEbkZJ/+5iDIPPXIXqW+QvtSY4DY/Q09PdY6E+viiZAJ+x54k+mUKuJxcyA3tgH
         ScOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291636; x=1768896436;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0kBiGdnwoKI9eDWcWQTGe4djU3SzpP0pSq/NoI+kjks=;
        b=vj/3R6Wj0A6OjJCaVqKG8ztag3Wp0l7pKFw9sQJ/zbfCwFSGlahWbjHPSeTt4vz5eP
         IbXHo4stw7keakU9tguzfUekabmOCOB3AgIuVTvwnK7jZubkfCPBitx93m/pGGfw3uYn
         lCCF2Et6AhnEGBqTlgArQ9oo6iqYr1cNHXQ6dF7iQpYsoMT/9stE+vIEU8yJ2tSt16dy
         cwy2DyCVnaCSXUG0Qtw45PZH76lm2V7YTVSC6cH/4yE0b2tBMlZZWzGwStl1+7JlgrER
         YS58GKav7aEmHNGbO45tGDt8o1rcN6t5yS9kzZHw+KfKanw9rzEwNIh+oNvaWdgtOnnX
         mXnQ==
X-Gm-Message-State: AOJu0YytOWBo9nDSxYbwSdwadY7CIxhb7ZFudP/uGRjsy8xNVQMvgupl
	yNXX9cNLkSB4wPpSA1UbELpbep0FGG7t9sOyTbdzjsz73s1CgsTzB//lS5MgVgA0P6o=
X-Gm-Gg: AY/fxX7Vz3vPAIaCfAzLvLaaqcWkMowaQAKRWZhp0BzHJ/Nhbk0kRjMipAYnDsD6ZuR
	y+fpjd6tAeJVjcpOhVxl5b8kK/raU1H1BoQEa33LLWGPCHDlq3qZw7STkiZvjgheZzR71JLjyBN
	lpEhGhQ8TMu2F9Hh55uuwofvYJwpafxzT1a5duQ8W893oG4T6ln0xAQzXxnF2bSpOJahZ88Wyzh
	Dw8DrJfks1rv/smnndVYowpAkHXv3cuH9JGT/CgbiQcXYsZJZ4C/XH1E4prw0x7tMa14JCTwwPU
	fkEz79vAUkNqR5p3oThR+GyuPRieBL/Xe/a356128SmCkaOXIiA7sI5q7AcCg+nu1H6FxTRV7SS
	2Zkewko+M/mBNv0wOfbNVXbIU1f0PwiLTnNOWMWmzukp/4DfwvAB4jKRVBK4Hz/6vlmLN4qdmr7
	GzmjLncU5Y5By1kMl2RoBL3QqeB5VqA18/R2hGn8l4c+VZBRuGIg==
X-Google-Smtp-Source: AGHT+IG6fAtmI1EQMhuKQOIVw+wGIFjBkyZewLv2jXMLbnUnN9fabCWnKyTIrO9pUyyRVG2gO/7/VA==
X-Received: by 2002:a05:6000:178d:b0:432:8537:8592 with SMTP id ffacd0b85a97d-432c3628106mr24027748f8f.4.1768291635424;
        Tue, 13 Jan 2026 00:07:15 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e180csm41710261f8f.10.2026.01.13.00.07.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:07:14 -0800 (PST)
Message-ID: <2f18dda9-7163-44bf-a075-bdd46ac5cef8@linaro.org>
Date: Tue, 13 Jan 2026 09:07:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: rockchip: inno-usb2: Fix a double free bug in
 rockchip_usb2phy_probe()
To: Wentao Liang <vulab@iscas.ac.cn>, vkoul@kernel.org, kishon@kernel.org,
 heiko@sntech.de
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 stable@vger.kernel.org
References: <20260109154626.2452034-1-vulab@iscas.ac.cn>
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
In-Reply-To: <20260109154626.2452034-1-vulab@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_000717_760951_7C775378 
X-CRM114-Status: GOOD (  17.32  )
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

On 1/9/26 16:46, Wentao Liang wrote:
> The for_each_available_child_of_node() calls of_node_put() to
> release child_np in each success loop. After breaking from the
> loop with the child_np has been released, the code will jump to
> the put_child label and will call the of_node_put() again if the
> devm_request_threaded_irq() fails. These cause a double free bug.
> 
> Fix by returning directly to avoid the duplicate of_node_put().
> 
> Fixes: ed2b5a8e6b98 ("phy: phy-rockchip-inno-usb2: support muxed interrupts")
> Cc: stable@vger.kernel.org
> Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
> 
> ---
> Changes in v2:
> - Drop error jumping label.
> ---
>   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index b0f23690ec30..fe97a26297af 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1491,7 +1491,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>   						rphy);
>   		if (ret) {
>   			dev_err_probe(rphy->dev, ret, "failed to request usb2phy irq handle\n");
> -			goto put_child;
> +			return ret;
>   		}
>   	}
>   

Good catch !

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
