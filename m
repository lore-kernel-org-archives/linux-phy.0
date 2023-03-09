Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AFE9C61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 20:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=34wLX7JhB5wAD7sPmJFD/poP5y8OzJtUp+8wTKID7PE=; b=rnRePN5OuC9rJt
	5aU38/PlW7gg2/KMcyb9uheM9yUo5PB/0aOA975ZrsSuzAme5RNMiXgzxPI3KMT5Ocb9OtFNcVKIZ
	tL9F4gFFnspO1HOzPWsge3Ph3bo+rjoRv93ZzmwAxm10ieI8kitFNYjax05pTfnNTK84gsn2KwwFE
	tqzSuhvSn1HqFfLet5w1xqNFIt/TPv7RTV/xdpDiMDYMahjyFb8csCnRn4Inmyd0+bHmzTd78tCKr
	qtRvdRPWklwbx1oth09Nl3rBLajpE7xaFEVBh6FK0ZJgnh+QmLfU/9gRUUFv4xXPhwt70B1Nzm78S
	dVPk2sn4wlEG+UkPSPWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paNF1-00BrLL-AB
	for linux-phy@archiver.kernel.org; Thu, 09 Mar 2023 20:51:59 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paNEk-00Br9h-W4
	for linux-phy@lists.infradead.org; Thu, 09 Mar 2023 20:51:44 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-536c02c9dfbso57779107b3.11
        for <linux-phy@lists.infradead.org>; Thu, 09 Mar 2023 12:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678395099;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DVyH5Scagmn8M2FdEHJJzRQ2otfZzX/LecF/bU29usc=;
        b=ewFOH5yb72RmNHDiCx2HOTeujA5fnIty0yxunY0lGAcd5g7kjRh4En8fmjKnQJNym0
         d7XYzGg57wrG7c71v5pe1yCYRuyBjZYBzfU0N1rgVETVgzgkDgSuj940AjslAexq/OxV
         D+/pVLl83zJw6ZZVh97KLNX3ZcAlf6X23uQ6yIhbyveXNg7TzBfrmfrVlxwy/yt5xPqB
         Fx22rHLXWeQJRYnnTC0cmuhXSxpf4Ax+4wEralzv5ROXr4qO8X/QseDHTUJh0pyxAXMa
         7OoBzsW3GE+AlpADzjE+4a+O8VkrcAbcADtbqe2xQBO0vJxWjA/U5TpbD64WQSvuSpIa
         pzZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678395099;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DVyH5Scagmn8M2FdEHJJzRQ2otfZzX/LecF/bU29usc=;
        b=4smArLPMjaKcZ+2LxDDAIj+ylxWq/F6mKcgVcClEhkslpMVm2W5Qqn9PZIyDNjsfVP
         I3R3+lPWoWj0eyStLEqIzKT7iun3Bkwn50QhyLvE5et6O8SvFZe2OgnAZhyV1soeCpko
         yd8z4zi6ihF4+tzaYyGiqv9lOdSxElzaZ5lMVo8qDaonTCjNGxnbH20JwqJX30Ii8guL
         9rTON1PI6uT12g86Dmf5Holiz47uo+rQVfOrEmuNQF0TBw6kegAjZPiACu8+HRu1Wt3k
         rD3Q6l2Tf+vJyeSYX9VXC3F1oeUUnvJ7zQ7YkfE1iSWxWv2qPjDCxVajrQGTc3GAsV31
         cTYA==
X-Gm-Message-State: AO0yUKWyoObGkkfbjrgsjoZd0uuVYz5rhewgcTkbcrgZoqbdDiMZlx+C
	7QV0TOCJIpqVE9PgqnwuPmM61uYByJPTSEITGgsJtQ==
X-Google-Smtp-Source: AK7set+IGWJTWMpcZhF0FcDlsEsg14MwUcebqHQCLXHDdzScK2lva1JI9YbEyAFi319Z87T+SK2+6OFgE1BOX9ELMLA=
X-Received: by 2002:a81:b285:0:b0:533:99bb:c296 with SMTP id
 q127-20020a81b285000000b0053399bbc296mr14235206ywh.5.1678395099441; Thu, 09
 Mar 2023 12:51:39 -0800 (PST)
