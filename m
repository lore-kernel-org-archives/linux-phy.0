Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBA66D3E18D
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 07:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EJ2Fav+3MLCYY17dzaYFAfl/jppGjUwZMe2ypeUYO1o=; b=E4TVCns0XfgbDrujfw76Kevu6/
	cXHQh95a0beXYra0vCiiwbEGRg/m1pJXJisKjVbrwEuLJIZA2YRWE70+2BpClIs74CT5W929woMwY
	LecSE5ZfoixkZpjk0pHC1OJjzo3RBEwqjCOEGx1lKuUmQYDk47c/RC76oNbmoUUFTjcaxBtGCR3Nn
	q5fvgxAxZIaQSPZdAnJpOCNXElYNGA3kDjzS4EJa/lgzYHa2PURIQsAk0pQLsF8tL2P2IAoKouhIE
	o6sZOJM2XJOGq5jQAK8z/nzOMoCKsoYm9SVeEnIz1Y1YnVAzgWnJ21XXqh1jA/LVmhtSiRogeMj8E
	SG24r7RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2ma6-00000006Jq9-1eKc;
	Mon, 21 Oct 2024 07:11:58 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mRn-00000006IUS-0qeW
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 07:03:24 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-43169902057so16220075e9.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 00:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729494201; x=1730099001; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Eu/L5acXZ6kehGrgQS4A47YGp+iRAXR0fN/lynNp/p8=;
        b=FRjSAin6adwdxuO9hveTDBkSsYCXee/KtF9Ovjx90Kxcn4dcR/crauLk+2bV9mXqLf
         j/80h0azeAI460kHoTu34OJmz1uatndmW6b4V0EiAaiW/bb/Xk0gjgPa2n3wIGR/84mv
         ev3WRKzMMzjFlwJjziyKt+gocvLVBUQIZQompcXfxlD0ZjP9n96kaL0rdaxuyg0RQUso
         pK+jRM2lJHocLYq2dz8keTVRCRN6RlpwKrgHH6uvyPK9YF1fpUJUmeRzKxn+vXg7kayV
         Wbp2M+BgGtCoxPDdj3un7Vvr6K6jNcAQMwxY5oP+vOFBC3sRo1I/ZU+ZIqQOxn2BZxIR
         wNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729494201; x=1730099001;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Eu/L5acXZ6kehGrgQS4A47YGp+iRAXR0fN/lynNp/p8=;
        b=UeOyuAJfPhH2DPtYs7/fXVRrvzrIrJoqtlMYIBTNtPQ6Bgq5tFfhVHrlIQr5ZYzx3D
         33TeKCtB8DbpT1gB5cfsfsNbtu5kNgofj/6bGgaCMW839rEyPaJvIL3ezoxEGO962AdU
         FP+6owNKsr3BElkib/VIDbIra1IYEr4TUzrd/Ky6aABuS+ANQdRHRNhD+e3LyghWq10e
         so7t2o8nQNf9oUXBfE7gwefDrPy+xp+QSOo/IoIF50oZGn9vjcpOtQUJh3kDgnQEQADS
         sJq1L7LsWJWELNhlhHP1F98UzYIjpTT44T2Wxdawls584cvY17KYxX36l+gy3fJ8KKmF
         AEyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZLHeJrkgFRtiur43SBpt6BFPUXhBw7bNI0XOYQHxEOsuxzUWhr+LV7feLqdFC0jnJgK9qMGcLLf8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQpraDMuqoAPvBtGUlqj2rwCpEnc8r2OhZt263lHny0bXxFSLK
	cdIgAlSsvnFiSyDvwgDQ71laaaadOXZEySb4XVXfir6bxBgItEgJbanycs6ftu0=
X-Google-Smtp-Source: AGHT+IEquOXJtCpDCiaiEVjBG44xHRbUXWdwz8dQTIixualcOzusqdMk+kqWWUagIYBM+cOziodO3A==
X-Received: by 2002:a05:600c:4e0b:b0:431:58cd:b260 with SMTP id 5b1f17b1804b1-4316168ee2emr84347465e9.25.1729494200651;
        Mon, 21 Oct 2024 00:03:20 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:3908:dea6:2ddd:be97? ([2a01:e0a:982:cbb0:3908:dea6:2ddd:be97])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f57102asm45946315e9.1.2024.10.21.00.03.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 00:03:20 -0700 (PDT)
