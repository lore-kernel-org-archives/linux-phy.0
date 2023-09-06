Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A6EEEB8FB6
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 11:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iFJ3iR7iOGYan9cCINLVhVwgbFLFaqpV6YKXiZ/ZBs=; b=MLRA5T4y/KBbV/
	0ibRlRhZy7EDAnbQRTi3gDCf+3T8pFcziB5RpXJtAe6OQTmii0UFZkNWDQM3XjSjGE8RD9SMYp83+
	+SzItqWSLzKMK4ON53NLm9D8IVqVyNy2PzFx4NDlRCrxA84ZTDktVMGzuDQYKnws8QYtWDz4CL0P4
	FZasrpvZOA88qibRD/HxmFyqxpYuW8R6hJxRAiUdBcbujsJjN4eq9YI1V1vZ3Q3zl4BIxFQFN4+S4
	Vr7XyUKb5cWOYl9FyQMASwZuDgKtSfJc374vc1NvbJmUVPX5IJtzs7ILwBNb+QVSHul6H04PzuDyT
	D3d772yWWfWzKj8FOeug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdqVm-008aPX-0r;
	Wed, 06 Sep 2023 11:15:54 +0000
Received: from mail-wm1-f42.google.com ([209.85.128.42])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnTd-007c6z-0d
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 08:01:30 +0000
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-401da71b7faso33403285e9.2
        for <linux-phy@lists.infradead.org>; Wed, 06 Sep 2023 01:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693987283; x=1694592083; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :references:cc:to:content-language:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iacyrJQBRhEYzvp25ziq2vSW7I+eHVISs/3iilhXySg=;
        b=WrWI7Fy6DyVQcH5gTFRlgedd07m/OhVO/5Tm4UpPfZ1S+nqyU8kgdVe0zk3qk6AOve
         ONzF3EouNDDD+NpclDk7qYQtOQOh7FQ4x/9Cu31jlmENbWFfjUIB4y7ZlCfYJPkPON56
         B9LqNLKTA2iBh6yyD8isBLjqvGqO2L45JH5aXeXSfahToRy8AETs7ssKNnyfJ+GLvj8X
         th+rJBXuw02mpdQZfG//04o4cToErY8Tut5AEh6GlPLJmc1sBjJdnuYveNjhSDk2GyNA
         SVVczarpc+bI+uaBqEFv/P2/3w8/oPkB2pGlFt6edlSZ3oQBU6GzBS5HOc9LNh/tFoOJ
         kI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693987283; x=1694592083;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :references:cc:to:content-language:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iacyrJQBRhEYzvp25ziq2vSW7I+eHVISs/3iilhXySg=;
        b=GgRUZ2pVQcGZqRCw+AOLJH3dRmUgyrwgIuooDXA4zri4Q2wQkDhO0TYiMn3ljZbGAL
         cnx5QB7QKWX0vguR8KRn5gtN7CVdc25cfG8PMTvnDsYebtwc+0t8wW+wvghbCSGn8L6l
         62s6/bCu+4bFSOES0hbmgoZVG8rQl4iL9kFwClLBkkxX1hIVnxzS5zIUi+7aTKHa+uuC
         h32s0ULmj3uhquJSLYpxnF4yoWfyzIOPhKlCu7Bx3DkNg5SJyd6UdgNLIOesqIPje73S
         3ITQSk8zcMLaG56FforLJYzkpB9Yz4KTNFHO/CH2u5gUVKf0NUrehHGEsM+jlQkCaVMb
         kMwA==
X-Gm-Message-State: AOJu0Yx9ciwFS4D6TJs967fy4tEPXTd6LmpwoceyswAyZrqvvFhb8kTB
	vQxKUsroVr8tZkPliLyRlJZHUQ==
X-Google-Smtp-Source: AGHT+IFUkCkp5b1k9uUnvwcZZyeMI9mvJjJKv2FEZpg0/LhShP4vJvD/ReuVKCBa81vTCt3dNV3gnA==
X-Received: by 2002:a05:600c:2811:b0:3fb:ffa8:6d78 with SMTP id m17-20020a05600c281100b003fbffa86d78mr1567287wmb.36.1693987282483;
        Wed, 06 Sep 2023 01:01:22 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:cb13:4315:e6a2:bbdd? ([2a01:e0a:982:cbb0:cb13:4315:e6a2:bbdd])
        by smtp.gmail.com with ESMTPSA id ay30-20020a5d6f1e000000b0031f65cdd271sm577301wrb.100.2023.09.06.01.01.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 01:01:22 -0700 (PDT)
Message-ID: <df1323b5-29c0-4daf-8ca0-cb6a85171d9b@linaro.org>
Date: Wed, 6 Sep 2023 10:01:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] phy: qcom-qmp-combo: use v6 registers in v6 regs
 layout
Content-Language: en-US, fr
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, Abel Vesa <abel.vesa@linaro.org>
References: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
 <20230906075823.7957-5-dmitry.baryshkov@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
Organization: Linaro Developer Services
In-Reply-To: <20230906075823.7957-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_010129_240423_14F2D512 
X-CRM114-Status: GOOD (  15.06  )
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

On 06/09/2023 09:58, Dmitry Baryshkov wrote:
> Make sure that we use only v6 registers in qmp_v6_usb3phy_regs_layout.

Why that if the registers are the same as v5 ?

Neil

> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 12 ++++++------
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h |  2 ++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h     |  4 ++++
>   3 files changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index bff6231d7de3..9c71a132afea 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -194,14 +194,14 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
>   };
>   
>   static const unsigned int qmp_v6_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
> -	[QPHY_SW_RESET]			= QPHY_V5_PCS_SW_RESET,
> -	[QPHY_START_CTRL]		= QPHY_V5_PCS_START_CONTROL,
> -	[QPHY_PCS_STATUS]		= QPHY_V5_PCS_PCS_STATUS1,
> -	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_POWER_DOWN_CONTROL,
> +	[QPHY_SW_RESET]			= QPHY_V6_PCS_SW_RESET,
> +	[QPHY_START_CTRL]		= QPHY_V6_PCS_START_CONTROL,
> +	[QPHY_PCS_STATUS]		= QPHY_V6_PCS_PCS_STATUS1,
> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_POWER_DOWN_CONTROL,
>   
>   	/* In PCS_USB */
> -	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL,
> -	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
> +	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
> +	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
>   
>   	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
>   	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> index 7c16af0b1cc3..0d0089898240 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
> @@ -8,6 +8,8 @@
>   
>   /* Only for QMP V6 PHY - USB3 have different offsets than V5 */
>   #define QPHY_V6_PCS_USB3_POWER_STATE_CONFIG1		0x00
> +#define QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x08
> +#define QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x14
>   #define QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
>   #define QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
>   #define QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> index c95d3fabd108..496c36522e55 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
> @@ -7,6 +7,10 @@
>   #define QCOM_PHY_QMP_PCS_V6_H_
>   
>   /* Only for QMP V6 PHY - USB/PCIe PCS registers */
> +#define QPHY_V6_PCS_SW_RESET			0x000
> +#define QPHY_V6_PCS_PCS_STATUS1			0x014
> +#define QPHY_V6_PCS_POWER_DOWN_CONTROL		0x040
> +#define QPHY_V6_PCS_START_CONTROL		0x044
>   #define QPHY_V6_PCS_LOCK_DETECT_CONFIG1		0x0c4
>   #define QPHY_V6_PCS_LOCK_DETECT_CONFIG2		0x0c8
>   #define QPHY_V6_PCS_LOCK_DETECT_CONFIG3		0x0cc


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
