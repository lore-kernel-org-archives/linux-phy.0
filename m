Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FD30C4167B
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 13:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncujlR9U/LzfkW9zcne8ZW1a0vtKdLZQ8wUSrv4gG74=; b=qo04n93V+HcsDs
	T2sngH73oDXC3MIu9ZIJDMvZTj9vak1a+wPFQBsjKCv/mFMXwJJL22fFQS3DpcziJQEFZK5EZ530b
	gai6Vp8KzDGlAOb5gyTKkCbgB1bj30JnT4fvHeGJ2xkCu2y68H5sja9VF4gvEzEOundSO8m1TU9nW
	lpjDCLvN24Ffl3V4wNuHMZFN7UwQhkHpScp/v0uRU0LvKBT9SlqQNUuLb9W3zBFA35ahVrKD0FhIr
	MDq6GlY1R+xDWfU9Wv350Hi51JfnEaKUKa5DxpBVbEjP+AzT5ez1P2ODgEeHY1lecWKNEOI+k9fI1
	fkca8NZM6x87rYtA3gcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Lmv-001ZmE-26;
	Tue, 07 Nov 2023 13:06:37 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Lmt-001ZlU-0Y
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 13:06:36 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-579de633419so67823237b3.3
        for <linux-phy@lists.infradead.org>; Tue, 07 Nov 2023 05:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699362393; x=1699967193; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VpeyORNuSizmDrRB2g688RvYszoR2DBekJuTr7PcuM0=;
        b=kk3M6kObeylE5T1iy/4G6J2zQxA3a4hJrG7kTMUU4bh7SMLZC8J4T2G4+HSnKzMUbd
         PPd+//IPB1o0GESwG2CHpfvWHbmVeVGD187MbG8LF4VfpeGbjRvXKbBKrK+lDJqQ3+Jp
         6mJdDw2KICNusmWmiBlGbhh4uAsMTjC/iS1tTIOd2IPrusGjuvdbSs4ex1XCtpA2FGNX
         lD2j/ZFt9CuPpXTFOr33O8hGFPTmhGJZz1Y4VLkY40icZNCh96Tvci9YJoZXJzxEWDOc
         oPO7JXyKdeG8/6x3EUlZ/sZturTKqi/KKT1F6s9kTZXAcQg2k8x2SBADxdpE/dpIHamd
         C9Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699362393; x=1699967193;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VpeyORNuSizmDrRB2g688RvYszoR2DBekJuTr7PcuM0=;
        b=YawKGK5YESgYfjB53R+AWaJ7YDUG/oAAknQF2HPVmDXSGWjdL3XUVFGPiOZhcMU8gG
         7/mWKaJjshX5uM0/FIEecj6jmpQe4MlRmgOS+ZuuJhlaoCiNg+0KkQlkS2zMLJE32+QZ
         A1Na8J2mfbJzpn8dxt9WxsBujsp8T3q4TVckRwXoUBk0dLTKKi76oPE6gaK+bUfpau3J
         O7ti9eDNdlLyfEYKUzSQwnu1UTs64svZ3VBkJFq+cX5O8eRPnVbbyLIkjS0I7Wh/87qp
         1XC33sHmmBWp69m3kKLtEBFaTxEYxQKNYPb8Cblg3HngevR249dmYg2qlv5GkV/gOsZp
         83Iw==
X-Gm-Message-State: AOJu0Yy0bgqWh4bGpvaa6DfCT0BGrK2g/Klp4+38z6jvQj8L2Dm93xUU
	ey7G5TuRFKT+xM/6v9200Ttaz9LThX9ijmR4RRV5yw==
X-Google-Smtp-Source: AGHT+IEw64WfuhV/VAJ5h7y4+mgyq9+AiOgzXcHht2Xl+7ufPjUsXCd8tsAlA2DXiG8eMlgYKartctcAFgD5/T8Z61M=
X-Received: by 2002:a81:52d5:0:b0:5a8:435d:8ca9 with SMTP id
 g204-20020a8152d5000000b005a8435d8ca9mr13532798ywb.25.1699362393389; Tue, 07
 Nov 2023 05:06:33 -0800 (PST)
MIME-Version: 1.0
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com> <20231107-refclk_always_on-v2-2-de23962fc4b3@quicinc.com>
In-Reply-To: <20231107-refclk_always_on-v2-2-de23962fc4b3@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 Nov 2023 15:06:22 +0200
Message-ID: <CAA8EJpr8Y+k2FJqFfZVagWxfgsUEnZ1010-xaaUg=c6tqu8Hsw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] phy: qcom-qmp-pcie: Add endpoint refclk control
 register offset
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com, quic_parass@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_050635_215885_6C5B1189 
X-CRM114-Status: GOOD (  19.38  )
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

