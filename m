Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 678C8C41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 14:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnFQSXH54U4c03fK1INyalrbVMcG2XTpS+kxZA3C4o8=; b=YCzRx4p+NcEMlx
	PbbywitxWtDJf2v+Njk3Kz7L0KoN6Bn6L1nx2Es9/r/0pDhKl8Ici5dQaLkNCYQhFSQTjhO1pMnIn
	jJ0vv+6vOlDVq8rx3kxYpagRNkcKfs/LzN7alhvOo/D9d9gE/R6vL2eDwkXPc9RK3AlyjZbE7whWE
	aFBeuAY8JFKaQgfrUMKZQm1jz0IeST9psBSYvkFCnlkuQRr6fOAN3U/TDnnaikqWPpdQtOKsLhOpc
	TpJw6tnvANToLNOQNN9D+nNMGGJNxkHr1H2qtk7pan1d2yC5M6qacX2DEyXCTt1Eey8gX8iL1MeWI
	0y8ja6BB+7SeJXc4BQlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGgUw-0066al-0T;
	Fri, 22 Dec 2023 14:27:34 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGgUs-0066ZV-2m
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 14:27:32 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-dbdb5e37f93so1738289276.3
        for <linux-phy@lists.infradead.org>; Fri, 22 Dec 2023 06:27:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703255248; x=1703860048; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/ohOxKlVlxp9JV2DrmYRKprL04h+s8jRqUwmTQjiVwc=;
        b=LL/LxCfYEEnJDOsx6vyoGP4XCKluRO4fZyB4f784oX31aQtfX4U84STlVfYLiGVjNL
         Xf3XcJoG52XAzlOHLycwEBiW/f8xInaVOGyXKu3ZSAilrGWDMOjzqzoaeOp7UDgB1ZGJ
         qcHOmt/CmOo/kR7cMNNpr16V6J0fCEGSuz/59ZAip/xpgCrlszDAHihiDFPb/1VyEN86
         5kX+e9Yx4u6TMwWqFxkyAgmJhPhHsovmDpVKmWxQpu2svkD6ZLb+zYg5KDIGSGFSUhrw
         mlVTbyWnYKw9loh8HDBLR8oyOmlhH6nUMlD02CiLZ2rk2yb4SvVuYLdVV5pmNYi0NlUf
         pSwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703255248; x=1703860048;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ohOxKlVlxp9JV2DrmYRKprL04h+s8jRqUwmTQjiVwc=;
        b=pV/iO2OUO7cGOd29XKeEmcsT8De/fut7dxCufI+L56jcQ6ZmwV3GqIHZZmyFImVt9l
         bZ5yDRXzZjVfIBF3oSKspBpMLvMBm/LAriZLNNxgrmTbYG75EMgXu80NhFvEYjQuzn1T
         Z6F/IiiqxzTdJ1Be7uCQz+rB5vCpTK9EYzLm+Ow/fLMLWTuhcr4UHZuiAzjXDTii4ML5
         U7Gy3u+sPpoJOpZLIo67gLe91c+UQ5rbUwmYVEetdLSnkrXS2RVC12I7xmBKDS2dicfZ
         owtP7WyZ6+aG0V96pvlFeEowfonRF8N4fRAS+9fAHNk9LgcCHq1XW2Qgu7+9BEbqmxEY
         qK3A==
X-Gm-Message-State: AOJu0YxYPtEgmasvS6JQUpavLdRhpNXaeM4kNdoOHKf7yCfg69pt7Wg4
	1MBLf1ttUpcKlnxYAGw7hCI8cHnkgts8ptYXp/Xl8Tjj3G+YDQ==
X-Google-Smtp-Source: AGHT+IHBrF4XR8p5LkLNum7eai1yd12WDBgkxaeQk1y1iyJGg8WGpESOtBoo1MnFbFq/XkwhjhLvOJGHCI7y/Dn1XKU=
X-Received: by 2002:a25:9f0f:0:b0:db7:dacf:5a0b with SMTP id
 n15-20020a259f0f000000b00db7dacf5a0bmr526697ybq.127.1703255248064; Fri, 22
 Dec 2023 06:27:28 -0800 (PST)
