Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0906E77188
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jan 2025 09:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k1fLER217KgGRNd7QUqSLKRVWsQCBKYNxTYQUy28QR0=; b=jTU0MutcZKuVn1VufyHpQV0qJZ
	u1jaP0bfOIRoqp/dQtiA9vSbqfaKhmlSGy0NHD4FBCXBK6Xesxzwn5enp6DK5P/s50ZZmsbNbmQR4
	S5esNv5BNZ0bC/3e99Oki64FBssZEakIa9Bq8z6V2JoSdDaKA0Un4pykrmLJYom50+KJic1aNzmr4
	hFkDTojgd4v9saBLyBHKT//B9C27cQcKJBiCYDkK/+Eua6LUg3ZllVFM3pw9yXz14/WAtV30f2o8J
	5Lc4DPzeQifjy99Z+3bZogrLJFHd5zYMx11TpkBiGFIuBiyrMT1vOXQyAbgjWMZXlVximWT7D/eZ+
	Wjqen/FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXcnB-00000007tdd-1z9U;
	Tue, 14 Jan 2025 09:00:57 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXclv-00000007tQm-33w1
	for linux-phy@lists.infradead.org;
	Tue, 14 Jan 2025 08:59:41 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4361dc6322fso36352775e9.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Jan 2025 00:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736845178; x=1737449978; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pcORAj+/UxPcWnW6nq1LVkg0dYOj+RS3yTTqznnbGl4=;
        b=bZm7eGeNO3OsyAy+KX90DXTgVDmn/leBYMT0QIndZ/8C6txqG0/4utAfBP+DQ2B3sX
         k0tY7LxITweAdioyfAKle7s/tmhV9fgOMlMy59jt3nn2NPXIBNLLEXPLlCfg7oKIhHRv
         nYWnFrQOg04ewacnzXKiO2yG/RHR6pyEu6fclkn97VHEliTioRP2NMSEWrfsi+CP/iMe
         sBJSolBBc+9I7hvYCA6hpjrbGaF/6skhL1/jJeLd6gMg+vfTeKEqcg+a2HUjQgrfBWXO
         J99wD3u+T9PBduFtb26NXFGpUoIH7P7onHNH8MafK5cQcJ3BB+isYQgkVpuG2s4lwksk
         0YqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736845178; x=1737449978;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pcORAj+/UxPcWnW6nq1LVkg0dYOj+RS3yTTqznnbGl4=;
        b=QmvpoaHLA3R5SyZo1+21hNWqvxgljhKH9EerrD70eP3zL9e86VT3kRTxxGRQN8o+zT
         rJVpb3/aMPenJEOzSeo+VlHqSaTsEblMrsY1rJCke/SSkWreUAJffC3DVCjFOSr6t2lB
         2N+7kJQLDH43Ahm/NjLMGdmZgKu2m9Pwb7WVT6pDDMQj8kcNIzmrBfeQqgFYK4Bkh22N
         +AUjc4V3eLjiLxAn+r45eUJTWjJ5rW4/8gokfvi+RrT4itAK7rotysYxIcnz5VW55vzW
         fdIrwm9Rgbmns5Ydp8Aku7rbG5XDcRsPjbgV7irMT2stvWYuTAvv+ZpGZVtlL9aqATpw
         tJ9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXohbzq1U/MFpFaz7GlJhQWXTfSS+1i7xD7V+rOvNKqaukcAqX54A6Z6q0HCLdhZ23bwiwPSMFUG6E=@lists.infradead.org
X-Gm-Message-State: AOJu0YwgccvcCXxnMNnizy8C19GBmdRAfaJ4PuylrAnMH6ymEQe4Pt0o
	d6wj2XrSCpvM38VxKXLQlSIxx/9v+H5doE2pq9WUAZrN5m98TgdtOQ0rZJOvqas=
