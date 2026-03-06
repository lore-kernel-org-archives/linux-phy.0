Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88E25F01821
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 10:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v+kDRh19d4evEIZPvvo7WY40uT5Tw0a1BAz0HT8z2B8=; b=URGVIkiiPsun0QYeZu8kF8ippj
	u4Ku1KjLatO3xjG4O56GGep0ShyE2TQReeVeUky6Ed1R26x+WUwczulHe/in4SsGnSrCFAmGETvEg
	WxyV/Pd5n+lfg7bS2DaD8uYpL0yMbImwo6Pyj9KatTiLU/4c5P53WfeM5xcMITjVB/dtASqgAISvO
	PLMg2q6wWYC5f8/aMIiIWkcYbM6qJnCWu4HpKoEL9MIDSKYJ9pQm5tOLlGy90lPWGSwX6/tPOocZW
	l87cA5OtH6JiUWPeg1HXqZ5Iid3L6SXjbb2QsJcNqT9k0+ImuuMydL2XZ1L9SZNbvEYzOZUODRhab
	Os/gvO/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySZX-00000003UDm-3xqW;
	Fri, 06 Mar 2026 10:38:19 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySZV-00000003UCV-24er
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 10:38:18 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso75353415e9.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 02:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772793496; x=1773398296; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aP8KiOLvVAtCupMFs2If28clwmB77AuYYgc2V0TzJzw=;
        b=jTLbXf2neSK5Vwbrp0BJxUD5YfhXMn2BZZ2vZPoC+rY+mVyRnDcJ2ROzh2GSUlkfl5
         uqZ4H4RjkaCwmMTjM86Wk6ENapI0eFNCPPdR9rH8a2LWn6Ho277b/v3/Ov9by9xNoab1
         TSMqyOcnVCaSLsF+ySb9Mo/Ru/jTuJ0I+Ot6KKS6rdopapItLkClGcNHOmAZ4cRX+hTs
         aKGJCVf6PGCNp9fG7FR2M8aOKPGzg0EZyFrLXvrgks0khrg5XgmPlV5cC1RZeUvP7BBI
         8ueG0Ktr0pEt9ps0dLTKrZnOxdnO4pwfmusg6xQGv40Vz8GsMyPHZWdFEcC9U8y9BxHQ
         2fMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772793496; x=1773398296;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aP8KiOLvVAtCupMFs2If28clwmB77AuYYgc2V0TzJzw=;
        b=Qw+CTOTYNW3CRbNc87pVVBSoUcrHxT/EmUJSJme9obY20FqU5c2zp+0irv4OpiUG3r
         IVvb26YGqG9gfRHUteCxG+mCJ3RxQNPERFsbskn5axYSFcMBGc0kh5gn8U5n9oNKEHkL
         LYMYXl+923HHtDPQ5uIw6sEWUVEksqN+PTazBnD/kG/i16V6+mqr14VzGVeHkCKFYTZF
         vFjKwffWDCZubITiaGZ8fUfFezFlFLw9pqOSAqFk0RRO9N0a3RSFRT9UZmJO9HQ/x68D
         gh5MpCMSKBTHsqXiWOXNZ2bd+RR4xwK6S7RpkZc6MEzYhoR19C5zAOeB7NQc3oHzxF2a
         jqgg==
X-Forwarded-Encrypted: i=1; AJvYcCUdTKg0X4hfR1uVymUV5RCcMLt/Ev1rw3BeZqo7ssjmNXjeJzpROJA0RLeruMR8LtG+h/58FpJqrn4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9ZYb6qmvpTWnzyVAhl4dFcavnG85NwhQOSYzm3UEDavBP1zPD
	Q6V3vyhIUAWcJ8qcD2zXt7xzJ7J+bi1PFcsOgybvO90MK/aDeidP5kdahsnyCRjv6hk=
