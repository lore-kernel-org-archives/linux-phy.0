Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00C1BC02184
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jan 2025 09:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XagZPCu+cNc6svC6XSPKuUeoh51PrSce1Di/utmcJW4=; b=tFmZihtap6+hPdBWHCehPayKpl
	BXFHP53CuPZqTsfCi35mUGRGWHNNOlVNWsMCvR8+4Bz5PuI5d8LIcvmUIeldFETIDUaLToyM6CwS7
	pB+zPjy20hsx4EWjLrg5JnusXCetB55Ve6JPdBcYBpb1g22eonTXOu55bQ7ZUyU8Ynz9vOgWUmrh9
	UyenmG0c3C8JEAO2d9OWlYVkBfrzeiI6Tqd2A+QtZOcqnJT9+S4kasDnszStZ9ihNY3JiJkHKrqfG
	sgy1qYoX7AAJgdYsUKb8fh1u9ZaDupdDMFXk3kqJ2HTtjuwqn/ySEzQirKiA6ZMQsznf/gUINXccq
	TsRdbD6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcnB-00000007tdp-35lC;
	Tue, 14 Jan 2025 09:00:57 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcmc-00000007tYE-37T7
	for linux-phy@lists.infradead.org;
	Tue, 14 Jan 2025 09:00:24 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-437a92d7b96so4381165e9.2
        for <linux-phy@lists.infradead.org>; Tue, 14 Jan 2025 01:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736845221; x=1737450021; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hLPU6n+9ojUizcMYapLhRHNo+gzm51fW6qO6dS7gCcY=;
        b=cgaK9Qs6dUfllatX1KUD2P2EX9DAYs4orZlwAC5Wgzv8C+YoV67kVVDmrfn3mrnWlJ
         lAgDpAKOKtchxNyAdQ30mjH0FFmULSU17Gv8pdvzf9BZrgAU3JShk0PNnB0of5jCLEi/
         XZReo+wHSLeczw8912ys98hGTf8pj65Ikw5ogFsuwbkcT3Lzb85AegBKl13I1uqh5wUH
         wlUt918elyBYaEKGIeTi+Xn/4pi6HqR7NtuK9Oz0grQL1gCLBzOqGkPoZ2rwOOjbDPOE
         LSAEZe3T8KOgb8MMBLJe+deWC8uBpADJ3whzENMhBTKHBJ4Dsyia1KUpU0bRUyZpN19O
         X+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736845221; x=1737450021;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hLPU6n+9ojUizcMYapLhRHNo+gzm51fW6qO6dS7gCcY=;
        b=rYUsHIaq/VqWn4oX6VPeogVAUTY/ukyl4vMyhF4URlRr+hDQIv6YITQkoWtCui1bwi
         SBByzC0H7ZHaOW0ML4clE2MvalZbGUj5TgxW1HAu9sGMNUD3e886CGkgSVyb16jHnoWg
         h7yY2g2s3Uj5qErWsuJK7dhNj64GpY82C+8JlqHeW7RXd4qrqLe9EHURXJSGCFhvAYC4
         zOEMWnyyWnvbWEFPgf/7hjOnuvqPf4hvKy4UjzdnqPIMVnGotf6eOOzTRAuvcNVg47rI
         zMLG+gPZWmwfQRjS8nn/lJSbqAeTzQp8CiaX/d2DpuZvrj1J9TT9thwGymYckrnIAz+M
         OVrg==
X-Forwarded-Encrypted: i=1; AJvYcCW/xU/4CPbqc/l1n/zOLQ6HzPpKd79HWfMklpSqRbhi/hYzeHka1UljC4rLgEtIk4kUyRXN/X8jZaI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgKhazr+ktukS9Jk/hYfoC57q31eRYFfnum0fTYaVd/HSp+ill
	SqjtGxnzFuFWJ6kMwIhnb0O81AJt9LIBf6fNElMyarC0AA03OkmKhnITDtyTzBA=
X-Gm-Gg: ASbGncu+kfP1+XnuoncfbfNJraZQ4dI/cbl0NW5Yypu7JdSu7zy5Vblqoq1cTV50B1x
	tljMinpCXOU4+5uMOB7b59vZdoD+vY19Lj+EHYFnbPrkzGD8S24jycIFPOOLWefPlZGkfs1xFKI
	Gf8b4X8qDxWC8mFlaAwLWrEDwuSIe59XvJzOpUbocqBty9y4n+qHu348g8obfmOF8vU8IrnMle9
	U8oM9DmF/91UwvIv/tz9udYdMqtxcSCMF3LyiBbtIBmyyGUDGYHjHRl468kETX3va6a9qnbsj/6
	aUvcrhxjIE8hiNOM9eBq3QGpPEB58YQu+A==
