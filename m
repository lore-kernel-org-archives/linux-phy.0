Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF654CD343B
	for <linux-phy@archiver.kernel.org>; Wed,  6 May 2026 14:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PN//nZioH3IRmPgQVOJtljD44yFmKbtOPVuX3mVxnZI=; b=a/hc4AP0/X/tNlBoiezMd7SV05
	Hu/eU6oQMICNmZop3B+g6nC/mqK3cyIlyHedS9/Ba5sSrJ25irxky60Q7EizDoPjbAlliGqx5lG+W
	MoJE8FgT1Kvb7egFIPo1Na0eNywbT1nswmSmYCVwVk0IYL9qmGBTLwMNSz6KtoNgyMkxGu6cuRbk0
	Y/WAber8lVdzNadw+nP/BHdm+UDyzl0W0RDcW4R9A2asmEVGgjr0oB1f5w16GqX4Db+8aDTFVSaPI
	rjXNfG8ou9woptG6BskmrdvX483fWkcpgAJJG/A8Mg45Zr+xEzgOyD+ehxN8eBy1EDsWFCtFQIZji
	e3blVMKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdVI-000000018qP-29ro;
	Wed, 06 May 2026 14:45:36 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKdVG-000000018p8-3T4e
	for linux-phy@lists.infradead.org;
	Wed, 06 May 2026 14:45:34 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-444826c16ffso6166834f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 06 May 2026 07:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1778078733; x=1778683533; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qhTVObqHGZbC/8+Qwgzi1SIGB0Oq1yZ2x9f+q6AQfVw=;
        b=anCjFYZQqOZkhjRlb/N7IFT7j3KcLSQTE6v/t9veBY8glqrRaAn/Pf/69Xg8DyRDqG
         zYJu+u5ujlhZ/LKaHdCRrCvM0ztwugPEuQoLXhypVKRiGPKL4wlujnsOoKZjr9QtqtRR
         KtJdu4mYJ093FfBMb536b80nJuhpAbo+t521bWb8xNhDtJGQAqeFev8TYbuNX41W2st9
         HTtIhvc9VPf5NCcVCRrGFhYvA4eRfrWjGIHQIdY2T4jO8H+BHTE9PZbthvBkpoJv36Mm
         h2FHB5ZeA2I1EO/Re39BNT2vWD+mUjNVh9Q13fLBnMuiU1D4IYc/dLtKkpXkjG120k/6
         4gEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778078733; x=1778683533;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qhTVObqHGZbC/8+Qwgzi1SIGB0Oq1yZ2x9f+q6AQfVw=;
        b=InSJyQOXqiyknVINS66p9jEfqpf6e2F6Ox5WwxPLe00aojIu7kBJx2D2hYR+ytUOmf
         Blgwt0N4c8+IikEgf6yIPomTJlfX8gWOtdW1bynIZEx2tiSf+0skjhunynTS0OQjzlfz
         Ke3u+juURy1UDLWeY+J8KshJkqUSwLDJpw6ypYt7DkPkhkq4OSEvm2ONfu1B0TD+oZ25
         x8zmngaMGC+xvvKXcIvQiOLJHyBTrTaKY6MpIOknd6LHyRfPsbsduxK+sIwH8zPE+zDw
         4cn9bg6jL5my0BNOijrBgdzZxON/b6xmnQhaF3cspiXEfD+3Rcr/hlOnh7LCkPFo1qOh
         ++6w==
X-Forwarded-Encrypted: i=1; AFNElJ8QjFLCjj1wIOl6pNCQ9ao+r4oFYX4gV8DgRLDhGL1LhnGlyZVD4GyAW0sJFEMC4qjprfo9Rit+CoQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxvUpdLyVViSBP1BOAvVCpyayLP+C+8AGk4Cgjei3WwM+UXRQdm
	6hwkUqqu3yT56HQzEpJTHjpExKUeJbqmkbX0gvnRjZpdt2FF5tz55Ncn+mzO25FinotdSqqMERJ
	w/oa5
