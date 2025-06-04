Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FEDAC5B549
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 18:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mr7DwHTf59ws5fQr27D+ZScXpoSef7Nk+crIsVM4UYM=; b=wNCGmv9Mxkw9DoBKeOUea124VM
	y6NEw1QLBITt2VB9x8qEaH2bqAXPoy+5sFbl+Sj8KEe2/0OsXvqNX2I6YW3JPrLzl/8bYqmIR2bff
	oR4lCmlWrBzZmHVQE2c4qWmnJbNKqpnJqZvpwBEqx25cASGd186w51RIOw+ZrmDA8VD3CzOmS/XQF
	i4d1snAJvEEGwTP/h1vPkZww0ngubLmY76S+Xbqs1ctPom0wzke5BWKYb+ZUnGqNVoxzJ3DXXG+HE
	7bxNH9B0UeZtXObYZ6yBRsubgBeSmcmz6Ax7/GCYdPWrx7lziwmkxlOF0AH50RjjWNUDkqe66+tnj
	Jba3hM2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMsfJ-0000000DzsN-3mKs;
	Wed, 04 Jun 2025 18:16:41 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMsfH-0000000Dzrs-3Jm0
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 18:16:40 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3a3771c0f8cso65806f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Jun 2025 11:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749060998; x=1749665798; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ttjgH0cT0DxWlBa65PV80AJpjnePegqRqixNcnWRFlI=;
        b=Bu8CK+kuOPmqpwPEw7gzWjPpgiUJBrT0q3yGcpZDM77NOZVGxwr75wO41odMGHpaOr
         O38TnEYRfwMGVIZ5mpp+V+1Rfj6x0soZzdNyvrE0TY38hzhakUMEfPsjqk5FuKCHgbdr
         SXR8NTC8qrkr/lBNvosMA5EGc6ojWFSOpqx00pGWmFGpKZi/1Ohcphtux/2HXgaW4RE8
         d5FU9Kj9a4ulKYdx9UtrGtWlUhR3cyMLxkV/L9+nRlWSHCW9Nkeleb3wqj6PMVhEYxPi
         OuSmEKcBbOxKpDrpuM++s1pFuOO36Dj/224Z2svQby7CvB7NYraV+j5lXWfXIknbj1mm
         MksA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749060998; x=1749665798;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ttjgH0cT0DxWlBa65PV80AJpjnePegqRqixNcnWRFlI=;
        b=DRZZsH/Z4dOKUwtLSt6MhzjBpZUmTLW1eVjotj5uxFVj4mS+/j78S8posr33snrYKZ
         7GGaFj1fMwe7sY62/r3tvVOzDIlR5dZWCZNACVdXqPhpH8f51oEFWCBp7WV7NsMeo52+
         5c8IF6QD9bs9vDbWNoOY+eccSOqRze3/XW/1OOxvoZ8riMU9WUP8bEDSwb2SGgkjl7jy
         YHZP3YT+kIx0r/K8w+JiCWQRwSdbSVv5rBikbfwTxMW3K5UVjm56wRKPRe1R4TGF3x3v
         6aZbU9wQ7kFRiNFvP8l+NKS9wS+MLqk3/srUFB5hvKGkpL/8+zNLHUL5RO2vz6T9NbM6
         GNUg==
X-Forwarded-Encrypted: i=1; AJvYcCUP539tWdjBmXcIVyNXkcUIPbyUNr7eLenFDg2QIk3pWNKP3aGvO74Qz9bJFNZDNo2G/48oX/FoIO4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEHW0w2AEYU8kEBO5483nTtr6X+xu0mH9lOMirPq1mYTDlRcCx
	G25fzHmww3y6/C7mlAVG3v2JiUZrst+pCJMzqeS/78REuENAhGFxt+srT8Nv9E0njpY=
X-Gm-Gg: ASbGncumtITs0vFmY3x2raF/UfVGzN1La16SC7UtpdCRv7L1YIvXZqF1joxAaQb/r+0
	tDl+MbRXd0639PLAc2aTp8CWbOYlCe+IIWBqZ2GPehNLjAESRadPyjcOEdAm2hrPci2jdj0zViZ
	Ct5xVEBcZuEGzx5bH9GMgq++0ZZ8N2FA+WB+5/vkNy3knMJ92M227PPP2aQU3BEDFTaRkcG+ATf
	6I3QDR9pjUiwpXIPrnIs61mweyq1ZyvmXhxpk0tdW683JMUQWQ2vk26ulHCBt4ttf1uqRSAx1rp
	s014m/dajwgHPDPIF3ey8WCxpdsi4E47x+HFaUwJa4Au49ukzbY5JtUKptJ0/nbW+F5VSooVXvE
	Zn0KMqwOQa/IA3Z3UpypWub+knw==
