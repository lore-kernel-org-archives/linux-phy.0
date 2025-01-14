Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3A06E77188
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jan 2025 10:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fu5a63PVo4FDXejK8YQtBkjlYTONEW6tGi+OTdgRpYM=; b=CAT5e+GdyvcwU8
	eTp6S5Cbei4wsCR+wc6hmedEF1RSAW2OxqteEMUgBizuO8BVLVZO4ftFcD1h5uRTR8ncEKM2HVrM8
	HHuCEeiUt8zgNPqORQfGXBnHoSR1aAJc0lgVF8iUez2QzzoWOZN+AgTwdubjqUGoVKiENTRkAM2Lj
	ZIcDIkzCABq+8YCgwyY6xOZm97HdeL0GBUq1KBw2xI1TP/ADju41peLtJrgtPDc/rClE9LtWsLGGZ
	zcbgcLbhLtpgWRxcOvr36RrB895HQUb9xJMd5vnFKFUKqQiSw5QnIIGW2n5Lr/4Nf6fer/wzF2hhn
	Yl1mMY23FzLV306vpStQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXeTv-000000089Gb-15Wj;
	Tue, 14 Jan 2025 10:49:11 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXeTs-000000089GE-49oF
	for linux-phy@lists.infradead.org;
	Tue, 14 Jan 2025 10:49:10 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-53e399e3310so5522960e87.1
        for <linux-phy@lists.infradead.org>; Tue, 14 Jan 2025 02:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736851747; x=1737456547; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qFwIVOKJNqUobfqnBvMKtqQOow7yPzhvv6mwSnWRcUo=;
        b=wvhKYruPczYOKNhfcFgKhTJqcBmG56ButZSXWoYjyaDS9oIl6f3UEFemWnFN+StIt6
         Yo62o0dEBjUoGc3Gu7cm1IFIVknmLFrcdv+D928G6AqBkr/wvH09EksNVy+LNcmF0HeJ
         jKmhl87tCbYdMJC+NxKZyfJ8ZSclTM6i0NEUjuJN7zn2UssXIrY74FCrPTrJXPZtxNPK
         +KrT2ZgIDKk+GY9MQp4FFyX6u+ta9zR1DeStUn/RhP6iRRrqgVmXcqeQNgUg97BDUSDR
         vt7YhpYj7RG60Ssv0njSHUjksXMkKbHx84hqxCF7xKEK5JygBUxubN7eoO9jB05vzqjH
         pidQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736851747; x=1737456547;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFwIVOKJNqUobfqnBvMKtqQOow7yPzhvv6mwSnWRcUo=;
        b=rnPxdlzL2Ynrq/s2oHboEizLWjPW3guUVzrVsg2fagrDv0EhqDWCchI4ATFiOzJhgr
         qTF9juXxiKJjOIMcoWXOjW2BVZOZETyaO0pIrMJDaj5c4mCBSapBPRdhgO9i9YnBvx6f
         8aIEqaPGQddNDUvFqZzIcHNNAVcOC/Mds7xlXyrwNhmT1/4+d0cFGXgLbuOL7bJVuvIc
         3NeKzR3y7nKYcYsU7BHR4MZe4lji3yqWstf2b0TvHaux3pSoL3TzOzVsQqKEXrPA9pQC
         aqyvd3SGHH2McALoDsvdVzgFTPytvbi4NxapxdcgsoqJZ743E9J5ELUhpOFrguDNywyd
         FPwQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9qvqUeZbsunelCLZCPp43josBMMB4RWqvCsoellGeLZMrItsNiqlGynDD3xDaQZyFo7GZ+bYYg0k=@lists.infradead.org
X-Gm-Message-State: AOJu0YyARFY5kBDVmgzLhHK5WlWEylDukOyph1Qb9w1TVarNKYd+pYaL
	zTq5tTZitEtbroWGDRIPPapLeuPW+dCRrD6Zfh2cUjLsrUnbuVY30hNOzzoLlIU=
X-Gm-Gg: ASbGncspx9vCyoaVOjD9oMCeIDBpJnyLVGSY4ANjFjozRh8P+oHUYh33v1fWHK2Bx1p
	Mc/58RipEJENWFcCO+4/BNFqahq/XnHyHpLY6PJv/ecmtSnhpMBHpUGunAKFbsPrNKkJS2ng3VM
	edKUK/U/P2awdF4DXSe62U5UtkO7yXc1W4phZMjf4YagQtUhh1RYCscxijC4CO2gZ5QEYNjDK6Z
	KgD0IeP/r+x9pFOV3fl2pDHUYTdeFgH4ofU2jBoG6VoEdATJjZbOZhY9PpQOA1CFw3OqCkFgYI4
	ADqxaA2cjf++dD/5rzeBr0ZK2xDtgDycKDgb