X-Gm-Gg: ASbGnctPJqz8TAYyqeQhcMHVHOY5pPs/Dl/GxpYpX/vnUJkbCp9dtcBwvYVFney++tk
	K4kT5+37o3ece984P5D+5Q9e5AeRddchofCv/RSvX9nhrBiubZec+Lj5dAWBss/81gRVnk2BNMO
	stVJOYkckOwqsBud6sjqL/57eU6xri5D/xDspdhZujIbLj5xNhzQwC71u0F5IMbVtgS8es/TqAl
	zK5BosreoQh0eW5GqPTQM/kbfqXbCg4WXT/M0BcyqqoFTY5plfE+FeIKQIyWkXkqg2jWTlfqOLH
	edVQm0OboQ9H5niZtc6jpiylUG475RK7FA==
X-Google-Smtp-Source: AGHT+IFFFexQwetdn+2agut/gc6XC1ZwnsOWZnJiPDyLjNzMeC0Ik7JGVENCxS6EvhU9XUC/9+i25Q==
X-Received: by 2002:a05:600c:500f:b0:436:51bb:7a52 with SMTP id 5b1f17b1804b1-436e2697170mr223461015e9.7.1736845177824;
        Tue, 14 Jan 2025 00:59:37 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:a5df:aa69:5642:11b5? ([2a01:e0a:982:cbb0:a5df:aa69:5642:11b5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4b8209sm14448412f8f.70.2025.01.14.00.59.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2025 00:59:37 -0800 (PST)
Message-ID: <a0ad8d3b-3c45-4490-8559-4ff9deb86894@linaro.org>
Date: Tue, 14 Jan 2025 09:59:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 4/7] phy: qcom: qmp-combo: Add new PHY sequences for
 SM8750
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-4-09afe1dc2524@quicinc.com>
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
In-Reply-To: <20250113-sm8750_usb_master-v1-4-09afe1dc2524@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_005939_771250_322AD6F7 
X-CRM114-Status: GOOD (  12.85  )
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

On 13/01/2025 22:52, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add new register offsets and PHY values for SM8750. Some of the previous
> definitions can be leveraged from older PHY versions as offsets within
> registers have not changed. This also updates the PHY sequence that is
> recommended after running hardware characterization.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 198 ++++++++++++++++++++++++++++++
>   1 file changed, 198 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index b09fa00e9fe7db8d97b7179ee15d3f07fe578b0c..823a60029ea6acbd1f0f8c7d27aaa58de39ed758 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1471,6 +1471,139 @@ static const struct qmp_phy_init_tbl x1e80100_usb43dp_pcs_tbl[] = {
>   	QMP_PHY_INIT_CFG(QPHY_V6_N4_PCS_EQ_CONFIG5, 0x10),
>   };
>   
> +static const struct qmp_phy_init_tbl sm8750_usb3_serdes_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1, 0xc0),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x36),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x41),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x41),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE1, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE1, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE1, 0x75),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE1, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE1, 0x25),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE1, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0x5c),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x5c),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0, 0xc0),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x36),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x1a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE0, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE0, 0x55),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE0, 0x75),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE0, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE0, 0x25),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE0, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_EN_CENTER, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER1, 0x62),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER2, 0x02),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_BUF_ENABLE, 0x0c),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x1a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_CFG, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0x20),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_1, 0xb6),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_2, 0x4a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_3, 0x36),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADDITIONAL_MISC, 0x0c),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_usb3_tx_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_TX, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_RX, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x1f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_OFFSET_RX, 0x09),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_1, 0xf5),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_3, 0x11),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_4, 0x31),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_5, 0x5f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RCV_DETECT_LVL_2, 0x12),
> +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_TX_PI_QEC_CTRL, 0x21, 1),
> +	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_TX_PI_QEC_CTRL, 0x05, 2),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_usb3_rx_tbl[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_FO_GAIN, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SO_GAIN, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_FASTLOCK_FO_GAIN, 0x2f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x7f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_FASTLOCK_COUNT_LOW, 0xff),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_PI_CONTROLS, 0x99),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SB2_THRESH1, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SB2_THRESH2, 0x08),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SB2_GAIN1, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_UCDR_SB2_GAIN2, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_AUX_DATA_TCOARSE_TFINE, 0x20),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_VGA_CAL_CNTRL1, 0x54),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_VGA_CAL_CNTRL2, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_GM_CAL, 0x13),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_IDAC_TSETTLE_LOW, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x27),
> +
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_SIDGET_ENABLES, 0x0c),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_SIGDET_CNTRL, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_SIGDET_DEGLITCH_CNTRL, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_LOW, 0x3f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH, 0xbf),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH2, 0xff),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH3, 0xdf),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_00_HIGH4, 0xed),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_LOW, 0x19),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH, 0x09),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH2, 0x91),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH3, 0xb7),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_RX_MODE_01_HIGH4, 0xaa),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_DFE_EN_TIMER, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_DCC_CTRL1, 0x0c),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_VTH_CODE, 0x10),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_SIGDET_CAL_CTRL1, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_RX_SIGDET_CAL_TRIM, 0x08),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_usb3_pcs_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG1, 0xc4),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG2, 0x89),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG3, 0x20),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_LOCK_DETECT_CONFIG6, 0x13),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_REFGEN_REQ_CONFIG1, 0x21),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_RX_SIGDET_LVL, 0x55),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_CDR_RESET_TIME, 0x0a),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_ALIGN_DETECT_CONFIG1, 0x88),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_ALIGN_DETECT_CONFIG2, 0x13),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_PCS_TX_RX_CONFIG, 0x0c),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_EQ_CONFIG1, 0x4b),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_EQ_CONFIG5, 0x10),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_usb3_pcs_usb_tbl[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L, 0x40),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
> +};
> +
>   static const struct qmp_phy_init_tbl x1e80100_usb43dp_pcs_usb_tbl[] = {
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
>   	QMP_PHY_INIT_CFG(QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
> @@ -1781,6 +1914,22 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
>   	.dp_dp_phy	= 0x2200,
>   };
>   
> +static const struct qmp_combo_offsets qmp_combo_offsets_v8 = {

Why v8 ?

> +	.com		= 0x0000,
> +	.txa		= 0x1400,
> +	.rxa		= 0x1600,
> +	.txb		= 0x1800,
> +	.rxb		= 0x1a00,
> +	.usb3_serdes	= 0x1000,
> +	.usb3_pcs_misc	= 0x1c00,
> +	.usb3_pcs	= 0x1e00,
> +	.usb3_pcs_usb	= 0x2100,
> +	.dp_serdes	= 0x3000,
> +	.dp_txa		= 0x3400,
> +	.dp_txb		= 0x3800,
> +	.dp_dp_phy	= 0x3c00,
> +};
> +
>   static const struct qmp_phy_cfg sar2130p_usb3dpphy_cfg = {
>   	.offsets		= &qmp_combo_offsets_v3,
>   
> @@ -2280,6 +2429,51 @@ static const struct qmp_phy_cfg sm8650_usb3dpphy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   };
>   
> +static const struct qmp_phy_cfg sm8750_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v8,
> +
> +	.serdes_tbl		= sm8750_usb3_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(sm8750_usb3_serdes_tbl),
> +	.tx_tbl			= sm8750_usb3_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(sm8750_usb3_tx_tbl),
> +	.rx_tbl			= sm8750_usb3_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(sm8750_usb3_rx_tbl),
> +	.pcs_tbl		= sm8750_usb3_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(sm8750_usb3_pcs_tbl),
> +	.pcs_usb_tbl		= sm8750_usb3_pcs_usb_tbl,
> +	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8750_usb3_pcs_usb_tbl),
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
> +	.swing_hbr_rbr		= &qmp_dp_v6_voltage_swing_hbr_rbr,
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
>   static int qmp_combo_dp_serdes_init(struct qmp_combo *qmp)
>   {
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -3915,6 +4109,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
>   		.compatible = "qcom,sm8650-qmp-usb3-dp-phy",
>   		.data = &sm8650_usb3dpphy_cfg,
>   	},
> +	{
> +		.compatible = "qcom,sm8750-qmp-usb3-dp-phy",
> +		.data = &sm8750_usb3dpphy_cfg,
> +	},
>   	{
>   		.compatible = "qcom,x1e80100-qmp-usb3-dp-phy",
>   		.data = &x1e80100_usb3dpphy_cfg,
> 

Apart that, this looks good:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
