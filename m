Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEB8FC61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 09:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14SezA2pjs1NFXxrn5jet59NBm0pCtdzo4H4Cl8hreM=; b=2NhZxUdRLK9HoB
	wbnA1WRyz4h+WEBUUNx1gTqhK7BWNF7XeCm2hzqf6xG18nM14leoMT2FwpjNsVsVfRSn5keQw+gxp
	PObyblnIdI+6kM+HfH8Tpux+pC4sW+1WzQjkOb4zv4SWiE35NvRcdg2yGRGq0KgVmmzRRUdUASZBF
	YV53QTikutQcQ8GlFSVV6hGtjXOav9eQQtU/BBlWiT5/Y4x+WICaZOnRUtNhfRQJiaLloLnFBkOQI
	9vEjUr1FLJtcE2Bzh05qISO6H7mt7T9oxPhlvLKVK4jjCmTh8qHEin0Svf2xqXKfOB7km1HQtEvCD
	ruExKstkQ1ltj91y+pPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5jDF-0019mf-1S;
	Wed, 22 Nov 2023 09:08:01 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5jDB-0019m5-1c
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 09:07:59 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-5cc642e4c69so4526667b3.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 01:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700644070; x=1701248870; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tJjpi2F3nPqj/YRgP8sFAdnEJuvhgQYLwZFlw8Yx2dA=;
        b=PaHrUOjTMIK8jO6WeZWf7NUtm9cC1J/z+tbceso+pJuAQ7orZd3KHX6byHIlblukk+
         zLfvTGZDAU8QqDvQSO3Uo4CxlOmUVjj2icVtfK+4Gd2vwbvap5b365bVeeswImtSmApR
         rrdVyN3ppi9xsCqzrh5kdMZ/b+iIc78kaFpeQYXpDq5N6TWlvo6fR5Db5L3Do880gDjC
         /oWbWueMvhvpK9RgScr1s49OTNwYA6ID7ASCc8qRSaVsnMbRxRgkBuxxkirtWEF5DDZd
         F+VlPsJVHHZHWgzkAZF8XKusDcUgGw8Nc9T31MyyFLoieCwvFhFSPxXGb2g1ykQtbtOO
         xclg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700644070; x=1701248870;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tJjpi2F3nPqj/YRgP8sFAdnEJuvhgQYLwZFlw8Yx2dA=;
        b=vH+pqG9hnMvEej56l/sN6rl5+F8zou9yD7xnXzd5MONiKpmqWr78pG0vM2IR8aLttw
         V0GnbxtCYzWoYoM+twAYxUlTcys+O15jovjxxMnoWznfcJ6MbGxwaqtOvSg3eDTe7RYy
         M0G3SxZGzgkzykhLUs8GbyiC6lXp+zTHsAhP6X1kKwOqBoql6uCr00Fu1JTHug/S65D7
         fN33Y5EUa+59pUFql2At5fr5/hIjj3MgP4Uom+vG0sCC6QHzR+aUapChw/0N/6N5h0cS
         +nSuyETbYLH05IzboKpkhXwKnZ3ZCc6toNd4dqzlopAl5vu6F9VAvX2k0GO6/lSURQfs
         RJ4w==
X-Gm-Message-State: AOJu0YyZhSQxSr938+ZZR4S/TAMJQwGYSvpa4c2DXizNBdvw/oyK96DV
	uBIbiZta/1bW761U0uw+Iekaqmp7k78HzDqvHGBiQA==
X-Google-Smtp-Source: AGHT+IFVu0EqxitRGC0QmrR0NXVfnQSmzS3hMlsXDkyPt0gLF1Y+AUjTvfh5jdQFuCGHJfh8kuq5IwWxcX95qkSghMI=
X-Received: by 2002:a81:4a03:0:b0:5ca:11d3:4adb with SMTP id
 x3-20020a814a03000000b005ca11d34adbmr1612271ywa.38.1700644069568; Wed, 22 Nov
 2023 01:07:49 -0800 (PST)
MIME-Version: 1.0
References: <1700637042-11104-1-git-send-email-quic_cang@quicinc.com> <1700637042-11104-11-git-send-email-quic_cang@quicinc.com>
In-Reply-To: <1700637042-11104-11-git-send-email-quic_cang@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 11:07:38 +0200
Message-ID: <CAA8EJpqi=Xh0rbz9O6axtji_Vb5ebUiWqmM8s2OpFK13sE6S1Q@mail.gmail.com>
Subject: Re: [PATCH v3 10/11] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed
 Gear 5 support for SM8550