MIME-Version: 1.0
References: <20230309185049.170878-1-danila@jiaxyga.com> <20230309185049.170878-3-danila@jiaxyga.com>
In-Reply-To: <20230309185049.170878-3-danila@jiaxyga.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 9 Mar 2023 22:51:28 +0200
Message-ID: <CAA8EJpq14e0+-d4m8bZTsQGiOifPr6HU7WNRL+FKGVMDx6YDQw@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-ufs: Add SM7150 support
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, davidwronek@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_125143_071231_0A43F71F 
X-CRM114-Status: GOOD (  17.70  )
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

On Thu, 9 Mar 2023 at 20:51, Danila Tikhonov <danila@jiaxyga.com> wrote:
>
> From: David Wronek <davidwronek@gmail.com>
>
> Add the tables and constants for init sequences for UFS QMP phy found in
> SM7150 SoC.
>
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 57 +++++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 994ddd5d4a81..b4f2d6c63beb 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -349,6 +349,36 @@ static const struct qmp_phy_init_tbl sdm845_ufsphy_pcs[] = {
>         QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
>  };
>
> +static const struct qmp_phy_init_tbl sm7150_ufsphy_rx[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_LVL, 0x24),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_CNTRL, 0x0f),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_INTERFACE_MODE, 0x40),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_TERM_BW, 0x5b),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL2, 0x06),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL3, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_EQU_ADAPTOR_CNTRL4, 0x1b),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SVS_SO_GAIN_HALF, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SVS_SO_GAIN_QUARTER, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SVS_SO_GAIN, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5b),

It is a pity to duplicate the whole table just for the single register
difference.

> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_PI_CONTROLS, 0x81),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_UCDR_FASTLOCK_COUNT_LOW, 0x80),
> +       QMP_PHY_INIT_CFG(QSERDES_V3_RX_RX_MODE_00, 0x59),
> +};
> +
> +static const struct qmp_phy_init_tbl sm7150_ufsphy_pcs[] = {
> +       QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_SIGDET_CTRL2, 0x6f),
> +       QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
> +       QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
> +       QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_SYM_RESYNC_CTRL, 0x03),
> +       QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
> +       QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_SIGDET_CTRL1, 0x0f),
> +       QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_RX_MIN_HIBERN8_TIME, 0xFF),

s/0xFF/0xff/ , please

> +       QMP_PHY_INIT_CFG(QPHY_V3_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> +};)
> +
>  static const struct qmp_phy_init_tbl sm8150_ufsphy_serdes[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0xd9),
>         QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x11),
> @@ -911,6 +941,30 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
>         .no_pcs_sw_reset        = true,
>  };
>
> +static const struct qmp_phy_cfg sm7150_ufsphy_cfg = {

Please add offsets here. With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> +       .lanes                  = 1,
> +
> +       .tbls = {
> +               .serdes         = sdm845_ufsphy_serdes,
> +               .serdes_num     = ARRAY_SIZE(sdm845_ufsphy_serdes),
> +               .tx             = sdm845_ufsphy_tx,
> +               .tx_num         = ARRAY_SIZE(sdm845_ufsphy_tx),
> +               .rx             = sm7150_ufsphy_rx,
> +               .rx_num         = ARRAY_SIZE(sm7150_ufsphy_rx),
> +               .pcs            = sm7150_ufsphy_pcs,
> +               .pcs_num        = ARRAY_SIZE(sm7150_ufsphy_pcs),
> +       },
> +       .tbls_hs_b = {
> +               .serdes         = sdm845_ufsphy_hs_b_serdes,
> +               .serdes_num     = ARRAY_SIZE(sdm845_ufsphy_hs_b_serdes),
> +       },
> +       .clk_list               = sdm845_ufs_phy_clk_l,
> +       .num_clks               = ARRAY_SIZE(sdm845_ufs_phy_clk_l),
> +       .vreg_list              = qmp_phy_vreg_l,
> +       .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> +       .regs                   = ufsphy_v3_regs_layout,

sdm845 has .no_pcs_sw_reset set to true. Do we need to set it for this PHY?

> +};
> +
>  static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
>         .lanes                  = 2,
>
> @@ -1560,6 +1614,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
>         }, {
>                 .compatible = "qcom,sm6350-qmp-ufs-phy",
>                 .data = &sdm845_ufsphy_cfg,
> +       }, {
> +               .compatible = "qcom,sm7150-qmp-ufs-phy",
> +               .data = &sm7150_ufsphy_cfg,
>         }, {
>                 .compatible = "qcom,sm8150-qmp-ufs-phy",
>                 .data = &sm8150_ufsphy_cfg,
> --
> 2.39.2
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