Message-ID: <162926b8-38f9-4e64-bd55-bf379ba44a6f@linaro.org>
Date: Mon, 21 Oct 2024 09:03:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/6] phy: qualcomm: qmp-combo: add support for SAR2130P
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
 <20241019-sar2130p-phys-v1-3-bf06fcea2421@linaro.org>
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
In-Reply-To: <20241019-sar2130p-phys-v1-3-bf06fcea2421@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_000323_288078_3952A722 
X-CRM114-Status: GOOD (  15.83  )
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

On 19/10/2024 17:44, Dmitry Baryshkov wrote:
> Extend the USB+DP combo QMP PHY driver to support the SAR2130P platform.
> It mosly follows the SM8550 QMP PHY, but the QSERDES programming
> differs, most likely because of the parent clock rate differences.
> 
> NOTE: The DP part wasn't yet tested, but it is not possible to support
> just the USB part of the PHY. DP part might require additional fixes
> later.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 100 ++++++++++++++++++++++++++++++
>   1 file changed, 100 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 643045c9024eaa5de81f64ecfd10ff8845faf120..05ec1a0226460d23873db1dfe9dcbc6ce1953b2e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -400,6 +400,57 @@ static const struct qmp_phy_init_tbl qmp_v3_usb3_pcs_tbl[] = {
>   	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_RUN_TIME, 0x13),
>   };
>   
> +static const struct qmp_phy_init_tbl sar2130p_usb3_serdes_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x36),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x2e),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x82),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE1, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE1, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE1, 0xd5),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE1, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE1, 0x25),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE1, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xb7),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x1e),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0xb7),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1e),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x36),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x12),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x34),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE0, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE0, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE0, 0xd5),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE0, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE0, 0x25),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE0, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_EN_CENTER, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER1, 0x31),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER2, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_BUF_ENABLE, 0x0c),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x1a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_CFG, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0x20),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_1, 0xb6),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_2, 0x4b),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_3, 0x37),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADDITIONAL_MISC, 0x0c),
> +};
> +
>   static const struct qmp_phy_init_tbl sm6350_usb3_rx_tbl[] = {
>   	QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
>   	QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
> @@ -1730,6 +1781,51 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
>   	.dp_dp_phy	= 0x2200,
>   };
>   
> +static const struct qmp_phy_cfg sar2130p_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v3,
> +
> +	.serdes_tbl		= sar2130p_usb3_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(sar2130p_usb3_serdes_tbl),
> +	.tx_tbl			= sm8550_usb3_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(sm8550_usb3_tx_tbl),
> +	.rx_tbl			= sm8550_usb3_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(sm8550_usb3_rx_tbl),
> +	.pcs_tbl		= sm8550_usb3_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(sm8550_usb3_pcs_tbl),
> +	.pcs_usb_tbl		= sm8550_usb3_pcs_usb_tbl,
> +	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8550_usb3_pcs_usb_tbl),
> +
> +	.dp_serdes_tbl		= qmp_v6_dp_serdes_tbl,
> +	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl),
> +	.dp_tx_tbl		= qmp_v6_dp_tx_tbl,
> +	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v6_dp_tx_tbl),
> +
> +	.serdes_tbl_rbr		= qmp_v6_dp_serdes_tbl_rbr,
> +	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_rbr),
> +	.serdes_tbl_hbr		= qmp_v6_dp_serdes_tbl_hbr,
> +	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr),
> +	.serdes_tbl_hbr2	= qmp_v6_dp_serdes_tbl_hbr2,
> +	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr2),
> +	.serdes_tbl_hbr3	= qmp_v6_dp_serdes_tbl_hbr3,
> +	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr3),
> +
> +	.swing_hbr_rbr		= &qmp_dp_v5_voltage_swing_hbr_rbr,
> +	.pre_emphasis_hbr_rbr	= &qmp_dp_v6_pre_emphasis_hbr_rbr,
> +	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
> +	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
> +
> +	.dp_aux_init		= qmp_v4_dp_aux_init,
> +	.configure_dp_tx	= qmp_v4_configure_dp_tx,
> +	.configure_dp_phy	= qmp_v4_configure_dp_phy,
> +	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
> +
> +	.regs			= qmp_v6_usb3phy_regs_layout,
> +	.reset_list		= msm8996_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +};
> +
>   static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
>   	.offsets		= &qmp_combo_offsets_v3,
>   
> @@ -3767,6 +3863,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   }
>   
>   static const struct of_device_id qmp_combo_of_match_table[] = {
> +	{
> +		.compatible = "qcom,sar2130p-qmp-usb3-dp-phy",
> +		.data = &sar2130p_usb3dpphy_cfg,
> +	},
>   	{
>   		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
>   		.data = &sc7180_usb3dpphy_cfg,
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
