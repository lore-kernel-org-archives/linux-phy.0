Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49836CF34C0
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 14:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkJT7rj8Cyxw4r0VXCT70wBms+4QcXI3QzWAhHJJhdI=; b=L4+VXgrzcXAItM
	5xOFdGCQcpqxTwa0S0t36U2okcAQhM8ApOichCo0Il1jCV37lekn0/CMF7PMXc+cXTBBIZ1S5Z8qy
	AIJwR5A+EgVT+BuiagccgxR+Y0IjKeSHoekDyOTcPE449FNaUc6I9GVTK0PA080ZixKNLZPMn/xdD
	7+6UO/eNDvu3zTHFsw9tMa++k5iObGachNv1OWSiIzhqi0ZX+RhlEfpLi8MDGgP93KEPgux+gtNxC
	nt3EQhxMTb3JUQn5QfV27Qu5WhS1wN3TpW/1Xxa7Zcxp0Xe9KWyP2gnKmfvGWCLQqoW1PKJRKjhH7
	5ydfKe5cY13kvLDA4NHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjV5-00000003PpF-0BQF;
	Wed, 19 Nov 2025 14:49:39 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLjV3-00000003Pok-0aeA
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 14:49:38 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-42b3c965df5so3969423f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 06:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763563775; x=1764168575; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PvzXT1PDok/yQbdLDJPIegEZrHBcAnX7M9j9AL4admk=;
        b=DkMP8Re/buOhGolmD6muMGj676gWgHAkZjdvaI5tCABzXuXr3mXQwcUgZzqhOF0ICC
         EVRy0C6J2qP619/GOcVwIMINQzHxz6TE8FQ1KJfPZbdUJk4sPXhssX9kgkO6FfmRDKBl
         A5wVDNUUc6zSHpKKc4jGqTTvlTj8TJCELvhrEVAPiRnEy1psYr6jGMjrIog3NOndWgKV
         B75YXZmPlIMqOrT83CzDbfurJWMnjIvGCNXth0mc9u2F5x66JU/YOHcxLMhmJBS+5oHc
         7WCrWU+VUNjkkVXkMoYMexLAIeyrZWc4+hMy59jXZlGCzQWJ7f/FFz5Xuv+rjgFHhRxN
         fV4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763563775; x=1764168575;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PvzXT1PDok/yQbdLDJPIegEZrHBcAnX7M9j9AL4admk=;
        b=cJC5YD6vE9Nw2FHpc/EEPtfeSDOoxQXBRV5OuCi0mWx0XThZ8a85IJhVPyRrhWR6Ws
         94Fkp782r223RAUMW3YbZGs9J5C0+uNcbD2Mttx2wGEhdxezaHqV2rcLBnQahM1396Dm
         Y4oC3MDbhfLJFclmeUmwpqSywotBTtZRTDf0BR2R86WqMa6x1Q+o5A+r6NgnGfoLTRJf
         2fSFXcQaz86H19XWJjuYIg/gEMiJbvKWZHXDMq6vpM7D9dPZBW+psnjqYmHfxMx7bkMA
         5jFC5zcrOwD+DAtFyv95EULbSH5Fm0LIU+iy8fgsRFRmms/nOXyYaJUNwEOFA1+Roazb
         GkyQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5hZ+AEaYfmBJixLV4H2Y1oty4LJ1t3V0RH5EzY2XhlXJQiRp0ykcQ/d8bYggX6nA5VHMKicz9BPA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQ08wwqexPJooTeMJF4p2YoIbPTLuPrddx5tnwRIJuUvqwSPJS
	it/XGvLXqqHFQS2nHI0A3EiA5MFz97Aa1E1qvy6BYCpRTM0eCIHjyj4zkdMXgo4JBcs=
