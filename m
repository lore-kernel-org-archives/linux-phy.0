Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CE9EC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 10 Nov 2023 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DAqapAiHciHvqhycLbTgfG2d2xDZZjDV8e+yTLiyKCg=; b=4C1sqzGpsSk90kWX5Z+Gw6Nukx
	yvFMaoCLpV80cxDxomLlHgXY5ONxsAsKr3Vgak0WLGDizmeYYwzS25vX5vVsY8msDqTxmoEngm761
	+Br2PIZ3VFD/h9QYVxNxddPlEDFQOSkPtl50QEo50lruxOz2lfj45Q93RmyPfjfVvsc2y+vvmu9Ev
	Qo6B8kEXq3zx/yE0B9ngu1ODrTizAhkYqXFdQt+XfHDySnKOFahHbsdH10gD9V3l9mI5rzu+rIyQe
	u/LDPf5bEaKA5K1+65eIlbRP27+qGz2V0cKXmERJgvp6fTSg6F5b9/Lc4/K9RsqjkyDquiFEQhS3u
	b8eFr0Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1NAR-0087GG-2q;
	Fri, 10 Nov 2023 08:47:07 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1NAN-0087FD-3A
	for linux-phy@lists.infradead.org;
	Fri, 10 Nov 2023 08:47:06 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40891d38e3fso12302855e9.1
        for <linux-phy@lists.infradead.org>; Fri, 10 Nov 2023 00:47:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699606022; x=1700210822; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4a1rW2Y0VvG3Kn/Vo2m4opzsH1DYghF1vmcTEEhvJtw=;
        b=LFyWBSsT4HnSxJKBCGythzoiscQNawScQCzNSC16D8IFA5DScsvUCmVYIc36EvLj6s
         5ydM+pUIvzCFaOD2j6c6/FbndnWqhFTwRYyQtJysGTJ6jS3u7G9hJGWa3NB/2BPWeee6
         ISwCQP+TWcUzwt03nyE4i/7KyGRqvL+/GVzfWhlaD+dWM6E/no72DPCyc7XUYlJ9JyWG
         lUuNj+PhS9s0Ge+8+f7u+9VY+lCOE6eoGT/nRbV7w5zssBqH+oNdocvnOKDOE0mHFp2K
         vsVv2oB3zVlJwudIA3pms20o5subxJTx0fWOp6xDyhf0ZD+H7rhay5EV3btGJl98BNF7
         PS+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699606022; x=1700210822;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4a1rW2Y0VvG3Kn/Vo2m4opzsH1DYghF1vmcTEEhvJtw=;
        b=FeDLFCjcfQaazm1P4nAs+pREQa3d63w5MvgjiXxz5tRnJc7fT1zpyq0QczkH6RbJvl
         S0xcu2zhrYrTYUdYGJJySEsYj282zzB8qx+kpQLbo6lY528CjJ/s7olmx8sSKe67raE0
         L6pVc8IgXvvrzHXKhu451wh7qx8e/LCV90HlKG7++kvMdrS3WOJPIFP06anMKPpv106G
         qG+XFlG8dvF7ibyW2zYh7bAiwlPxGDkyZySgYlqZ7kopEdNAWWf79XPP6ygWyx1kV002
         4vI6I6psPCa4JsXZNlyO4LVz1tSz17N3nKJ2fCvF0IuRKFRxi+rMgAWhewbkm5zSbmmx
         HsUg==
X-Gm-Message-State: AOJu0YyX78A7uwnHAUif1sSXyGI3phnqGvvNdcU+OzPC439HYmxXPRDY
	7IdxWW1XGZHjtH8amPAsvHAilQ==
X-Google-Smtp-Source: AGHT+IEG9qOC7LpefOB4q8n1/Vsfc7EeXDWmesK/t/UqkN8/ntQKLeUp3asImzpQOLyffBzrnwc1Ew==
X-Received: by 2002:a5d:648e:0:b0:32f:b1ab:ee84 with SMTP id o14-20020a5d648e000000b0032fb1abee84mr7499664wri.45.1699606022260;
        Fri, 10 Nov 2023 00:47:02 -0800 (PST)
Received: from [192.168.7.189] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id h8-20020adffa88000000b0032d9337e7d1sm1446493wrr.11.2023.11.10.00.47.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 00:47:01 -0800 (PST)
Message-ID: <e4bafeaf-bbeb-4990-b6f2-497159995910@linaro.org>
Date: Fri, 10 Nov 2023 09:47:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 6/7] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed
 Gear 5 support for SM8550
Content-Language: en-US, fr
To: Can Guo <cang@qti.qualcomm.com>, quic_cang@quicinc.com,
 bvanassche@acm.org, mani@kernel.org, stanley.chu@mediatek.com,
 adrian.hunter@intel.com, beanhuo@micron.com, avri.altman@wdc.com,
 junwoo80.lee@samsung.com, martin.petersen@oracle.com
Cc: linux-scsi@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <1699332374-9324-1-git-send-email-cang@qti.qualcomm.com>
 <1699332374-9324-7-git-send-email-cang@qti.qualcomm.com>
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
In-Reply-To: <1699332374-9324-7-git-send-email-cang@qti.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_004704_022257_81491C61 
X-CRM114-Status: GOOD (  19.04  )
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

