Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA62FD29DE4
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 08:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iiDgfIKxItkyxIAa7aQkSOqAI19NNDdHA9SjxLSM8mA=; b=o6Ky9pBAv8eGAVUZkH/Sa9LaP5
	4fUe4eOKD/DmZ58BRKImJk3OjBCZ+KN4UHjKoTEoFoeSwc4mOMy5AtNs5hv41ee7UxjFYfAkkAc/G
	z/RtJCUyyHiKdHNy74GQldDdoqNCb1QqUYCiWsZMKZvObOtFJjZr6VLJiMFbBM5uH4vIW5FkVv00P
	QCC2u6qPL7SpBTUk5j8ldale9lijRZ21u20jOtp7djbETvmUz+mH6lqT1G1I2h1E0EOzJ+3B5kw0c
	dL3lv0bxGNv9i8qdKo435MaAEpY2sLjs4gJU7SN+TF788Wg9dO6WQGeYo5W4uKORD8fdSPWtvNODX
	0jrU637g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZML-00000006hVZ-2PfL;
	Tue, 13 Jan 2026 08:02:37 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZMJ-00000006hV0-0wLN
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 08:02:36 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso65996375e9.3
        for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 00:02:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768291353; x=1768896153; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g6A7r611q476j/8oCIaN8K7+Q8yqCShfdSd5Arz3Gpc=;
        b=H4f4QwaoagQdeFK3jf+hgFj9sch74yq77EuPxTaH3CNJ9V4StkjuNIFfPMAEP89zJ9
         mkvCX6QdFCIdWUprUNFy+8xS9WjMSBqyTnGCTIn7iJIphq2/Yu39sFj0hZwjUHxKxJ7G
         XSJn+4p7IoNL/Uh4jIqnY1iawoJu7qIXFijqsR/Pkq8HZm2CIV9azeX/GLtZQpkNnorO
         TfowybKNbbSOGEzgXQ6YtSdBXcnTM5UWy7w3SLnOcbwjQvqBaAV21/z5EVTmM47sf9Kq
         NHxiX06IsNCxH0AUiX2srHnwch6pLNboEwZt3xaqI9ZAvNbpAoyQHuKRoirIZPEfJtXS
         0t6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291353; x=1768896153;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6A7r611q476j/8oCIaN8K7+Q8yqCShfdSd5Arz3Gpc=;
        b=ZbZKL6s4HjP97gxWbMJJ+T1tj0rfiitDbLK5UwMlBeYMKu0zM6GNj8dE5tOHpqU+x7
         EXYcnODzeTQAUhK0hyh5c1REkSWWBsypkrZ8E/eXTJUyZjbIqFbjh85yzcSLKHk3tmpi
         hd304Gmh4J/qkSiKZQGBZM86LvX0wArJ6EKPDmnGvgwrLB04UCKC55FB1DoUEc623VdU
         X0Ps0nCvXggIi+MieQmfDtPpP9a8eYaY1Cyl5uQd0p9MCzqewuDVSXnrHiEkiH3TkWzK
         nGql610mQ0ltL9ptWZPsB/V+h7k5HDeDu/shGS3+4P4aXbPN6QhhEUvX4J/FsF428YdE
         LckA==
X-Forwarded-Encrypted: i=1; AJvYcCXh4s5hjkdlhQOew5eYVqGIPWtCHhCJsHDlA9UW3HM2QcRkv4fiGK+O6y8J/ggwagMmmAwkq/gmjE8=@lists.infradead.org
X-Gm-Message-State: AOJu0YybnJelpJiykTVm1qWirowCEhujcjIz+tKaOdNF0jEkEuLLEEtm
	dGSCDJamyOqXZIHQlfnJE+lt0w3+s+KtdqJ8//kgoKNiYbj/DM/3ORAourAsHeXl/V0=
X-Gm-Gg: AY/fxX7c+HrR9HqVS+7gUpbJzjMEKmGkEg/8zG0tckVZdQN1seBOgssDI3bJQsMjGuw
	/NwQzFUwUJIU8HNq3Uevr+Gq8xuIB34y/upIkmbRlVfHVswgDXUvoAKInp6SM/30r9QS9pTesJq
	zPQZNiKt73YHz6zWKsFCsF9Im+OzfmloWbKaadO1lqKmmeNPlyoI2i7q0NZ67Lw1HneTHRpHg+D
	APRTfwgc5GOw1+KIUw21USmhIcLE5s5qp/vKHGQRsxClo7aY7bVqVMSChLZGpRR0fZryrzxdRSk
	LSMUUEW8IgH7IeM1AmJ0tbDuts4C6I1motc8zMSyjDVSaL3H94Y6JgNKwpAv2cu2MubN84qzCX8
	L5NEQArbqbjijxjj7TzV/LDTLHG9LsUEhYhK+Rlw1neWKYhiA3KHA9I1jbSoILmlLsLYMR7HRoI
	2qqJFDRgDSTfYEcnLHcA3NgK6tm+LrbfAsG9QYIJg=
