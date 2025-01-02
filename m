Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DFF1E77188
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jan 2025 09:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RoQOMqQ+wlPWm6KQ8HksCpKYPIM0s9MaYB6hgHfAZKQ=; b=iQRX7o742J3wCmkJBPsE0wc/dN
	J2QcJtzYCqpEFWGqmyMBcXbLhAKeyIGybjiOxBVLAeRCPSSoH9bQLMvrW8xre5vhTkN7qbfbYkoQy
	bVFAr1Q/X2N1RK44ZY/stRE6A1WDAlkTeasKCrAdIXAh43OFokbvyAzQmAvZSKMYklU3kqsNpLHA+
	3jOPpY5e9+3yvPK3yHTkt/nIZDq1p5NJkXsdK6kxsuCSaQEicpV6QvuYyP14qb2zhrG93+2VUsV36
	9sIlHjSCemJQ1JYhu/Pj1naCE5HrsQQ6QD8SwP2K9XLgtwNPUZ1PtIza++Bb9E2RGIGLEp4Dz8Rtd
	idrC6yAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTHlp-0000000A51c-13gy;
	Thu, 02 Jan 2025 09:45:37 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTHhY-0000000A4Je-2tVf
	for linux-phy@lists.infradead.org;
	Thu, 02 Jan 2025 09:41:14 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4363dc916ceso71198555e9.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Jan 2025 01:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735810871; x=1736415671; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/oXcMOvfrC7iN4ecLv5oPIeFCArh+m8oouCA5LcTcBU=;
        b=Df/DeCFRxsWPw52pUmF/YVHxM4PeB/IUxHh3/XWoAzPd1eQ2BzMB9sqE/txUF2vn0D
         rW8kR4he8Z0a+L+HUE6qvYHF3kGcr6q8ijenwrRZGo4UP+4/xlXFw3i5fX9npV/e6TWo
         dqKwwPysR8jm0XfY5rM2TZ0xR8KZy0ui91+P6LiId1083UeapUQK2pxu6TV2EaMoD6OZ
         l0lSU0iV1k+mbH1FVytezoK83nwtcbt0QcSLChaPWZekl84ZuCKCd78tpQhaYdIG0b+C
         GRzPZrD6rp68YK65vK0nh+sIBlzYg6nFSYURGj0FWH67oNSy0+QMoHzUfuCXRp9VD7tn
         Jdiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735810871; x=1736415671;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/oXcMOvfrC7iN4ecLv5oPIeFCArh+m8oouCA5LcTcBU=;
        b=JQD2J3VqzUG9tEFZuMGTRk311VOpH1phIWkKTGMW6NtA0EP4TWO/sLAw0nWflDrmhC
         f9d136g3dIIwLEUmj/BpnXu+BHZFel1Uu28k8aElsttabGGbmTFpXsu6f1UhqHIP7AVL
         4LwvYd87z4r7XIqNHwZPEotfClxKu2XQxadUEVI4XMq3o0sDaKXWf/ckkpCQIUnv25rc
         YR/w3P9AXF5mF0e40vEst7sLLfZoRxAM+g4ZJ1ldUGe9tNO4zr/A04z0aSQ9xxBQ4F5K
         qPOKhGXqwmSpKwYfrdSR7SJi9U3RXTXsGsXiNEDWn7y9m/jtEtqULvkjyjO07d2iolsn
         5KqA==
X-Forwarded-Encrypted: i=1; AJvYcCXuasdIVzkkmiLVMEO7hwzRJMC1LeG+lVhsgUXfKzOIMulUKuxSADqGzQdC/iGG/4W/ava7PehmB3c=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3737TTLjeCI7Xo6Hl8oYt8Mj2AjuK8OZ9zmRx/Kb/dI4PJ3W0
	iPBRCyrXBh2rfb6LUF20RRXzGZiA6bcpWuigYlvtV1OBZH94u6LH+sNS3iu7Pwc=
X-Gm-Gg: ASbGncs9qqy9YW/Ah+UUV6eRyB1tuBkudBONxwWjZu4gI1DzAeMCbANpZmrc8QrdQ/J
	O7MGac1Ks4zgoAAnBOje0KViSNq7tComo86Riv4bhbKoZjSxo4yTrI5/ocWATesodpBp32UCnAf
	hluVBSVj2gMGY7qM+5iw8CtSkCIIge9DnQdrnveKrEcvk9eGiYW4p5AiWAMIIxvScXDih5iJyA5
	4FLfgvOoAJISTJiQyQRvhy9wvTblI14OjXhsPdyLSDBxsJQcLtbPmPMV5LaWbfg5mKc+8DGkuzz
	oP7BbfJRIKlzcVQ9NypRxCjECyWwqANyQw==
X-Google-Smtp-Source: AGHT+IH2Mv5uQN7VnPzUaQDX5RIFOYe4WHF2+BXPsAV64FeA80rClpdW3DKWh12Szu1NO8Zkqlabxg==
X-Received: by 2002:a05:600c:548a:b0:434:e69c:d338 with SMTP id 5b1f17b1804b1-436697f8bf8mr352226985e9.5.1735810871401;
        Thu, 02 Jan 2025 01:41:11 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:1cfa:329a:aa2e:f0be? ([2a01:e0a:982:cbb0:1cfa:329a:aa2e:f0be])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436611ea42esm453596695e9.9.2025.01.02.01.41.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2025 01:41:10 -0800 (PST)