X-Gm-Gg: ATEYQzwPTbLKdRIDonQLmPixzd7qfNGcM8D0vE1VGOY9/wgzaH6Fhbg9t4meAzfV1T5
	L+WXhIrsFmWCELgbbNxoosa5fzvZNxu1dn/wB4RFBokArAd0F9Q2LJOT1GwoYEOzgajGP0njfzz
	tnrZdNfS4c/L4jGyy1sn1Fw54619M7dxf1yKBCvXTgza8jgZpKyQZWxpcHLc0Xf3ij2ijHmQKrG
	GpzKjRUJJgGq8fK/fL1juWJPhR7dQ3Yqv9n38Xy6HUUGhgGa8l4Us9Wd2oNEStacKIA7o5IvZiS
	8Mv72b+ZTltIpVb7bHuWrDcR2iefU/DH4jQFpS2naiZHLVTy8OvcpUc3ng0HtWmbwkuVefPymJZ
	4UqtxXzJlwryA1pHZbdXuKKDiXwP90rYv+KVBwaiI/1GA4x6ZkSaOMi5gtDi3AmAVF1SX4a4SyZ
	UVOlI1uEDDlAqxZQeeLzmJ8rUUXLQYRJ9nY2Qcx8dIgf/r9qAKB27zFYVL+S+9kFekos2ao1Lvv
	NN9
