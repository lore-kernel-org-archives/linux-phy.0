Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96C98C54E65
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 07:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CMqKRT351uqY/bsPTJ64lKqlDlmUBKnho3GIVnLI3nY=; b=uQx5SGeTCZHz/X15qhKBjCawuw
	1gCXjBs5WM31/nObXhXG4bmmRvd8FA4e4dbpKWf9Wv7fx6rfOQ1ytj9zir3dh2mz8rI8E7ecEXpkN
	Ia9JRqEKSbFa2CNgLr6inoDEscq5UAsxY8B4t+3x1YNLG931IcXrkSI48xehIyuXF1VGp4XdQFXc8
	LJO9UguCR5XunMpkq40w+Ux47lmp/+iSoaUHS1ElXo4ZSqKgb0VCmIUrADagT6BK5doq/moj3sH03
	oxleg+ImaNee8z9cZtN5kdtxD2k4T9PnhNzHG6qIvdwFcGu1++q/FuSwPbo90tLXYbwFCZO7xq1ne
	xcQsn/8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI0KZ-00000000820-1Ukh;
	Thu, 22 May 2025 07:27:07 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI0Gy-000000007LA-391B
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 07:23:25 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-442ea95f738so64734665e9.3
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 00:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747898603; x=1748503403; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QZR2UmwyvYbkG1MeoeRYmbzrVJKOcssJezkUQpLtb9g=;
        b=h2hxWfax5tsO4oLp9GCy/2779egGSZzm1gye5Z9WlXCbm4WfG8hNP6I8XBXYveUHFm
         x6RwG5SrrFtnVvaMMe6FP9YyhKLFz1FODDKHTD1ZCc1KqI90kmVwlf3ZqbqylWr9DaGc
         Lqu3/yhOEra1SFtUh/JmWrFioChPfh/4CR+zSjGSxuhYVwLfyR8fd13WyDf98U562vVd
         pWUWCBgwOQ1duXitkb06iHndserOnNZbPT8EQOuqtKP3rEgwX9GjoEMcDoDCbVExYjgf
         m3u5OiL4B6btQlEI5beEIga4tMcAKNfgRF91aThY1SwoVve7Ew+EmSmp/913tkCrE/Pv
         DqKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747898603; x=1748503403;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QZR2UmwyvYbkG1MeoeRYmbzrVJKOcssJezkUQpLtb9g=;
        b=EBUC+2uL1sSOKsB8n0+7/vvYzfQZjesjhPSqpBS93ecZ1xhj3uyCqVQCJCfaJjNTrE
         JIVvX5gcqXKLwkBnOt/GKSsVqIY7xy5WvgQeevfeH3dNJLCQdNkesW9iYsU4fpHpmGj0
         m6etlyXiQz5E3VBylgPp7KZfm97NTiBHvP0inYaQcB2qIbehSHVNw9CWxMiWWaO/1n9h
         4FctpnrtooFsxrSKTK40FjyfoQnN+Bko0cZbaHATX6JyKSKSffguQV4RTujv3W++INe3
         itxAYjputAGAgNZQY5+cGYBb0MppmDOPLq/M5kSHbC4JbCuDN7FaPNVCE6wUO/TToEVS
         06vA==
X-Forwarded-Encrypted: i=1; AJvYcCVwv3QsuBuvQaceWDJyT2FXOv5h61wgo6PgPCubxaZJttFOOtQjhcfIlRCObN5VV61mNvzZNrKyQ54=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx58FZl2/8NjDBrlAQB1pn0bckGWSThr3FcBJJCbvMVIp9zHyXw
	AY7gEjkSAewyjC9+ObXkFfBuYKhli5F6io4JsV4P8gKUWtWKWsYlPq9i9k1Y9A1lGzE=
X-Gm-Gg: ASbGnctgvbWth88oQhPiXUEnBwpscN7UYlyNVSovav4pBzAZJKZO+TC5lkwtfvwp/JS
	EBS8JctpCRilU7lxxnboTmue6GNlZ/BbZnRTVcKMOmECGU8SA4rzGgcXBJcUKXVZT+0G4r5d1bR
	9CS/k4LFnoSx/fJZCacBZhubZMSpybx2jW3ks023ySdi0BV/TJwKQUniUtz5MiyUsQW+sqUAsme
	nqp+aP8yT42wkd4dzvaTPKFjIi8dySm8GQgdGprUfuyl5FFuO48DxsRxl7vqFx4qqwrK6lxhUzN
	HYd5ZHeOC/J1BzkdTlmx7nPSV4300THfYHGuH0rp2mwvxDu2dAkcO9/BvVgE31FbeqGtOs3WzkB
	n1AFDXTwzOpEb0jzeR/7RM9Ytlspd2W1OlWclVvM=
