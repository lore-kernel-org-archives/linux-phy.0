Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBD7FC87FCB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 16:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cSvzj5WFoEzEzXOwulCY+QT0jCYEzkV9+dbtuMq0vbs=; b=nKtHfoPPOTp/x8KYE1Vm1f2SKa
	L8RE3I7wHqE0eDLW6eCtmd6mVQI+X8/3gHzAV78tBOwP0g0vMeP6Fx+gDbsttkomnAsidpU5n763I
	CxCY992Jq8YhBgi+tbbHJWl0Oy/gEBC08OQsrCn+CYJwn0tGluBhvM2tEp1ABYujWtypMsbi9nVAi
	dJuqYqkxD0t5SzZmw0WBF2DY/Ym3dxR8H6+gaBorKNpSNR4TCxw6J8MPR2raQSjlFOl6cvIc44oTE
	1d3OIgtVmXz1yYqoQsjT+6FWDyeG530xecS2PPUF8X7RgSMAY6ZtcCV0oq5vAPdwImrrBqHLV9RlA
	tOv8Ew8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulsJ3-0000000BUG3-1vwg;
	Tue, 12 Aug 2025 16:57:01 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulpDT-0000000AwqF-3Jyp
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 13:39:04 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-459d7726ee6so28386135e9.2
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 06:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755005942; x=1755610742; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r+F6T7liCG9gadSn68AjZAZfIPgOb+DpRS8VT8i0DD8=;
        b=lJMXtiUD+/3k3Fu+AoEKyXKpr6dnjFjlgg/j97JEHKouP/j9E4aHMFlrjc2kiCFwDw
         4KljQV4oR/SI3X0n9i45kNqjM18BsWv0VnIE2yZn9ZEfIZthM5GE29E6SeMPxJjyOivQ
         o6FIEvfIYL1Obzl9MwlihTtyCk5hfjE0TFx5SMqyZrrHGwt+fJQhDlCIWJ4dQxmcGjYK
         ZDbX0yoftTwvRZNHLc4O8GKsblWOEGdmA7apWrGdAQ4qkNYMEZG0Y/qpBNZrv21xYq44
         Ogd5aUkrPwi3SjDJ62BFDxpwgaSwp9sl1Kshgf+xIyseVEJLZHdD3+vJH1Nn3yeDq2Lm
         Wb3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755005942; x=1755610742;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=r+F6T7liCG9gadSn68AjZAZfIPgOb+DpRS8VT8i0DD8=;
        b=H6G/PJqzmjZr1s79opEMROzW7uaKo06BVRgjEwgyJkQQTzcgyv0+z2JrIeiY9fiU8G
         wMklfduWZ5OqcQBEmcNDkb/RgN9S1kIwENgS8QBNWP6zyS+uEiQNkGIBvV4F0o0c3XV2
         wrTN04PFQZ9XHra3e7pPT9HX5vQs97PJwc6dCaFaf+BPiVvXRShT1OhahubO2nMUNFIT
         2h/GaYS3N01rg0e6OwGDulQhh/mnHtvbtM9AQOoozLCh88pY5ow4BfZNGqrz2SCtskQO
         Z3iCt06GUZDEIV5jmRP1JvYSh2tedZz0leVXzS/zcI3vUnyDyvwyySAMdofvz+Fh4nxm
         VRsA==
X-Forwarded-Encrypted: i=1; AJvYcCWXASo1lyadkjjEMTOLtbRqgYU4B7nOCbn+ZmgRWrESeRZP2RblVlUYl3XlknlA2scNgHDrnOlSIKs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwTvQeYfZFUzzztOGNnUDRsAc5goL9x1BsDJ6bO21JOlW5P8g+u
	5C3K71tbCfmJXMcRVVr27l41v+DySag/lyU/PD9d2NmFAbYtUdAWvRjKc7RCqXSNwRE=
X-Gm-Gg: ASbGncuNetI6jCkXrz1flCJJu9wNWSacG8li2HAFFlmQdk8bFlnHx+Asa6WEeVq3GBU
	c7ivTULcH0xYY+kQXciOgsI5+Rb+4jIXkp5JwXG94eximMD5cF1qVSoZ2PHUPoaEbar3nynpbuK
	xI6ZPcvslWiIh+4UWezJmvSGXBUC2I6UP1M74XQYhAMPW8FDXhuc64GasTGBTKiXKJF3GtRNeVo
	202/ncOgTo/EKvhj+jBzfzI5YcTdTJRT1ExJrSQItZoBcH3/bBPC3teg4bSzSfYYb4gtSex4onh
	TFDvK/r8UNZ7gtRzPIE0BBeug/AFiGrAKHDRyWw7croAf2NB30bYHuLnnlWWJIvOhmChccUsm7d
	lDknkRMQyECeVG9YaM+HjWXZfIiMqbFcIMRvou4CpMn1dKKFIRBe0EFPff5RczEZzpw8UZOOWDy
	J1u5H+zjpoJA==
