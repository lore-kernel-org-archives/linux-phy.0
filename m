Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB160C71136
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 12:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u4ynUfAzmmOkJ/RkGohHgkzqbBRd8dEe4AJkYZ+D+xE=; b=YH5tV9O3nmI7Y8LiWyI5R4cidF
	oeVMmCGPH5wWVH3RLxYfXOm/1zxsKVdGXBHaUh2RDGeDGRDgNABFlS9KKrrI+SN53a0cq1GzVqiX9
	+5q+INgPG4qFxnJsy8kHvo8+yBt8J0nO1KpWZlcBvl79rEGKNn6IOTtrzRFtvQUJ8+zpGIsj4+0vs
	vAMz+sA8wviHEp3Ek8gYGDm8sUaO5sD5eBhOKW1hj5Y7uT9SzAx8rA1Cdn9MKLGwN5K4aVT85TKCV
	zGlSQb6b0n7gtzDHDJAk71oKX5NuEoAOyNWyuMk5ODqMQMDGkEqn5Wqf2NBd89pyZ0qwjo8HnHKbc
	mfq3YHJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR9IP-00000004Qed-1rWX;
	Mon, 16 Jun 2025 12:50:41 +0000
Received: from mail-wm1-f54.google.com ([209.85.128.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8D1-00000004EQc-35cl
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 11:41:04 +0000
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so32171015e9.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 04:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750074062; x=1750678862; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8sRD0hhehQiVFVz1/K2fPoR0pfi2oY4bqTmnvXtAuBI=;
        b=EVXL2lVU2hfhD8SRuzI7iIijv5KEE2DgqYVrv6GrgLnOC1XDqxdqo944lhblI7QlF3
         PnRdhh+3uOG7Z3+nZ3ZGu7G1eWzVnG++uOQJlo8Avhxo8YPD8+twn8M7wskyHhhTQcPE
         LrBdWjM4rNJ8frt+xZroHtL609qTJroyPuEM9ptKVMZv1MksqakY7ZW0x9wj5AyDaojD
         ByaUEeA8Z32wqkkZJbReY71so8ZmbcWXDhuUsX3VN0n8lF2XMk8GZgRbKOf7DpgFDtcl
         hgl5aJ8gVHjtJOKamQcQK6VnWc1FdrT1msk1V/DyNeq0AKQkQgTNp0/NGJcO9mvpqnVW
         n6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750074062; x=1750678862;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8sRD0hhehQiVFVz1/K2fPoR0pfi2oY4bqTmnvXtAuBI=;
        b=IBKHia0cpQ++NiMY99OhS8U2YsCM7AoBIkHp7PQGqTGp5excn1K80lMFww/NBMFl+v
         jxmmhZTr1M7XqunKFwG/UyYVa/oElRDAjED9j1VW26ZcSNIwj4cBCNUQ8PLBwCyQ8iA+
         hkchCwzYyIlbhwbj5CkT5YI+OY3HookRnM1nwzqZzJBAbs5d/ExziOwzuvwSBGsx3x1P
         7Vw96EBlTLg9C71B1RGw5V3A37dbp2G7ZYtSA4HLrykNFfThK1h0dicAla+w+5Wq9xBK
         4lCXr8gF7neKRMCP1I9R4hMDY9f/1K/YYULqN+TQuywV17v+7SfexKokvH46/b9nlOVF
         9vNA==
X-Forwarded-Encrypted: i=1; AJvYcCWZ8Nm3lHw9gKGp0uhdNE/xBnyr24fpSvQXAIHSpl0v1hNsYBOtmLbVte1d2rEVaHWvNAAH+8IaKjw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhSEIMKYsrcNPIbVR2DT2gxZx73ZoCpMhkS5KYCvlPK2stFdl4
	nypDm3qZrbLxAscq048UARV5beDnkb9vQGJ3YRQKP06l4PfKjMPBugB3tSB2RWQ1iY8=
X-Gm-Gg: ASbGnct2P+KSNwgdLgay3LqxByulFR8s21I7KOGjQy+Mlm0a7e3UFxNIuF4bjCngyVH
	/KHlPhl2nV5fNCG370qxJ690scKW9kd5af+xosijbxolWdd2+SWUXZ68y8WdicIfoz2CN8InlMD
	bHweVt+sZWehTuoQTZDaV9pQt3SDUhMhjeA0qglrES6v8yao/S2MAELf9vPD+1K3RYl5f1ecerp
	d6yQxXUTexHmPxgyU9kfiD2NMcH3kWf3QMdU02Dz7WKxUyF9DeitDQZdkjI2ro+XGNebgkJGVi4
	sCxDcoCtv1FbbFOCJZsnDqd6eBBKZQNxCZJrdiHlB3qy4lYV5B4mz87IeznA2kxlKP8y3yjKXmz
	pIp5Gk6o9LNQ0l6C8Tftf8v2O7rhTO0ww/Gbd
X-Google-Smtp-Source: AGHT+IHlwg0FqnF45Bt2SZ9KIFe4JzMFcl0EqIteVDIf0H4otS2ZOjN+6NWiqd03gG2828hHw12IWw==
X-Received: by 2002:a05:600c:3ac6:b0:450:ceb2:67dd with SMTP id 5b1f17b1804b1-4533cb5751bmr75622585e9.33.1750074061762;
        Mon, 16 Jun 2025 04:41:01 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:6c7:97de:65a8:488a? ([2a01:e0a:3d9:2080:6c7:97de:65a8:488a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a54d1fsm10719856f8f.2.2025.06.16.04.41.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 04:41:01 -0700 (PDT)
Message-ID: <6b2a469c-c2b4-435a-8999-c69ac63fc041@linaro.org>
Date: Mon, 16 Jun 2025 13:41:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
To: Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
 <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
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
In-Reply-To: <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_044103_786893_A06F782C 
X-CRM114-Status: GOOD (  21.34  )
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

On 16/06/2025 11:45, Luca Weiss wrote:
> Zeroing out registers does not happen in the downstream kernel, and will
> "tune" the repeater in surely unexpected ways since most registers don't
> have a reset value of 0x0.
> 
> Stop doing that and instead just set the registers that are in the init
> sequence (though long term I don't think there's actually PMIC-specific
> init sequences, there's board specific tuning, but that's a story for
> another day).
> 
> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 63 +++++++++++++-------------
>   1 file changed, 32 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index 6bd1b3c75c779d2db2744703262e132cc439f76e..a246c897fedb2edfd376ac5fdc0423607f8c562b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -61,8 +61,13 @@ enum eusb2_reg_layout {
>   	LAYOUT_SIZE,
>   };
>   
> +struct eusb2_repeater_init_tbl_reg {
> +	u8 reg;

No need to be u8 here, could simply be unsigned int.

> +	u8 value;

Same for this one since it's passed to regmap_write which takes unsigned int.

Using u8 here won't save any memory since u8 will be aligned on at least u32
reading u8 will involve at least an u32 read with some masking operations,
and perhaps the compiler will just drop u8 after all.

> +};
> +
>   struct eusb2_repeater_cfg {
> -	const u32 *init_tbl;
> +	const struct eusb2_repeater_init_tbl_reg *init_tbl;
>   	int init_tbl_num;
>   	const char * const *vreg_list;
>   	int num_vregs;
> @@ -82,16 +87,16 @@ static const char * const pm8550b_vreg_l[] = {
>   	"vdd18", "vdd3",
>   };
>   
> -static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
> -	[TUNE_IUSB2] = 0x8,
> -	[TUNE_SQUELCH_U] = 0x3,
> -	[TUNE_USB2_PREEM] = 0x5,
> +static const struct eusb2_repeater_init_tbl_reg pm8550b_init_tbl[] = {
> +	{ TUNE_IUSB2, 0x8 },
> +	{ TUNE_SQUELCH_U, 0x3 },
> +	{ TUNE_USB2_PREEM, 0x5 },
>   };
>   
> -static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
> -	[TUNE_IUSB2] = 0x5,
> -	[TUNE_SQUELCH_U] = 0x3,
> -	[TUNE_USB2_PREEM] = 0x2,
> +static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
> +	{ TUNE_IUSB2, 0x5 },
> +	{ TUNE_SQUELCH_U, 0x3 },
> +	{ TUNE_USB2_PREEM, 0x2 },
>   };
>   
>   static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
> @@ -129,17 +134,10 @@ static int eusb2_repeater_init(struct phy *phy)
>   	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
>   	struct device_node *np = rptr->dev->of_node;
>   	struct regmap *regmap = rptr->regmap;
> -	const u32 *init_tbl = rptr->cfg->init_tbl;
> -	u8 tune_usb2_preem = init_tbl[TUNE_USB2_PREEM];
> -	u8 tune_hsdisc = init_tbl[TUNE_HSDISC];
> -	u8 tune_iusb2 = init_tbl[TUNE_IUSB2];
>   	u32 base = rptr->base;
> -	u32 val;
> +	u32 poll_val;
>   	int ret;
> -
> -	of_property_read_u8(np, "qcom,tune-usb2-amplitude", &tune_iusb2);
> -	of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &tune_hsdisc);
> -	of_property_read_u8(np, "qcom,tune-usb2-preem", &tune_usb2_preem);
> +	u8 val;
>   
>   	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
>   	if (ret)
> @@ -147,21 +145,24 @@ static int eusb2_repeater_init(struct phy *phy)
>   
>   	regmap_write(regmap, base + EUSB2_EN_CTL1, EUSB2_RPTR_EN);
>   
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_HS_COMP_CUR, init_tbl[TUNE_EUSB_HS_COMP_CUR]);
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_EQU, init_tbl[TUNE_EUSB_EQU]);
> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_SLEW, init_tbl[TUNE_EUSB_SLEW]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_HS_COMP_CUR, init_tbl[TUNE_USB2_HS_COMP_CUR]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_EQU, init_tbl[TUNE_USB2_EQU]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_SLEW, init_tbl[TUNE_USB2_SLEW]);
> -	regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, init_tbl[TUNE_SQUELCH_U]);
> -	regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, init_tbl[TUNE_RES_FSDIF]);
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_CROSSOVER, init_tbl[TUNE_USB2_CROSSOVER]);
> +	/* Write registers from init table */
> +	for (int i = 0; i < rptr->cfg->init_tbl_num; i++)
> +		regmap_write(regmap, base + rptr->cfg->init_tbl[i].reg,
> +			     rptr->cfg->init_tbl[i].value);
>   
> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, tune_usb2_preem);
> -	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, tune_hsdisc);
> -	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, tune_iusb2);
> +	/* Override registers from devicetree values */
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
>   
> -	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, val, val & RPTR_OK, 10, 5);
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
> +
> +	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
> +		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
> +
> +	/* Wait for status OK */
> +	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
> +				       poll_val & RPTR_OK, 10, 5);
>   	if (ret)
>   		dev_err(rptr->dev, "initialization timed-out\n");
>   
> 

With that fixed:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
