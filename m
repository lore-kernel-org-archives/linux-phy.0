Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2E88CD343B
	for <linux-phy@archiver.kernel.org>; Wed,  6 May 2026 14:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Xe2S8vVzXvHPtlp8cnJptxM0OaGhqzKJCpy5KmeqDM=; b=VtuGn24CMWR07Pl2YhoWXKdAR+
	L0ghFq94A9TIveY9WZHasQfroMdKXwYL4SIXagGdsAQDfJ90K1sPf+tc+7fWSdm4dELBNiXXHO2dF
	JCFD+Nqm/YP89dUnzIANvtH+tp13va/cS2LRygSQqBcsDvsM1ofyPhLOs/YF0ko4MjMmUTCiO+/dc
	9H40k5ap+Pw6jTU0IH6kNj1tGtUjYAvofZxcwoD7Cg+/XrE7Zf62xvaHysYjnAeEklb0blRKKb3um
	U//1TVnbGeNTHc3Xhen9fH9igFXRNupJAqrHIrzU61A/qght4zmBdC7X1vUZGlPX/ESptJrOvpiRn
	KBqrw7OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdgQ-00000001Cda-3A0z;
	Wed, 06 May 2026 14:57:06 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdgP-00000001CcZ-1ehJ
	for linux-phy@lists.infradead.org;
	Wed, 06 May 2026 14:57:05 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4891c0620bcso47213515e9.1
        for <linux-phy@lists.infradead.org>; Wed, 06 May 2026 07:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778079423; x=1778684223; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CTST1EmSCr/3EzcqTsLPAzgslcXQBMK6xw2m5eQ8KWM=;
        b=S1dZLjqoEVXSOHndReuK61tAepkzuLGbI76WfIWbGVPnkAt35S62yxJan+o2R/MLkc
         jeaQH7Y2EcKgoU1vnsYFybuNVKqWeEAmXbVQ9ZaU0SJljGAM6IiYjgQcQEoc3pwjw4Kt
         Pbix4uBe4Ltn+rH+9VeZ6xF+ehiCJJXrrRlIRZPh/2mvim3hXzACXwDjuUpa7m6akxvf
         ai8R4vDeomRhmCv6zDIAwk0oriWPg4LlvyM0hj8Bcg+H52ll+yl9v1VEpWX7WPfIeDMe
         PxyR7mh4wHnBduvWDpKDyLvgbinEtgnn1hCaHZxhSfr4uxxJSgM8ILMJTdNriTQ3mxcP
         HKcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778079423; x=1778684223;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CTST1EmSCr/3EzcqTsLPAzgslcXQBMK6xw2m5eQ8KWM=;
        b=GBjhXxhMhp90ygLUJnxxzLG7VddX0aTOeb5uvFKCYtULjuIrEI5VeLyqs4G55NryX4
         XNs6lN0ahyZDC//jeF+KaEQV0QkxcRgYMRsZ06d6dale5fbrfyW/WyUmiX2sGAcqFg4J
         u4pyLad7h/LZJF5GABgaP1Sk69LWqaZLVre/Ujv1DqZitL9FNT78gv9nfTPgXIxlyLib
         g8PeclwlnNRoSvq+b8JBeBUz8TITd2G5z9G4DCLr3n58oHc4EdDT2R8ptd9H+RBAtXrK
         ZjkZ7VCILBv1F4FnbQw8/2ZrFjnRJHI6rPwkSzzSvNOSmsXDzrXDEEjuqQYT0VUt17bz
         5bDQ==
X-Forwarded-Encrypted: i=1; AFNElJ8qj908SJGC3TkNGJmOaPNwxQa726Mo6CjZgypUdvNNjq9IeB8AgGfOC6LSdFwGjK2vPhycoMNKQ/w=@lists.infradead.org
X-Gm-Message-State: AOJu0YwhdYy7+X5zAu+0BLa/Ajr+8EgHVri7n5lg3nlUJ1XKAQI4r+N+
	alT7585wT8VUOsEZtU+lNSvRuUCCnotqitSMmNMav5S+Xv17oeyplrqdAtNbE5s52rDtItztpi3
	8JTsm