MIME-Version: 1.0
References: <20231222-x1e80100-phy-pcie-v1-0-b74ac13390bf@linaro.org> <20231222-x1e80100-phy-pcie-v1-2-b74ac13390bf@linaro.org>
In-Reply-To: <20231222-x1e80100-phy-pcie-v1-2-b74ac13390bf@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Dec 2023 16:27:18 +0200
Message-ID: <CAA8EJpp52D0f5hvLxB1h=ogtbyitV56AWw319JspB7YZT5-ZkA@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and
 g4x2 PCIE
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_062730_924860_E00ADEE5 
X-CRM114-Status: GOOD (  14.62  )
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

On Fri, 22 Dec 2023 at 12:41, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Add the X1E80100 G3 and G4 configurations.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 173 +++++++++++++++++++++++++++++++
>  1 file changed, 173 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 2af7115ef968..7a5cc4e80eda 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -982,6 +982,143 @@ static const struct qmp_phy_init_tbl sc8280xp_qmp_gen3x2_pcie_pcs_misc_tbl[] = {
>         QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
>  };
>
> +static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_serdes_tbl[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1, 0x26),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1, 0x03),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x06),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x16),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x36),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x0a),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x1a),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x68),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE1, 0xab),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE1, 0xaa),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE1, 0x02),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x12),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0, 0xf8),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x06),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x16),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x36),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CORE_CLK_DIV_MODE0, 0x0a),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x0d),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE0, 0xab),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE0, 0xaa),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE0, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0a),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_EN_CENTER, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER1, 0x62),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER2, 0x02),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_POST_DIV_MUX, 0x40),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN, 0x14),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CLK_ENABLE1, 0x90),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYS_CLK_CTRL, 0x82),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x08),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x46),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_CFG, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x14),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CLK_SELECT, 0x34),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0xa0),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x06),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_MISC_1, 0x88),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_MODE, 0x14),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_VCO_DC_LEVEL_CTRL, 0x0f),
> +};
> +
> +static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RXCLK_DIV2_CTRL, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_DFE_DAC_ENABLE1, 0x88),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH1, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_TX_ADAPT_POST_THRESH2, 0x1f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B0, 0xd4),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B1, 0x12),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B2, 0xdb),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B3, 0x9a),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B4, 0x32),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B5, 0xb6),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MODE_RATE_0_1_B6, 0x64),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH1_RATE210, 0x1f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH1_RATE3, 0x1f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH2_RATE210, 0x1f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH2_RATE3, 0x1f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH3_RATE210, 0x1f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH3_RATE3, 0x1f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH4_RATE3, 0x1f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH5_RATE3, 0x1f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RX_MARG_COARSE_THRESH6_RATE3, 0x1f),
> +};
> +
> +static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_tx_tbl[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_TX, 0x1d),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_RES_CODE_LANE_OFFSET_RX, 0x03),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_LANE_MODE_1, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_LANE_MODE_2, 0x10),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_LANE_MODE_3, 0x51),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_TX_TRAN_DRVR_EMP_EN, 0x34),
> +};
> +
> +static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_rx_tbl[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_2, 0x0c),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_SO_GAIN_RATE_2, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_3, 0x0a),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_PI_CONTROLS, 0x16),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_SO_ACC_DEFAULT_VAL_RATE3, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_IVCM_CAL_CTRL2, 0x80),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_IVCM_POSTCAL_OFFSET, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_BKUP_CTRL1, 0x15),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_1, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_2, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_3, 0x45),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0b),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_GM_CAL, 0x0d),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_SIGDET_ENABLES, 0x1c),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_PHPRE_CTRL, 0x20),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_Q_PI_INTRINSIC_BIAS_RATE32, 0x39),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B0, 0x14),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B1, 0xb3),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B2, 0x58),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B3, 0x9a),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B4, 0x26),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B5, 0xb6),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B6, 0xee),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B0, 0xe4),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B1, 0xa4),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B2, 0x60),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B3, 0xdf),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B4, 0x4b),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B5, 0x76),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B6, 0xff),
> +};
> +
> +static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_pcs_tbl[] = {
> +       QMP_PHY_INIT_CFG(QPHY_V6_20_PCS_G3S2_PRE_GAIN, 0x2e),
> +       QMP_PHY_INIT_CFG(QPHY_V6_20_PCS_RX_SIGDET_LVL, 0xcc),
> +       QMP_PHY_INIT_CFG(QPHY_V6_20_PCS_EQ_CONFIG4, 0x00),
> +       QMP_PHY_INIT_CFG(QPHY_V6_20_PCS_EQ_CONFIG5, 0x22),
> +};
> +
> +static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_DRIVE, 0xc1),
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_OSC_DTCT_ATCIONS, 0x00),
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_EQ_CONFIG1, 0x16),
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_EQ_CONFIG5, 0x02),
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G4_PRE_GAIN, 0x2e),
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG1, 0x03),
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG3, 0x28),
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_TX_RX_CONFIG, 0xc0),
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_POWER_STATE_CONFIG2, 0x1d),
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_RX_MARGINING_CONFIG5, 0x0f),
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G3_FOM_EQ_CONFIG5, 0xf2),
> +       QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G4_FOM_EQ_CONFIG5, 0xf2),
> +};
> +
>  static const struct qmp_phy_init_tbl sm8250_qmp_pcie_serdes_tbl[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x08),
>         QMP_PHY_INIT_CFG(QSERDES_V4_COM_CLK_SELECT, 0x34),
> @@ -3183,6 +3320,36 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x4_pciephy_cfg = {
>         .phy_status             = PHYSTATUS_4_20,
>  };
>
> +static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
> +       .lanes = 2,
> +
> +       .offsets                = &qmp_pcie_offsets_v6_20,
> +
> +       .tbls = {
> +               .serdes                 = x1e80100_qmp_gen4x2_pcie_serdes_tbl,
> +               .serdes_num             = ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_serdes_tbl),
> +               .tx                     = x1e80100_qmp_gen4x2_pcie_tx_tbl,
> +               .tx_num                 = ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_tx_tbl),
> +               .rx                     = x1e80100_qmp_gen4x2_pcie_rx_tbl,
> +               .rx_num                 = ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_rx_tbl),
> +               .pcs                    = x1e80100_qmp_gen4x2_pcie_pcs_tbl,
> +               .pcs_num                = ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_tbl),
> +               .pcs_misc               = x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl,
> +               .pcs_misc_num           = ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl),
> +               .ln_shrd                = x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl,
> +               .ln_shrd_num            = ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl),
> +       },
> +       .reset_list             = sdm845_pciephy_reset_l,
> +       .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
> +       .vreg_list              = sm8550_qmp_phy_vreg_l,
> +       .num_vregs              = ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
> +       .regs                   = pciephy_v5_regs_layout,

pciephy_v6_regs_layout

LGTM otherwise.

> +
> +       .pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
> +       .phy_status             = PHYSTATUS_4_20,
> +       .has_nocsr_reset        = true,
> +};
> +
>  static void qmp_pcie_configure_lane(void __iomem *base,
>                                         const struct qmp_phy_init_tbl tbl[],
>                                         int num,
> @@ -3885,6 +4052,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
>         }, {
>                 .compatible = "qcom,sm8650-qmp-gen4x2-pcie-phy",
>                 .data = &sm8650_qmp_gen4x2_pciephy_cfg,
> +       }, {
> +               .compatible = "qcom,x1e80100-qmp-gen3x2-pcie-phy",
> +               .data = &sm8550_qmp_gen3x2_pciephy_cfg,
> +       }, {
> +               .compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy",
> +               .data = &x1e80100_qmp_gen4x2_pciephy_cfg,
>         },
>         { },
>  };
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