X-Received: by 2002:a05:600c:45c6:b0:46f:d682:3c3d with SMTP id 5b1f17b1804b1-4852691d571mr24311285e9.13.1772793495431;
        Fri, 06 Mar 2026 02:38:15 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:cbfe:649:7f17:8b95? ([2a01:e0a:106d:1080:cbfe:649:7f17:8b95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485276b75eesm22233595e9.14.2026.03.06.02.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 02:38:15 -0800 (PST)
Message-ID: <483d3eea-d1aa-447e-b703-2bdeb3cf0e80@linaro.org>
Date: Fri, 6 Mar 2026 11:38:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2] phy: rockchip: naneng-combphy: Consolidate SSC
 configuration
To: Shawn Lin <shawn.lin@rock-chips.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org
References: <1772696450-139583-1-git-send-email-shawn.lin@rock-chips.com>
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
In-Reply-To: <1772696450-139583-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_023817_688191_F25AD8C3 
X-CRM114-Status: GOOD (  23.67  )
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

On 3/5/26 08:40, Shawn Lin wrote:
> The PCIe SSC configuration for the RK3588 and RK3576 SoCs required
> additional tuning which is missing. When adding these same SSC
> configurations for both of these two SoCs, as well as upcoming
> platforms, it's obvious the SSC setup code was largely duplicated
> across the platform-specific configuration functions. This becomes
> harder to maintain as more platforms are added.
> 
> So extract the common SSC logic into a shared helper function,
> rk_combphy_common_cfg_ssc(). This cleans up the per-platform drivers
> and centralizes the standard configuration as possible.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - rework to consolidate more configuration
> - reword the commit message
> 
>   drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 173 +++++++++------------
>   1 file changed, 73 insertions(+), 100 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> index b60d6bf..2b0f152 100644
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -121,6 +121,7 @@
>   #define RK3568_PHYREG32_SSC_OFFSET_500PPM	1
>   
>   #define RK3568_PHYREG33				0x80
> +#define RK3568_PHYREG33_PLL_SSC_CTRL		BIT(5)
>   #define RK3568_PHYREG33_PLL_KVCO_MASK		GENMASK(4, 2)
>   #define RK3568_PHYREG33_PLL_KVCO_SHIFT		2
>   #define RK3568_PHYREG33_PLL_KVCO_VALUE		2
> @@ -446,6 +447,74 @@ static int rockchip_combphy_probe(struct platform_device *pdev)
>   	return PTR_ERR_OR_ZERO(phy_provider);
>   }
>   
> +static void rk_combphy_common_cfg_ssc(struct rockchip_combphy_priv *priv, unsigned long rate)
> +{
> +	struct device_node *np = priv->dev->of_node;
> +	u32 val;
> +
> +	if (!priv->enable_ssc)
> +		return;
> +
> +	/* Set SSC downward spread spectrum for PCIe and USB3 */
> +	if (priv->type == PHY_TYPE_PCIE || priv->type == PHY_TYPE_USB3) {
> +		val = FIELD_PREP(RK3568_PHYREG32_SSC_MASK, RK3568_PHYREG32_SSC_DOWNWARD);
> +		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> +	}
> +
> +	/* Set SSC downward spread spectrum +500ppm for SATA in 100MHz */
> +	if (priv->type == PHY_TYPE_SATA && rate == REF_CLOCK_100MHz) {
> +		val = FIELD_PREP(RK3568_PHYREG32_SSC_DIR_MASK,
> +				 RK3568_PHYREG32_SSC_DOWNWARD);
> +		val |= FIELD_PREP(RK3568_PHYREG32_SSC_OFFSET_MASK,
> +				  RK3568_PHYREG32_SSC_OFFSET_500PPM);
> +		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
> +					 RK3568_PHYREG32);
> +	}
> +
> +	/* Enable SSC */
> +	val = readl(priv->mmio + RK3568_PHYREG8);
> +	val |= RK3568_PHYREG8_SSC_EN;
> +	writel(val, priv->mmio + RK3568_PHYREG8);
> +
> +	/* Some SoCs need tuning PCIe SSC instead of default configuration in 24MHz */
> +	if (!of_device_is_compatible(np, "rockchip,rk3588-naneng-combphy") &&
> +	    !of_device_is_compatible(np, "rockchip,rk3576-naneng-combphy"))
> +		return;
> +
> +	/* PLL control SSC module period should be set if need tuning */
> +	val = readl(priv->mmio + RK3568_PHYREG33);
> +	val |= RK3568_PHYREG33_PLL_SSC_CTRL;
> +	writel(val, priv->mmio + RK3568_PHYREG33);
> +
> +	if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_24MHz) {
> +		/* Set PLL loop divider */
> +		writel(0x00, priv->mmio + RK3576_PHYREG17);
> +		writel(RK3568_PHYREG18_PLL_LOOP, priv->mmio + RK3568_PHYREG18);
> +
> +		/* Set up rx_pck invert and rx msb to disable */
> +		writel(0x00, priv->mmio + RK3588_PHYREG27);
> +
> +		/*
> +		 * Set up SU adjust signal:
> +		 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
> +		 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b101
> +		 * su_trim[23:16], CKRCV adjust
> +		 * su_trim[31:24], CKDRV adjust
> +		 */
> +		writel(0x90, priv->mmio + RK3568_PHYREG11);
> +		writel(0x02, priv->mmio + RK3568_PHYREG12);
> +		writel(0x08, priv->mmio + RK3568_PHYREG13);
> +		writel(0x57, priv->mmio + RK3568_PHYREG14);
> +		writel(0x40, priv->mmio + RK3568_PHYREG15);
> +
> +		writel(RK3568_PHYREG16_SSC_CNT_VALUE, priv->mmio + RK3568_PHYREG16);
> +
> +		val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
> +				 RK3576_PHYREG33_PLL_KVCO_VALUE);
> +		writel(val, priv->mmio + RK3568_PHYREG33);
> +	}
> +}
> +
>   static int rk3528_combphy_cfg(struct rockchip_combphy_priv *priv)
>   {
>   	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
> @@ -600,21 +669,12 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
>   
>   	switch (priv->type) {
>   	case PHY_TYPE_PCIE:
> -		/* Set SSC downward spread spectrum */
> -		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
>   		break;
>   	case PHY_TYPE_USB3:
> -		/* Set SSC downward spread spectrum */
> -		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
> -					 RK3568_PHYREG32);
> -
>   		/* Enable adaptive CTLE for USB3.0 Rx */
>   		rockchip_combphy_updatel(priv, RK3568_PHYREG15_CTLE_EN,
>   					 RK3568_PHYREG15_CTLE_EN, RK3568_PHYREG15);
> @@ -706,11 +766,7 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		}
>   	}
>   
> -	if (priv->enable_ssc) {
> -		val = readl(priv->mmio + RK3568_PHYREG8);
> -		val |= RK3568_PHYREG8_SSC_EN;
> -		writel(val, priv->mmio + RK3568_PHYREG8);
> -	}
> +	rk_combphy_common_cfg_ssc(priv, rate);
>   
>   	return 0;
>   }
> @@ -755,11 +811,6 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
>   
>   	switch (priv->type) {
>   	case PHY_TYPE_PCIE:
> -		/* Set SSC downward spread spectrum. */
> -		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
> @@ -767,10 +818,6 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		break;
>   
>   	case PHY_TYPE_USB3:
> -		/* Set SSC downward spread spectrum. */
> -		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT,
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		/* Enable adaptive CTLE for USB3.0 Rx. */
>   		val = readl(priv->mmio + RK3568_PHYREG15);
>   		val |= RK3568_PHYREG15_CTLE_EN;
> @@ -880,13 +927,6 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
>   
>   			writel(RK3568_PHYREG18_PLL_LOOP, priv->mmio + RK3568_PHYREG18);
>   			writel(RK3568_PHYREG11_SU_TRIM_0_7, priv->mmio + RK3568_PHYREG11);
> -		} else if (priv->type == PHY_TYPE_SATA) {
> -			/* downward spread spectrum +500ppm */
> -			val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -			val |= RK3568_PHYREG32_SSC_OFFSET_500PPM <<
> -			       RK3568_PHYREG32_SSC_OFFSET_SHIFT;
> -			rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
> -						 RK3568_PHYREG32);
>   		}
>   		break;
>   
> @@ -909,11 +949,7 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		}
>   	}
>   
> -	if (priv->enable_ssc) {
> -		val = readl(priv->mmio + RK3568_PHYREG8);
> -		val |= RK3568_PHYREG8_SSC_EN;
> -		writel(val, priv->mmio + RK3568_PHYREG8);
> -	}
> +	rk_combphy_common_cfg_ssc(priv, rate);
>   
>   	return 0;
>   }
> @@ -972,10 +1008,6 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
>   
>   	switch (priv->type) {
>   	case PHY_TYPE_PCIE:
> -		/* Set SSC downward spread spectrum */
> -		val = FIELD_PREP(RK3568_PHYREG32_SSC_MASK, RK3568_PHYREG32_SSC_DOWNWARD);
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
>   		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
> @@ -983,10 +1015,6 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		break;
>   
>   	case PHY_TYPE_USB3:
> -		/* Set SSC downward spread spectrum */
> -		val = FIELD_PREP(RK3568_PHYREG32_SSC_MASK, RK3568_PHYREG32_SSC_DOWNWARD);
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		/* Enable adaptive CTLE for USB3.0 Rx */
>   		val = readl(priv->mmio + RK3568_PHYREG15);
>   		val |= RK3568_PHYREG15_CTLE_EN;
> @@ -1110,14 +1138,6 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
>   			writel(0x88, priv->mmio + RK3568_PHYREG13);
>   			writel(0x56, priv->mmio + RK3568_PHYREG14);
>   		} else if (priv->type == PHY_TYPE_SATA) {
> -			/* downward spread spectrum +500ppm */
> -			val = FIELD_PREP(RK3568_PHYREG32_SSC_DIR_MASK,
> -					 RK3568_PHYREG32_SSC_DOWNWARD);
> -			val |= FIELD_PREP(RK3568_PHYREG32_SSC_OFFSET_MASK,
> -					  RK3568_PHYREG32_SSC_OFFSET_500PPM);
> -			rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
> -						 RK3568_PHYREG32);
> -
>   			/* ssc ppm adjust to 3500ppm */
>   			rockchip_combphy_updatel(priv, RK3576_PHYREG10_SSC_PCM_MASK,
>   						 RK3576_PHYREG10_SSC_PCM_3500PPM,
> @@ -1156,39 +1176,7 @@ static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		}
>   	}
>   
> -	if (priv->enable_ssc) {
> -		val = readl(priv->mmio + RK3568_PHYREG8);
> -		val |= RK3568_PHYREG8_SSC_EN;
> -		writel(val, priv->mmio + RK3568_PHYREG8);
> -
> -		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_24MHz) {
> -			/* Set PLL loop divider */
> -			writel(0x00, priv->mmio + RK3576_PHYREG17);
> -			writel(RK3568_PHYREG18_PLL_LOOP, priv->mmio + RK3568_PHYREG18);
> -
> -			/* Set up rx_pck invert and rx msb to disable */
> -			writel(0x00, priv->mmio + RK3588_PHYREG27);
> -
> -			/*
> -			 * Set up SU adjust signal:
> -			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
> -			 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b101
> -			 * su_trim[23:16], CKRCV adjust
> -			 * su_trim[31:24], CKDRV adjust
> -			 */
> -			writel(0x90, priv->mmio + RK3568_PHYREG11);
> -			writel(0x02, priv->mmio + RK3568_PHYREG12);
> -			writel(0x08, priv->mmio + RK3568_PHYREG13);
> -			writel(0x57, priv->mmio + RK3568_PHYREG14);
> -			writel(0x40, priv->mmio + RK3568_PHYREG15);
> -
> -			writel(RK3568_PHYREG16_SSC_CNT_VALUE, priv->mmio + RK3568_PHYREG16);
> -
> -			val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
> -					 RK3576_PHYREG33_PLL_KVCO_VALUE);
> -			writel(val, priv->mmio + RK3568_PHYREG33);
> -		}
> -	}
> +	rk_combphy_common_cfg_ssc(priv, rate);
>   
>   	return 0;
>   }
> @@ -1255,10 +1243,6 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		}
>   		break;
>   	case PHY_TYPE_USB3:
> -		/* Set SSC downward spread spectrum */
> -		val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -		rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val, RK3568_PHYREG32);
> -
>   		/* Enable adaptive CTLE for USB3.0 Rx. */
>   		val = readl(priv->mmio + RK3568_PHYREG15);
>   		val |= RK3568_PHYREG15_CTLE_EN;
> @@ -1343,13 +1327,6 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
>   
>   			/* Set up su_trim:  */
>   			writel(RK3568_PHYREG11_SU_TRIM_0_7, priv->mmio + RK3568_PHYREG11);
> -		} else if (priv->type == PHY_TYPE_SATA) {
> -			/* downward spread spectrum +500ppm */
> -			val = RK3568_PHYREG32_SSC_DOWNWARD << RK3568_PHYREG32_SSC_DIR_SHIFT;
> -			val |= RK3568_PHYREG32_SSC_OFFSET_500PPM <<
> -			       RK3568_PHYREG32_SSC_OFFSET_SHIFT;
> -			rockchip_combphy_updatel(priv, RK3568_PHYREG32_SSC_MASK, val,
> -						 RK3568_PHYREG32);
>   		}
>   		break;
>   	default:
> @@ -1371,11 +1348,7 @@ static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
>   		}
>   	}
>   
> -	if (priv->enable_ssc) {
> -		val = readl(priv->mmio + RK3568_PHYREG8);
> -		val |= RK3568_PHYREG8_SSC_EN;
> -		writel(val, priv->mmio + RK3568_PHYREG8);
> -	}
> +	rk_combphy_common_cfg_ssc(priv, rate);
>   
>   	return 0;
>   }

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
