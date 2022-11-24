Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3EE3C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 17:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npsp6BmXP+lN1rjAytUySsFvMXE2xJnaIhopMmKT8vA=; b=BML3hyC/UUmVej
	v2E0SeYZNQEoX2O7262xfpxC0CbDUKFu7vIbWTaIMUHmbn9zlVMLolPnQd4WsCioeG5bezXZxst5A
	8NACq6Iyj5jb1geo3MGK0iif6pqTpEWpUYhb4HtKGVPDKWn9m+Wgq95xpMAgyP7IjwuPZRi2nNa7f
	FUEi+z8GHjx/kgkbGmT6c/fZ4DjSg/9br31YWvhgIyuyJferQRgoQjxii6VLChgr8w8LYp+l2Ntys
	SaHp8S9Hi0iNnPTjyTbpl6QDr2Gg83zwSnu130UbTbRoT0d8hggLvMX2L3VLf9sI/j+0qXCkfGLXM
	PuT7hV700t+p6ET6iaNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyGS0-00AgYh-8I; Thu, 24 Nov 2022 17:55:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyGRx-00AgWl-9a
	for linux-phy@lists.infradead.org; Thu, 24 Nov 2022 17:55:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D2FDC621F3;
	Thu, 24 Nov 2022 17:55:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B724FC433D6;
	Thu, 24 Nov 2022 17:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669312548;
	bh=xH37rU92E/kj6aTEHXMGsvG6PRFtudz6lokNA2S+mRU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YyHi3JhrgHrYiaAtm2RTMaq/L1coulhGLBwknLFKi77bLwEuv8n5jH6CeCv15AWEk
	 0M5DQ/NqT+xl6SyX9dL/b3u7Iitob1CCeGYrFFkfhc4dJH4jRpYB2/tgkbKWE8/Tk9
	 RYZgL/2CrSdWOXNOn1OPgApdbTfmK9OhQxzVpINWTs1vaaqE4lf3XoNi9K23XvbE8D
	 YYydmesB0cEBkejcsJ0Sjot0Q31Nlx8U0GcAY42WWzl7tIm76+LKVHFOK+0UaGyhGZ
	 KB+h70hHWGBr4moXRCMONQbylcaC+EEbV3eVRlKqy5FW+fY0eWM0MD8bCSHekoNTjY
	 pRZ05eW8iULrA==
Date: Thu, 24 Nov 2022 23:25:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 03/10] phy: qcom-qmp-ufs: Add SM8550 support
Message-ID: <Y3+wIOQqH0uWx4TU@matsya>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
 <20221116120157.2706810-4-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221116120157.2706810-4-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_095549_433796_35F71E79 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16-11-22, 14:01, Abel Vesa wrote:
> Add SM8550 specific register layout and table configs.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 91 +++++++++++++++++++++++++
>  1 file changed, 91 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 189103d1bd18..14cb716752e6 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -96,6 +96,13 @@ static const unsigned int sm8150_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_UFS_POWER_DOWN_CONTROL,
>  };
>  
> +static const unsigned int sm8550_ufsphy_regs_layout[QPHY_LAYOUT_SIZE] = {
> +	[QPHY_START_CTRL]		= QPHY_V6_PCS_UFS_PHY_START,
> +	[QPHY_PCS_READY_STATUS]		= QPHY_V6_PCS_UFS_READY_STATUS,
> +	[QPHY_SW_RESET]			= QPHY_V6_PCS_UFS_SW_RESET,
> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_UFS_POWER_DOWN_CONTROL,
> +};
> +
>  static const struct qmp_phy_init_tbl msm8996_ufs_serdes_tbl[] = {
>  	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
>  	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
> @@ -520,6 +527,65 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
>  };
>  
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_serdes[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7f),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x4c),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x99),
> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x07),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_hs_b_serdes[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V3_COM_VCO_TUNE_MAP, 0x44),
> +};

Unused?

> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_tx[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_1, 0x05),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_rx[] = {
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2, 0x0c),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4, 0x0f),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x0e),
> +
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xc2),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xc2),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3, 0x1a),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6, 0x60),
> +
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B3, 0x9e),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B6, 0x60),
> +
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B3, 0x9e),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B4, 0x0e),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B5, 0x36),
> +	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B8, 0x02),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_pcs[] = {
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x69),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x2b),
> +	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> +};
> +
>  struct qmp_ufs_offsets {
>  	u16 serdes;
>  	u16 pcs;
> @@ -613,6 +679,10 @@ static const char * const sm8450_ufs_phy_clk_l[] = {
>  	"qref", "ref", "ref_aux",
>  };
>  
> +static const char * const sm8550_ufs_phy_clk_l[] = {
> +	"qref", "ref",
> +};
> +
>  static const char * const sdm845_ufs_phy_clk_l[] = {
>  	"ref", "ref_aux",
>  };
> @@ -766,6 +836,24 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
>  	.regs			= sm8150_ufsphy_regs_layout,
>  };
>  
> +static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
> +	.lanes			= 2,
> +
> +	.serdes_tbl		= sm8550_ufsphy_serdes,
> +	.serdes_tbl_num		= ARRAY_SIZE(sm8550_ufsphy_serdes),
> +	.tx_tbl			= sm8550_ufsphy_tx,
> +	.tx_tbl_num		= ARRAY_SIZE(sm8550_ufsphy_tx),
> +	.rx_tbl			= sm8550_ufsphy_rx,
> +	.rx_tbl_num		= ARRAY_SIZE(sm8550_ufsphy_rx),
> +	.pcs_tbl		= sm8550_ufsphy_pcs,
> +	.pcs_tbl_num		= ARRAY_SIZE(sm8550_ufsphy_pcs),
> +	.clk_list		= sm8550_ufs_phy_clk_l,
> +	.num_clks		= ARRAY_SIZE(sm8550_ufs_phy_clk_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= sm8550_ufsphy_regs_layout,
> +};
> +
>  static void qmp_ufs_configure_lane(void __iomem *base,
>  					const struct qmp_phy_init_tbl tbl[],
>  					int num,
> @@ -1189,6 +1277,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,sm8450-qmp-ufs-phy",
>  		.data = &sm8450_ufsphy_cfg,
> +	}, {
> +		.compatible = "qcom,sm8550-qmp-ufs-phy",
> +		.data = &sm8550_ufsphy_cfg,
>  	},
>  	{ },
>  };
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