X-Gm-Gg: AeBDieu9kotvOMQhnHQxmrtcdCt8RbQE/rGGHodtRtUH83qfxCuxn3tgHdMbiWMJ3X6
	wngWsIFCw/pUY1VEg35HYIwViVmMI2Tt8xWQEzBxTFVxAP72MdvLTFQrOFjANNxLapQk4uEAoPR
	qF+SOmyqnbt1u+W4/Tvo+bCPAlru4dJMVoeS9OGjg//eLh5ZbVK3f36i554z5qKOKpIWdL5yxso
	e9Ocxc14yoOgLqJwKhi0QVNptme/mbLzd7EFmOSNiW2QD3NvsobygHqkKOSyeMsMP4HyzaWT1ev
	kQ474DugW1ikFS04YJtAPsrHdGj7LM/tIk7cSN+gohBtAiTCyxRqA8+zcRIvkS9p5IdGjQcncJb
	umkIDOfeJfKw5KmIazvhlon6mitVqBb+lG/+hpXBEChKrZNT0BNhpFyyd8PCeX2xjpb6fdQRbmV
	hg7jlN0Ioh50EQV1m5Uu1Mk1kvOBjgAUFzPNz55RZG6eBbnpF+R+WuMszfvekwv2Yi9fcRjhf+N
	lRVkDVMJBeUt9Tdrg==
X-Received: by 2002:a5d:64e3:0:b0:449:cfea:ca91 with SMTP id ffacd0b85a97d-4515da96254mr5892163f8f.37.1778078732399;
        Wed, 06 May 2026 07:45:32 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:5798:67fd:c866:b378? ([2a01:e0a:106d:1080:5798:67fd:c866:b378])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45055d36dacsm12906801f8f.32.2026.05.06.07.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2026 07:45:31 -0700 (PDT)
Message-ID: <4d41044a-1b09-4d78-a99d-53c0cd1cc539@linaro.org>
Date: Wed, 6 May 2026 16:45:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 4/5] phy: rockchip: inno-usb2: Add clkout_ctl_phy
 support
To: Heiko Stuebner <heiko@sntech.de>, vkoul@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jonas@kwiboo.se
References: <20260505170410.3265305-1-heiko@sntech.de>
 <20260505170410.3265305-5-heiko@sntech.de>
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
In-Reply-To: <20260505170410.3265305-5-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_074534_931238_9D77F23F 
X-CRM114-Status: GOOD (  24.52  )
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

