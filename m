Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCB0BC87FDA
	for <linux-phy@archiver.kernel.org>; Wed,  6 Aug 2025 14:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/af6yQheGsoFVBWAsYSe9WZ81bTUn/EyoOGv/MT2Cro=; b=eIdcxV5WQ2Vwbgm3OeINzu7zC8
	viljG1w6YZSy3l92i4vRscYk5toPvPH06XXHQI6Lab2/cXVL84feBxISl/MBBNkWOb0jexFHvm8ea
	/4owvVR4VwXZaSm/mBge/BB+Gjl83sGJHaHx+fZin1lO7W68bMbU2mF5POmFVuOlRE6DcrySZVKuY
	9FusYL7917AjbdB62XNmqPvtLhIj7dUwN1gDKb5G2nIxYeY16TaNaiJDj/LzFJ5Y8Es6AGGwUPqdP
	ij3X+PFjRIeVEtQyDM7RSs8YsVkoTLdgeYDNsB+yQ2+btPPZIysusKNqZb1Xg/M5DwKI/jNpDMjq3
	n2QMbE6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujfFK-0000000FSVH-2DPa;
	Wed, 06 Aug 2025 14:36:02 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujfFI-0000000FSTd-1IGG
	for linux-phy@lists.infradead.org;
	Wed, 06 Aug 2025 14:36:01 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-458aee6e86aso35698645e9.3
        for <linux-phy@lists.infradead.org>; Wed, 06 Aug 2025 07:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754490959; x=1755095759; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WY4HFaq47tlT3tpQq6GZ2l+firWxt4pgUV7KeO9v8lI=;
        b=kamZhLF9fI4bTzR9OcCzVHGlFpvAVoNiqDG7KSb7+ZPjgZPW3Q5tUzUQ9Ob0Y3x4TH
         Df8iPt7MhMpVbCH+YzGgE7utZRXKxu73NNzZ6uDp8fbC87V9t26QIjsaTEuIsNhOBPbf
         jKuvUliDMUeN8/Ur7uUhxy5F7w4Osy8NEuaENnhG1w7/YVJbe7ODrmIQwO2SSy6j14AL
         0gDsnhuNDgfxHLwFbzDovNept7WiLTa5YwFI4mbzT+FNDCOSkVKRsOb9a0CVTRZCu0tN
         Dk9q5EEfm1vVkhrPG8L/wSmF9H5Va9DihQq61+Wi1C8WbrMXzmJ+HnKr0OqcE3e8ILjj
         orDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754490959; x=1755095759;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WY4HFaq47tlT3tpQq6GZ2l+firWxt4pgUV7KeO9v8lI=;
        b=KWUga2Pg2uFT66dYiWhsMjsdhFXBlR0zCk2+j4unjqpmAaN4eEZkg4f8+vWCM4DBId
         EB8jK1liRGoRHJ7bX5X49RWmThbUum6K6uVdm2zmxnGIrOAmtR3H9PdeC96uhJ1Kl3Do
         P2FTgdUObKKxRTBcDUZrudRFJl2QgVriL7ztxPlP8IzteqKULifNTgxTSBbOLCIKCscs
         lEpbXmfPV56QATy9cane0uYmqfuzPqqijXCwIqtEGuV8khml2UaHFBrprcNmMH1Z9+kW
         w2S0sE8LwK33yBGvOuTczjy3BE9+Rts96cRUT/bGLeCa626NqD8K5PJ8cXFehID1j99i
         OfYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXX/iBjFfMeMK4VVgub1arqsA7sMmLi1QyKg62z7CdBBMSN1sZZ5ci/nsgUGTfJaCjU7NpM72AYpAo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKlL6Vbn3MRtwWmALVYGn+qMeGpJm3CWaMM0Ap9CldxpE0PB+r
	/NeGKue1NkciAFm3HKSPLzg42GXcZ7MHRzTs8og2J7P67p2PiJJFX+FoZd1sAFeRAMc=
X-Gm-Gg: ASbGncte/jPSqVPBZVNqQmWANqIlBLpc5CHogBrjiB17hpLThR59uwZ42LAD0bWZJdn
	x17Z8B7SjcY9GPNWU5kORSnJwT55P1bbxA4YOlStNND1zBnQLA/oJNm+dMo/U4PyNtdpMrXrpCy
	NxqP9MkgxutL+wOkxQuQebp2tueXXRjBZ+3n7K/qP/3OWsbhkE2Vd4Kv8Vy8l0n6Vfrvpm315Eh
	REfDJv+7iL/zoHMh0qoY/QcE5aHi2N+Tqtod+fHtW5buMVTbtPnGehqaOZml+dda7+Ceqoh7H5+
	U/wH2eh6+lDfMJ1+N3wXQIV3lsfQ5aWm0lwgQfxK4wf6kc6EvmRe7ynjYtqAczQxfTe4NjbJcR8
	3ljFih1FmoDO/NX6Ka7aiUzepR6W38jQizaVOMcObSNKbgIgZiXO41C0e1lky9m7kJ0TLwXOXL4
	CZ+2zF241FaQ==
X-Google-Smtp-Source: AGHT+IHZ4gClnKq5LjnIy9aDSbR616qh1rBaFjTEtlutR4EzQgDWiLdvxCUHjB1OtH5/MqFyNd1crw==
X-Received: by 2002:a05:600c:b93:b0:458:a7b6:c683 with SMTP id 5b1f17b1804b1-459e707f5ffmr25267615e9.1.1754490958766;
        Wed, 06 Aug 2025 07:35:58 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:96df:e381:55b8:1990? ([2a01:e0a:3d9:2080:96df:e381:55b8:1990])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459db13fc9fsm125335815e9.7.2025.08.06.07.35.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 07:35:58 -0700 (PDT)
Message-ID: <4b224859-bee3-49ca-ba06-cf07c55b8ac7@linaro.org>
Date: Wed, 6 Aug 2025 16:35:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH] phy: ti: omap-usb2: enable compile testing
To: Johan Hovold <johan@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250724131623.2662-1-johan@kernel.org>
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
In-Reply-To: <20250724131623.2662-1-johan@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_073600_343465_07A21197 
X-CRM114-Status: GOOD (  11.89  )
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

On 24/07/2025 15:16, Johan Hovold wrote:
> Nothing seems to prevent the driver from being built on non-TI platforms
> so enable compile testing for wider build coverage.
> 
> Signed-off-by: Johan Hovold <johan@kernel.org>
> ---
>   drivers/phy/ti/Kconfig | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
> index b905902d5750..b40f28019131 100644
> --- a/drivers/phy/ti/Kconfig
> +++ b/drivers/phy/ti/Kconfig
> @@ -62,7 +62,7 @@ config OMAP_CONTROL_PHY
>   
>   config OMAP_USB2
>   	tristate "OMAP USB2 PHY Driver"
> -	depends on ARCH_OMAP2PLUS || ARCH_K3
> +	depends on ARCH_OMAP2PLUS || ARCH_K3 || COMPILE_TEST
>   	depends on USB_SUPPORT
>   	select GENERIC_PHY
>   	select USB_PHY

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