X-Google-Smtp-Source: AGHT+IHtKaoubiUh++N0bjKcGGDptmArpTEbbwMO6yBbxpUADCY3BFyS45Sg8tl4Oq8oVDlLGxs6rw==
X-Received: by 2002:a05:6000:4011:b0:386:3835:9fec with SMTP id ffacd0b85a97d-38a873306cemr23705555f8f.44.1736845221099;
        Tue, 14 Jan 2025 01:00:21 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:a5df:aa69:5642:11b5? ([2a01:e0a:982:cbb0:a5df:aa69:5642:11b5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e37d111sm14610879f8f.18.2025.01.14.01.00.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2025 01:00:20 -0800 (PST)
Message-ID: <97b3fdcf-2829-4080-8285-d6458b2bb7d3@linaro.org>
Date: Tue, 14 Jan 2025 10:00:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/5] phy: qcom-qmp-ufs: Add PHY Configuration support for
 SM8750
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Bjorn Andersson
 <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>,
 Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-2-b3774120eb8c@quicinc.com>
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
In-Reply-To: <20250113-sm8750_ufs_master-v1-2-b3774120eb8c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_010022_928041_45F69656 
X-CRM114-Status: GOOD (  16.45  )
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

On 13/01/2025 22:46, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add SM8750 specific register layout and table configs. The serdes
> TX RX register offset has changed for SM8750 and hence keep UFS
> specific serdes offsets in a dedicated header file.
> 
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |  12 ++
>   .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h    |  68 ++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 174 ++++++++++++++++++++-
>   3 files changed, 253 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> index 328c6c0b0b09ae4ff5bf14e846772e6d0f31ce5a..aa2278f9377408b3c602f6fa0de5021804f21f52 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> @@ -86,4 +86,16 @@
>   #define QSERDES_V6_COM_CMN_STATUS				0x1d0
>   #define QSERDES_V6_COM_C_READY_STATUS				0x1f8
>   
> +#define QSERDES_V6_COM_ADAPTIVE_ANALOG_CONFIG			0x268
> +#define QSERDES_V6_COM_CP_CTRL_ADAPTIVE_MODE0			0x26c
> +#define QSERDES_V6_COM_PLL_RCCTRL_ADAPTIVE_MODE0		0x270
> +#define QSERDES_V6_COM_PLL_CCTRL_ADAPTIVE_MODE0			0x274
> +#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0		0x58
> +
> +#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0		0x5c
> +#define QSERDES_V6_COM_CP_CTRL_ADAPTIVE_MODE1			0x278
> +#define QSERDES_V6_COM_PLL_RCCTRL_ADAPTIVE_MODE1		0x27c
> +#define QSERDES_V6_COM_PLL_CCTRL_ADAPTIVE_MODE1			0x280
> +#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1		0x50
> +#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE1		0x54
>   #endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..73b3857e0277ce6cdbe658066772172a94f25d6e
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h
> @@ -0,0 +1,68 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2024, Linaro Limited
> + */
> +
> +#ifndef QCOM_PHY_QMP_QSERDES_TXRX_UFS_V7_H_
> +#define QCOM_PHY_QMP_QSERDES_TXRX_UFS_V7_H_
> +
> +#define QSERDES_UFS_V7_TX_RES_CODE_LANE_TX				0x28
> +#define QSERDES_UFS_V7_TX_RES_CODE_LANE_RX				0x2c
> +#define QSERDES_UFS_V7_TX_RES_CODE_LANE_OFFSET_TX			0x30
> +#define QSERDES_UFS_V7_TX_RES_CODE_LANE_OFFSET_RX			0x34
> +#define QSERDES_UFS_V7_TX_LANE_MODE_1					0x7c
> +#define QSERDES_UFS_V7_TX_FR_DCC_CTRL					0x108
> +
> +#define QSERDES_UFS_V7_RX_UCDR_SO_SATURATION				0x28
> +#define QSERDES_UFS_V7_RX_UCDR_PI_CTRL1					0x58
> +#define QSERDES_UFS_V7_RX_TERM_BW_CTRL0					0xC4
> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B0				0x218
> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B1				0x21C
> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B2				0x220
> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B3				0x224
> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B4				0x228
> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B6				0x230
> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B7				0x234
> +#define QSERDES_UFS_V7_RX_MODE_RATE2_B3					0x248
> +#define QSERDES_UFS_V7_RX_MODE_RATE2_B6					0x254
> +#define QSERDES_UFS_V7_RX_MODE_RATE2_B7					0x258
> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B0					0x260
> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B1					0x264
> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B2					0x268
> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B3					0x26C
> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B4					0x270
> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B5					0x274
> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B7					0x27C
> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B8					0x280
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B0				0x284
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B1				0x288
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B2				0x28C
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B3				0x290
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B4				0x294
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B5				0x298
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B6				0x29C
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B7				0x2A0
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B0				0x2A8
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B1				0x2AC
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B2				0x2B0
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B3				0x2B4
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B4				0x2B8
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B5				0x2BC
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B6				0x2C0
> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B7				0x2C4
> +#define QSERDES_UFS_V7_RX_DLL0_FTUNE_CTRL				0x348
> +#define QSERDES_UFS_V7_RX_SIGDET_CAL_TRIM				0x380
> +#define QSERDES_UFS_V7_RX_INTERFACE_MODE				0x1F0
> +#define QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE2				0xD4
> +#define QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE4				0xDC
> +#define QSERDES_UFS_V7_RX_UCDR_SO_GAIN_RATE4				0xF0
> +#define QSERDES_UFS_V7_RX_UCDR_PI_CONTROLS				0xF4
> +#define QSERDES_UFS_V7_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4		0x54
> +#define QSERDES_UFS_V7_RX_UCDR_FASTLOCK_FO_GAIN_RATE4			0x10
> +#define QSERDES_UFS_V7_RX_UCDR_FASTLOCK_SO_GAIN_RATE4			0x24
> +#define QSERDES_UFS_V7_RX_EQ_OFFSET_ADAPTOR_CNTRL1			0x1CC
> +#define QSERDES_UFS_V7_RX_OFFSET_ADAPTOR_CNTRL3				0x1D4
> +#define QSERDES_UFS_V7_RX_EQU_ADAPTOR_CNTRL4				0x1B4
> +#define QSERDES_UFS_V7_RX_VGA_CAL_MAN_VAL				0x178
> +
> +#endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index d964bdfe870029226482f264c78a27d0ec43bf2b..a1695b368fe7622bf8663343d0241b4d0d40ab59 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -31,6 +31,7 @@
>   #include "phy-qcom-qmp-pcs-ufs-v6.h"
>   
>   #include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
> +#include "phy-qcom-qmp-qserdes-txrx-ufs-v7.h"
>   
>   /* QPHY_PCS_READY_STATUS bit */
>   #define PCS_READY				BIT(0)
> @@ -949,6 +950,132 @@ static const struct qmp_phy_init_tbl sm8650_ufsphy_g5_pcs[] = {
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME, 0x9e),
>   };
>   
> +static const struct qmp_phy_init_tbl sm8750_ufsphy_serdes[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xD9),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_CFG, 0x60),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x1F),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO_MODE1, 0x1F),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IETRIM, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IPTRIM, 0x20),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_CTRL, 0x40),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADAPTIVE_ANALOG_CONFIG, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_ADAPTIVE_MODE0, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCCTRL_ADAPTIVE_MODE0, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_ADAPTIVE_MODE0, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7F),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x92),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1E),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x4C),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_ADAPTIVE_MODE1, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCCTRL_ADAPTIVE_MODE1, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_ADAPTIVE_MODE1, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x99),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xBE),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x23),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_ufsphy_tx[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_TX_LANE_MODE_1, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_TX_RES_CODE_LANE_OFFSET_RX, 0x17),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_ufsphy_rx[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE2, 0x0C),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE4, 0x0C),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_SO_GAIN_RATE4, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_PI_CONTROLS, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_OFFSET_ADAPTOR_CNTRL3, 0x0E),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x1C),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_SO_GAIN_RATE4, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_VGA_CAL_MAN_VAL, 0x8E),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_EQU_ADAPTOR_CNTRL4, 0x0F),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B0, 0xCE),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B1, 0xCE),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B2, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B3, 0x1A),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B4, 0x0F),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B6, 0x60),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B7, 0x62),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B3, 0x9A),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B6, 0xE2),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B7, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B0, 0x1B),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B1, 0x1B),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B2, 0x98),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B3, 0x9B),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B4, 0x2A),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B5, 0x12),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B7, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B8, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B0, 0x93),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B1, 0x93),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B2, 0x60),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B3, 0x99),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B4, 0x5F),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B5, 0x92),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B6, 0xE3),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B7, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B0, 0x9B),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B1, 0x9B),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B2, 0x60),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B3, 0x99),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B4, 0x5F),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B5, 0x92),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B6, 0xFB),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B7, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_SO_SATURATION, 0x1F),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_PI_CTRL1, 0x94),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_TERM_BW_CTRL0, 0xFA),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_DLL0_FTUNE_CTRL, 0x30),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_SIGDET_CAL_TRIM, 0x77),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_ufsphy_pcs[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PCS_CTRL1, 0x40),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0F),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x68),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S4, 0x0E),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S5, 0x12),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S6, 0x15),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S7, 0x19),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_ufsphy_g4_pcs[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_ufsphy_g5_pcs[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x05),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x05),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HS_G5_SYNC_LENGTH_CAPABILITY, 0x4d),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME, 0x9e),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_ufsphy_hs_b_pcs[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PCS_CTRL1, 0x41),
> +};
> +
>   struct qmp_ufs_offsets {
>   	u16 serdes;
>   	u16 pcs;
> @@ -1523,6 +1650,45 @@ static const struct qmp_phy_cfg sm8650_ufsphy_cfg = {
>   	.regs			= ufsphy_v6_regs_layout,
>   };
>   
> +static const struct qmp_phy_cfg sm8750_ufsphy_cfg = {
> +	.lanes			= 2,
> +
> +	.offsets		= &qmp_ufs_offsets_v6,
> +	.max_supported_gear	= UFS_HS_G5,
> +
> +	.tbls = {
> +		.serdes		= sm8750_ufsphy_serdes,
> +		.serdes_num	= ARRAY_SIZE(sm8750_ufsphy_serdes),
> +		.tx		= sm8750_ufsphy_tx,
> +		.tx_num		= ARRAY_SIZE(sm8750_ufsphy_tx),
> +		.rx		= sm8750_ufsphy_rx,
> +		.rx_num		= ARRAY_SIZE(sm8750_ufsphy_rx),
> +		.pcs		= sm8750_ufsphy_pcs,
> +		.pcs_num	= ARRAY_SIZE(sm8750_ufsphy_pcs),
> +	},
> +
> +	.tbls_hs_b = {
> +		.pcs		= sm8750_ufsphy_hs_b_pcs,
> +		.pcs_num	= ARRAY_SIZE(sm8750_ufsphy_hs_b_pcs),
> +	},
> +
> +	.tbls_hs_overlay[0] = {
> +		.pcs		= sm8750_ufsphy_g4_pcs,
> +		.pcs_num	= ARRAY_SIZE(sm8750_ufsphy_g4_pcs),
> +		.max_gear	= UFS_HS_G4,
> +	},
> +	.tbls_hs_overlay[1] = {
> +		.pcs		= sm8750_ufsphy_g5_pcs,
> +		.pcs_num	= ARRAY_SIZE(sm8750_ufsphy_g5_pcs),
> +		.max_gear	= UFS_HS_G5,
> +	},
> +
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= ufsphy_v6_regs_layout,
> +
> +};
> +
>   static void qmp_ufs_serdes_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls *tbls)
>   {
>   	void __iomem *serdes = qmp->serdes;
> @@ -1593,8 +1759,10 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>   		qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_overlay[i]);
>   	}
>   
> -	if (qmp->mode == PHY_MODE_UFS_HS_B)
> +	if (qmp->mode == PHY_MODE_UFS_HS_B) {
>   		qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_b);
> +		qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_b);
> +	}
>   }
>   
>   static int qmp_ufs_com_init(struct qmp_ufs *qmp)
> @@ -2061,7 +2229,11 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
>   	}, {
>   		.compatible = "qcom,sm8650-qmp-ufs-phy",
>   		.data = &sm8650_ufsphy_cfg,
> +	}, {
> +		.compatible = "qcom,sm8750-qmp-ufs-phy",
> +		.data = &sm8750_ufsphy_cfg,
>   	},
> +
>   	{ },
>   };
>   MODULE_DEVICE_TABLE(of, qmp_ufs_of_match_table);
> 

Looks good

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
