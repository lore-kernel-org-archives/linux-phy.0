Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD553C7EE32
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 11:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n2dBEIsYjFDF8lRH1wBakARYCfce3OZM76R8s0J6b+Y=; b=tpLmZ6UhmOddd5YQBCovgThEgt
	foWlBVtFjledsxfG+JR3Mv43hmgzN8NESAKRYnZUZU17dc6sPVMoJRsTHZ0hnHLbmUvdRoWxcfJjB
	vW+jzXVQBmacy3jcOlrs4IIPO8txEZR7VCg4wvbYE8Y9zbdq/77arwwWaphxFR19qafuSMhhiexW0
	BZ4GWHKM54Fpxwd7+uluT5dC46pDuIlsPnBx1EpaDk2qU5Enrv3Cj3+jnS6YHo0t8OZ8AsDwk5Mlv
	JLu6GxUPUro5xyiWOkXzRPBWF6de6nbad9X35YnwA36iNt6oOlguOJoqp92ZOTLB/volxJIxiWojK
	5X4vHEKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNyI-00000008Q8V-2V2q;
	Wed, 25 Jun 2025 11:07:18 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUN3m-00000008G8F-15GW
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 10:08:55 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-450cf214200so55894165e9.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 03:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750846132; x=1751450932; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J2a8kk6PcZkE03rGmBEJWejxQtEjJ7yXfgEnoE7M2mA=;
        b=zyzX8DGoiDTrPeiVb336NfDOl1BPGSs/xXfm+269JX3ZtAcZT3FDUcQRITg9/AHC6A
         2/RTvGxvx5srwe2xh+Sm0Xs2AYRh2r/2UYk1pNrsCC8VRBDz8C9fo3Q6gsaw9m3V4yF8
         NmJ2wXZZoOPmHW6ZMx1HftT7StLrdlueWUD1xgt7UH12lu9NWuBTVY9Dq7Cb1m8J2cfv
         ECgfel7iGmXXSPFib4JaftAg+1vAHSlt3jj6G7S79IOpbEGvQoyixtV1Um4MNmp/Dfep
         /dBCT1QLAK6mvhw5OekfFZh8w4kXB5xjyX1BLuZFTlqFhnO8A2xAwsgX3V5aYE5/dAAK
         Zlsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750846132; x=1751450932;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=J2a8kk6PcZkE03rGmBEJWejxQtEjJ7yXfgEnoE7M2mA=;
        b=ulAVhdtVogPFvg5Y9/srnIMzTKexFiTgjgRSRfkk3jS2E+MEJFR1qNFCgoKe0ACqwY
         S748i8q48oQRi70KS8/Pq6IfKG5zzbEg2J1w4KaDBdfS9xg4Ci5/bI8ES9Zd1xDTUa51
         hMxbrd90m4/aSZRT02A5Lj1pieo/E+WVjERq9L0z97XH4IyVhQrzl+W/v5LHgc4DuHsd
         XyFF6yEq2+Q9vGdHlnOkArU8cXBumX+GlrMJShfdN5KYTa3IDzb8MG8fTbfiZw0RiahO
         12zUKwp85geO5MV8abNmQOd1wvRpGGhNBGS6dFo9UYQSGzTOyGHnoMVPKJM+fm7RKLjN
         hDWw==
X-Forwarded-Encrypted: i=1; AJvYcCUlqXxeCsGV7XD0l/k19LgkjRjd+6f83piL9+K7ERDzYzefZh4T/9dKTbaiHtyZGsYZ11BB8BmFuJ4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjAOy5wbI4eO0yZ7AyO8Z7NlpXY34sezwbqSiBm9G6PLz7IpqQ
	yEoKKLgx6v34BnjIIitnkhO5DP1DRtf0FPNnXxCvd+sGqS/Uhh94hctn+0f5P18ebhA=
X-Gm-Gg: ASbGncuupsJpuBoe/ja6dYWuiCkztR/+vQATWpbDRX2jKy+tStvYvcCuktdfkry1ksm
	rG7vjHn73hi7pYuk1aa7L5y0DSXQyRA53hDeL/pTA8oK4RAC/unTsX4HQqJtlgDYHNX2pbxx4HB
	vf9BfNJGoxBi5BOfGVdDZoY65DG3yr4q09UuAaaCbsTG4RfKL5fmnMw6Ybhy9048Y22Wos005p+
	pZ8XyZjeZF7yjXLgZlYTc7q5hI1HxlF60RbbJ3HBMx1xP4QGnFhkDT0X3DAJDOFRQWdS9pWfwRJ
	pHGKnziE4ssU8YAq+B7aHIa9Z2nh64jnklu2vX7Y9LCAn6h+UTaBk1VtPKVfSIRYUsP+IXsZ0V4
	NdSV3VYtWTWlEE/nR53QpM7L8mVYYvFi7Dcip
X-Google-Smtp-Source: AGHT+IFJiC0S9QOgaQ2ScQ4U+1EQS39LaD4dPukyAK+89YpzNHu/8nXo31VXa8/vKLOYfbh15deE2A==
X-Received: by 2002:a05:600c:154e:b0:44a:b478:1387 with SMTP id 5b1f17b1804b1-45381ae3576mr25646825e9.17.1750846132470;
        Wed, 25 Jun 2025 03:08:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:b3df:bee7:215:e1a4? ([2a01:e0a:3d9:2080:b3df:bee7:215:e1a4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6e8068fd0sm4309576f8f.38.2025.06.25.03.08.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 03:08:52 -0700 (PDT)
Message-ID: <d923b289-1e4b-4c7c-9bec-7d0c2cbf8b86@linaro.org>
Date: Wed, 25 Jun 2025 12:08:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/4] phy: qualcomm: phy-qcom-eusb2-repeater: Support
 tune-res-fsdif prop
To: Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-2-19d85541eb4c@fairphone.com>
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
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-2-19d85541eb4c@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_030854_330833_C97BC2D2 
X-CRM114-Status: GOOD (  11.64  )
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

On 25/06/2025 11:14, Luca Weiss wrote:
> Support reading the FS Differential TX Output Resistance Tuning from
> devicetree and writing the register, as required on some boards.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index d7493c2294ef23e37e484019a49ddf7b3d6a6a46..61594739e5b12706775622e1f76af6ad5d2d29bf 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -136,6 +136,9 @@ static int eusb2_repeater_init(struct phy *phy)
>   	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
>   		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
>   
> +	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
> +
>   	/* Wait for status OK */
>   	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
>   				       poll_val & RPTR_OK, 10, 5);
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