Hi,

On 07/11/2023 05:46, Can Guo wrote:
> From: Can Guo <quic_cang@quicinc.com>
> 
> On SM8550, two sets of UFS PHY settings are provided, one set is to support
> HS-G5, another set is to support HS-G4 and lower gears. The two sets of PHY
> settings are programming different values to different registers, mixing
> the two sets and/or overwriting one set with another set is definitely not
> blessed by UFS PHY designers. In order to add HS-G5 support for SM8550, we
> need to split the two sets into their dedicated tables, and leave only the
> common settings in the .tlbs. To have the PHY programmed with the correct
> set of PHY settings, the submode passed to PHY driver must be either HS-G4
> or HS-G5.

I guess I'll need to rebase my SM8650 UFS PHY driver to support both G4 and G5 modes
at some point ?

Neil

> 
> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |   2 +
>   drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |   2 +
>   .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  12 +++
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 112 ++++++++++++++++++---
>   4 files changed, 115 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
> index c23d5e4..e563af5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
> @@ -18,6 +18,7 @@
>   #define QPHY_V6_PCS_UFS_BIST_FIXED_PAT_CTRL		0x060
>   #define QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY		0x074
>   #define QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY		0x0bc
> +#define QPHY_V6_PCS_UFS_RX_HS_G5_SYNC_LENGTH_CAPABILITY	0x12c
>   #define QPHY_V6_PCS_UFS_DEBUG_BUS_CLKSEL		0x158
>   #define QPHY_V6_PCS_UFS_LINECFG_DISABLE			0x17c
>   #define QPHY_V6_PCS_UFS_RX_MIN_HIBERN8_TIME		0x184
> @@ -27,5 +28,6 @@
>   #define QPHY_V6_PCS_UFS_READY_STATUS			0x1a8
>   #define QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1		0x1f4
>   #define QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1		0x1fc
> +#define QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME		0x220
>   
>   #endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> index f420f8f..ef392ce 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> @@ -56,6 +56,8 @@
>   #define QSERDES_V6_COM_SYS_CLK_CTRL				0xe4
>   #define QSERDES_V6_COM_SYSCLK_BUF_ENABLE			0xe8
>   #define QSERDES_V6_COM_PLL_IVCO					0xf4
> +#define QSERDES_V6_COM_CMN_IETRIM				0xfc
> +#define QSERDES_V6_COM_CMN_IPTRIM				0x100
>   #define QSERDES_V6_COM_SYSCLK_EN_SEL				0x110
>   #define QSERDES_V6_COM_RESETSM_CNTRL				0x118
>   #define QSERDES_V6_COM_LOCK_CMP_EN				0x120
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> index 15bcb4b..48f31c8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> @@ -10,10 +10,20 @@
>   #define QSERDES_UFS_V6_TX_RES_CODE_LANE_RX			0x2c
>   #define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX		0x30
>   #define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX		0x34
> +#define QSERDES_UFS_V6_TX_LANE_MODE_1				0x7c
> +#define QSERDES_UFS_V6_TX_FR_DCC_CTRL				0x108
>   
>   #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE2		0x08
>   #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4		0x10
> +#define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_SO_GAIN_RATE4		0x24
> +#define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4	0x54
> +#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2			0xd4
> +#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4			0xdc
> +#define QSERDES_UFS_V6_RX_UCDR_SO_GAIN_RATE4			0xf0
> +#define QSERDES_UFS_V6_RX_UCDR_PI_CONTROLS			0xf4
>   #define QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL			0x178
> +#define QSERDES_UFS_V6_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x1bc
> +#define QSERDES_UFS_V6_RX_OFFSET_ADAPTOR_CNTRL3			0x1c4
>   #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0			0x208
>   #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1			0x20c
>   #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3			0x214
> @@ -25,6 +35,8 @@
>   #define QSERDES_UFS_V6_RX_MODE_RATE3_B5				0x264
>   #define QSERDES_UFS_V6_RX_MODE_RATE3_B8				0x270
>   #define QSERDES_UFS_V6_RX_MODE_RATE4_B3				0x280
> +#define QSERDES_UFS_V6_RX_MODE_RATE4_B4				0x284
>   #define QSERDES_UFS_V6_RX_MODE_RATE4_B6				0x28c
> +#define QSERDES_UFS_V6_RX_DLL0_FTUNE_CTRL			0x2f8
>   
>   #endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 3927eba..e0a01497 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -649,32 +649,51 @@ static const struct qmp_phy_init_tbl sm8550_ufsphy_serdes[] = {
>   	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
>   	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
>   	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
> +
>   	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
>   	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
>   	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
>   	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
>   	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7f),
>   	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x4c),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_hs_b_serdes[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x44),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g4_serdes[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
>   	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x99),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x07),
> +
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x4c),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x99),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x07),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g5_serdes[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x1f),
> +
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IETRIM, 0x1b),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IPTRIM, 0x1c),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x06),
>   };
>   
>   static const struct qmp_phy_init_tbl sm8550_ufsphy_tx[] = {
> -	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_1, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_LANE_MODE_1, 0x05),
>   	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
>   };
>   
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g4_tx[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_FR_DCC_CTRL, 0x4c),
> +};
> +
>   static const struct qmp_phy_init_tbl sm8550_ufsphy_rx[] = {
> -	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE2, 0x0c),
> -	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x0f),
> -	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2, 0x0c),
>   
>   	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xc2),
>   	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xc2),
> @@ -690,14 +709,46 @@ static const struct qmp_phy_init_tbl sm8550_ufsphy_rx[] = {
>   	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B8, 0x02),
>   };
>   
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g4_rx[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x0e),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g5_rx[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4, 0x0c),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_SO_GAIN_RATE4, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_PI_CONTROLS, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_OFFSET_ADAPTOR_CNTRL3, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x1c),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_SO_GAIN_RATE4, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x08),
> +
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B3, 0xb9),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B4, 0x4f),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B6, 0xff),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_DLL0_FTUNE_CTRL, 0x30),
> +};
> +
>   static const struct qmp_phy_init_tbl sm8550_ufsphy_pcs[] = {
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x69),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
> -	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x2b),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
>   };
>   
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g4_pcs[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x2b),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g5_pcs[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HS_G5_SYNC_LENGTH_CAPABILITY, 0x4f),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME, 0x9e),
> +};
> +
>   struct qmp_ufs_offsets {
>   	u16 serdes;
>   	u16 pcs;
> @@ -731,6 +782,8 @@ struct qmp_phy_cfg {
>   	const struct qmp_phy_cfg_tbls tbls_hs_b;
>   	/* Additional sequence for HS G4 */
>   	const struct qmp_phy_cfg_tbls tbls_hs_g4;
> +	/* Additional sequence for HS G4 */
> +	const struct qmp_phy_cfg_tbls tbls_hs_g5;
>   
>   	/* clock ids to be requested */
>   	const char * const *clk_list;
> @@ -1157,6 +1210,28 @@ static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
>   		.pcs		= sm8550_ufsphy_pcs,
>   		.pcs_num	= ARRAY_SIZE(sm8550_ufsphy_pcs),
>   	},
> +	.tbls_hs_b = {
> +		.serdes		= sm8550_ufsphy_hs_b_serdes,
> +		.serdes_num	= ARRAY_SIZE(sm8550_ufsphy_hs_b_serdes),
> +	},
> +	.tbls_hs_g4 = {
> +		.serdes		= sm8550_ufsphy_g4_serdes,
> +		.serdes_num	= ARRAY_SIZE(sm8550_ufsphy_g4_serdes),
> +		.tx		= sm8550_ufsphy_g4_tx,
> +		.tx_num		= ARRAY_SIZE(sm8550_ufsphy_g4_tx),
> +		.rx		= sm8550_ufsphy_g4_rx,
> +		.rx_num		= ARRAY_SIZE(sm8550_ufsphy_g4_rx),
> +		.pcs		= sm8550_ufsphy_g4_pcs,
> +		.pcs_num	= ARRAY_SIZE(sm8550_ufsphy_g4_pcs),
> +	},
> +	.tbls_hs_g5 = {
> +		.serdes		= sm8550_ufsphy_g5_serdes,
> +		.serdes_num	= ARRAY_SIZE(sm8550_ufsphy_g5_serdes),
> +		.rx		= sm8550_ufsphy_g5_rx,
> +		.rx_num		= ARRAY_SIZE(sm8550_ufsphy_g5_rx),
> +		.pcs		= sm8550_ufsphy_g5_pcs,
> +		.pcs_num	= ARRAY_SIZE(sm8550_ufsphy_g5_pcs),
> +	},
>   	.clk_list		= sdm845_ufs_phy_clk_l,
>   	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
>   	.vreg_list		= qmp_phy_vreg_l,
> @@ -1222,14 +1297,25 @@ static void qmp_ufs_pcs_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls
>   static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg *cfg)
>   {
>   	qmp_ufs_serdes_init(qmp, &cfg->tbls);
> +	if (qmp->submode == UFS_HS_G4)
> +		qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_g4);
> +	else if (qmp->submode == UFS_HS_G5)
> +		qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_g5);
> +
>   	if (qmp->mode == PHY_MODE_UFS_HS_B)
>   		qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_b);
> +
>   	qmp_ufs_lanes_init(qmp, &cfg->tbls);
>   	if (qmp->submode == UFS_HS_G4)
>   		qmp_ufs_lanes_init(qmp, &cfg->tbls_hs_g4);
> +	else if (qmp->submode == UFS_HS_G5)
> +		qmp_ufs_lanes_init(qmp, &cfg->tbls_hs_g5);
> +
>   	qmp_ufs_pcs_init(qmp, &cfg->tbls);
>   	if (qmp->submode == UFS_HS_G4)
>   		qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_g4);
> +	else if (qmp->submode == UFS_HS_G5)
> +		qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_g5);
>   }
>   
>   static int qmp_ufs_com_init(struct qmp_ufs *qmp)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