On Tue, 7 Nov 2023 at 14:26, Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> Some platforms needs to keep endpoint refclk always on, for this
> purpose add this offset for all the applicable phy versions.
>
> And also add reg layout for few controllers as we are adding
> endpoint refclk control register which changes based upon phy version.
>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 26 +++++++++++++++++++---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h    |  1 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  1 +
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h |  1 +
>  4 files changed, 26 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index a63ca7424974..74d03d217ff2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -77,6 +77,7 @@ enum qphy_reg_layout {
>         QPHY_START_CTRL,
>         QPHY_PCS_STATUS,
>         QPHY_PCS_POWER_DOWN_CONTROL,
> +       QPHY_PCS_ENDPOINT_REFCLK_CNTRL,
>         /* Keep last to ensure regs_layout arrays are properly initialized */
>         QPHY_LAYOUT_SIZE
>  };
> @@ -93,6 +94,7 @@ static const unsigned int pciephy_v3_regs_layout[QPHY_LAYOUT_SIZE] = {
>         [QPHY_START_CTRL]               = QPHY_V3_PCS_START_CONTROL,
>         [QPHY_PCS_STATUS]               = QPHY_V3_PCS_PCS_STATUS,
>         [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V3_PCS_POWER_DOWN_CONTROL,
> +       [QPHY_PCS_ENDPOINT_REFCLK_CNTRL]        = QPHY_V3_PCS_ENDPOINT_REFCLK_CNTRL,
>  };
>
>  static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
> @@ -107,6 +109,7 @@ static const unsigned int pciephy_v4_regs_layout[QPHY_LAYOUT_SIZE] = {
>         [QPHY_START_CTRL]               = QPHY_V4_PCS_START_CONTROL,
>         [QPHY_PCS_STATUS]               = QPHY_V4_PCS_PCS_STATUS1,
>         [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V4_PCS_POWER_DOWN_CONTROL,
> +       [QPHY_PCS_ENDPOINT_REFCLK_CNTRL]        = QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
>  };
>
>  static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
> @@ -114,6 +117,23 @@ static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
>         [QPHY_START_CTRL]               = QPHY_V5_PCS_START_CONTROL,
>         [QPHY_PCS_STATUS]               = QPHY_V5_PCS_PCS_STATUS1,
>         [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V5_PCS_POWER_DOWN_CONTROL,
> +       [QPHY_PCS_ENDPOINT_REFCLK_CNTRL]        = QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
> +};
> +
> +static const unsigned int pciephy_v5_20_regs_layout[QPHY_LAYOUT_SIZE] = {
> +       [QPHY_SW_RESET]                 = QPHY_V5_PCS_SW_RESET,
> +       [QPHY_START_CTRL]               = QPHY_V5_PCS_START_CONTROL,
> +       [QPHY_PCS_STATUS]               = QPHY_V5_PCS_PCS_STATUS1,
> +       [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V5_PCS_POWER_DOWN_CONTROL,

Nit: we should probably define V5_20 and v6_20 versions of these registers

If you were to send v3 for any reason, could you please add them?

> +       [QPHY_PCS_ENDPOINT_REFCLK_CNTRL]        = QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
> +};
> +
> +static const unsigned int pciephy_v6_20_regs_layout[QPHY_LAYOUT_SIZE] = {
> +       [QPHY_SW_RESET]                 = QPHY_V5_PCS_SW_RESET,
> +       [QPHY_START_CTRL]               = QPHY_V5_PCS_START_CONTROL,
> +       [QPHY_PCS_STATUS]               = QPHY_V5_PCS_PCS_STATUS1,
> +       [QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V5_PCS_POWER_DOWN_CONTROL,
> +       [QPHY_PCS_ENDPOINT_REFCLK_CNTRL]        = QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_CNTRL,
>  };
>
>  static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
> @@ -2956,7 +2976,7 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
>         .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
>         .vreg_list              = qmp_phy_vreg_l,
>         .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> -       .regs                   = pciephy_v5_regs_layout,
> +       .regs                   = pciephy_v5_20_regs_layout,
>
>         .pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
>         .phy_status             = PHYSTATUS_4_20,
> @@ -3012,7 +3032,7 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
>         .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
>         .vreg_list              = sm8550_qmp_phy_vreg_l,
>         .num_vregs              = ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
> -       .regs                   = pciephy_v5_regs_layout,
> +       .regs                   = pciephy_v6_20_regs_layout,
>
>         .pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
>         .phy_status             = PHYSTATUS_4_20,
> @@ -3047,7 +3067,7 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
>         .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
>         .vreg_list              = qmp_phy_vreg_l,
>         .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> -       .regs                   = pciephy_v5_regs_layout,
> +       .regs                   = pciephy_v5_20_regs_layout,
>
>         .pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
>         .phy_status             = PHYSTATUS_4_20,
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> index a469ae2a10a1..9b166286afda 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
> @@ -11,6 +11,7 @@
>  #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG2           0x0c
>  #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG4           0x14
>  #define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE         0x20
> +#define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_CNTRL         0x24
>  #define QPHY_V5_PCS_PCIE_INT_AUX_CLK_CONFIG1           0x54
>  #define QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS              0x94
>  #define QPHY_V5_PCS_PCIE_EQ_CONFIG2                    0xa8
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
> index cdf8c04ea078..8b114e538a07 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
> @@ -9,6 +9,7 @@
>  /* Only for QMP V5_20 PHY - PCIe PCS registers */
>  #define QPHY_V5_20_PCS_PCIE_POWER_STATE_CONFIG2                0x00c
>  #define QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE      0x01c
> +#define QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_CNTRL      0x020
>  #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5     0x084
>  #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS           0x090
>  #define QPHY_V5_20_PCS_PCIE_EQ_CONFIG1                 0x0a0
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
> index e3eb08776339..f7abe95c49ad 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
> @@ -10,6 +10,7 @@
>  #define QPHY_PCIE_V6_20_PCS_POWER_STATE_CONFIG2                0x00c
>  #define QPHY_PCIE_V6_20_PCS_TX_RX_CONFIG               0x018
>  #define QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_DRIVE      0x01c
> +#define QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_CNTRL      0x020
>  #define QPHY_PCIE_V6_20_PCS_OSC_DTCT_ATCIONS           0x090
>  #define QPHY_PCIE_V6_20_PCS_EQ_CONFIG1                 0x0a0
>  #define QPHY_PCIE_V6_20_PCS_EQ_CONFIG5                 0x108
>
> --
> 2.42.0
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