To: Can Guo <quic_cang@quicinc.com>
Cc: bvanassche@acm.org, mani@kernel.org, stanley.chu@mediatek.com, 
	adrian.hunter@intel.com, beanhuo@micron.com, avri.altman@wdc.com, 
	junwoo80.lee@samsung.com, martin.petersen@oracle.com, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, 
	"open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_010757_587281_65E2609C 
X-CRM114-Status: GOOD (  22.98  )
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

On Wed, 22 Nov 2023 at 09:11, Can Guo <quic_cang@quicinc.com> wrote:
>
> On SM8550, two sets of UFS PHY settings are provided, one set is to support
> HS-G5, another set is to support HS-G4 and lower gears. The two sets of PHY
> settings are programming different values to different registers, mixing
> the two sets and/or overwriting one set with another set is definitely not
> blessed by UFS PHY designers.
>
> To add HS-G5 support for SM8550, split the two sets of PHY settings into
> their dedicated tables, G5 specific settings are put into .tbls_hs_max,
> no-G5 settings are put into .tbls_hs_not_max. Only the common parts of the
> two sets of PHY settings are left in the .tbls.
>
> In this case, .tbls alone is not a complete set of PHY settings, so either
> tbls_hs_max or tbls_hs_not_max should be applied on top of the .tbls to
> become a complete set of PHY settings.
>
> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |   2 +
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |   2 +
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |   9 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 102 +++++++++++++++++++--
>  4 files changed, 105 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
> index c23d5e4..e563af5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
> @@ -18,6 +18,7 @@
>  #define QPHY_V6_PCS_UFS_BIST_FIXED_PAT_CTRL            0x060
>  #define QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY           0x074
>  #define QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY           0x0bc
> +#define QPHY_V6_PCS_UFS_RX_HS_G5_SYNC_LENGTH_CAPABILITY        0x12c
>  #define QPHY_V6_PCS_UFS_DEBUG_BUS_CLKSEL               0x158
>  #define QPHY_V6_PCS_UFS_LINECFG_DISABLE                        0x17c
>  #define QPHY_V6_PCS_UFS_RX_MIN_HIBERN8_TIME            0x184
> @@ -27,5 +28,6 @@
>  #define QPHY_V6_PCS_UFS_READY_STATUS                   0x1a8
>  #define QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1              0x1f4
>  #define QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1               0x1fc
> +#define QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME         0x220
>
>  #endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> index f420f8f..ef392ce 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> @@ -56,6 +56,8 @@
>  #define QSERDES_V6_COM_SYS_CLK_CTRL                            0xe4
>  #define QSERDES_V6_COM_SYSCLK_BUF_ENABLE                       0xe8
>  #define QSERDES_V6_COM_PLL_IVCO                                        0xf4
> +#define QSERDES_V6_COM_CMN_IETRIM                              0xfc
> +#define QSERDES_V6_COM_CMN_IPTRIM                              0x100
>  #define QSERDES_V6_COM_SYSCLK_EN_SEL                           0x110
>  #define QSERDES_V6_COM_RESETSM_CNTRL                           0x118
>  #define QSERDES_V6_COM_LOCK_CMP_EN                             0x120
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> index 674f158..48f31c8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> @@ -15,8 +15,15 @@
>
>  #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE2          0x08
>  #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4          0x10
> +#define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_SO_GAIN_RATE4          0x24
> +#define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4       0x54
>  #define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2                   0xd4
> +#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4                   0xdc
> +#define QSERDES_UFS_V6_RX_UCDR_SO_GAIN_RATE4                   0xf0
> +#define QSERDES_UFS_V6_RX_UCDR_PI_CONTROLS                     0xf4
>  #define QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL                      0x178
> +#define QSERDES_UFS_V6_RX_EQ_OFFSET_ADAPTOR_CNTRL1             0x1bc
> +#define QSERDES_UFS_V6_RX_OFFSET_ADAPTOR_CNTRL3                        0x1c4
>  #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0                     0x208
>  #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1                     0x20c
>  #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3                     0x214
> @@ -28,6 +35,8 @@
>  #define QSERDES_UFS_V6_RX_MODE_RATE3_B5                                0x264
>  #define QSERDES_UFS_V6_RX_MODE_RATE3_B8                                0x270
>  #define QSERDES_UFS_V6_RX_MODE_RATE4_B3                                0x280
> +#define QSERDES_UFS_V6_RX_MODE_RATE4_B4                                0x284
>  #define QSERDES_UFS_V6_RX_MODE_RATE4_B6                                0x28c
> +#define QSERDES_UFS_V6_RX_DLL0_FTUNE_CTRL                      0x2f8
>
>  #endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index cae27a9..7a382c4 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -649,15 +649,22 @@ static const struct qmp_phy_init_tbl sm8550_ufsphy_serdes[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
> -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7f),
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_hs_b_serdes[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x44),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g4_serdes[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x4c),
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x0a),
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
> @@ -666,19 +673,24 @@ static const struct qmp_phy_init_tbl sm8550_ufsphy_serdes[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x07),
>  };
>
> -static const struct qmp_phy_init_tbl sm8550_ufsphy_hs_b_serdes[] = {
> -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x44),
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g5_serdes[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x1f),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IETRIM, 0x1b),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IPTRIM, 0x1c),
> +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x06),
>  };
>
>  static const struct qmp_phy_init_tbl sm8550_ufsphy_tx[] = {
>         QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_LANE_MODE_1, 0x05),
>         QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g4_tx[] = {
>         QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_FR_DCC_CTRL, 0x4c),
>  };
>
>  static const struct qmp_phy_init_tbl sm8550_ufsphy_rx[] = {
>         QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2, 0x0c),
> -       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x0e),
>
>         QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xc2),
>         QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xc2),
> @@ -694,16 +706,45 @@ static const struct qmp_phy_init_tbl sm8550_ufsphy_rx[] = {
>         QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B8, 0x02),
>  };
>
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g4_rx[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x0e),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g5_rx[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4, 0x0c),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_SO_GAIN_RATE4, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x14),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_PI_CONTROLS, 0x07),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_OFFSET_ADAPTOR_CNTRL3, 0x0e),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4, 0x02),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x1c),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_SO_GAIN_RATE4, 0x06),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x08),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B3, 0xb9),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B4, 0x4f),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE4_B6, 0xff),
> +       QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_DLL0_FTUNE_CTRL, 0x30),
> +};
> +
>  static const struct qmp_phy_init_tbl sm8550_ufsphy_pcs[] = {
>         QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x69),
>         QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
>         QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
> -       QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x2b),
>         QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> +};
> +
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g4_pcs[] = {
> +       QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x2b),
>         QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
>         QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
>  };
>
> +static const struct qmp_phy_init_tbl sm8550_ufsphy_g5_pcs[] = {
> +       QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
> +       QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HS_G5_SYNC_LENGTH_CAPABILITY, 0x4f),
> +       QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME, 0x9e),
> +};
> +
>  struct qmp_ufs_offsets {
>         u16 serdes;
>         u16 pcs;
> @@ -735,6 +776,8 @@ struct qmp_phy_cfg {
>         const struct qmp_phy_cfg_tbls tbls;
>         /* Additional sequence for HS Series B */
>         const struct qmp_phy_cfg_tbls tbls_hs_b;
> +       /* Additional sequence for HS Gears which are lower than the maximum supported HS Gear */
> +       const struct qmp_phy_cfg_tbls tbls_hs_not_max;

I doubt that this is a good solution. What if at some point we want to
have a third option? Would we add no-so-max? Or tbls-hs-in-the-middle?

If you want to make this configurable, you can implement the array of
gear-setting pairs and then loop over that array, selecting the
correct programming sequence.

>         /* Additional sequence for maximum supported HS Gear */
>         const struct qmp_phy_cfg_tbls tbls_hs_max;
>
> @@ -1155,7 +1198,7 @@ static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
>         .lanes                  = 2,
>
>         .offsets                = &qmp_ufs_offsets_v6,
> -       .max_hs_gear            = UFS_HS_G4,
> +       .max_hs_gear            = UFS_HS_G5,
>         .tbls = {
>                 .serdes         = sm8550_ufsphy_serdes,
>                 .serdes_num     = ARRAY_SIZE(sm8550_ufsphy_serdes),
> @@ -1170,6 +1213,24 @@ static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
>                 .serdes         = sm8550_ufsphy_hs_b_serdes,
>                 .serdes_num     = ARRAY_SIZE(sm8550_ufsphy_hs_b_serdes),
>         },
> +       .tbls_hs_not_max = {
> +               .serdes         = sm8550_ufsphy_g4_serdes,
> +               .serdes_num     = ARRAY_SIZE(sm8550_ufsphy_g4_serdes),
> +               .tx             = sm8550_ufsphy_g4_tx,
> +               .tx_num         = ARRAY_SIZE(sm8550_ufsphy_g4_tx),
> +               .rx             = sm8550_ufsphy_g4_rx,
> +               .rx_num         = ARRAY_SIZE(sm8550_ufsphy_g4_rx),
> +               .pcs            = sm8550_ufsphy_g4_pcs,
> +               .pcs_num        = ARRAY_SIZE(sm8550_ufsphy_g4_pcs),
> +       },
> +       .tbls_hs_max = {
> +               .serdes         = sm8550_ufsphy_g5_serdes,
> +               .serdes_num     = ARRAY_SIZE(sm8550_ufsphy_g5_serdes),
> +               .rx             = sm8550_ufsphy_g5_rx,
> +               .rx_num         = ARRAY_SIZE(sm8550_ufsphy_g5_rx),
> +               .pcs            = sm8550_ufsphy_g5_pcs,
> +               .pcs_num        = ARRAY_SIZE(sm8550_ufsphy_g5_pcs),
> +       },
>         .clk_list               = sdm845_ufs_phy_clk_l,
>         .num_clks               = ARRAY_SIZE(sdm845_ufs_phy_clk_l),
>         .vreg_list              = qmp_phy_vreg_l,
> @@ -1232,17 +1293,36 @@ static void qmp_ufs_pcs_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls
>         qmp_ufs_configure(pcs, tbls->pcs, tbls->pcs_num);
>  }
>
> -static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg *cfg)
> +static int qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg *cfg)
>  {
> +       if (qmp->submode > cfg->max_hs_gear) {
> +               dev_err(qmp->dev, "PHY submode %u exceeds maximum supported gear %u\n",
> +                       qmp->submode, cfg->max_hs_gear);
> +               return -EINVAL;
> +       }
> +
>         qmp_ufs_serdes_init(qmp, &cfg->tbls);
> +       if (qmp->submode == cfg->max_hs_gear)
> +               qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_max);
> +       else
> +               qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_not_max);
> +
>         if (qmp->mode == PHY_MODE_UFS_HS_B)
>                 qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_b);
> +
>         qmp_ufs_lanes_init(qmp, &cfg->tbls);
>         if (qmp->submode == cfg->max_hs_gear)
>                 qmp_ufs_lanes_init(qmp, &cfg->tbls_hs_max);
> +       else
> +               qmp_ufs_lanes_init(qmp, &cfg->tbls_hs_not_max);
> +
>         qmp_ufs_pcs_init(qmp, &cfg->tbls);
>         if (qmp->submode == cfg->max_hs_gear)
>                 qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_max);
> +       else
> +               qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_not_max);

Also, if I remember correctly from your and Mani's comments, the UFS
host will not set HS_G2 on this SoC. Is my understanding correct?
If so, I think, requesting the mode for which the driver doesn't have
correct settings should result in the error rather than silently using
the better gear.

Note: I might be wrong here. If it is really fine to use e.g. HS_G4
settings as HS_G2, then it is fine.

> +
> +       return 0;
>  }
>
>  static int qmp_ufs_com_init(struct qmp_ufs *qmp)
> @@ -1334,7 +1414,9 @@ static int qmp_ufs_power_on(struct phy *phy)
>         unsigned int val;
>         int ret;
>
> -       qmp_ufs_init_registers(qmp, cfg);
> +       ret = qmp_ufs_init_registers(qmp, cfg);
> +       if (ret)
> +               return ret;
>
>         ret = reset_control_deassert(qmp->ufs_reset);
>         if (ret)
> --
> 2.7.4
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