X-Gm-Gg: ASbGncujgiPmViiXGnv/3eKeOnu2Mbc3a7KvDTrYd4DW+JTbK3bAGXFv8ixjrwooWcu
	4aTSNTB/qL5fHTEp+tQRdzLsZ5NXsQ/q6dGhuLHJ37h2+ddsdypf9x4cQRiEXuR1DKgH1J8vLCF
	M+kPRljrX3SocJ0pWcf4nZvAQFkXuWl+WEwzbksWcpRQMDtnK+30U3VutzB877qBbVRC4/jYw8R
	wXfnTNrYQhvzzqSbsOOq/1fWaFKb6x5QLJmLQOg6fPWTtiVRM7VQ0Zt8J5/+1HOKj3tbisF3UiC
	2VhnLuIC1fyvlml5ROJ/d0x8jkF75sE6Pv4Ew024YAX/yo+2PPRnTpMWLAFT3K8alnwEugWJ388
	DlhD8osLyo/xFYJ709blWSGJzqM5TGbb7SUNbfOZY+GgYg2xSmf8iBtr9nJXedlqV/Q3Z4713t7
	uFPTk9VEPv+kHiVAA+pFRISeoVmW2f0BYRVCllULprofvSBwXS/21iH34BdHb25Iwmec4mNdbPQ
	A==
X-Google-Smtp-Source: AGHT+IF/SJMMbWEgRFwYg9CHGo9ekhafPDlPY7JxyauGM1SXhVQ1hoTLFavIWNHOvylWguN3KYxCQQ==
X-Received: by 2002:a5d:584c:0:b0:42b:4194:48cf with SMTP id ffacd0b85a97d-42b593991f4mr19216195f8f.52.1763563774737;
        Wed, 19 Nov 2025 06:49:34 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:263d:925b:a11f:ae36? ([2a01:e0a:3d9:2080:263d:925b:a11f:ae36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b62dsm38408563f8f.24.2025.11.19.06.49.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 06:49:34 -0800 (PST)
Message-ID: <165c7488-897b-4500-a7dc-a212cd64923e@linaro.org>
Date: Wed, 19 Nov 2025 15:49:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: renesas: rcar-gen3-usb2: Move
 phy_data->init_bus check
To: Claudiu <claudiu.beznea@tuxon.dev>, yoshihiro.shimoda.uh@renesas.com,
 vkoul@kernel.org, kishon@kernel.org, geert+renesas@glider.be,
 magnus.damm@gmail.com, p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20251119120418.686224-1-claudiu.beznea.uj@bp.renesas.com>
 <20251119120418.686224-2-claudiu.beznea.uj@bp.renesas.com>
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
In-Reply-To: <20251119120418.686224-2-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_064937_223640_166B8858 
X-CRM114-Status: GOOD (  19.54  )
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

On 11/19/25 13:04, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Move the check of phy_data->init_bus from rcar_gen3_phy_usb2_init_bus()
> to rcar_gen3_phy_usb2_probe() to avoid having it duplicated in both the
> probe path and the upcoming resume code. This is a preparatory patch.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
> 
> Changes in v2:
> - none; this patch is new
> 
>   drivers/phy/renesas/phy-rcar-gen3-usb2.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> index a38ead7c8055..b9d5bb52e02c 100644
> --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> @@ -782,6 +782,9 @@ static int rcar_gen3_phy_usb2_init_bus(struct rcar_gen3_chan *channel)
>   	int ret;
>   	u32 val;
>   
> +	if (!channel->phy_data->init_bus)
> +		return 0;
> +
>   	rstc = devm_reset_control_array_get_shared(dev);
>   	if (IS_ERR(rstc))
>   		return PTR_ERR(rstc);
> @@ -861,11 +864,9 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
>   	platform_set_drvdata(pdev, channel);
>   	channel->dev = dev;
>   
> -	if (channel->phy_data->init_bus) {
> -		ret = rcar_gen3_phy_usb2_init_bus(channel);
> -		if (ret)
> -			goto error;
> -	}
> +	ret = rcar_gen3_phy_usb2_init_bus(channel);
> +	if (ret)
> +		goto error;
>   
>   	spin_lock_init(&channel->lock);
>   	for (i = 0; i < NUM_OF_PHYS; i++) {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