X-Google-Smtp-Source: AGHT+IG68k5KkLHuUBSjtpxGcS06gQVZPGCBg//jo/LZq9FzGZ01MFCnek+ggsr/rWGxjSd/2rnI0Q==
X-Received: by 2002:a05:600c:8b35:b0:43c:ea1a:720a with SMTP id 5b1f17b1804b1-45a10b9ae9emr27765545e9.1.1755005941590;
        Tue, 12 Aug 2025 06:39:01 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:9086:bd36:16a7:1f8b? ([2a01:e0a:3d9:2080:9086:bd36:16a7:1f8b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c489e81sm44885723f8f.68.2025.08.12.06.39.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 06:39:00 -0700 (PDT)
Message-ID: <d7949778-73c4-4575-8db3-a3724f75eb38@linaro.org>
Date: Tue, 12 Aug 2025 15:39:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
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
In-Reply-To: <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_063903_842342_56E7FE83 
X-CRM114-Status: GOOD (  19.88  )
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

On 10/07/2025 18:16, Bryan O'Donoghue wrote:
> Add a new MIPI CSI2 driver in D-PHY mode initially. The entire set of
> existing CAMSS CSI PHY init sequences are imported in order to save time
> and effort in later patches.
> 
> In-line with other PHY drivers the process node name is omitted from the
> compat string while the soc name is included.
> 
> At the moment we follow the assignment of lane positions - the bitmap of
> physical input lanes to logical lane numbers as a linear list per the
> existing DPHY @lanes data-member.
> 
> This is fine for us in upstream since we also map the lanes contiguously
> but, our hardware can support different lane mappings so we should in the
> future extend out the DPHY structure to capture the mapping.
> 
> The Qualcomm 3PH class of PHYs can do both D-PHY and C-PHY mode. For now only
> D-PHY is supported.
> 
> In porting some of the logic over from camss-csiphy*.c to here its also
> possible to rationalise some of the code.
> 
> In particular use of regulator_bulk and clk_bulk as well as dropping the
> seemingly useless and unused interrupt handler.
> 
> The PHY sequences and a lot of the logic that goes with them are well proven
> in CAMSS and mature so the main thing to watch out for here is how to get
> the right sequencing of regulators, clocks and register-writes.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   MAINTAINERS                                        |  11 +
>   drivers/phy/qualcomm/Kconfig                       |  11 +
>   drivers/phy/qualcomm/Makefile                      |   6 +
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 491 +++++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 281 ++++++++++++
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          | 101 +++++
>   6 files changed, 901 insertions(+)
> 
>
<snip>

> +const struct mipi_csi2phy_clk_freq zero = { 0 };
> +
> +const struct mipi_csi2phy_clk_freq dphy_4nm_x1e_csiphy = {
> +	.freq = {
> +		300000000, 400000000, 480000000
> +	},
> +	.num_freq = 3,
> +};
> +
> +const struct mipi_csi2phy_clk_freq dphy_4nm_x1e_csiphy_timer = {
> +	.freq = {
> +		266666667, 400000000
> +	},
> +	.num_freq = 2,
> +};
> +
> +const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
> +	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
> +	.reg_info = {
> +		.init_seq = lane_regs_x1e80100,
> +		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
> +		.offset = 0x1000,
> +		.generation = GEN2,
> +	},
> +	.supply_names = (const char *[]){
> +		"vdda-0p8",
> +		"vdda-1p2"
> +	},
> +	.num_supplies = 2,
> +	.clk_names = (const char *[]) {
> +		"camnoc_axi",
> +		"cpas_ahb",
> +		"csiphy",
> +		"csiphy_timer"
> +	},
> +	.num_clk = 4,
> +	.clk_freq = {
> +		zero,

It seems clang doesn't like this at all:
drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c:486:3: error: initializer element is not a compile-time constant
                 zero,
                 ^~~~
1 error generated.

> +		zero,
> +		dphy_4nm_x1e_csiphy,
> +		dphy_4nm_x1e_csiphy_timer,
> +	},
> +};
<snip>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