X-Google-Smtp-Source: AGHT+IG9p4K/3wM+rS6kcla1MDtsF/jV9SeBt+LwgknXH5OEOFw1PoHVBhvhNWqNWUQUc5KFBo5qoQ==
X-Received: by 2002:a05:6512:3c9c:b0:540:1d37:e6c with SMTP id 2adb3069b0e04-542845c4795mr7792572e87.30.1736851746857;
        Tue, 14 Jan 2025 02:49:06 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bea6686sm1686142e87.168.2025.01.14.02.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 02:49:06 -0800 (PST)
Date: Tue, 14 Jan 2025 12:49:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	Nitin Rawat <quic_nitirawa@quicinc.com>, Manish Pandey <quic_mapa@quicinc.com>
Subject: Re: [PATCH 2/5] phy: qcom-qmp-ufs: Add PHY Configuration support for
 SM8750
Message-ID: <vry7yib4jtvyc5baruetqb2msy4j4ityv2s6z5smrz6rqjfb5l@xoharscfhz5n>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-2-b3774120eb8c@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_ufs_master-v1-2-b3774120eb8c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_024909_049601_53B8ED98 
X-CRM114-Status: GOOD (  19.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Jan 13, 2025 at 01:46:25PM -0800, Melody Olvera wrote:
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
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |  12 ++
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h    |  68 ++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 174 ++++++++++++++++++++-
>  3 files changed, 253 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> index 328c6c0b0b09ae4ff5bf14e846772e6d0f31ce5a..aa2278f9377408b3c602f6fa0de5021804f21f52 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> @@ -86,4 +86,16 @@
>  #define QSERDES_V6_COM_CMN_STATUS				0x1d0
>  #define QSERDES_V6_COM_C_READY_STATUS				0x1f8
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
>  #endif
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

- Lowercase hex
- Sort RX by the register offset


> +
> +#endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index d964bdfe870029226482f264c78a27d0ec43bf2b..a1695b368fe7622bf8663343d0241b4d0d40ab59 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -31,6 +31,7 @@
>  #include "phy-qcom-qmp-pcs-ufs-v6.h"
>  
>  #include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
> +#include "phy-qcom-qmp-qserdes-txrx-ufs-v7.h"
>  
>  /* QPHY_PCS_READY_STATUS bit */
>  #define PCS_READY				BIT(0)
> @@ -949,6 +950,132 @@ static const struct qmp_phy_init_tbl sm8650_ufsphy_g5_pcs[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME, 0x9e),
>  };
>  
> +static const struct qmp_phy_init_tbl sm8750_ufsphy_serdes[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xD9),

Lowercase hex

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

Why does SM8650 have 0xc1 here?

> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0F),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x68),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S4, 0x0E),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S5, 0x12),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S6, 0x15),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S7, 0x19),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_ufsphy_g4_pcs[] = {

Missing QPHY_V6_PCS_UFS_PLL_CNTL, then it becomes sm8650_ufsphy_g4_pcs

> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8750_ufsphy_g5_pcs[] = {

sm8650_ufsphy_g5_pcs?

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
>  struct qmp_ufs_offsets {
>  	u16 serdes;
>  	u16 pcs;
> @@ -1523,6 +1650,45 @@ static const struct qmp_phy_cfg sm8650_ufsphy_cfg = {
>  	.regs			= ufsphy_v6_regs_layout,
>  };
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
>  static void qmp_ufs_serdes_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls *tbls)
>  {
>  	void __iomem *serdes = qmp->serdes;
> @@ -1593,8 +1759,10 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>  		qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_overlay[i]);
>  	}
>  
> -	if (qmp->mode == PHY_MODE_UFS_HS_B)
> +	if (qmp->mode == PHY_MODE_UFS_HS_B) {
>  		qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_b);
> +		qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_b);

Extract the serdes+lanes+pcs helper, use it in this function.

> +	}
>  }
>  
>  static int qmp_ufs_com_init(struct qmp_ufs *qmp)
> @@ -2061,7 +2229,11 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,sm8650-qmp-ufs-phy",
>  		.data = &sm8650_ufsphy_cfg,
> +	}, {
> +		.compatible = "qcom,sm8750-qmp-ufs-phy",
> +		.data = &sm8750_ufsphy_cfg,
>  	},
> +
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, qmp_ufs_of_match_table);
> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
