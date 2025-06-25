Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33B10C7EE33
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 11:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RjAAsLzLUeV1JexKFaVvNWOPQVLC8SM0WAn5O9OmNeg=; b=SvuCgq6cz6n50JFCZuKwyZ9X0s
	NisvO13F45eeRPxod6S7/Mi3GB/Dzf2kO9A6Z3udb80/2YSsKVemAGva5gmokOAxL1+C27j2GE7O0
	KSo5/jNxHCpXez9Ji5SabFmigTsEwtiz2whgI5eZlviBZfi0Zu6q53CHN5c82fAHedW24mrtDfbFW
	HMi+UYRWkcDLFswPM4C6LlaNkZDNiXqT/WNrEoL2o2vnntPpuB8lxL1bKrwR7JojEr+VoSk8TzoFp
	Azojon/Fm96HRSyDEZw5ZnDwjAvZSEixvzrG4ElazX9C8HMhmYwZWE85bbTIkLCEsLiq8N6hSzuc8
	wgKR06zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNyI-00000008Q8y-3ozb;
	Wed, 25 Jun 2025 11:07:18 +0000
Received: from mail-wm1-f51.google.com ([209.85.128.51])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUN42-00000008GNO-40PJ
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 10:09:12 +0000
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4537fdec33bso9180545e9.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 03:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750846149; x=1751450949; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qneQjY3X2Jd798VANcewut/m2Zfu0vnaEkQ6ercd+fI=;
        b=GoovhOrphbIAVO/JT3GIOIsxYf6+tV7S7TLfMYdilKdnz6FwQ29LTDfClmXQYI+Ffw
         HtUquYW2hGnn6dqmARZzd12yl7jfg4PXwNI2cHJA3sw8YYy675LhT+8L+kjqb3uStaBa
         R+qu/Z1Nmq93XVtbBEpmR+9w8mPqKXL9QI5WOfPv0Sq+OiakvkuyH3M7Pch2SU5lQfUP
         fo+LQXfAbMyAKSxWwa2pQxS7aGMOE5upHRC8b5SYZhrOM9HXV9MLlGONgp0E2cxOLQov
         2/Kv4WBGhbIQ1TxT6TdOVkZsb3lFttIbZh3NlreEFaBuq5+N+AsI9UmIra8ECKpOjkiQ
         Wldg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750846149; x=1751450949;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qneQjY3X2Jd798VANcewut/m2Zfu0vnaEkQ6ercd+fI=;
        b=KUNWhlCk0S1s6/PtzeKEBbi85brPNSSggOA6w6BghBQ+MKkP7cYU2XvyJbGSsOvqqZ
         /eOZ1sZwJbwb8O58kuPxAZ0juakLDn0DTEBW0jRQAyc2N7ygxaEJ1c5gC0s8v8wbnwal
         DDw0yZP4uEtte2IfXtjw7P+9AqoX/jyHuJ4d+wlNdQe1TDtmrLLTn3q9GODKFRQQPMRE
         zByeNzcXxPSkcBzOCcwZ0oEFbanGB/WbO+0vXqB/ZpSP25LqB0iRNXxrt9wKPSrtPXni
         hmb8wqoYEg6w4fyhbWcUqWrd7US7YokvQb4C8NsuHFD2rJYMcaa175EJQiaVVAF36LgY
         xyPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVM8NxbA2rHRJKg+C1VAKyg2MS8GPzif0u+YM2ub0C93uK2R/P6toYff6mP0HXLP60JbZ8frvaB0Fk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNpSs+J5wXx6xpXyI9q26J76AaQOIxbO+odpcvsAbqLIKyLsBr
	C0e1kC9LZuUd/fJZCegKJW6ZzOYjG/mYFm5jFnqV2ak0HQfGasb0Bd8EPEd207c+iUc=
X-Gm-Gg: ASbGncuvPET6aykDWoBJnXFSuuJMtGrwFZOOJaRguWTFh66bOimw6hGe2n1v4daz41A
	dwdcdnvBD+DWAI3Yrmn/v67Xw5YLVj0QQ+tRqBcakopGCXJ1DhsOb3dYbMKXawuQgi1N4jrMl9H
	WNaaDEZHLs6t5NES6cM/db9WVhmTXaBmvpWD5cBTgfldHYOvEO/86/AT7NZ0D2KxdsEQ+IiS1/e
	ffuC2oCo3IpnzMNqyEpXc6mNibb+yiRajuEJe9/BptwbreFS71YnQC2xwnnQRCu4uaFkzZi7Cpl
	gIRgw0PlZdKE1LFKAwZWAtnLJEcSTd9+98J5sN/YmpEvopmAEbfZO5n2ZZOMShXHQKzP3IC7Psg
	JpjcwIEgSbXpaphWkaa/NQHJLayknfTjH9nlA
X-Google-Smtp-Source: AGHT+IHnmTs+UY1GFEyjpH83eIaDxqFLZZxp8pZ7AF1bA5Pj3W8QC4Vs1NPzVLgo390Ifg/6DfCTDQ==
X-Received: by 2002:a05:600c:34d5:b0:442:f97b:87e with SMTP id 5b1f17b1804b1-45381aa54a4mr19922005e9.6.1750846148895;
        Wed, 25 Jun 2025 03:09:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:b3df:bee7:215:e1a4? ([2a01:e0a:3d9:2080:b3df:bee7:215:e1a4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453823c42e1sm14946555e9.37.2025.06.25.03.09.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 03:09:08 -0700 (PDT)
Message-ID: <052364dd-743f-471b-b420-c9cd6bbc207c@linaro.org>
Date: Wed, 25 Jun 2025 12:09:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add support
 for PMIV0104
To: Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-4-19d85541eb4c@fairphone.com>
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
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-4-19d85541eb4c@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_030911_008175_F8033778 
X-CRM114-Status: GOOD (  14.62  )
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
> Add support for the eUSB2 repeater found on the PMIV0104. There is no
> default init table for this PMIC, just the board-specific tuning
> parameters are used on top of the default tuning values.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> index 61594739e5b12706775622e1f76af6ad5d2d29bf..3d4cdc4c18becd8efd5015e698b836ad4d7cf18c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> @@ -82,6 +82,14 @@ static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
>   	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
>   };
>   
> +static const struct eusb2_repeater_cfg pmiv0104_eusb2_cfg = {
> +	/* No PMIC-specific init sequence, only board level tuning via DT */
> +	.init_tbl	= (struct eusb2_repeater_init_tbl_reg[]) {},
> +	.init_tbl_num	= 0,
> +	.vreg_list	= pm8550b_vreg_l,
> +	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
> +};
> +
>   static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
>   	.init_tbl	= smb2360_init_tbl,
>   	.init_tbl_num	= ARRAY_SIZE(smb2360_init_tbl),
> @@ -264,6 +272,10 @@ static const struct of_device_id eusb2_repeater_of_match_table[] = {
>   		.compatible = "qcom,pm8550b-eusb2-repeater",
>   		.data = &pm8550b_eusb2_cfg,
>   	},
> +	{
> +		.compatible = "qcom,pmiv0104-eusb2-repeater",
> +		.data = &pmiv0104_eusb2_cfg,
> +	},
>   	{
>   		.compatible = "qcom,smb2360-eusb2-repeater",
>   		.data = &smb2360_eusb2_cfg,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
