Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01A8FC61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 09:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ow3VeBOuT+mMrGOYzFIo8l/lCvMEd/D0Spm2PXSCWyU=; b=C2ETm6A1kQr2/A
	qliTxQroTOlIsJv/6jriS74KQrLngGom20DMPXM2cdnc4S6B1ljMN/J4ljwnlFTmTEtC+F3menO4x
	tGSPIvAlWan4mxYNU8l12+1y0WKMAXwRi0Xpp62/gNPBeo188XYy3E8gcQrqPvGqb5j5/iE9UFrVJ
	8BWGtY/ZlxWdU5Gdv8T9TmRAxjo9vmVd5zRmsU5ugcvIWuG1xFJ9oZRctHCqbY19HLPW/9CBUtCw3
	YmMSd+t8Ccq6q6jdcjApmPOqSToiWouyezo95kmmBS3+f5z5LK5hF+9l2kIfgQNLod0gmOyvqIr+9
	OhJ7EnN2HW/FCu8ISEhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5j89-0018uE-2L;
	Wed, 22 Nov 2023 09:02:45 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5j87-0018rl-1o
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 09:02:45 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-548a2c20f50so4751722a12.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 01:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700643759; x=1701248559; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WVAJl9uglbvTGhaLo4viphdxTulyQeTTf7hqzg6Dhck=;
        b=LIa3hRQa+UbzkQiNLI/MVWxpHqftM6W3M11+xukfGXwUWMeFcnU6e2rILnQBfxi1G+
         t5JIF5NJdoVcKnpKS12CQEGJzcnPuxdLxuO+f2j54x7T9u2pTKDA0k/3ZHoYOMNmpNlr
         xgv4XidHzxlaeK45/gmexiHoQeOhcNtL66OBGMujzIE9n70Yq9Xw3m2iKw2NRjm+AXsR
         IVbot8BqUbS+czM2Ku3a52OF0rHT6MKyRES4w5EvgTBgYH6cvroPaib9oWuD6QkUrQyu
         k9WRzRAQBkcOvoDPy9IxDqN1tYM/bWm6N4f9noO+00fxAowubguchrW8pESq40Y8Klmc
         lnZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700643759; x=1701248559;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WVAJl9uglbvTGhaLo4viphdxTulyQeTTf7hqzg6Dhck=;
        b=Iiu4vQ0gpBbnphVyhNrhA+hn2xjn2W3VN1FZEOgHt8xygdDpFwZDpgjHvjHGMi5MKF
         5MtvhfNcx6QbAwIxAlf8JAMZWTgBl5dvUvNqlh9bfDpr9h3HEQ9AX2eymSNKzj8Ct7ja
         kah6GSklXxqVfvD2oXmnCRoQ4dBfgbaR1jFPjAR8axvJo/QB2kbtV8TwhaPgyIoJbd6m
         4fjo5c+uEJ5f9E2+FuYO4vapKSKmG/dCkreFWL3RAWFyDBER5ulVb8AB67dDzQjeRoHq
         WJxGtMo15D59EZ758rgUbOxQ2516+SsWrMfLHM5NQ8jKuBEXtom+fq8qTKwmK6Ulp5Li
         2W+A==
X-Gm-Message-State: AOJu0YwqzJZ0TSqZjzjsHrY+buXStS9dg1Eh40H2UuY1z1UAjLigMteg
	DIW6MUs9+G2dYI8cmSiOAR+cwA==
X-Google-Smtp-Source: AGHT+IHUvNB0p3pjPTLNAuD5yzEhkWruucScfm3SgkoaPdwhYN1nGHxSGHwPAZE2ViijHNFsaTVXGA==
X-Received: by 2002:a50:fb9a:0:b0:53e:58fd:9600 with SMTP id e26-20020a50fb9a000000b0053e58fd9600mr1299683edq.36.1700643759360;
        Wed, 22 Nov 2023 01:02:39 -0800 (PST)