Message-ID: <bcb95701-d230-4ce1-9813-cbb75cdafa8b@linaro.org>
Date: Thu, 2 Jan 2025 10:41:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] phy: amlogic: meson8b-usb2: Use the
 regmap_{clear,set}_bits helpers
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-phy@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 vkoul@kernel.org, kishon@kernel.org
References: <20241231191718.2764065-1-martin.blumenstingl@googlemail.com>
 <20241231191718.2764065-3-martin.blumenstingl@googlemail.com>
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
In-Reply-To: <20241231191718.2764065-3-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_014112_740880_083A8CCE 
X-CRM114-Status: GOOD (  14.23  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 31/12/2024 20:17, Martin Blumenstingl wrote:
> These require less code, reduce the chance of typos and overall make the
> intent clearer. No functional changes.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>   drivers/phy/amlogic/phy-meson8b-usb2.c | 28 ++++++++++----------------
>   1 file changed, 11 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/phy/amlogic/phy-meson8b-usb2.c b/drivers/phy/amlogic/phy-meson8b-usb2.c
> index d9c761b7c15c..a553231a9f7c 100644
> --- a/drivers/phy/amlogic/phy-meson8b-usb2.c
> +++ b/drivers/phy/amlogic/phy-meson8b-usb2.c
> @@ -165,8 +165,7 @@ static int phy_meson8b_usb2_power_on(struct phy *phy)
>   		return ret;
>   	}
>   
> -	regmap_update_bits(priv->regmap, REG_CONFIG, REG_CONFIG_CLK_32k_ALTSEL,
> -			   REG_CONFIG_CLK_32k_ALTSEL);
> +	regmap_set_bits(priv->regmap, REG_CONFIG, REG_CONFIG_CLK_32k_ALTSEL);
>   
>   	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_REF_CLK_SEL_MASK,
>   			   FIELD_PREP(REG_CTRL_REF_CLK_SEL_MASK, 0x2));
> @@ -175,23 +174,20 @@ static int phy_meson8b_usb2_power_on(struct phy *phy)
>   			   FIELD_PREP(REG_CTRL_FSEL_MASK, 0x5));
>   
>   	/* reset the PHY */
> -	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_POWER_ON_RESET,
> -			   REG_CTRL_POWER_ON_RESET);
> +	regmap_set_bits(priv->regmap, REG_CTRL, REG_CTRL_POWER_ON_RESET);
>   	udelay(RESET_COMPLETE_TIME);
> -	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_POWER_ON_RESET, 0);
> +	regmap_clear_bits(priv->regmap, REG_CTRL, REG_CTRL_POWER_ON_RESET);
>   	udelay(RESET_COMPLETE_TIME);
>   
> -	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_SOF_TOGGLE_OUT,
> -			   REG_CTRL_SOF_TOGGLE_OUT);
> +	regmap_set_bits(priv->regmap, REG_CTRL, REG_CTRL_SOF_TOGGLE_OUT);
>   
>   	if (priv->dr_mode == USB_DR_MODE_HOST) {
> -		regmap_update_bits(priv->regmap, REG_DBG_UART,
> -				   REG_DBG_UART_SET_IDDQ, 0);
> +		regmap_clear_bits(priv->regmap, REG_DBG_UART,
> +				  REG_DBG_UART_SET_IDDQ);
>   
>   		if (priv->match->host_enable_aca) {
> -			regmap_update_bits(priv->regmap, REG_ADP_BC,
> -					   REG_ADP_BC_ACA_ENABLE,
> -					   REG_ADP_BC_ACA_ENABLE);
> +			regmap_set_bits(priv->regmap, REG_ADP_BC,
> +					REG_ADP_BC_ACA_ENABLE);
>   
>   			udelay(ACA_ENABLE_COMPLETE_TIME);
>   
> @@ -214,17 +210,15 @@ static int phy_meson8b_usb2_power_off(struct phy *phy)
>   	struct phy_meson8b_usb2_priv *priv = phy_get_drvdata(phy);
>   
>   	if (priv->dr_mode == USB_DR_MODE_HOST)
> -		regmap_update_bits(priv->regmap, REG_DBG_UART,
> -				   REG_DBG_UART_SET_IDDQ,
> -				   REG_DBG_UART_SET_IDDQ);
> +		regmap_set_bits(priv->regmap, REG_DBG_UART,
> +				REG_DBG_UART_SET_IDDQ);
>   
>   	clk_disable_unprepare(priv->clk_usb);
>   	clk_disable_unprepare(priv->clk_usb_general);
>   	reset_control_rearm(priv->reset);
>   
>   	/* power off the PHY by putting it into reset mode */
> -	regmap_update_bits(priv->regmap, REG_CTRL, REG_CTRL_POWER_ON_RESET,
> -			   REG_CTRL_POWER_ON_RESET);
> +	regmap_set_bits(priv->regmap, REG_CTRL, REG_CTRL_POWER_ON_RESET);
>   
>   	return 0;
>   }

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