X-Gm-Gg: AeBDietB1liOS2a/g3OTsN4EIdriC2yrcVFu1WsPbiexxi2rG57ZSa23Dj061va5UVA
	sSsegcD/v7U6ypFakhIBmzTU9SITjt9mmAjEvilH4jrrn0n38fKgqKea8eyM/4tXBtjbh/iBNKy
	4qGe6e5YciHOUsgU/XuFWjIcNB9CMcZXt4lxKHUT4jaIH8K93/xMar2KIpRZRa+le9kQ2UDGG1k
	VFX3tVcRhEJaVG73Ud4V8ut3NWmyyhEVG/yySK/FEgGxqHIijmfFfWiXGrmpi9WdM3o/s9eUiIo
	HENp8wG8J1xg1WBPOmFRQe5vM+hKs194UijSeWtq8sVxo6u/3xKIZSi5KsUaykj+dFOCCBtuaAI
	8F+azUxzqPrVBlAuoMYBdXQd3LSghWZBrd2MUPSQfEnuvn7qCbTdYRzCO+BmkZSLHzI8/odMSk/
	q1GHpNpcGIOJnsbGaewy3+0O1meFVAFBHuRSR0ffWp573H27WzIfGrchWxNQzyj7iNIPsifJ2je
	KrsDdKpuGq77iCtZ6ZqsqzVsmGx
X-Received: by 2002:a05:600c:6095:b0:485:39b2:a47c with SMTP id 5b1f17b1804b1-48e51f48352mr65372015e9.25.1778079423272;
        Wed, 06 May 2026 07:57:03 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45055f2487dsm13337640f8f.35.2026.05.06.07.57.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:57:02 -0700 (PDT)
Message-ID: <fe12cf26-3d49-4f41-9443-7d44ab93badf@linaro.org>
Date: Wed, 6 May 2026 16:57:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] phy: Move MODULE_DEVICE_TABLE next to the table itself
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260505102913.188406-2-krzysztof.kozlowski@oss.qualcomm.com>
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
In-Reply-To: <20260505102913.188406-2-krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_075705_927893_7ACA0993 
X-CRM114-Status: GOOD (  14.75  )
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

On 5/5/26 12:29, Krzysztof Kozlowski wrote:
> By convention MODULE_DEVICE_TABLE() immediately follows the ID table it
> exports, because this is easier to read and verify.  It also makes more
> sense since #ifdef for ACPI or OF could hide both of them.
> 
> Most of the privers already have this correctly placed, so adjust
> the missing ones.  No functional impact.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>   drivers/phy/broadcom/phy-bcm-ns-usb3.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/broadcom/phy-bcm-ns-usb3.c b/drivers/phy/broadcom/phy-bcm-ns-usb3.c
> index 6e56498d0644..9240600aeef6 100644
> --- a/drivers/phy/broadcom/phy-bcm-ns-usb3.c
> +++ b/drivers/phy/broadcom/phy-bcm-ns-usb3.c
> @@ -65,6 +65,7 @@ static const struct of_device_id bcm_ns_usb3_id_table[] = {
>   	},
>   	{},
>   };
> +MODULE_DEVICE_TABLE(of, bcm_ns_usb3_id_table);
>   
>   static int bcm_ns_usb3_mdio_phy_write(struct bcm_ns_usb3 *usb3, u16 reg,
>   				      u16 value);
> @@ -242,4 +243,3 @@ mdio_module_driver(bcm_ns_usb3_mdio_driver);
>   
>   MODULE_DESCRIPTION("Broadcom Northstar USB 3.0 PHY Driver");
>   MODULE_LICENSE("GPL v2");
> -MODULE_DEVICE_TABLE(of, bcm_ns_usb3_id_table);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