X-Google-Smtp-Source: AGHT+IHrnnPCXrF0NOJBoPGixzBrnHBCDRj20M4yCZwqxFE51GxNlKuyIibw+hyJVZQowMJPsFEW1w==
X-Received: by 2002:a05:600c:4fc6:b0:477:5ad9:6df1 with SMTP id 5b1f17b1804b1-47d84b0aaa3mr221663015e9.3.1768291352911;
        Tue, 13 Jan 2026 00:02:32 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ecf6a5466sm109514045e9.11.2026.01.13.00.02.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:02:31 -0800 (PST)
Message-ID: <186438aa-a39e-4c85-9187-cd47d6abd2e7@linaro.org>
Date: Tue, 13 Jan 2026 09:02:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 4/6] phy: qcom-qmp-ufs: Add Milos support
To: Luca Weiss <luca.weiss@fairphone.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
 Abel Vesa <abel.vesa@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-4-d3ce4f61f030@fairphone.com>
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
In-Reply-To: <20260112-milos-ufs-v2-4-d3ce4f61f030@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_000235_354598_33E46974 
X-CRM114-Status: GOOD (  16.57  )
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

On 1/12/26 14:53, Luca Weiss wrote:
> Add the init sequence tables and config for the UFS QMP phy found in the
> Milos SoC.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 96 +++++++++++++++++++++++++++++++++
>   1 file changed, 96 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 8a280433a42b..df138a5442eb 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -84,6 +84,68 @@ static const unsigned int ufsphy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
>   	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_UFS_POWER_DOWN_CONTROL,
>   };
>   
> +static const struct qmp_phy_init_tbl milos_ufsphy_serdes[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IETRIM, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IPTRIM, 0x17),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x82),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0xff),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x0c),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x98),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x32),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x0f),
> +};
> +
> +static const struct qmp_phy_init_tbl milos_ufsphy_tx[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_LANE_MODE_1, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_FR_DCC_CTRL, 0xcc),
> +};
> +
> +static const struct qmp_phy_init_tbl milos_ufsphy_rx[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2, 0x0c),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x3e),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xce),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xce),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B2, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3, 0x1a),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B4, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6, 0x60),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B3, 0x9e),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B6, 0x60),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B3, 0x9e),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B4, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B5, 0x36),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B8, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_PI_CTRL1, 0x94),
> +};
> +
> +static const struct qmp_phy_init_tbl milos_ufsphy_pcs[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x0b),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x68),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
> +};
> +
>   static const struct qmp_phy_init_tbl msm8996_ufsphy_serdes[] = {
>   	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
>   	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
> @@ -1165,6 +1227,11 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
>   }
>   
>   /* Regulator bulk data with load values for specific configurations */
> +static const struct regulator_bulk_data milos_ufsphy_vreg_l[] = {
> +	{ .supply = "vdda-phy", .init_load_uA = 140120 },
> +	{ .supply = "vdda-pll", .init_load_uA = 18340 },
> +};
> +
>   static const struct regulator_bulk_data msm8996_ufsphy_vreg_l[] = {
>   	{ .supply = "vdda-phy", .init_load_uA = 51400 },
>   	{ .supply = "vdda-pll", .init_load_uA = 14600 },
> @@ -1258,6 +1325,32 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v6 = {
>   	.rx2		= 0x1a00,
>   };
>   
> +static const struct qmp_phy_cfg milos_ufsphy_cfg = {
> +	.lanes			= 2,
> +
> +	.offsets		= &qmp_ufs_offsets_v6,
> +	.max_supported_gear	= UFS_HS_G4,
> +
> +	.tbls = {
> +		.serdes		= milos_ufsphy_serdes,
> +		.serdes_num	= ARRAY_SIZE(milos_ufsphy_serdes),
> +		.tx		= milos_ufsphy_tx,
> +		.tx_num		= ARRAY_SIZE(milos_ufsphy_tx),
> +		.rx		= milos_ufsphy_rx,
> +		.rx_num		= ARRAY_SIZE(milos_ufsphy_rx),
> +		.pcs		= milos_ufsphy_pcs,
> +		.pcs_num	= ARRAY_SIZE(milos_ufsphy_pcs),
> +	},
> +	.tbls_hs_b = {
> +		.serdes		= sm8550_ufsphy_hs_b_serdes,
> +		.serdes_num	= ARRAY_SIZE(sm8550_ufsphy_hs_b_serdes),
> +	},
> +
> +	.vreg_list		= milos_ufsphy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(milos_ufsphy_vreg_l),
> +	.regs			= ufsphy_v6_regs_layout,
> +};
> +
>   static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
>   	.lanes			= 1,
>   
> @@ -2166,6 +2259,9 @@ static int qmp_ufs_probe(struct platform_device *pdev)
>   
>   static const struct of_device_id qmp_ufs_of_match_table[] = {
>   	{
> +		.compatible = "qcom,milos-qmp-ufs-phy",
> +		.data = &milos_ufsphy_cfg,
> +	}, {
>   		.compatible = "qcom,msm8996-qmp-ufs-phy",
>   		.data = &msm8996_ufsphy_cfg,
>   	}, {
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