Received: from linaro.org ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id m24-20020a50ef18000000b00548699fa102sm4909449eds.83.2023.11.22.01.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 01:02:38 -0800 (PST)
Date: Wed, 22 Nov 2023 11:02:36 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Can Guo <quic_cang@quicinc.com>
Cc: bvanassche@acm.org, mani@kernel.org, stanley.chu@mediatek.com,
	adrian.hunter@intel.com, beanhuo@micron.com, avri.altman@wdc.com,
	junwoo80.lee@samsung.com, martin.petersen@oracle.com,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	"open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 08/11] phy: qualcomm: phy-qcom-qmp-ufs: Rectify SM8550
 UFS HS-G4 PHY Settings
Message-ID: <ZV3DrPoL/vmb6Cga@linaro.org>
References: <1700637042-11104-1-git-send-email-quic_cang@quicinc.com>
 <1700637042-11104-9-git-send-email-quic_cang@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1700637042-11104-9-git-send-email-quic_cang@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_010243_602738_22310AE3 
X-CRM114-Status: GOOD (  16.74  )
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

On 23-11-21 23:10:39, Can Guo wrote:
> The registers, which are being touched in current SM8550 UFS PHY settings,
> and the values being programmed are mainly the ones working for HS-G4 mode,
> meanwhile, there are also a few ones somehow taken from HS-G5 PHY settings.
> However, even consider HS-G4 mode only, some of them are incorrect and some
> are missing. Rectify the HS-G4 PHY settings by strictly aligning with the
> SM8550 UFS PHY Hardware Programming Guide suggested HS-G4 PHY settings.
> 
> Fixes: 1679bfef906f ("phy: qcom-qmp-ufs: Add SM8550 support")
> Signed-off-by: Can Guo <quic_cang@quicinc.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  3 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 28 +++++++++++++++-------
>  2 files changed, 22 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> index 15bcb4b..674f158 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> @@ -10,9 +10,12 @@
>  #define QSERDES_UFS_V6_TX_RES_CODE_LANE_RX			0x2c
>  #define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX		0x30
>  #define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX		0x34
> +#define QSERDES_UFS_V6_TX_LANE_MODE_1				0x7c
> +#define QSERDES_UFS_V6_TX_FR_DCC_CTRL				0x108
>  
>  #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE2		0x08
>  #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4		0x10
> +#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2			0xd4
>  #define QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL			0x178
>  #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0			0x208
>  #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1			0x20c
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 3927eba..ad91f92 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -658,22 +658,26 @@ static const struct qmp_phy_init_tbl sm8550_ufsphy_serdes[] = {
>  	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
>  	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7f),
>  	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x4c),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x99),
> -	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x4c),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x99),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x07),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_hs_b_serdes[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x44),
>  };
>  
>  static const struct qmp_phy_init_tbl sm8550_ufsphy_tx[] = {
> -	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_1, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_LANE_MODE_1, 0x05),
>  	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_FR_DCC_CTRL, 0x4c),
>  };
>  
>  static const struct qmp_phy_init_tbl sm8550_ufsphy_rx[] = {
> -	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE2, 0x0c),
> -	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2, 0x0c),
>  	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x0e),
>  
>  	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xc2),
> @@ -696,6 +700,8 @@ static const struct qmp_phy_init_tbl sm8550_ufsphy_pcs[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
>  	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x2b),
>  	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
>  };
>  
>  struct qmp_ufs_offsets {
> @@ -1157,6 +1163,10 @@ static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
>  		.pcs		= sm8550_ufsphy_pcs,
>  		.pcs_num	= ARRAY_SIZE(sm8550_ufsphy_pcs),
>  	},
> +	.tbls_hs_b = {
> +		.serdes		= sm8550_ufsphy_hs_b_serdes,
> +		.serdes_num	= ARRAY_SIZE(sm8550_ufsphy_hs_b_serdes),
> +	},
>  	.clk_list		= sdm845_ufs_phy_clk_l,
>  	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
>  	.vreg_list		= qmp_phy_vreg_l,
> -- 
> 2.7.4
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