X-Google-Smtp-Source: AGHT+IEcknHa0jklsTHK2Sa0FI3Bf5pRVp6W6gGePL7R94mxRH5Vo6lZGA6amhcBYAnFzViV8qqrDQ==
X-Received: by 2002:a5d:5f48:0:b0:3a4:ead4:5ea4 with SMTP id ffacd0b85a97d-3a51d930f6cmr3665520f8f.24.1749060997959;
        Wed, 04 Jun 2025 11:16:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:fef9:cf1c:18f:2ab8? ([2a01:e0a:3d9:2080:fef9:cf1c:18f:2ab8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe6d0dbsm21967626f8f.40.2025.06.04.11.16.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 11:16:37 -0700 (PDT)
Message-ID: <c09fda8d-a023-47f7-a89b-80a368d06193@linaro.org>
Date: Wed, 4 Jun 2025 20:16:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v1 1/2] PCI: qcom: Add equalization settings for 8.0 GT/s
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, lpieralisi@kernel.org,
 kwilczynski@kernel.org, manivannan.sadhasivam@linaro.org, robh@kernel.org,
 bhelgaas@google.com, krzk+dt@kernel.org, abel.vesa@linaro.org, kw@linux.com,
 conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_qianyu@quicinc.com,
 Qiang Yu <qiang.yu@oss.qualcomm.com>
References: <20250604091946.1890602-1-quic_ziyuzhan@quicinc.com>
 <20250604091946.1890602-2-quic_ziyuzhan@quicinc.com>
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
In-Reply-To: <20250604091946.1890602-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_111639_858302_B1869DC9 
X-CRM114-Status: GOOD (  18.45  )
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

Hi,

On 04/06/2025 11:19, Ziyue Zhang wrote:
> Adding lane equalization setting for 8.0 GT/s to enhance link stability
> and fix AER correctable errors reported on some platforms (eg. SA8775P).
> 
> GEN3 and GEN4 require the same equalization setting. This setting is
> programmed into a group of shadow registers, which can be switched to
> configure equalization for different GEN speeds by writing 00b, 01b
> to `RATE_SHADOW_SEL`.
> 
> Hence program equalization registers in a loop using link speed as index,
> so that equalization setting can be programmed for both GEN3 and GEN4.
> 
> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>   drivers/pci/controller/dwc/pcie-designware.h  |  1 -
>   drivers/pci/controller/dwc/pcie-qcom-common.c | 55 ++++++++++---------
>   drivers/pci/controller/dwc/pcie-qcom-common.h |  2 +-
>   drivers/pci/controller/dwc/pcie-qcom.c        |  3 +-
>   4 files changed, 32 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index ce9e18554e42..388306991467 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -127,7 +127,6 @@
>   #define GEN3_RELATED_OFF_GEN3_EQ_DISABLE	BIT(16)
>   #define GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT	24
>   #define GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK	GENMASK(25, 24)
> -#define GEN3_RELATED_OFF_RATE_SHADOW_SEL_16_0GT	0x1
>   
>   #define GEN3_EQ_CONTROL_OFF			0x8A8
>   #define GEN3_EQ_CONTROL_OFF_FB_MODE		GENMASK(3, 0)
> diff --git a/drivers/pci/controller/dwc/pcie-qcom-common.c b/drivers/pci/controller/dwc/pcie-qcom-common.c
> index 3aad19b56da8..48040f20b29c 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom-common.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom-common.c
> @@ -8,43 +8,46 @@
>   #include "pcie-designware.h"
>   #include "pcie-qcom-common.h"
>   
> -void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci)
> +void qcom_pcie_common_set_equalization(struct dw_pcie *pci)
>   {
>   	u32 reg;
> +	u16 i;
>   
>   	/*
>   	 * GEN3_RELATED_OFF register is repurposed to apply equalization
> -	 * settings at various data transmission rates through registers namely
> -	 * GEN3_EQ_*. The RATE_SHADOW_SEL bit field of GEN3_RELATED_OFF
> +	@@ -19,32 +21,34 @@ void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci)
>   	 * determines the data rate for which these equalization settings are
>   	 * applied.
>   	 */
> -	reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
> -	reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
> -	reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
> -	reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
> -			  GEN3_RELATED_OFF_RATE_SHADOW_SEL_16_0GT);
> -	dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
> +	for (i = PCIE_SPEED_8_0GT; i <= (pcie_link_speed[pci->max_link_speed] < PCIE_SPEED_32_0GT ?
> +		 pcie_link_speed[pci->max_link_speed] : PCIE_SPEED_16_0GT); i++) {

This is pretty hard to read, please simplify like:

u16 speed, max_speed = PCIE_SPEED_16_0GT;

if (pcie_link_speed[pci->max_link_speed] < PCIE_SPEED_32_0GT)
	max_speed = pcie_link_speed[pci->max_link_speed];

for (speed = PCIE_SPEED_8_0GT; speed < max_speedl; ++speed) {
	blah;
}


> +		reg = dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
> +		reg &= ~GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL;
> +		reg &= ~GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK;
> +		reg |= FIELD_PREP(GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK,
> +			  i - PCIE_SPEED_8_0GT);
> +		dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, reg);
>   
> -	reg = dw_pcie_readl_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF);
> -	reg &= ~(GEN3_EQ_FMDC_T_MIN_PHASE23 |
> -		GEN3_EQ_FMDC_N_EVALS |
> -		GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA |
> -		GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA);
> -	reg |= FIELD_PREP(GEN3_EQ_FMDC_T_MIN_PHASE23, 0x1) |
> -		FIELD_PREP(GEN3_EQ_FMDC_N_EVALS, 0xd) |
> -		FIELD_PREP(GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA, 0x5) |
> -		FIELD_PREP(GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA, 0x5);
> -	dw_pcie_writel_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF, reg);
> +		reg = dw_pcie_readl_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF);
> +		reg &= ~(GEN3_EQ_FMDC_T_MIN_PHASE23 |
> +			GEN3_EQ_FMDC_N_EVALS |
> +			GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA |
> +			GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA);
> +		reg |= FIELD_PREP(GEN3_EQ_FMDC_T_MIN_PHASE23, 0x1) |
> +			FIELD_PREP(GEN3_EQ_FMDC_N_EVALS, 0xd) |
> +			FIELD_PREP(GEN3_EQ_FMDC_MAX_PRE_CUSROR_DELTA, 0x5) |
> +			FIELD_PREP(GEN3_EQ_FMDC_MAX_POST_CUSROR_DELTA, 0x5);
> +		dw_pcie_writel_dbi(pci, GEN3_EQ_FB_MODE_DIR_CHANGE_OFF, reg);
>   
> -	reg = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
> -	reg &= ~(GEN3_EQ_CONTROL_OFF_FB_MODE |
> -		GEN3_EQ_CONTROL_OFF_PHASE23_EXIT_MODE |
> -		GEN3_EQ_CONTROL_OFF_FOM_INC_INITIAL_EVAL |
> -		GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC);
> -	dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, reg);
> +		reg = dw_pcie_readl_dbi(pci, GEN3_EQ_CONTROL_OFF);
> +		reg &= ~(GEN3_EQ_CONTROL_OFF_FB_MODE |
> +			GEN3_EQ_CONTROL_OFF_PHASE23_EXIT_MODE |
> +			GEN3_EQ_CONTROL_OFF_FOM_INC_INITIAL_EVAL |
> +			GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC);
> +		dw_pcie_writel_dbi(pci, GEN3_EQ_CONTROL_OFF, reg);
> +	}
>   }
> -EXPORT_SYMBOL_GPL(qcom_pcie_common_set_16gt_equalization);
> +EXPORT_SYMBOL_GPL(qcom_pcie_common_set_equalization);
>   
>   void qcom_pcie_common_set_16gt_lane_margining(struct dw_pcie *pci)
>   {
> diff --git a/drivers/pci/controller/dwc/pcie-qcom-common.h b/drivers/pci/controller/dwc/pcie-qcom-common.h
> index 7d88d29e4766..7f5ca2fd9a72 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom-common.h
> +++ b/drivers/pci/controller/dwc/pcie-qcom-common.h
> @@ -8,7 +8,7 @@
>   
>   struct dw_pcie;
>   
> -void qcom_pcie_common_set_16gt_equalization(struct dw_pcie *pci);
> +void qcom_pcie_common_set_equalization(struct dw_pcie *pci);
>   void qcom_pcie_common_set_16gt_lane_margining(struct dw_pcie *pci);
>   
>   #endif
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index c789e3f85655..51eac2dc6222 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -298,8 +298,9 @@ static int qcom_pcie_start_link(struct dw_pcie *pci)
>   {
>   	struct qcom_pcie *pcie = to_qcom_pcie(pci);
>   
> +	qcom_pcie_common_set_equalization(pci);
> +
>   	if (pcie_link_speed[pci->max_link_speed] == PCIE_SPEED_16_0GT) {
> -		qcom_pcie_common_set_16gt_equalization(pci);
>   		qcom_pcie_common_set_16gt_lane_margining(pci);
>   	}
>   

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