On 5/5/26 19:04, Heiko Stuebner wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> The 480m clk is controlled using regs in the PHY address space and not
> in the USB GRF address space on e.g. RK3528 and RK3506.
> 
> Add a clkout_ctl_phy usb2phy_reg to handle enable/disable of the 480m
> clk on these SoCs.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 47 +++++++++++++++----
>   1 file changed, 38 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 7cec45192393..d8879fcd4291 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -179,6 +179,7 @@ struct rockchip_usb2phy_cfg {
>   	unsigned int	num_ports;
>   	int (*phy_tuning)(struct rockchip_usb2phy *rphy);
>   	struct usb2phy_reg	clkout_ctl;
> +	struct usb2phy_reg	clkout_ctl_phy;
>   	const struct rockchip_usb2phy_port_cfg	port_cfgs[USB2PHY_NUM_PORTS];
>   	const struct rockchip_chg_det_reg	chg_det;
>   };
> @@ -228,6 +229,7 @@ struct rockchip_usb2phy_port {
>    * struct rockchip_usb2phy - usb2.0 phy driver data.
>    * @dev: pointer to device.
>    * @grf: General Register Files regmap.
> + * @phy_base: USB PHY regmap.
>    * @clks: array of phy input clocks.
>    * @clk480m: clock struct of phy output clk.
>    * @clk480m_hw: clock struct of phy output clk management.
> @@ -245,6 +247,7 @@ struct rockchip_usb2phy_port {
>   struct rockchip_usb2phy {
>   	struct device	*dev;
>   	struct regmap	*grf;
> +	struct regmap	*phy_base;
>   	struct clk_bulk_data	*clks;
>   	struct clk	*clk480m;
>   	struct clk_hw	clk480m_hw;
> @@ -312,15 +315,33 @@ static void rockchip_usb2phy_clk_bulk_disable(void *data)
>   	clk_bulk_disable_unprepare(rphy->num_clks, rphy->clks);
>   }
>   
> -static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
> +static void
> +rockchip_usb2phy_clk480m_clkout_ctl(struct clk_hw *hw, struct regmap **base,
> +				    const struct usb2phy_reg **clkout_ctl)
>   {
>   	struct rockchip_usb2phy *rphy =
>   		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
> +
> +	if (rphy->phy_cfg->clkout_ctl_phy.enable) {
> +		*base = rphy->phy_base;
> +		*clkout_ctl = &rphy->phy_cfg->clkout_ctl_phy;
> +	} else {
> +		*base = rphy->grf;
> +		*clkout_ctl = &rphy->phy_cfg->clkout_ctl;
> +	}
> +}
> +
> +static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
> +{
> +	const struct usb2phy_reg *clkout_ctl;
> +	struct regmap *base;
>   	int ret;
>   
> +	rockchip_usb2phy_clk480m_clkout_ctl(hw, &base, &clkout_ctl);
> +
>   	/* turn on 480m clk output if it is off */
> -	if (!property_enabled(rphy->grf, &rphy->phy_cfg->clkout_ctl)) {
> -		ret = property_enable(rphy->grf, &rphy->phy_cfg->clkout_ctl, true);
> +	if (!property_enabled(base, clkout_ctl)) {
> +		ret = property_enable(base, clkout_ctl, true);
>   		if (ret)
>   			return ret;
>   
> @@ -333,19 +354,23 @@ static int rockchip_usb2phy_clk480m_prepare(struct clk_hw *hw)
>   
>   static void rockchip_usb2phy_clk480m_unprepare(struct clk_hw *hw)
>   {
> -	struct rockchip_usb2phy *rphy =
> -		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
> +	const struct usb2phy_reg *clkout_ctl;
> +	struct regmap *base;
> +
> +	rockchip_usb2phy_clk480m_clkout_ctl(hw, &base, &clkout_ctl);
>   
>   	/* turn off 480m clk output */
> -	property_enable(rphy->grf, &rphy->phy_cfg->clkout_ctl, false);
> +	property_enable(base, clkout_ctl, false);
>   }
>   
>   static int rockchip_usb2phy_clk480m_prepared(struct clk_hw *hw)
>   {
> -	struct rockchip_usb2phy *rphy =
> -		container_of(hw, struct rockchip_usb2phy, clk480m_hw);
> +	const struct usb2phy_reg *clkout_ctl;
> +	struct regmap *base;
> +
> +	rockchip_usb2phy_clk480m_clkout_ctl(hw, &base, &clkout_ctl);
>   
> -	return property_enabled(rphy->grf, &rphy->phy_cfg->clkout_ctl);
> +	return property_enabled(base, clkout_ctl);
>   }
>   
>   static unsigned long
> @@ -1336,9 +1361,13 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>   
>   	if (!dev->parent || !dev->parent->of_node ||
>   	    of_property_present(np, "rockchip,usbgrf")) {
> +		rphy->phy_base = device_node_to_regmap(np);
> +		if (IS_ERR(rphy->phy_base))
> +			return PTR_ERR(rphy->phy_base);
>   		rphy->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
>   	} else {
>   		rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
> +		rphy->phy_base = rphy->grf;
>   	}
>   	if (IS_ERR(rphy->grf))
>   		return PTR_ERR(rphy->grf);

The logic is not easy to follow, but it looks right.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