X-Google-Smtp-Source: AGHT+IHIvSY7+qwnZ/QQdNvPjKupe5qhn5r92x/K597uQ+Eo6bTe2yY6F9VCdwYcPSbvThPcoAaNew==
X-Received: by 2002:a05:600c:3f07:b0:43d:77c5:9c1a with SMTP id 5b1f17b1804b1-442fd60b516mr239629295e9.4.1747898603150;
        Thu, 22 May 2025 00:23:23 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5? ([2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f3dd94f1sm97180205e9.35.2025.05.22.00.23.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 00:23:22 -0700 (PDT)
Message-ID: <86f5b662-db35-4a2b-83bf-841977d183dd@linaro.org>
Date: Thu, 22 May 2025 09:23:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 3/5] phy: qcom-uniphy: add more registers from display
 PHYs
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 linux-phy@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250520-fd-hdmi-phy-v4-0-fcbaa652ad75@oss.qualcomm.com>
 <20250520-fd-hdmi-phy-v4-3-fcbaa652ad75@oss.qualcomm.com>
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
In-Reply-To: <20250520-fd-hdmi-phy-v4-3-fcbaa652ad75@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_002324_797653_7B717827 
X-CRM114-Status: GOOD (  10.21  )
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

On 20/05/2025 22:44, Dmitry Baryshkov wrote:
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Import register definitions from 28nm DSI and HDMI PHYs, adding more UNI
> PHY registers.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-uniphy.h | 33 +++++++++++++++++++++++++++++++++
>   1 file changed, 33 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
> index e5b79a4dc270f25d8979f51bf4acd6c76998032e..ce782018124b5431ee647575289c963d8fd0de1f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-uniphy.h
> +++ b/drivers/phy/qualcomm/phy-qcom-uniphy.h
> @@ -8,8 +8,19 @@
>   
>   /* PHY registers */
>   #define UNIPHY_PLL_REFCLK_CFG		0x000
> +#define UNIPHY_PLL_POSTDIV1_CFG		0x004
> +#define UNIPHY_PLL_CHGPUMP_CFG		0x008
> +#define UNIPHY_PLL_VCOLPF_CFG		0x00c
> +#define UNIPHY_PLL_VREG_CFG		0x010
>   #define UNIPHY_PLL_PWRGEN_CFG		0x014
> +#define UNIPHY_PLL_DMUX_CFG		0x018
> +#define UNIPHY_PLL_AMUX_CFG		0x01c
>   #define UNIPHY_PLL_GLB_CFG		0x020
> +#define UNIPHY_PLL_POSTDIV2_CFG		0x024
> +#define UNIPHY_PLL_POSTDIV3_CFG		0x028
> +#define UNIPHY_PLL_LPFR_CFG		0x02c
> +#define UNIPHY_PLL_LPFC1_CFG		0x030
> +#define UNIPHY_PLL_LPFC2_CFG		0x034
>   #define UNIPHY_PLL_SDM_CFG0		0x038
>   #define UNIPHY_PLL_SDM_CFG1		0x03c
>   #define UNIPHY_PLL_SDM_CFG2		0x040
> @@ -22,11 +33,33 @@
>   #define UNIPHY_PLL_LKDET_CFG0		0x05c
>   #define UNIPHY_PLL_LKDET_CFG1		0x060
>   #define UNIPHY_PLL_LKDET_CFG2		0x064
> +#define UNIPHY_PLL_TEST_CFG		0x068
>   #define UNIPHY_PLL_CAL_CFG0		0x06c
> +#define UNIPHY_PLL_CAL_CFG1		0x070
> +#define UNIPHY_PLL_CAL_CFG2		0x074
> +#define UNIPHY_PLL_CAL_CFG3		0x078
> +#define UNIPHY_PLL_CAL_CFG4		0x07c
> +#define UNIPHY_PLL_CAL_CFG5		0x080
> +#define UNIPHY_PLL_CAL_CFG6		0x084
> +#define UNIPHY_PLL_CAL_CFG7		0x088
>   #define UNIPHY_PLL_CAL_CFG8		0x08c
>   #define UNIPHY_PLL_CAL_CFG9		0x090
>   #define UNIPHY_PLL_CAL_CFG10		0x094
>   #define UNIPHY_PLL_CAL_CFG11		0x098
> +#define UNIPHY_PLL_EFUSE_CFG		0x09c
> +#define UNIPHY_PLL_DEBUG_BUS_SEL	0x0a0
> +#define UNIPHY_PLL_CTRL_42		0x0a4
> +#define UNIPHY_PLL_CTRL_43		0x0a8
> +#define UNIPHY_PLL_CTRL_44		0x0ac
> +#define UNIPHY_PLL_CTRL_45		0x0b0
> +#define UNIPHY_PLL_CTRL_46		0x0b4
> +#define UNIPHY_PLL_CTRL_47		0x0b8
> +#define UNIPHY_PLL_CTRL_48		0x0bc
>   #define UNIPHY_PLL_STATUS		0x0c0
> +#define UNIPHY_PLL_DEBUG_BUS0		0x0c4
> +#define UNIPHY_PLL_DEBUG_BUS1		0x0c8
> +#define UNIPHY_PLL_DEBUG_BUS2		0x0cc
> +#define UNIPHY_PLL_DEBUG_BUS3		0x0d0
> +#define UNIPHY_PLL_CTRL_54		0x0d4
>   
>   #endif
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
